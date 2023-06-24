#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/select.h>
#include <sys/wait.h>

#include "logging.h"
#include "message.h"

#define PIPE(fd) socketpair(AF_UNIX, SOCK_STREAM, PF_UNIX, fd)

#define DIE 0
#define WIN 1
#define ALIVE 2

int width, height;
int obstacle_count, bomber_count;
//No: 166 menekşe

typedef struct bomber {
    int x, y;
    int fd, pid;
    int active;
    int mark;
} bomber;

typedef struct bomb {
    int x, y;
    int fd, pid;
    int radius;
    struct bomb* next;
} bomb;

typedef struct obstacle {
    int x, y;
    int durability;
} obstacle;

typedef struct entity {
    bomber* bomber;
    bomb* bomb;
    obstacle* obs;
} entity;

obstacle *obstacles;
bomber *bombers;
bomb *bombs;
bomb *exbombs;
entity *_grid;

fd_set bomber_rfds, bomb_rfds;
struct timeval tv = {.tv_sec = 0, .tv_usec = 0};

entity* grid(int x, int y) {
    if (x < 0 || x >= width || y < 0 || y >= height) return NULL;
    return &_grid[y*width+x];
}

void init() {
    scanf("%d %d %d %d", &width, &height, &obstacle_count, &bomber_count);

    obstacles = calloc(obstacle_count, sizeof(obstacle));
    bombers = calloc(bomber_count, sizeof(bomber));
    _grid = calloc(width*height, sizeof(entity));

    for (int i = 0; i < obstacle_count; ++i) {
        obstacle o; entity* e;
        
        scanf("%d %d %d", &o.x, &o.y, &o.durability);
        obstacles[i] = o;

        e = grid(o.x, o.y);
        e->obs = &obstacles[i];
        e->bomber = NULL;
        e->bomb = NULL;
    }

    for (int i = 0; i < bomber_count; ++i) {
        int arglen;
        entity* e;

        scanf("%d %d %d", &bombers[i].x, &bombers[i].y, &arglen);
        char **args = calloc(arglen, sizeof(char*));
        
        for (int j = 0; j < arglen; ++j) {
            args[j] = (char*) calloc(64, sizeof(char));
            scanf("%s", args[j]);
        }
        
        spawn_bomber(args, &bombers[i]);
        e = grid(bombers[i].x, bombers[i].y);
        e->bomber = &bombers[i];
        e->obs = NULL;
        e->bomb = NULL;
    }

    if (bomber_count == 1) bombers[0].mark = WIN;
}

void build_fdsets() {
    FD_ZERO(&bomber_rfds);
    FD_ZERO(&bomb_rfds);

    for (int i = 0; i < bomber_count; ++i) if(bombers[i].active) FD_SET(bombers[i].fd, &bomber_rfds);
    for (bomb* cur = bombs; cur != NULL; cur = cur->next) FD_SET(cur->fd, &bomb_rfds);
}

void add_bomb(bomb* bb) {
    if (!bombs) {
        bombs = bb;
        return;
    }

    bomb* cur = bombs;
    while (cur->next != NULL) cur = cur->next;

    bb->next = NULL;
    cur->next = bb;
}

void remove_bomb(bomb* bb) {
    if (!bombs) return;

    if (bombs == bb) {
        bombs = bombs->next;
        free(bb);
        return;
    }

    bomb* cur = bombs;
    while (cur != NULL && cur->next != bb);
    if (!cur) return;
    
    cur->next = bb->next;
    bb->next = NULL;
    add_exbomb(bb);
}

void add_exbomb(bomb* bb) {
    if (!exbombs) {
        exbombs = bb;
        return;
    }

    bomb* cur = exbombs;
    while (cur->next != NULL) cur = cur->next;

    bb->next = NULL;
    cur->next = bb;
}

bomb* bomb_at(int i) {
    bomb* cur = bombs;
    for (; cur != NULL && i > 0; cur = cur->next, --i);
    return cur;
}

int bomb_count() {
    int i = 0;
    for (bomb* cur = bombs; cur != NULL; cur = cur->next, ++i);
    return i;
}

void spawn_bomber(char **args, bomber* b) {
    int fd[2];
    PIPE(fd);

    int pid = fork();

    if (pid < 0) { perror("fork()"); exit(0); }
    else if (pid == 0) { //child process
        close(fd[0]);
        close(STDIN_FILENO);
        close(STDOUT_FILENO);

        //redirect standart input and output to pipe
        dup2(fd[1], STDOUT_FILENO);
        dup2(fd[1], STDIN_FILENO);
        
        execvp(args[0], args);
        perror("execvp()");
        exit(0);
    }
    
    //parent process
    close(fd[1]);
    b->pid = pid;
    b->fd = fd[0];
    b->active = 1;
    b->mark = ALIVE;
}

int plant_bomb(bd bombdata, bomb *bb, int x, int y) {
    entity *e = grid(x, y);
    if (!e || e->bomb) {
        free(bb);
        return 0;
    }

    int fd[2];
    PIPE(fd);
    
    int pid = fork();

    if (pid < 0) { perror("fork()"); exit(0); }
    else if (pid == 0) { //child process
        char param[6];
        snprintf(param, 6, "%d", bombdata.interval);

        close(fd[0]);
        close(STDOUT_FILENO);
        close(STDIN_FILENO);

        //redirect stdin and stdout to pipe
        dup2(fd[1], STDOUT_FILENO);
        dup2(fd[1], STDIN_FILENO);

        execlp("./bomb", "./bomb", param, NULL);
        perror("execlp()");
        exit(0);
    }
    
    //parent process
    close(fd[1]);

    bb->radius = bombdata.radius;
    bb->pid = pid;
    bb->fd = fd[0];
    bb->x = x;
    bb->y = y;

    e->bomb = bb;
    add_bomb(bb);
    return 1;
}

int entity_empty(entity *e) {
    if (!e->bomb && !e->bomber && !e->obs) return 1;
    return 0;
}

int moveable(bomber b, coordinate pos) {
    entity *e = grid(pos.x, pos.y); 
    if (!e) return 0;
    int dist = abs(b.x - pos.x) + abs(b.y - pos.y);

    if (dist > 1) return 0;
    if (e && (e->bomber || e->obs)) return 0;
    return 1;
}

coordinate move(bomber b, coordinate pos) {
    if (!moveable(b, pos)) return (coordinate) {b.x, b.y};

    entity *ei = grid(b.x, b.y);
    entity *ef = grid(pos.x, pos.y);

    ef->bomber = ei->bomber;
    ei->bomber = NULL;
    ef->bomber->x = pos.x;
    ef->bomber->y = pos.y;

    return pos;
}

int obs_inbetween(bomb* bb, int x, int y) {
    if (bb->x == x && bb->y == y) return 0;

    if (y == bb->y) {
        int dir = (bb->x - x) / abs(bb->x - x);
        for (int i = x+dir; i != bb->x; i += dir) {
            entity *e = grid(i, y);
            if (e->obs) return 1;
        }
    } else if (x == bb->x) {
        int dir = (bb->y - y) / abs(bb->y - y);
        for (int i = y+dir; i != bb->y; i += dir) {
            entity *e = grid(x, i);
            if (e->obs) return 1;
        }
    }
    
    return 0;
}

int obs_inbetween_b(bomber* b, int x, int y) {
    bomb bb = (bomb) {.x = b->x, .y = b->y};
    return obs_inbetween(&bb, x, y);
}

int objects_in_vision(bomber b, od ods[25]) {
    int index = 0;
    for (int i = -3; i <= 3; ++i) {
        entity* e = grid(b.x+i, b.y);
        if (!e) continue;
        if (e->bomb && !obs_inbetween_b(&b, b.x+i, b.y)) {
            ods[index].position = (coordinate) {e->bomb->x, e->bomb->y};
            ods[index].type = BOMB;
            index++;
        } if (e->bomber && i != 0 && !obs_inbetween_b(&b, b.x+i, b.y)) {
            ods[index].position = (coordinate) {e->bomber->x, e->bomber->y};
            ods[index].type = BOMBER;
            index++;
        } else if (e->obs && !obs_inbetween_b(&b, b.x+i, b.y)) {
            ods[index].position = (coordinate) {e->obs->x, e->obs->y};
            ods[index].type = OBSTACLE;
            index++;
        }
    }

    for (int i = -3; i <= 3; ++i) {
        entity* e = grid(b.x, b.y+i);
        if (!i || !e) continue;
        if (e->bomb && !obs_inbetween_b(&b, b.x, b.y+i)) {
            ods[index].position = (coordinate) {e->bomb->x, e->bomb->y};
            ods[index].type = BOMB;
            index++;
        } if (e->bomber && !obs_inbetween_b(&b, b.x, b.y+i)) {
            ods[index].position = (coordinate) {e->bomber->x, e->bomber->y};
            ods[index].type = BOMBER;
            index++;
        } else if (e->obs && !obs_inbetween_b(&b, b.x, b.y+i)) {
            ods[index].position = (coordinate) {e->obs->x, e->obs->y};
            ods[index].type = OBSTACLE;
            index++;
        }
    }

    return index;
}

int get_mark_count(int mark, int active) {
    int count = 0;
    for (int i = 0; i < bomber_count; ++i) {
        bomber b = bombers[i];
        if (active) {
            if (b.active && b.mark == mark) count++;
        } else {
            if (b.mark == mark) count++;
        }
    }
    return count;
}

int first_alive_index() {
    for(int i = 0; i < bomber_count; ++i) {
        if (!bombers[i].active) continue;
        if (bombers[i].mark == ALIVE) return i;
    }
    return -1;
}

int active_count() {
    int count = 0;
    for (int i = 0; i < bomber_count; ++i) {
        if (bombers[i].active) count++;
    }

    return count;
}

void process_bomber(bomber* b, im msg) {
    om response;
    od ods[25];
    omp respp = (omp) {b->pid, &response};
    int num_entities = 0;

    if (b->mark != ALIVE) msg.type = -1;

    switch (msg.type) {
        case BOMBER_START:
            response.type = BOMBER_LOCATION;
            response.data.new_position = (coordinate) {b->x, b->y};

            break;
        case BOMBER_SEE:
            response.type = BOMBER_VISION;
            num_entities = objects_in_vision(*b, ods);
            response.data.object_count = num_entities;
            break;
        case BOMBER_MOVE:
            response.type = BOMBER_LOCATION;
            response.data.new_position = move(*b, msg.data.target_position);
            break;
        case BOMBER_PLANT:
            bomb* bb = malloc(sizeof(bomb));

            response.type = BOMBER_PLANT_RESULT;
            response.data.planted = plant_bomb(msg.data.bomb_info, bb, b->x, b->y);
            break;
        default:
            if (b->mark == DIE) response.type = BOMBER_DIE;
            else response.type = BOMBER_WIN;
            
            b->active = 0;

            break;
    }

    write(b->fd, &response, sizeof(response));
    if (num_entities) write(b->fd, &ods, num_entities*sizeof(od));
    print_output(NULL, &respp, NULL, num_entities ? ods : NULL);
    
    if (b->mark != ALIVE) {
        wait(NULL);
        //printf("reaped bomber PID %d", b->pid);
    }

}

void process_bomb(bomb* bb, im msg) {
    if (msg.type != BOMB_EXPLODE) return;

    for (int i = -bb->radius; i <= bb->radius; ++i) {
        entity* e = grid(bb->x+i, bb->y); 
        if (!e) continue;

        if (e->bomber && !obs_inbetween(bb, e->bomber->x, e->bomber->y)) {
            e->bomber->mark = DIE;
        } else if (e->obs && !obs_inbetween(bb, e->obs->x, e->obs->y)) {
            e->obs->durability -= 1;

            obsd obsdata;
            obsdata.position = (coordinate) {e->obs->x, e->obs->y};
            obsdata.remaining_durability = e->obs->durability < 0 ? -1 : e->obs->durability;
            
            if (e->obs->durability == 0) e->obs = NULL;
            else if (e->obs->durability < 0) e->obs->durability = -1;

            print_output(NULL, NULL, &obsdata, NULL);
        }
    }

    for (int i = -bb->radius; i <= bb->radius; ++i) {
        entity* e = grid(bb->x, bb->y+i); 
        if (!e || i == 0) continue;

        if (e->bomber && !obs_inbetween(bb, e->bomber->x, e->bomber->y)) {
            e->bomber->mark = DIE;
        } else if (e->obs && !obs_inbetween(bb, e->obs->x, e->obs->y)) {
            e->obs->durability -= 1;

            obsd obsdata;
            obsdata.position = (coordinate) {e->obs->x, e->obs->y};
            obsdata.remaining_durability = e->obs->durability < 0 ? -1 : e->obs->durability;

            if (e->obs->durability == 0) e->obs = NULL;
            else if (e->obs->durability < 0) e->obs->durability = -1;

            print_output(NULL, NULL, &obsdata, NULL);
        }
    }

    if (bomber_count - get_mark_count(DIE, 0) == 1) {
        bombers[first_alive_index()].mark = WIN;
    } else if (bomber_count - get_mark_count(DIE, 0) == 0) {
        int maxindex = 0, maxd = 0;
        for (int i = 0; i < bomber_count; ++i) {
            if (!bombers[i].active) continue;
            int d = abs(bb->x - bombers[i].x) + abs(bb->y - bombers[i].y);

            if (d > maxd) { maxd = d; maxindex = i; }
        }

        bombers[maxindex].mark = WIN;
    }

    wait(NULL);
    //waitpid(bb->pid, NULL, 0);
    //printf("bomb reaped PID %d", bb->pid);
    remove_bomb(bb);
    
}

void event_loop() {
    while (active_count() > 0) {
        build_fdsets();

        int retval = select(bombers[bomber_count-1].fd+1, &bomber_rfds, NULL, NULL, &tv);
        
        if (retval < 0) { perror("select()\n"); exit(0);}
        else if (retval) { // data is ready
            for (int i = 0; i < bomber_count; ++i) {
                //TODO: process active and DIE or WIN marked bombers
                bomber* b = &bombers[i];
                if (!b->active) continue;
                if (FD_ISSET(b->fd, &bomber_rfds)) {
                    im msg; imp msgp = {b->pid, &msg};
                    
                    read(b->fd, &msg, sizeof(msg));
                    
                    print_output(&msgp, NULL, NULL, NULL);
                    process_bomber(b, msg);
                    //if (i == 0) draw_grid();
                }
            }
        } else {
           //printf("No update on bombers\n");
        }
        
        int bnfds = bomb_count() > 0 ? bomb_at(bomb_count()-1)->fd+1 : 0;
        retval = select(bnfds, &bomb_rfds, NULL, NULL, &tv);
        
        if (retval < 0) { perror("select()\n"); exit(0);}
        else if (retval) { // data is ready
            for (bomb* cur = bombs; cur != NULL; cur = cur->next) {
                if (FD_ISSET(cur->fd, &bomb_rfds)) {
                    im msg; imp msgp = {cur->pid, &msg};

                    read(cur->fd, &msg, sizeof(msg));

                    print_output(&msgp, NULL, NULL, NULL);
                    process_bomb(cur, msg);
                }
            }
        } else {
           //printf("No update on bombers\n");
        }

        usleep(1);
    }
}

void wait_bombs() {
    while (bombs != NULL) {
        build_fdsets();

        int bnfds = bomb_count() > 0 ? bomb_at(bomb_count()-1)->fd+1 : 0;
        int retval = select(bnfds, &bomb_rfds, NULL, NULL, &tv);
        
        if (retval < 0) { perror("select()\n"); exit(0);}
        else if (retval) { // data is ready
            for (bomb* cur = bombs; cur != NULL; cur = cur->next) {
                if (FD_ISSET(cur->fd, &bomb_rfds)) {
                    im msg; imp msgp = {cur->pid, &msg};

                    read(cur->fd, &msg, sizeof(msg));

                    print_output(&msgp, NULL, NULL, NULL);
                    process_bomb(cur, msg);
                }
            }
        } else {
           //printf("No update on bombers\n");
        }

        usleep(1);
    }
}

void reap_children() {
    for (int i = 0; i < bomber_count; ++i) {
        waitpid(bombers[i].pid, NULL, WNOHANG);
        //printf("PID bomber %d\n", bombers[i].pid);
    }
    
    for (bomb* cur = exbombs; cur != NULL; ) {
        waitpid(cur->pid, NULL, WNOHANG);
        //printf("PID bomb %d %d\n", cur->pid, status);
        bomb* prev = cur;
        cur = prev->next;

        free(prev);
    }
}

void draw_grid() {
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            entity *e = grid(x, y);
            if (e->obs) {
                printf("o|");
            } else if (e->bomb && e->bomber) {
                printf("8|");
            } else if (e->bomb) {
                printf("b|");
            } else if (e->bomber) {
                printf("p|");
            } else {
                printf(" |");
            }
        }
        printf("\n");
    }
}

int main() {
    init();
    //draw_grid();
    event_loop();
    wait_bombs();
    reap_children();
    //sleep(15);
}