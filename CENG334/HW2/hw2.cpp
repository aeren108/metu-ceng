#include <iostream>
#include <vector>
#include <pthread.h>
#include <semaphore.h>

#include "hw2_output.h"

using std::cin, std::cout;

int **A, **B, **C, **D;
int **J, **L;
int **R;

int r1, c1;
int r2, c2;
int r3, c3;
int r4, c4;

std::vector<pthread_t> addfirst_threads;
std::vector<pthread_t> addsecnd_threads;
std::vector<pthread_t> multiply_threads;

void read_input() {
    cin >> r1 >> c1;
    A = new int*[r1];
    for (int i = 0; i < r1; ++i) A[i] = new int[c1];

    for (int i = 0; i < r1; ++i) {
        for (int j = 0; j < c1; ++j) {
            cin >> A[i][j];
            cout << A[i][j] << " ";
        }
        cout << std::endl;
    }
    cin >> r2 >> c2;
    B = new int*[r2];
    for (int i = 0; i < r2; ++i) B[i] = new int[c1];

    for (int i = 0; i < r2; ++i)
        for (int j = 0; j < c2; ++j) 
            cin >> B[i][j];

    cin >> r3 >> c3;
    C = new int*[r3];
    for (int i = 0; i < r3; ++i) C[i] = new int[c1];

    for (int i = 0; i < r3; ++i)
        for (int j = 0; j < c3; ++j) 
            cin >> C[i][j];

    cin >> r4 >> c4;
    D = new int*[r4];
    for (int i = 0; i < r4; ++i) D[i] = new int[c1];

    for (int i = 0; i < r4; ++i)
        for (int j = 0; j < c4; ++j) 
            cin >> D[i][j];

    J = new int*[r1];
    for (int i = 0; i < r1; ++i) J[i] = new int[c1];

    L = new int*[r3];
    for (int i = 0; i < r3; ++i) L[i] = new int[c3];

    R = new int*[r1];
    for (int i = 0; i < r1; ++i) R[i] = new int[c3];

}

//wait for a row to be completed in first addition
void wait_for_row(int row) { 

}

//wait for a column to be completed in second addition
void wait_for_col(int col) {

}

void* add_first() {
    int row = 0;

    for (int i = 0; i < c1; ++i) {
        //J[row][i] = A[row][i] + B[row][i];
        cout << "Row: " << row << " Col: " << i << std::endl;
        hw2_write_output(0, row, i, A[row][i] + B[row][i]);
    }
    cout << "Row: LAST " << row << std::endl;
    //delete arg;
}

void* add_second(void* arg) {
    int row = *(int*) arg;

    for (int i = 0; i < c3; ++i) {
        L[row][i] = C[row][i] + D[row][i];
        //hw2_write_output(1, row, i, L[row][i]);
    }

    //delete arg;
}

void* multiply(void* arg) {
    int row = *(int*) arg;

    wait_for_row(row);

    for (int i = 0; i < c3; ++i) {
        wait_for_col(i);
        R[row][i] = 0;
        for (int j = 0; j < c1; ++j) { //row of J
            for (int k = 0; k < r3; ++k) { //col of L
                R[row][i] += J[row][j] * L[k][i];
            }
        }
        //hw2_write_output(2, row, i, R[row][i]);
    }

    delete arg;
}

int main(int argc, char const *argv[]) {
    hw2_init_output();
    read_input();
    
    for (int i = 0; i < r1; ++i) { cout << "Dene" << i << std::endl; int *r = new int; *r = i; add_first(); cout << "Dene" << i << std::endl;}
    //for (int i = 0; i < r3; ++i) { int *r = new int; *r = i; add_second(r);}
    //for (int i = 0; i < r1; ++i) { int *r = new int; *r = i; multiply(r);}

    for (int i = 0; i < r1; ++i) {
        for (int j = 0; j < c3; ++j) {
            cout << R[i][j] << " ";
        }

        cout << std::endl;
    }

    return 0;
}
