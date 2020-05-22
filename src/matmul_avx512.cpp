#include "immintrin.h"
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <cassert>
#include <armadillo>
#include <cstdlib>
#include "intrinsics_dotproduct.hpp"
#include "timer.hpp"

// Matrix multiplication C = AB
// where A has dimensions r1 x c1, B has dimensions c1 x 1 (B is a vector)
void matmulAVX512(const int16_t* A, int r1, int c1, const int16_t* B, int c2, int16_t* C) {
    // __m512i* a_row = (__m512i*)A; // Should I use _mm512_loadu_epi16?
    // __m512i* b_col = (__m512i*)B;
    for (int i = 0; i < r1 * c1; i += 32) { // treat i as the index of the int16_t value inside A where A is row major
        int16_t dp = dotProduct32x16(*(__m512i *)(A + i), *(__m512i *)(B));
        *C = dp;
        C += 1;
        // Should I use _mm512_mask_compress_epi16 to load into a __m512i buffer then
        // call _mm_mask_compressstoreu_epi16 when its full to store it to memory?
        // Or is the cache already batching these writes
    }
    (void)c2;
}

// Prints matrix in row major order
void printMatrix(const int16_t* mat, int rows, int cols) {
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < cols; j++)
        {
            std::cout << std::setw(5) << mat[i * cols + j];
        }
        std::cout << std::endl;
    }
}

// Checks if arma::Mat<float> and int16_t* matrices are equal
bool matricesEqual(const int16_t* C, arma::Mat<float>& armaC) {
    arma::Mat<float>::iterator it = armaC.begin();
    arma::Mat<float>::iterator itEnd = armaC.end();
    for (int i = 0; it != itEnd; it++, i++)
    {
        if ((*it) != C[i])
            return false;
    }
    return true;
}

// Initializes matrix incrementally from 0 to size (% mod)
// where size = # rows * # columns
// if mod is 0 then fill with zeros
void generateMatrix(int16_t* mat, int size, int mod = 30) {
    for (int i = 0; i < size; i++)
    {
        //Complex num = {(i%mod), (i+1)%mod};
        mat[i] = mod ? i % mod : 0;
    }
}

// Runs matmulAVX512() numIter times and and returns execution time in μs
int16_t runAVXBenchmark(int16_t* A, int r1, int c1, int16_t* B, int16_t* C, int numIter) {
    int16_t start = getTime();
    for (int i = 0; i < numIter; i++) {
        matmulAVX512(A, r1, c1, B, 1, C);
    }
    return timeSince(start);
}

// Runs Armadillo matrix multiply numIter times and returns execution time in μs
// Pass in Armadillo matrices by reference to avoid copying them
int16_t runArmaBenchmark(arma::Mat<float>& armaA, arma::Mat<float>& armaB, arma::Mat<float>& armaC, int numIter) {
    int16_t start = getTime();
    for (int i = 0; i < numIter; i++) {
        armaC = armaA * armaB;
    }
    return timeSince(start);
}

// Copies int16_t integers stored in source and converts them to floating point
// and stores them in dest; rows x cols is the size of both matrices
void int16MatrixToArmaFloat(int16_t* source, arma::Mat<float>& dest, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            dest(i, j) = (float)source[i * cols + j];
        }
    }
}

// Supresses ISO C++ warning about variable length array
#define NROWS 32
#define NCOLS 32
#define DEFAULT_ITER 1000000
// Initialize test matrices and run benchmarks using my code vs Armadillo's library
void runBenchmarks(int numIter = DEFAULT_ITER) {
    int16_t A[NROWS * NCOLS] __attribute__((aligned(64))); // What to align it to?
    int16_t B[NCOLS] __attribute__((aligned(64)));         // B is a 32 x 1 matrix (vector)
    int16_t C[NCOLS] __attribute__((aligned(64)));         // C is the 32 x 1 resulting matrix
    // Initialize matrices for AVX
    generateMatrix(A, NROWS * NCOLS, 40);
    generateMatrix(B, NCOLS, 40);
    generateMatrix(C, NCOLS, 0); // initialize C to all 0s
    // Initialize matrices for Armadillo
    arma::Mat<float> armaA(NROWS, NCOLS);
    arma::Mat<float> armaB(NCOLS, 1);
    arma::Mat<float> armaC(NROWS, 1);
    int16MatrixToArmaFloat(A, armaA, NROWS, NCOLS);
    int16MatrixToArmaFloat(B, armaB, NCOLS, 1);
    int16MatrixToArmaFloat(C, armaC, NROWS, 1);
    //armaA = armaA.t(); // Armadillo copies the matrices column major (?), so transpose A
    // Run benchmarks for both AVX and Armadillo
    double avxTime = runAVXBenchmark(A, NROWS, NCOLS, B, C, numIter);
    double armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
    // Assert the resulting matrices are the same
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

int main() {
    __m256i vec1 = _mm256_setr_epi16(4, 5, 13, 6, 1, 2, 3, 4, 5,  6,  7,  8,  9,  10, 11, 12);
    __m256i vec2 = _mm256_setr_epi16(9, 3, 6,  7, 5, 6, 7, 8, 9,  10, 11, 12, 13, 14, 15, 16);
    __m256i res = _mm256_myComplexMult_epi16(vec1, vec2);
    print_m256i(res);

    return 0;
}

// int main(int argc, char** argv) {
//     if(argc == 1) {
//         runBenchmarks();
//     }
//     else if(argc == 2) {
//         if(strcmp(argv[1], "-v") == 0) {
//             setenv("MKL_VERBOSE", "1", 1);
//             runBenchmarks();
//         } else {
//             unsigned long iterations = strtoul(argv[1], NULL, 0);
//             runBenchmarks(iterations);
//         }
//     } else if(argc == 3) {
//         if(strcmp(argv[1], "-v") == 0) {
//             setenv("MKL_VERBOSE", "1", 1);
//             unsigned long iterations = strtoul(argv[2], NULL, 0);
//             runBenchmarks(iterations);
//         } else {
//             return showUsage(argv[0]);
//         }
//     } else {
//         return showUsage(argv[0]);
//     }
//     return 0;
// }