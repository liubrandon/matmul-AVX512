#include "immintrin.h"
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <cassert>
using namespace std;

struct Complex {
 int16_t real;
 int16_t image;
};

// Takes the 512 bit vector of integers vec (__m512i ) and
// prints the 32 short ints (16 bits each) stored inside
void print_m512i(__m512i vec) {
    int16_t* val = (int16_t*)&vec;
    cout << "__m512i: ";
    for(int i = 0; i < 32; i++) {
        cout << setw(4) << val[i];
    }
    cout << endl;
}

// Fills matrix incrementally from 0 - size,
// where size = # rows * # columns
// if mode is 0 then fill with zeros
void generateMatrix(int16_t* mat, int size, int mode=1) {
    for(int i = 0; i < size; i++) {
        mat[i] = mode ? i : 0;
    }
}

// Matrix multiplication AB = C
// where matrix A has dimensions r1 x c1 and B is dimensions c1 x c2 
void matmulAVX512(const int16_t* A, int r1, int c1, const int16_t* B, int c2, int16_t* C) {
    __m512i* a_row = (__m512i*)A;
    __m512i* b_col = (__m512i*)B;
    print_m512i(*a_row);
    print_m512i(*b_col);
    //for(int i = 0; i < r1; i+=32) {
        __m512i dp;
        // multiplies ints in each of the two vectors and saves the low bits in dp
        dp = _mm512_mullo_epi16(*a_row, *b_col);
    //}
    print_m512i(dp);
    
}

int main() {
    int r1 = 32;  // Treat A as a 32 x 32 matrix
    int c1 = 32; 
    int16_t A[r1*c1]__attribute__( ( aligned (64) ) ); // what to align it to?
    int16_t B[c1]__attribute__( ( aligned (64) ) ); // B is a 32 x 1 matrix (vector)
    int16_t C[c1]__attribute__( ( aligned (64) ) ); // C is the 32 x 1 resulting matrix
    generateMatrix(&A[0], r1*c1);
    generateMatrix(&B[0], c1);
    generateMatrix(&C[0], c1, 0); // initialize C to all 0s
    matmulAVX512(&A[0], r1, c1, &B[0], 1, &C[0]);
    return 0;
}