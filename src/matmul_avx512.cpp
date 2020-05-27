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

// function to print complex number vector:
template <typename C>
void printcx(const char * text, C a) {
    auto aa = a.to_vector(); // get elements as real vector
    printf("%s", text);    // print text
    for (int n = 0; n < a.size(); n++) { // loop through elements
        printf("(%.3G,%.3G)  ", aa[2*n], aa[2*n+1]);
    }
}

void matmulVCL64x64(const Complex* A, const Complex* B, Complex* C) {
    // First get 8 8 complex slices of B
    int i =0;
    Complex8f Bslice1;
    Bslice1.load((float*)(B+i+(0*8)));
    Complex8f Bslice2;
    Bslice2.load((float*)(B+i+(1*8)));
    Complex8f Bslice3;
    Bslice3.load((float*)(B+i+(2*8)));
    Complex8f Bslice4;
    Bslice4.load((float*)(B+i+(3*8)));
    Complex8f Bslice5;
    Bslice5.load((float*)(B+i+(4*8)));
    Complex8f Bslice6;
    Bslice6.load((float*)(B+i+(5*8)));
    // Complex8f Bslice7;
    // Bslice7.load((float*)(B+i+(6*8)));
    // Complex8f Bslice8;
    // Bslice8.load((float*)(A+i+(7*8)));

    // printcx("Bslice1: ", Bslice1);
    // std::cout << std::endl;
    // printcx("Bslice2: ", Bslice2);
    // std::cout << std::endl;
    // printcx("Bslice3: ", Bslice3);
    // std::cout << std::endl;
    // printcx("Bslice4: ", Bslice4);
    // std::cout << std::endl;
    // printcx("Bslice5: ", Bslice5);
    // std::cout << std::endl;
    // printcx("Bslice6: ", Bslice6);
    // std::cout << std::endl;
    // printcx("Bslice7: ", Bslice7);
    // std::cout << std::endl;
    // printcx("Bslice8: ", Bslice8);
    // std::cout << std::endl;
    for(int i = 0; i < 48*48; i += 48) {
        // First get 8 8 complex slices of A
        // First get 8 8 complex slices of A
        Complex8f Aslice1;
        Aslice1.load((float*)(A+i+(0*8)));
        Complex8f Aslice2;
        Aslice2.load((float*)(A+i+(1*8)));
        Complex8f Aslice3;
        Aslice3.load((float*)(A+i+(2*8)));
        Complex8f Aslice4;
        Aslice4.load((float*)(A+i+(3*8)));
        Complex8f Aslice5;
        Aslice5.load((float*)(A+i+(4*8)));
        Complex8f Aslice6;
        Aslice6.load((float*)(A+i+(5*8)));
        // Complex8f Aslice7;
        // Aslice7.load((float*)(A+i+(6*8)));
        // Complex8f Aslice8;
        // Aslice8.load((float*)(A+i+(7*8)));

        // printcx("Aslice1: ", Aslice1);
        // std::cout << std::endl;
        // printcx("Aslice2: ", Aslice2);
        // std::cout << std::endl;
        // printcx("Aslice3: ", Aslice3);
        // std::cout << std::endl;
        // printcx("Aslice4: ", Aslice4);
        // std::cout << std::endl;
        // printcx("Aslice5: ", Aslice5);
        // std::cout << std::endl;
        // printcx("Aslice6: ", Aslice6);
        // std::cout << std::endl;
        // printcx("Aslice7: ", Aslice7);
        // std::cout << std::endl;
        // printcx("Aslice8: ", Aslice8);
        // std::cout << std::endl;
        Complex1f hsum1 = chorizontal_add(Aslice1 * Bslice1);// 300.0x
        Complex1f hsum2 = chorizontal_add(Aslice2 * Bslice2);//  1.5x
        Complex1f hsum3 = chorizontal_add(Aslice3 * Bslice3);//  1.5x
        Complex1f hsum4 = chorizontal_add(Aslice4 * Bslice4);//  0.7x
        Complex1f hsum5 = chorizontal_add(Aslice5 * Bslice5);//  1.1x
        Complex1f hsum6 = chorizontal_add(Aslice6 * Bslice6); // 0.6x
        // Complex1f hsum7 = chorizontal_add(Aslice7 * Bslice7);
        // Complex1f hsum8 = chorizontal_add(Aslice8 * Bslice8);
        Complex1f dp = hsum1 + hsum2 + hsum3 + hsum4 + hsum5 + hsum6;// + hsum7 + hsum8;
        Complex res = {dp.real(), dp.imag()};
        *C = res;
        C += 1;
    }
} 

void matmulVCL(const Complex* A, int r1, int c1, const Complex* B, int c2, Complex* C) {
    Complex8f res;
    for(int i = 0; i < r1*c1; i += 8) {
        Complex1f dp = chorizontal_add(*(Complex8f*)(A+i) * *(Complex8f*)B);
        Complex res = {dp.real(), dp.imag()};
        *C = res;
        C += 1;
    }
} 

// Complex matrix multiplication C = AB
// where A has dimensions r1 x c1, B has dimensions c1 x 1 (B is a vector)
void matmulAVX512(const Complex* A, int r1, int c1, const Complex* B, int c2, Complex* C) {
    // __m512i* a_row = (__m512i*)A; // Should I use _mm512_loadu_epi16?
    // __m512i* b_col = (__m512i*)B;
    for (int i = 0; i < r1 * c1; i += 16) { // treat i as the index of the Complex value inside A where A is row major
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
            printf("(%.2f,%.2f) ", mat[i * cols + j].real, mat[i * cols + j].imag);
        }
        printf("\n");
    }
    arma::cx_float a;
}

// Checks if arma::cx_fmat and Complex* matrices are equal
bool matricesEqual(const Complex* C, arma::cx_fmat&  armaC) {
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
    Complex zero = {0, 0};
    for (int i = 0; i < size; i++) {
        int16_t ri = static_cast<int16_t>((i % mod) + 1);
        Complex num = {ri, ri};
        mat[i] = mod ? num : zero;
    }
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
double runArmaBenchmark(arma::cx_fmat&  armaA, arma::cx_fmat&  armaB, arma::cx_fmat&  armaC, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        armaC = armaA * armaB;
    }
    return timeSince(start);
}

// Runs numIter times and and returns execution time in μs
double runVCLBenchmark(Complex* A, int r1, int c1, Complex* B, Complex* C, int numIter) {
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        //matmulVCL(A, r1, c1, B, 1, C);
        matmulVCL64x64(A, B, C);
    }
    return timeSince(start);
}

// Initializes matrix incrementally from 0 to size (% mod)
// where size = # rows * # columns
// if mod is 0 then fill with zeros
void generateVCLMatrix(Complex1f* mat, int size, int mod = 30) {
    Complex1f zero(0,0);
    for (int i = 0; i < size; i++) {
        float ri = static_cast<float>((i % mod));
        Complex1f num(ri, ri);
        mat[i] = mod ? num : zero;
    }
}

// Prints matrix in row major order
void printVCLMatrix(const Complex1f* mat, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("(%f,%f) ", mat[i * cols + j].real(), mat[i * cols + j].imag());
        }
        printf("\n");
    }
}

// Copies int16_t integers stored in source and converts them to floating point
// and stores them in dest; rows x cols is the size of both matrices
arma::cx_fmat vclMatrixToArma(const Complex1f* source, int rows, int cols) {
    arma::fmat real(rows, cols);
    arma::fmat imag(rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            real(i, j) = source[i * cols + j].real();
            imag(i, j) = source[i * cols + j].imag();
        }
    }
    arma::cx_fmat armaCopy(real, imag);
    return armaCopy;
}

// Supresses ISO C++ warning about variable length array
#define NROWS 48
#define NCOLS 48
#define DEFAULT_ITER 1000000
// Initialize test matrices and run benchmarks using my code vs Armadillo's library
void runBenchmarks(int numIter = DEFAULT_ITER) {
    Complex A[NROWS * NCOLS] __attribute__((aligned(64))); // What to align it to?
    Complex B[NCOLS] __attribute__((aligned(64)));         // B is a 32 x 1 matrix (vector)
    Complex C[NCOLS] __attribute__((aligned(64)));         // C is the 32 x 1 resulting matrix

    
    // Initialize matrices for AVX
    generateMatrix(A, NROWS * NCOLS, 10);
    generateMatrix(B, NCOLS, 10);
    generateMatrix(C, NCOLS, 0); // initialize C to all 0s
    
    // printMatrix(A, NROWS, NCOLS);
    // printMatrix(B, NROWS, 1);
    // printMatrix(C, NROWS, 1);

    // Complex8f firstrow;
    // firstrow.load((float*)A);
    // printcx("First row of A: ", *(Complex8f*)A);
    // return;

    // Complex1f A1[8 * 8] __attribute__((aligned(64))); // What to align it to?
    // Complex1f B1[8] __attribute__((aligned(64)));    
    // Complex1f C1[8] __attribute__((aligned(64)));
    // generateVCLMatrix(A1, 64);
    // generateVCLMatrix(B1, 8);
    // generateVCLMatrix(C1, 8, 0);

    // printVCLMatrix(A1, 8, 8);
    // printVCLMatrix(B1, 8, 1);
    // printVCLMatrix(C1, 8, 1);

    

    // Initialize matrices for Armadillo (Copy from A, B, C)
    arma::cx_fmat armaA = complexMatrixToArma(A, NROWS, NCOLS);
    arma::cx_fmat armaB = complexMatrixToArma(B, NCOLS, 1);
    arma::cx_fmat armaC = complexMatrixToArma(C, NROWS, 1);

    // Run benchmarks for both AVX and Armadillo
    //double avxTime = runAVXBenchmark(A, NROWS, NCOLS, B, C, numIter);
    double armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
    double vclTime = runVCLBenchmark(A, NROWS, NCOLS, B, C, numIter);
    // Assert the resulting matrices are the same
    printMatrix(C, 8, 1);
    std::cout << armaC << std::endl;
    assert(matricesEqual(C, armaC));

    // Output results
    double avgVCL = vclTime / (double)numIter;
    double avgArma = armaTime / (double)numIter;
    printf("C = AB executed %d times.\n", numIter);
    printf("Dimensions:       (%u x %u) * (%u x 1)\n", NROWS, NCOLS, NCOLS);
    printf("MKL/Arma:  %10.3f µs per iteration\n", avgArma);
    printf("VCL code:   %10.3f µs per iteration\n", avgVCL);
    printf("%2.2fx MKL/Armadillo float matrix multiply\n", avgArma / avgVCL);
}

static int showUsage(char *prog) {
    fprintf(stderr, "Usage: %s [-v] [iterations]\n", prog);
    fprintf(stderr, "   -v: Sets the environmental variable MKL_VERBOSE=1 to see the Intel MKL function calls under the hood.\n");
    fprintf(stderr, "   iterations: number of iterations to run the tests. Default is %d.\n", DEFAULT_ITER);
    return 1;
}

// testing complex dot product
double runArmaDotBench(int numIter) {
    arma::cx_fvec test(8);
    test.fill(arma::cx_float(6, 3));
    std::cout << "Arma vec: " << test << std::endl;
    double start = getTime();
    arma::cx_float testDot;
    for(int i = 0; i < numIter; i++) {
        testDot = dot(test, test);
    }
    std::cout << "Arma result: " << testDot << std::endl;
    return timeSince(start);
}

double runMyDotBench(int numIter) {
    Complex test[16] __attribute__((aligned(64)));
    Complex test1[16] __attribute__((aligned(64)));
    for (int i = 0; i < 16; i++) {
        Complex num = {6, 3};
        test[i] = num;
        test1[i] = num;
    }
    Complex res;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        res = dotProduct16x32(*((__m512i *)test), *((__m512i *)test1));
    }
    return timeSince(start);
    std::cout << "My result: " << "(" << res.real << "," << res.imag << ")" << std::endl;
}

double runVCLDotBench(int numIter) {
    Complex8f a(6,3);
    printcx("VCL vec: ", a);
    Complex1f res;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        res = chorizontal_add(a*a);
    }
    std::cout << "My result: " << "(" << res.real() << "," << res.imag() << ")" << std::endl;
    return timeSince(start);
}

void runDotBenchmarks(int numIter) {
    // Run benchmarks for AVX, Armadillo and VCL
    double avxTime = runMyDotBench(numIter);
    double armaTime = runArmaDotBench(numIter);
    double vclTime = runVCLDotBench(numIter);
    // Output results
    double avgArma = armaTime / (double)numIter;
    double avgAVX = avxTime / (double)numIter;
    double avgVCL = vclTime / (double)numIter;
    printf("Dot product executed %d times.\n", numIter);
    printf("MKL/Armadillo:   %10.3f µs per iteration\n", avgArma);
    printf("Intrinsics   :   %10.3f µs per iteration\n", avgAVX);
    printf("%2.2fx MKL/Armadillo float dot\n\n", avgArma / avgAVX);
    printf("Agner Fog VCL:   %10.3f µs per iteration\n", avgVCL);
    printf("%2.2fx MKL/Armadillo float dot\n", avgArma / avgVCL);
}

int main(int argc, char **argv) { 
    // Complex arr1[4] = {{1,2},{3,4},{5,6},{7,8}};
    // Complex arr2[4] = {{9,10},{11,12},{13,14},{15,16}};
    // __m512 res1 = _mm512_myComplexMult_ps(*(__m512*)arr1, *(__m512*)arr2);
    // print_m512(res1);
    Complex_int16 arr3[16] = {{1,2},{2,3},{3,4},{4,5},{5,6},{6,7},{7,8},{8,9},{9,10},{10,11},{11,12},{12,13},{13,14},{14,15},{15,16},{16,17}}; 
    Complex_int16 arr4[16] = {{11,21},{21,31},{31,41},{41,51},{51,61},{61,71},{71,81},{81,91},{91,101},{101,111},{111,121},{121,131},{131,141},{141,151},{151,161},{161,171}}; 
    __m512i test1 = *(__m512i*)arr3;
    __m512i test2 = *(__m512i*)arr4;
    __m512i res = _mm512_myComplexMult_epi16(test1, test2);
    print_m512i(test2);
    print_m512i(res);

    return 0;
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