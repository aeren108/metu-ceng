#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>

#include "hw2_output.h"

int **A, **B, **C, **D;
int **J, **L;
int **R;

int r1, c1;
int r2, c2;
int r3, c3;
int r4, c4;

int *col_counts;

sem_t *row_sems;
sem_t *col_sems;
sem_t *col_mutexes;

pthread_t *addfirst_threads;
pthread_t *addsecnd_threads;
pthread_t *multiply_threads;

void read_input() {
    scanf("%d %d", &r1, &c1);
    A = calloc(r1, sizeof(int*));
    for (int i = 0; i < r1; ++i) A[i] = calloc(c1, sizeof(int));

    for (int i = 0; i < r1; ++i)
        for (int j = 0; j < c1; ++j) 
            scanf("%d", &A[i][j]);

    scanf("%d %d", &r2, &c2);
    B = calloc(r2, sizeof(int*));
    for (int i = 0; i < r2; ++i) B[i] = calloc(c2, sizeof(int));

    for (int i = 0; i < r2; ++i)
        for (int j = 0; j < c2; ++j) 
            scanf("%d", &B[i][j]);

    scanf("%d %d", &r3, &c3);
    C = calloc(r3, sizeof(int*));
    for (int i = 0; i < r3; ++i) C[i] = calloc(c3, sizeof(int));

    for (int i = 0; i < r3; ++i)
        for (int j = 0; j < c3; ++j) 
            scanf("%d", &C[i][j]);

    scanf("%d %d", &r4, &c4);
    D = calloc(r4, sizeof(int*));
    for (int i = 0; i < r4; ++i) D[i] = calloc(c4, sizeof(int));

    for (int i = 0; i < r4; ++i)
        for (int j = 0; j < c4; ++j) 
            scanf("%d", &D[i][j]);
}

void init() {
    read_input();

    J = calloc(r1, sizeof(int*));
    for (int i = 0; i < r1; ++i) J[i] = calloc(c1, sizeof(int));

    L = calloc(r3, sizeof(int*));
    for (int i = 0; i < r3; ++i) L[i] = calloc(c3, sizeof(int));

    R = calloc(r1, sizeof(int*));
    for (int i = 0; i < r1; ++i) R[i] = calloc(c3, sizeof(int));

    row_sems = calloc(r1, sizeof(sem_t));
    for (int i = 0; i < r1; ++i) sem_init(row_sems+i, 0, 0);

    col_sems = calloc(c3, sizeof(sem_t));
    for (int i = 0; i < c3; ++i) sem_init(col_sems+i, 0, 0);

    col_mutexes = calloc(c3, sizeof(sem_t));
    for (int i = 0; i < c3; ++i) sem_init(col_mutexes+i, 0, 1);

    col_counts = calloc(c3, sizeof(int));
    for (int i = 0; i < c3; ++i) col_counts[i] = 0;

    addfirst_threads = calloc(r1, sizeof(pthread_t));
    addsecnd_threads = calloc(r3, sizeof(pthread_t));
    multiply_threads = calloc(r1, sizeof(pthread_t));
}

//wait for a row to be completed in first addition
void wait_for_row(int row) {
    sem_wait(row_sems+row);
}

//wait for a column to be completed in second addition
void wait_for_col(int col) {
    sem_wait(col_sems+col);
}

void* add_first(void *arg) {
    int row = *(int*) arg;

    for (int i = 0; i < c1; ++i) {
        J[row][i] = A[row][i] + B[row][i];
        hw2_write_output(0, row, i, J[row][i]);
    }


    free(arg);
}

void* add_second(void* arg) {
    int row = *(int*) arg;

    for (int i = 0; i < c3; ++i) {
        L[row][i] = C[row][i] + D[row][i];
        hw2_write_output(1, row, i, L[row][i]);

    }

    free(arg);
}

void* multiply(void* arg) {
    int row = *(int*) arg;

    for (int i = 0; i < c3; ++i) {

        R[row][i] = 0;
        for (int j = 0; j < c1; ++j) {
            R[row][i] += J[row][j] * L[j][i];
        }
        hw2_write_output(2, row, i, R[row][i]);
    }

    free(arg);
}

int main(int argc, char const *argv[]) {
    hw2_init_output();
    init();
    
    for (int i = 0; i < r1; ++i) { int *r = (int*) malloc(sizeof(int)); *r = i; add_first(r); }
    for (int i = 0; i < r3; ++i) { int *r = (int*) malloc(sizeof(int)); *r = i; add_second(r); }
    for (int i = 0; i < r1; ++i) { int *r = (int*) malloc(sizeof(int)); *r = i; multiply(r); }

    for (int i = 0; i < r1; ++i) {
        for (int j = 0; j < c3; ++j) {
            printf("%d ", R[i][j]);
        }

        printf("\n");
    }

    return 0;
}
