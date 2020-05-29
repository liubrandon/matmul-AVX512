// Project file headers
#include "complex_dotproduct.hpp"
#include "timer.hpp"
// Standard libraries
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <cassert>
#include <cstdlib>
// Armadillo wrapper for Intel MKL
#include <armadillo>
// Provides Intel Intrinsics
#include "immintrin.h"
// Agner Fog's Vector Class Library
#include "vectorclass.h"
#include "complexvec1.h"

// Currently, the program supports matrices of size 64x64, 16x64, and 64x16 multiplied by vectors
bool dimensionsValid(int r1, int c1) {
   return (r1 == 16 && c1 == 64) || (r1 == 64 && c1 == 16) || (r1 == 64 && c1 == 64);
}
// function to print complex number vector:
template <typename C>
void printcx(const char * text, C a) {
    auto aa = a.to_vector(); // get elements as real vector
    printf("%s", text);    // print text
    for (int n = 0; n < a.size(); n++) { // loop through elements
        printf("(%.3G,%.3G)  ", aa[2*n], aa[2*n+1]);
    }
}

static inline void matmulVCL(const Complex_float* A, int r1, int c1, const Complex_float* B, Complex_float* C) {
    static const Complex8f bSlice1 = *(Complex8f*)(B+(0*8));
    static const Complex8f bSlice2 = *(Complex8f*)(B+(1*8));
    if(c1 == 8) {
        for(int i = 0; i < r1*c1; i += 8) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i) * bSlice1);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
    else if(c1 == 16) {
        for(int i = 0; i < r1*c1; i += 16) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i+(0*8)) * bSlice1)
                               + chorizontal_add(*(Complex8f*)(A+i+(1*8)) * bSlice2);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
    else if(c1 == 64) {
        static const Complex8f bSlice3 = *(Complex8f*)(B+(2*8));
        static const Complex8f bSlice4 = *(Complex8f*)(B+(3*8));
        static const Complex8f bSlice5 = *(Complex8f*)(B+(4*8));
        static const Complex8f bSlice6 = *(Complex8f*)(B+(5*8));
        static const Complex8f bSlice7 = *(Complex8f*)(B+(6*8));
        static const Complex8f bSlice8 = *(Complex8f*)(B+(7*8));
        for(int i = 0; i < r1*c1; i += 64) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i+(0*8)) * bSlice1)
                               + chorizontal_add(*(Complex8f*)(A+i+(1*8)) * bSlice2)
                               + chorizontal_add(*(Complex8f*)(A+i+(2*8)) * bSlice3)
                               + chorizontal_add(*(Complex8f*)(A+i+(3*8)) * bSlice4)
                               + chorizontal_add(*(Complex8f*)(A+i+(4*8)) * bSlice5)
                               + chorizontal_add(*(Complex8f*)(A+i+(5*8)) * bSlice6)
                               + chorizontal_add(*(Complex8f*)(A+i+(6*8)) * bSlice7)
                               + chorizontal_add(*(Complex8f*)(A+i+(7*8)) * bSlice8);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
} 

// Complex matrix multiplication C = AB
// where A has dimensions r1 x c1, B has dimensions c1 x 1 (B is a vector)
static inline void matmulAVX512(const Complex_int16* A, const int r1, const int c1, const Complex_int16* B, Complex_int16* C) {
    static const __m512i bSlice[4] = {
        _mm512_loadu_si512((const void*)(0+B)),
        _mm512_loadu_si512((const void*)(16+B)),
        _mm512_loadu_si512((const void*)(32+B)),
        _mm512_loadu_si512((const void*)(48+B)),
    };
    int cIdx = 0;
    Complex_int16 tempC[64] __attribute__((aligned(64)));
    memset((void*)tempC, 0, (size_t)r1);
    if(c1 == 8) {
        for(int i = 0; i < r1 * c1; i += 8, cIdx++) { // treat i as the index of the Complex value inside A where A is row major
            const Complex_int16 dp = hsum8x32(_mm256_myComplexMult_epi16(_mm256_loadu_si256((const __m256i_u*)(A + i)), _mm256_loadu_si256((const __m256i_u*)B)));
            tempC[cIdx] = dp;
        }
    }
    else if(c1 == 16) { // Calculating dot product only needs one __m512i vector
        for(int i = 0; i < r1 * c1; i += 16, cIdx++) { // treat i as the index of the Complex value inside A where A is row major
            const Complex_int16 dp = dotProduct16x32(_mm512_loadu_si512((const void*)(A + i)), bSlice[0]);
            tempC[cIdx] = dp;
        }
    }
    else if (c1 == 64) { // Calculating dot product needs 4 __m512i
        // Option B: Move down columns (slower?)
        // Code to reuse bSlices to the maximum  
        // int bIdx = 0;
        // for(int c = 0; c < c1; c += 16, bIdx++, cIdx=0) { // c is the column offset, 512 bit wide stride
        //     for(int r = 0; r < r1*c1; r+=64, cIdx++) {
        //         // Reuse slice of B for each row (maximum number of reuses)
        //         tempC[cIdx] = tempC[cIdx] + dotProduct16x32(_mm512_loadu_si512((const void*)(A + r + c)), bSlice[bIdx]);
        //     }
        // }
        
        for (int i = 0; i < r1 * c1; i += 64, cIdx += 1) { // TODO: Change to properly block the matrices for cache locality
            // Option C: SIMD sum moving across rows
            // Complex_int16 dpArr[4] = {dotProduct16x32(_mm512_loadu_si512((const void*)(A + i)), bSlice[0]),
            //                          dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 16)), bSlice[1]),
            //                          dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 32)), bSlice[2]),
            //                          dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 48)), bSlice[3])};
            // __m128i all4 = _mm_loadu_si128((const __m128i_u*)dpArr);
            // __m128i idx = _mm_setr_epi16(4,5,6,7,0,1,2,3); // to swap front 4 and back 4
            // __m128i sum1of2 = _mm_add_epi16(_mm_permutexvar_epi16(idx, all4), all4);
            // __m128i idx1 = _mm_setr_epi16(2,3,0,1,0,0,0,0); // to swap front 2 and back 2
            // __m128i sum2of2 = _mm_add_epi16(_mm_permutexvar_epi16(idx1, sum1of2), sum1of2);
            // const Complex_int16 dp = {static_cast<int16_t>(_mm_cvtsi128_si32(sum2of2)),
            //                           static_cast<int16_t>(_mm_extract_epi16(sum2of2, 1))};
            // end SIMD sum (slower?)

            // Option A: move across rows
            const Complex_int16 dp = dotProduct16x32(_mm512_loadu_si512((const void*)(A + i)), bSlice[0])
                                    + dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 16)), bSlice[1])
                                    + dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 32)), bSlice[2])
                                    + dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 48)), bSlice[3]);
            tempC[cIdx] = dp;
        }
    }
    // Store tempC into C
    for(int r = 0; r < r1; r+=16) {
        _mm512_storeu_si512((void*)(C+r), _mm512_loadu_si512((const void*)(tempC+r)));
    }
}

// Prints matrix in row major order
template <typename Complex>
void printMatrix(const Complex* mat, int rows, int cols) {
    bool printFloat = (sizeof(mat[0]) == 64);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if(printFloat) {
                printf("(%.2f,%.2f) ", static_cast<float>(mat[i * cols + j].real), static_cast<float>(mat[i * cols + j].imag));
            } else {
                printf("(%d,%d) ", static_cast<int16_t>(mat[i * cols + j].real), static_cast<int16_t>(mat[i * cols + j].imag));
            }
        }
        printf("\n");
    }
    arma::cx_float a;
}

// Checks if arma::cx_fmat and Complex* matrices are equal
template <typename Complex>
bool matricesEqual(const Complex* C, arma::cx_fmat&  armaC) {
    bool cast = false;
    if(typeid(C[0].real) != typeid(armaC[0].real())) { // cast if the types are different (i.e. need to cast armaC to int16)
        cast = true;
    }
    arma::cx_fmat::iterator it = armaC.begin();
    arma::cx_fmat::iterator itEnd = armaC.end();
    for (int i = 0; it != itEnd; it++, i++) {
        if(cast) {
            if (C[i].real != (int16_t)(*it).real() || C[i].imag != (int16_t)(*it).imag()) {
                return false;
            }
        }
        else {
            if (C[i].real != (*it).real() || C[i].imag != (*it).imag()) {
                return false;
            }
        }
    }
    return true;
}

// Initializes matrix incrementally from 0 to size (% mod)
// where size = # rows * # columns
// if mod is 0 then fill with zeros
template <typename Complex>
void generateMatrix(Complex* mat, int size, int mod = 30) {
    Complex_int16 zero = {0, 0};
    for (int i = 0; i < size; i++) {
        int16_t ri = static_cast<int16_t>((i % mod) + 1);
        Complex_int16 num = {ri, ri};
        mat[i] = mod ? num : zero;
    }
}

// Copies int16_t integers stored in source and converts them to floating point
// and stores them in dest; rows x cols is the size of both matrices
arma::cx_fmat int16MatrixToArma(Complex_int16* source, int rows, int cols) {
    arma::fmat real(rows, cols);
    arma::fmat imag(rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            real(i, j) = static_cast<float>(source[i * cols + j].real);
            imag(i, j) = static_cast<float>(source[i * cols + j].imag);
        }
    }
    arma::cx_fmat armaCopy(real, imag);
    return armaCopy;
}

// Runs matmulAVX512() numIter times and and returns execution time in μs
double runAVXBenchmark(Complex_int16* A, int r1, int c1, Complex_int16* B, Complex_int16* C, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        matmulAVX512(A, r1, c1, B, C);
    }
    return timeSince(start);
}

// Runs Armadillo matrix multiply numIter times and returns execution time in μs
// Pass in Armadillo matrices by reference to avoid copying them
double runArmaBenchmark(const arma::cx_fmat& armaA, const arma::cx_fmat& armaB, arma::cx_fmat& armaC, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        armaC = armaA * armaB;
    }
    return timeSince(start);
}

// Runs numIter times and and returns execution time in μs
double runVCLBenchmark(Complex_float* A, int r1, int c1, Complex_float* B, Complex_float* C, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        matmulVCL(A, r1, c1, B, C);
    }
    return timeSince(start);
}

void int16MatrixToFloat(const Complex_int16* source, Complex_float* dest, int size) {
    for(int i = 0; i < size; i++) {
        Complex_float num = {static_cast<float>(source[i].real), static_cast<float>(source[i].imag)};
        dest[i] = num;
    }
}
// Supresses ISO C++ warning about variable length array
#define NROWS 8
#define NCOLS 8
#define DEFAULT_ITER 1000000
// Initialize test matrices and run benchmarks using my code vs Armadillo's library
void runBenchmarks(int numIter = DEFAULT_ITER) {
    //assert(dimensionsValid(NROWS, NCOLS));
    Complex_int16 A[NROWS * NCOLS] __attribute__((aligned(64))); // What to align it to?
    Complex_int16 B[NCOLS] __attribute__((aligned(64)));         // B is a vector
    Complex_int16 C[NROWS] __attribute__((aligned(64)));         // C is the resulting vector
    
    // Initialize matrices for AVX
    generateMatrix(A, NROWS * NCOLS, 40);
    generateMatrix(B, NCOLS, 40);
    generateMatrix(C, NROWS, 0); // initialize C to all 0s
    
    // Initialize matrices for Armadillo (Copy from A, B, C)
    arma::cx_fmat armaA = int16MatrixToArma(A, NROWS, NCOLS);
    arma::cx_fmat armaB = int16MatrixToArma(B, NCOLS, 1);
    arma::cx_fmat armaC = int16MatrixToArma(C, NROWS, 1);

    // Initialize matrices for VCL (Copy from A, B, C)
    Complex_float floatA[NROWS * NCOLS] __attribute__((aligned(64)));
    Complex_float floatB[NCOLS] __attribute__((aligned(64)));         // B is a vector
    Complex_float floatC[NROWS] __attribute__((aligned(64))); 
    int16MatrixToFloat(A, floatA, NROWS*NCOLS);
    int16MatrixToFloat(B, floatB, NCOLS);
    int16MatrixToFloat(C, floatC, NROWS);

    // Run benchmarks for both AVX and Armadillo
    double avxTime = runAVXBenchmark(A, NROWS, NCOLS, B, C, numIter);
    double vclTime = runVCLBenchmark(floatA, NROWS, NCOLS, floatB, floatC, numIter);
    double armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
    // printMatrix(C, NROWS, 1);
    // std::cout << armaC << std::endl;
    // printMatrix(floatC, NROWS, 1);
    // Assert the resulting matrices are the same
    assert(matricesEqual(C, armaC));
    assert(matricesEqual(floatC, armaC));

    // Output results
    double avgVCL = vclTime / (double)numIter;
    double avgArma = armaTime / (double)numIter;
    double avgAVX = avxTime / (double)numIter;
    printf("C = AB executed %d times.\n", numIter);
    printf("Dimensions:          (%u x %u) * (%u x 1)\n", NROWS, NCOLS, NCOLS);
    printf("float (MKL/Arma): %7.3f µs per iteration\n\n", avgArma);
    printf("int16_t (AVX512): %7.3f µs per iteration\n", avgAVX);
    printf("%2.2fx MKL/Armadillo float matrix * vector\n\n", avgArma / avgAVX);
    printf("float (VCL):      %7.3f µs per iteration\n", avgVCL);
    printf("%2.2fx MKL/Armadillo float matrix * vector\n", avgArma / avgVCL);
}

static int showUsage(char *prog) {
    fprintf(stderr, "Usage: %s [-v] [iterations]\n", prog);
    fprintf(stderr, "   -v: Sets the environmental variable MKL_VERBOSE=1 to see the Intel MKL function calls under the hood.\n");
    fprintf(stderr, "   iterations: number of iterations to run the tests. Default is %d.\n", DEFAULT_ITER);
    return 1;
}

// testing complex dot product
double runArmaDotBench(int numIter) {
    arma::cx_fvec test(16);
    test.fill(arma::cx_float(6, 3));
    double start = getTime();
    arma::cx_float testDot;
    for(int i = 0; i < numIter; i++) {
        testDot = dot(test, test);
    }
    std::cout << "Arma result: " << testDot << std::endl;
    return timeSince(start);
}

double runMyDotBench(int numIter) {
    Complex_int16 test[16] __attribute__((aligned(64)));
    //Complex_int16 test1[16] __attribute__((aligned(64)));
    for (int i = 0; i < 16; i++) {
        Complex_int16 num = {6, 3};
        test[i] = num;
        //test1[i] = num;
    }
    Complex_int16 res;
    //__m512i mul;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        __m512i a = _mm512_load_si512((const void*)test);
        res = dotProduct16x32(a, a);
        
        //mul = _mm512_myComplexMult_epi16(a, a);
    }
    double time = timeSince(start);
    std::cout << "My result: " << "(" << res.real << "," << res.imag << ")" << std::endl;
    return time;
}

double runVCLDotBench(int numIter) {
    Complex8f a(6,3);
    Complex8f b(6,3);
    //__m512 c = _mm512_set_ps(6,3,6,3,6,3,6,3,6,3,6,3,6,3,6,3);
    Complex8f d;
    Complex1f res;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        res = chorizontal_add(a*a)
            + chorizontal_add(b*b);
    }
    double time = timeSince(start);
    std::cout << "VLC result: " << "(" << res.real() << "," << res.imag() << ")" << std::endl;
    return time;
}

void runDotBenchmarks(int numIter) {
    // Run benchmarks for AVX, Armadillo and VCL
    double avxTime = runMyDotBench(numIter);
    double armaTime = runArmaDotBench(numIter);
    double vclTime = runVCLDotBench(numIter);
    std::cout << armaTime << ", " << avxTime << ", " << vclTime << std::endl;
    // Output results
    double avgArma = armaTime / (double)numIter;
    double avgAVX = avxTime / (double)numIter;
    double avgVCL = vclTime / (double)numIter;
    printf("Dot product executed %d times.\n", numIter);
    printf("MKL/Armadillo:   %10.6f µs per iteration\n", avgArma);
    printf("Intrinsics   :   %10.6f µs per iteration\n", avgAVX);
    printf("%2.2fx MKL/Arma float dot\n\n", armaTime / avxTime);
    printf("Agner Fog VCL:   %10.6f µs per iteration\n", avgVCL);
    printf("%2.2fx MKL/Arma float dot\n", armaTime / vclTime);
}

int main(int argc, char **argv) {
    // runDotBenchmarks(100000000);
    // return 0;
    // Complex arr1[4] = {{1,2},{2,3},{3,4},{4,5}};
    // Complex arr2[4] = {{11,21},{21,31},{31,41},{41,51}};
    // __m512 res1 = _mm512_myComplexMult_ps(*(__m512*)arr1, *(__m512*)arr2);
    // print_m512(res1);
    // // return 0;
    // std::cout << std::endl;
    // Complex_int16 arr3[16] = {{1,2},{2,3},{3,4},{4,5},{5,6},{6,7},{7,8},{8,9},{9,10},{10,11},{11,12},{12,13},{13,14},{14,15},{15,16},{16,17}}; 
    // Complex_int16 arr4[16] = {{11,21},{21,31},{31,41},{41,51},{51,61},{61,71},{71,81},{81,91},{91,101},{101,111},{111,121},{121,131},{131,141},{141,151},{151,161},{161,171}}; 
    // __m512i test1 = *(__m512i*)arr3;
    // __m512i test2 = *(__m512i*)arr4;
    // __m512i res = _mm512_myComplexMult_epi16(test1, test2);
    // // print_m512i(test1);
    // print_m512i(res);

    // return 0;
    // Testing horizonal sum
    // Complex_int16 arr[16] = {{1,1},{2,2},{3,3},{4,4},{5,5},{6,6},{7,7},{8,8},{9,9},{10,10},{11,11},{12,12},{13,13},{14,14},{15,15},{16,16}}; 
    // __m512i test = *(__m512i*)arr;
    // print_m512i(test);
    // Complex_int16 res = _mm512_reduce_add_epi16(test);
    // std::cout << res.real << "," << res.imag << std::endl;
    // return 0;
    if (argc == 1) {
        runBenchmarks();
    }
    else if (argc == 2) {
        if (strcmp(argv[1], "-v") == 0) {
            setenv("MKL_VERBOSE", "1", 1);
            runBenchmarks();
        }
        else {
            unsigned long iterations = strtoul(argv[1], NULL, 0);
            runBenchmarks(iterations);
        }
    }
    else if (argc == 3) {
        if (strcmp(argv[1], "-v") == 0) {
            setenv("MKL_VERBOSE", "1", 1);
            unsigned long iterations = strtoul(argv[2], NULL, 0);
            runBenchmarks(iterations);
        }
        else {
            return showUsage(argv[0]);
        }
    }
    else {
        return showUsage(argv[0]);
    }
    return 0;
}