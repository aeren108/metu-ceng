#include<stdio.h>
#include<stdlib.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<pthread.h>
#include<time.h>
#include<unistd.h>

#include "packet.h"

#define WINDOW_SIZE 32

pthread_mutex_t lock;

//clock_t timers[MAX_SEQ_NUM];
clock_t timer;
packet* pkt_buf[256];

int base = 0; //base index of window
int next_seq = 0; 
int exp_seq = 0;
int last_seq = -1;

int sfd;

int running = 1;
int timer_on = 0;

int nl_count = 0; //hold consecutive newline message count for termination

struct sockaddr_in server, client;
socklen_t srvlen, clientlen;

void *handle_recv();
void *handle_send();
void *handle_timer();

double get_time_seconds();

int main(int argc, char const *argv[]) {
    if (argc < 2) {   
        printf("Specify the port number"); 
        return -1;
    }

    pthread_t recv_t, send_t, timer_t;

    srvlen = sizeof(server);
    clientlen = sizeof(client);

    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons(atoi(argv[1]));

    sfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (bind(sfd, (struct sockaddr *) &server, srvlen) < 0) {
        perror("Error on bind(): ");
        exit(0);
    }
    
    //printf("Waiting for a connection...\n");

    //establish connection
    char* msg[16];
    recvfrom(sfd, msg, PKT_SIZE, 0, (struct sockaddr*) &client, &clientlen);
    packet greeting = read_pkt(msg);

    char buf[256];
    inet_ntop(AF_INET, &client.sin_addr, buf, 256);
    //printf("%s has connected.\n", buf);

    //send ack msg
    send_ack(greeting.seq);
    exp_seq = greeting.seq + 1;

    pthread_mutex_init(&lock, NULL);

    pthread_create(&recv_t, NULL, handle_recv, NULL);
    pthread_create(&send_t, NULL, handle_send, NULL);
    pthread_create(&timer_t, NULL, handle_timer, NULL);

    pthread_join(recv_t, NULL);
    pthread_join(send_t, NULL);
    pthread_join(timer_t, NULL);

    pthread_mutex_destroy(&lock);

    return 0;
}


void* handle_send() {
    while (running) {
        packet* pkt = malloc(sizeof(packet));

        fgets(pkt->data, 15, stdin);
        send_msg(pkt);
    }  
}

void* handle_recv() {
    char buf[PKT_SIZE];
    while (running) {
        if (recvfrom(sfd, buf, PKT_SIZE, 0, (struct sockaddr*) &client, &clientlen) < 0) {
            perror("Error on recv() -> handle_recv(): ");
            exit(0);
        }

        packet pkt = read_pkt(buf);
        if (is_ack(pkt)) {
            int k = next_seq / (MAX_SEQ_NUM + 1);
            if (pkt.seq + k*(MAX_SEQ_NUM + 1)>= base && pkt.seq + k*(MAX_SEQ_NUM + 1) <= next_seq) { //check if packet is in-flight
                int oldbase = base;
                base += pkt.seq + k*(MAX_SEQ_NUM + 1) - base + 1; //ack in-flight packets till pkt.seq

                for (int i = oldbase; i < base; ++i) free(pkt_buf[i]);
                
                if (base == next_seq) timer_on = 0;

                //printf("ACK for seq:%d\n", pkt.seq);
            } 
        } else if (pkt.seq == exp_seq){
            printf(pkt.data);
            send_ack(pkt.seq);

            if (is_bye(pkt)) {
                running = 0;
                break;
            }

            if (pkt.data[0] == '\n') nl_count++;
            else nl_count = 0;

            if (nl_count == 3) { 
                running = 0; 
                send_bye(); 
                break;
            }

            last_seq = pkt.seq;
            exp_seq = (pkt.seq + 1) % (MAX_SEQ_NUM + 1);
            //printf("SENT ACK: %d, expect: %d\n", pkt.seq, exp_seq);
        } else send_ack(last_seq);
    }
}

void send_msg(packet *pkt) {
    pthread_mutex_lock(&lock);

    if (next_seq >= base || next_seq < base + WINDOW_SIZE) {
        pkt_buf[next_seq] = pkt;
            
        if (next_seq == base) timer_on = 1;
        
        pkt->seq = next_seq % (MAX_SEQ_NUM + 1);
        next_seq++;

        char buf[PKT_SIZE];
        pkt->timestamp = get_time_seconds();
        prep_pkt(*pkt, buf);
        
        if (sendto(sfd, buf, PKT_SIZE, 0, (struct sockaddr*) &client, clientlen) < 0) {
            perror("Error on sendto() -> sendmsg(): ");
            exit(0);
        }
    }

    pthread_mutex_unlock(&lock);
}

void resend() {
    char buf[PKT_SIZE];
    for (int i = base; i < next_seq; ++i) {
        pkt_buf[i]->timestamp = get_time_seconds();
        prep_pkt(*pkt_buf[i], buf);
        //printf("BASE: %d, NEXT_SEQ. %d", base, next_seq);
        if (sendto(sfd, buf, PKT_SIZE, 0, (struct sockaddr*) &client, clientlen) < 0) {
            perror("Error on sendto() -> resend(): ");
            exit(0);
        }
        //printf("Resending pkt with seq: %d\n", pkt_buf[i]->seq);
    }
}

void send_ack(char seq) {
    char msg[PKT_SIZE];
    prep_ack(seq, msg);

    if (sendto(sfd, msg, PKT_SIZE, 0, (struct sockaddr*) &client, clientlen) < 0) {
        perror("Error on sendto() -> send_ack(): ");
        exit(0);
    }
}

void send_bye() {
    packet *pkt = malloc(sizeof(packet));
    prep_bye(pkt);
    send_msg(pkt);
}

void* handle_timer() {
    while (running) {
        if (timer_on) {
            double time = get_time_seconds();
            if (time - pkt_buf[base]->timestamp > TIMEOUT)
                resend();
        }

        sleep(TIMEOUT / 2);
    }
}

double get_time_seconds() {
    struct timespec t;
    clock_gettime(CLOCK_REALTIME, &t);

    return t.tv_sec + t.tv_nsec / 1e9;
}