#include "immintrin.h"
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <cassert>
#include <armadillo>
#include <cstdlib>
#include "complex_dotproduct.hpp"
#include "timer.hpp"

// Complex matrix multiplication C = AB
// where A has dimensions r1 x c1, B has dimensions c1 x 1 (B is a vector)
void matmulAVX512(const Complex* A, int r1, int c1, const Complex* B, int c2, Complex* C) {
    // __m512i* a_row = (__m512i*)A; // Should I use _mm512_loadu_epi16?
    // __m512i* b_col = (__m512i*)B;
    for (int i = 0; i < r1 * c1; i += 32) { // treat i as the index of the Complex value inside A where A is row major
        Complex dp = dotProduct16x32(*(__m512i *)(A + i), *(__m512i *)(B));
        *C = dp;
        C += 1;
        // Should I use _mm512_mask_compress_epi16 to load into a __m512i buffer then
        // call _mm_mask_compressstoreu_epi16 when its full to store it to memory?
        // Or is the cache already batching these writes
    }
    (void)c2;
}

// Prints matrix in row major order
void printMatrix(const Complex* mat, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("(%d,%d) ", mat[i * cols + j].real, mat[i * cols + j].imag);
        }
        printf("\n");
    }
}

// Checks if arma::cx_fmat and Complex* matrices are equal
bool matricesEqual(const Complex* C, arma::cx_fmat& armaC) {
    arma::cx_fmat::iterator it = armaC.begin();
    arma::cx_fmat::iterator itEnd = armaC.end();
    for (int i = 0; it != itEnd; it++, i++) {
        if (C[i].real != (int16_t)(*it).real() || C[i].imag != (int16_t)(*it).imag()) {
            return false;
        }
    }
    return true;
}

// Initializes matrix incrementally from 0 to size (% mod)
// where size = # rows * # columns
// if mod is 0 then fill with zeros
void generateMatrix(Complex* mat, int size, int mod = 30) {
    Complex zero = {0,0};
    for(int i = 0; i < size; i++) {
        int16_t ri = static_cast<int16_t>((i%mod)+1);
        Complex num = {ri, ri};
        mat[i] = mod ? num : zero;
    }
}

// Runs matmulAVX512() numIter times and and returns execution time in μs
double runAVXBenchmark(Complex* A, int r1, int c1, Complex* B, Complex* C, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        matmulAVX512(A, r1, c1, B, 1, C);
    }
    return timeSince(start);
}

// Runs Armadillo matrix multiply numIter times and returns execution time in μs
// Pass in Armadillo matrices by reference to avoid copying them
double runArmaBenchmark(arma::cx_fmat& armaA, arma::cx_fmat& armaB, arma::cx_fmat& armaC, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        armaC = armaA * armaB;
    }
    return timeSince(start);
}

// Copies int16_t integers stored in source and converts them to floating point
// and stores them in dest; rows x cols is the size of both matrices
arma::cx_fmat complexMatrixToArma(Complex* source, int rows, int cols) {
    arma::fmat real(rows, cols);
    arma::fmat imag(rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            real(i, j) = source[i * cols + j].real;
            imag(i, j) = source[i * cols + j].imag;
        }
    }
    arma::cx_fmat armaCopy(real, imag);
    return armaCopy;
}

// Supresses ISO C++ warning about variable length array
#define NROWS 32
#define NCOLS 32
#define DEFAULT_ITER 1000000
// Initialize test matrices and run benchmarks using my code vs Armadillo's library
void runBenchmarks(int numIter = DEFAULT_ITER) {
    Complex A[NROWS * NCOLS] __attribute__((aligned(64))); // What to align it to?
    Complex B[NCOLS] __attribute__((aligned(64)));         // B is a 32 x 1 matrix (vector)
    Complex C[NCOLS] __attribute__((aligned(64)));         // C is the 32 x 1 resulting matrix
    // Initialize matrices for AVX
    generateMatrix(A, NROWS * NCOLS, 5);
    generateMatrix(B, NCOLS, 5);
    generateMatrix(C, NCOLS, 0); // initialize C to all 0s

    // printMatrix(A, NROWS, NCOLS);
    // printMatrix(B, NROWS, 1);
    // printMatrix(C, NROWS, 1);
    
    // Initialize matrices for Armadillo (Copy from A, B, C)
    arma::cx_fmat armaA = complexMatrixToArma(A, NROWS, NCOLS);
    arma::cx_fmat armaB = complexMatrixToArma(B, NCOLS, 1);
    arma::cx_fmat armaC = complexMatrixToArma(C, NROWS, 1);
    
    // Run benchmarks for both AVX and Armadillo
    double avxTime = runAVXBenchmark(A, NROWS, NCOLS, B, C, numIter);
    double armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
    // Assert the resulting matrices are the same
    printMatrix(C, NROWS, 1);
    std::cout << armaC;
    assert(matricesEqual(C, armaC));
    // Output results
    double avgAVX = avxTime / (double)numIter;
    double avgArma = armaTime / (double)numIter;
    printf("C = AB executed %d times.\n", numIter);
    printf("Dimensions:       (%u x %u) * (%u x 1)\n", NROWS, NCOLS, NCOLS);
    printf("MKL/Arma:  %10.3f µs per iteration\n", avgArma);
    printf("My code:   %10.3f µs per iteration\n", avgAVX);
    printf("%2.2fx MKL/Armadillo float matrix multiply\n", avgArma / avgAVX);
}

static int showUsage(char *prog) {
    fprintf(stderr, "Usage: %s [-v] [iterations]\n", prog);
    fprintf(stderr, "   -v: Sets the environmental variable MKL_VERBOSE=1 to see the Intel MKL function calls under the hood.\n");
    fprintf(stderr, "   iterations: number of iterations to run the tests. Default is %d.\n", DEFAULT_ITER);
    return 1;
}

// int main() {
//     __m256i vec1 = _mm256_setr_epi16(4, 5, 13, 6, 1, 2, 3, 4, 5,  6,  7,  8,  9,  10, 11, 12);
//     __m256i vec2 = _mm256_setr_epi16(9, 3, 6,  7, 5, 6, 7, 8, 9,  10, 11, 12, 13, 14, 15, 16);
//     __m256i res = _mm256_myComplexMult_epi16(vec1, vec2);
//     print_m256i(res);
//     Complex sum = hsum8x32(res);
//     printf("real: %d, imag: %d\n", sum.real, sum.imag);

//     return 0;
// }

// trying to get complex dot product working so I compare with it
void testArmaDot() {
    arma::cx_fvec test(5);
    test.fill(arma::cx_float(2, 1));
    arma::cx_float testDot = dot(test, test);
    std::cout << testDot;
    assert(1==0); // stop here;
}

int main(int argc, char** argv) {
    testArmaDot();
    if(argc == 1) {
        runBenchmarks();
    }
    else if(argc == 2) {
        if(strcmp(argv[1], "-v") == 0) {
            setenv("MKL_VERBOSE", "1", 1);
            runBenchmarks();
        } else {
            unsigned long iterations = strtoul(argv[1], NULL, 0);
            runBenchmarks(iterations);
        }
    } else if(argc == 3) {
        if(strcmp(argv[1], "-v") == 0) {
            setenv("MKL_VERBOSE", "1", 1);
            unsigned long iterations = strtoul(argv[2], NULL, 0);
            runBenchmarks(iterations);
        } else {
            return showUsage(argv[0]);
        }
    } else {
        return showUsage(argv[0]);
    }
    return 0;
}