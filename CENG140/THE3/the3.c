#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "the3.h"

#define MAX_SIZE 10

QueryNode** query_table;
CountNode* count_list;
int size;

CountNode* insert_count(int);
void add_to_querylist(QueryNode*, int);
int remove_query(QueryNode*);
void add_query(QueryNode*);
void remove_count(CountNode*);
void print_list(CountNode*);
void print_querylist(QueryNode*, int);
void print_list_reversed(CountNode*);
int find_count(QueryNode*);
void print_output();

int main() {   
    int query_amount, i;
    CountNode* cur;
    
    query_table = malloc(MAX_SIZE * sizeof(QueryNode*));
    count_list = NULL;
    
    scanf("%d", &size);

    /*Construct query table and count list*/
    for (i = 0; i < size; ++i) {
        char *query; int count;
        QueryNode* new_node = malloc(sizeof(new_node));
        query = malloc(6 * sizeof(char));

        scanf("%s %d", query, &count);
        
        new_node->query = query;
        new_node->next = new_node->prev = NULL;

        query_table[i] = new_node;
        add_to_querylist(new_node, count);
    }

    scanf("%d", &query_amount);
    for (i = 0; i < query_amount; ++i) {
        char* query = malloc(6 * sizeof(char));
        QueryNode* new_node = malloc(sizeof(QueryNode));
        
        scanf("%s", query);

        new_node->query = query;
        new_node->next = new_node->prev = NULL;

        add_query(new_node);
    }

    print_output();

    return 0;
}

void print_list(CountNode* head) {
    CountNode* cur = head;

    while (cur->next != NULL) {
        printf("%d -> ", cur->count);
        cur = cur->next;
    }

    printf("%d\n", cur->count);
}

CountNode* insert_count(int count) {
    CountNode* cur = count_list;
    CountNode* new = malloc(sizeof(CountNode));;

    new->count = count;
    new->querylist = malloc(sizeof(QueryNode*));

    if (cur == NULL) {
        count_list = new;
        new->next = new->prev = NULL;
    } else {
        if (cur->count > count) {
            new->next = cur;
            cur->prev = new;
            new->prev = NULL;

            count_list = new;
        } else {
            CountNode* add_after = NULL;
            while (cur != NULL) {
                if (cur->count == count) return cur;

                if (cur->next != NULL) {
                    if (cur->next->count > count) {
                        add_after = cur;
                        break;
                    }
                } else {
                    add_after = cur;
                    break;
                }

                cur = cur->next;
            }

            if (add_after->next != NULL) add_after->next->prev = new;
            new->prev = add_after;
            new->next = add_after->next;
            add_after->next = new;
        }
    }

    return new;
}

/*todo: add queries according to alphabetical order */
void add_to_querylist(QueryNode* node, int count) {
    CountNode* added_count = insert_count(count);
    QueryNode* list = *(added_count->querylist);

    if (list == NULL) {
        *(added_count->querylist) = node;
        node->next = node->prev = NULL;
    } else {
        if (strcmp(node->query, list->query) < 0) {
            node->next = list;
            list->prev = node;
            node->prev = NULL;
            *(added_count->querylist) = node;
        } else {
            QueryNode* add_after = NULL;
            while (list != NULL) {
                if (list->next != NULL) {
                    if (strcmp(node->query, list->next->query) < 0) {
                        add_after = list;
                        break;
                    }
                } else {
                    add_after = list;
                    break;
                }

                list = list->next;
            }

            if (add_after->next != NULL) add_after->next->prev = node;
            node->next = add_after->next;
            node->prev = add_after;
            add_after->next = node;
        }
    }
}

/* returns the count of query */
int remove_query(QueryNode* node) {
    CountNode* cur_cnode = count_list;

    while (cur_cnode != NULL) {
        QueryNode* head = *(cur_cnode->querylist);
        while (head != NULL) {
            if (head == node) {
                if (head->prev == NULL) {
                    if (head->next != NULL) {
                        head->next->prev = NULL;
                        *(cur_cnode->querylist) = head->next;
                    } else  {
                        *(cur_cnode->querylist) = NULL;
                        remove_count(cur_cnode);
                    }
                } else {
                    if (head->next != NULL) {
                        head->next->prev = head->prev;
                    }
                    head->prev->next = head->next;
                }

                head->next = head->prev = NULL;
                return cur_cnode->count;
            } 
            head = head->next;
        }
        cur_cnode = cur_cnode->next;
    }

    return 0;
}

void remove_count(CountNode* node) {
    CountNode* cur = count_list;

    while (cur != NULL) {
        if (cur == node) {
            if (cur->prev == NULL) {
                if (cur->next != NULL) {
                    cur->next->prev = NULL;
                    count_list = cur->next;
                } else count_list = NULL;
            } else {
                if (cur->next != NULL)
                    cur->next->prev = cur->prev;
                cur->prev->next = cur->next;
            }

            cur->next = cur->prev = NULL;
            break;
        }
        cur = cur->next;
    }
}

void add_query(QueryNode* node) {
    int i, count;
    for (i = 0; i < size; ++i) {
        if (strcmp(query_table[i]->query, node->query) == 0) {
            count = remove_query(query_table[i]);
            add_to_querylist(query_table[i], count + 1);
            return;
        }
    }

    if (size < MAX_SIZE) {
        query_table[size] = node;
        add_to_querylist(node, 1);
        ++size;
    } else {
        QueryNode* min = *(count_list->querylist);
        int minindex = 0;

        for (i = 0; i < size; ++i) {
            if (query_table[i] == min) {
                minindex = i;
                break;
            }
        }

        query_table[minindex] = node;
        remove_query(min);
        add_to_querylist(node, 1);
    }
}

int find_count(QueryNode* node) {
    CountNode* cur_cnode = count_list;

    while (cur_cnode != NULL) {
        QueryNode* head = *(cur_cnode->querylist);
        while (head != NULL) {
            if (head == node) {
                return cur_cnode->count;
            } 
            head = head->next;
        }
        cur_cnode = cur_cnode->next;
    }
    return 0;
}

void print_output() {
    CountNode* cur = count_list;

    while (cur != NULL) {
        QueryNode* head = *(cur->querylist);
        if (head == NULL) { cur = cur->next; continue; }
        printf("%d ", cur->count);
        while (head->next != NULL) {
            printf("%s ", head->query);
            head = head->next;
        }
        printf("%s\n", head->query);
        cur = cur->next;
    }
}