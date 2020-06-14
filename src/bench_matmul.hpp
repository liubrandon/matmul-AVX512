#ifndef BENCH_MATMUL_HPP
#define BENCH_MATMUL_HPP
// Project file headers
#include "matmul.hpp"
#include "complex_dotproduct.hpp"
#include "timer.hpp"
#include "bench_dot.hpp"
#include "deinterleave.hpp"
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

// Prints matrix in row major order
template <typename Complex>
void printMatrix(const Complex* mat, int rows, int cols) {
    bool printFloat = (sizeof(mat[0]) == 64);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if(printFloat) {
                printf("(%.2f,%.2f) ", static_cast<float>(mat[i * cols + j].real), static_cast<float>(mat[i * cols + j].imag));
            } else {
                printf("(%d,%d)", static_cast<int16_t>(mat[i * cols + j].real), static_cast<int16_t>(mat[i * cols + j].imag));
            }
            if(j == 31)
                printf(" ");
        }
        printf("\n");
    }
    arma::cx_float a;
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

// Check if Complex_int16* matrices are equal
bool sameTypeMatricesEqual(const Complex_int16* C1, const Complex_int16* C2, int size) {
    for(int i = 0; i < size; i++) {
        if(C1[i] != C2[i])
            return false;
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
        int16_t ri = static_cast<int16_t>((i % (mod+1)) + 1);
        Complex_int16 num = {1, 0};//{ri, static_cast<int16_t>(ri+1)};
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

void printIntMatrix(const int16_t* A, int nrows, int ncols) {
    for(int i = 0; i < nrows; i++) {
        for(int j = 0; j < ncols; j++) {
            std::cout << A[i*ncols+j] << ", ";
        }
        std::cout << std::endl;
    }
}

double runRowMajorBenchmark(const Complex_int16* A, int r1, int c1, const Complex_int16* B, Complex_int16* C, int numIter) {
    // seperate A and B into real and imag parts (don't transpose)
    int16_t Areal[r1*c1] __attribute__((aligned(64)));
    int16_t Aimag[r1*c1] __attribute__((aligned(64)));
    int16_t Breal[c1] __attribute__((aligned(64)));
    int16_t Bimag[c1] __attribute__((aligned(64)));
    for(int i = 0; i < r1*c1; i++) {
        Areal[i] = A[i].real;
        Aimag[i] = A[i].imag;
    }
    for(int i = 0; i < c1; i++) {
        Breal[i] = B[i].real;
        Bimag[i] = B[i].imag;
    } 
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        matmulAVX512_rowmajor(Areal, Aimag, r1, c1, Breal, Bimag, C);
    }
    return timeSince(start);
}
double runFloatColMajorBenchmark(const Complex_float* A, int r1, int c1, const Complex_float* B, Complex_float* C, int numIter) {
    Complex_float Atrans[r1*c1] __attribute__((aligned(64)));
    for(int i = 0; i < r1; i++) {
        for(int j = 0; j < c1; j++) {
            Atrans[j*r1+i] = A[i*c1+j];
        }
    }
    float Areal[r1*c1] __attribute__((aligned(64)));
    float Aimag[r1*c1] __attribute__((aligned(64)));
    for(int i = 0; i < r1; i++) {
        for(int j = 0; j < c1; j++) {
            Areal[i*c1+j] = Atrans[i*c1+j].real;
            Aimag[i*c1+j] = Atrans[i*c1+j].imag;
        }
    }
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        
        matmulAVXFloat_colmajor(Areal, Aimag, r1, c1, B, C);
    }
    return timeSince(start);

}
double runColMajorBenchmark(const Complex_int16* A, int r1, int c1, const Complex_int16* B, Complex_int16* C, int numIter, double* deinterleaveTime) {
    // seperate A into real and imag and transpose to make column major
    Complex_int16 Atrans[r1*c1] __attribute__((aligned(64)));
    for(int i = 0; i < r1; i++) {
        for(int j = 0; j < c1; j++) {
            Atrans[j*r1+i] = A[i*c1+j];
        }
    }
    int16_t Areal[r1*c1] __attribute__((aligned(64)));
    int16_t Aimag[r1*c1] __attribute__((aligned(64)));
    // for(int iter = 0; iter < numIter; iter++) {
    //     deinterleaveMatrix(A, r1*c1, Areal, Aimag);
    // }
    double start = getTime();
    for (int i = 0; i < numIter; i++) {
        //deinterleaveMatrix(A, r1*c1, Areal, Aimag);
        double deinterleaveStart = getTime();
        for(int i = 0; i < r1*c1; i++) {
            Areal[i] = A[i].real;
            Aimag[i] = A[i].imag;
        }
        //deinterleaveMatrix(A, r1*c1, Areal, Aimag);
        *deinterleaveTime += timeSince(deinterleaveStart);
        matmulAVX512_colmajor(Areal, Aimag, r1, c1, B, C);
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

void printVector(std::vector<double> v) {
    for(int i = 0; i < v.size(); i++) {
        std::cout << v.at(i) << ",";
    }
    std::cout << std::endl;
}

struct Dim {
    int nrows;
    int ncols;
};

#define NTESTS 2
Dim testDims[NTESTS] = {{64,16},{16,64}};
#define DEFAULT_ITER 1000000
// Initialize test matrices and run benchmarks using my code vs Armadillo's library
void runBenchmarks(int numIter = DEFAULT_ITER) {
    double armaTime, vclTime, rowMajorTime, colMajorTime, floatcolMajorTime;
    armaTime = vclTime = rowMajorTime = colMajorTime = floatcolMajorTime = 0.0;
    std::vector<double> armaTimes, vclTimes, colMajorTimes, floatcolMajorTimes, rowMajorTimes, deTimes;
    for(int i = 64; i > 0; i--) {
        int nrows = 64;
        int ncols = i;
        int mod = 50;
        Complex_int16 A[nrows * ncols] __attribute__((aligned(64))); 
        Complex_int16 B[ncols] __attribute__((aligned(64)));         // B is a vector
        Complex_int16 C[nrows] __attribute__((aligned(64)));         // C is the resulting vector        
        // Initialize matrices for AVX
        generateMatrix(A, nrows * ncols, mod);
        generateMatrix(B, ncols, mod);
        generateMatrix(C, nrows, 0); // initialize C to all 0s

        // // printMatrix(A, nrows, ncols);
        // int16_t a_real[nrows * ncols] __attribute__((aligned(64)));
        // int16_t a_imag[nrows * ncols] __attribute__((aligned(64)));
        // deinterleaveMatrix(A, nrows*ncols, a_real, a_imag);
        // printIntMatrix(a_real, nrows, ncols);
        // printIntMatrix(a_imag, nrows, ncols);
        // return;

        // Initialize matrices for Armadillo (Copy from A, B, C)
        arma::cx_fmat armaA = int16MatrixToArma(A, nrows, ncols);
        arma::cx_fmat armaB = int16MatrixToArma(B, ncols, 1);
        arma::cx_fmat armaC = int16MatrixToArma(C, nrows, 1);

        // Initialize matrices for VCL and float col major (Copy from A, B, C)
        Complex_float floatA[nrows * ncols] __attribute__((aligned(64)));
        Complex_float floatB[ncols] __attribute__((aligned(64)));         // B is a vector
        Complex_float floatC[nrows] __attribute__((aligned(64))); 
        int16MatrixToFloat(A, floatA, nrows*ncols);
        int16MatrixToFloat(B, floatB, ncols);
        int16MatrixToFloat(C, floatC, nrows);

        Complex_int16 colC[nrows] __attribute__((aligned(64)));
        generateMatrix(colC, nrows, 0); // initialize C to all 0s

        Complex_int16 rowC[nrows] __attribute__((aligned(64)));
        generateMatrix(rowC, nrows, 0); // initialize C to all 0s

        double deinterleaveTime=0.0;
        //vclTime = runVCLBenchmark(floatA, nrows, ncols, floatB, floatC, numIter);
        armaTime = runArmaBenchmark(armaA, armaB, armaC, numIter);
        //rowMajorTime = runRowMajorBenchmark(A, nrows, ncols, B, rowC, numIter);
        colMajorTime = runColMajorBenchmark(A, nrows, ncols, B, colC, numIter, &deinterleaveTime);

        //floatcolMajorTime = runFloatColMajorBenchmark(floatA, nrows, ncols, floatB, floatC, numIter);
        vclTimes.push_back(vclTime);
        armaTimes.push_back(armaTime);
        colMajorTimes.push_back(colMajorTime);
        floatcolMajorTimes.push_back(floatcolMajorTime);
        rowMajorTimes.push_back(rowMajorTime);
        deTimes.push_back(deinterleaveTime);
        // Assert the resulting matrices are the same
        // assert(matricesEqual(C, armaC));
        // assert(matricesEqual(floatC, armaC));
        assert(matricesEqual(colC, armaC));
        // assert(matricesEqual(rowC, armaC));

        // Output results
        // double avgVCL = vclTime / (double)numIter;
        double avgArma = armaTime / (double)numIter;
        double avgColMajor = colMajorTime / (double)numIter;
        // double avgFloatColMajor = floatcolMajorTime / (double)numIter;
        // double avgRowMajor = rowMajorTime / (double)numIter;

        printf("Dimensions:          (%u x %u) * (%u x 1)\n", nrows, ncols, ncols);
        printf("Linear precoding benchmark s' = Ws executed %d times.\n", numIter);
        printf("single float (MKL/Arma): %7.3f µs per iteration\n\n", avgArma);

        // printf("float/col maj (AVX512): %7.3f µs per iteration\n", avgFloatColMajor);
        // printf("%2.2fx MKL/Armadillo float matrix * vector\n\n", avgArma / avgFloatColMajor);

        printf("int16/col maj (AVX512): %7.3f µs per iteration\n", avgColMajor);
        printf("%2.2fx MKL/Armadillo float matrix * vector\n", avgArma / avgColMajor);
        // printf("%2.2fx my AVX512 float matrix * vector\n\n", avgFloatColMajor / avgColMajor);

        // printf("int16/row maj (AVX512): %7.3f µs per iteration\n", avgRowMajor);
        // printf("%2.2fx MKL/Armadillo float matrix * vector\n\n", avgArma / avgRowMajor);

        // printf("float (VCL):      %7.3f µs per iteration\n", avgVCL);
        // printf("%2.2fx MKL/Armadillo float matrix * vector\n", avgArma / avgVCL);
        printf("       -----------------------\n\n");
    }
    std::cout << "MKL float,"; printVector(armaTimes);
    // std::cout << "VCL float,"; printVector(vclTimes);
    // std::cout << "Row-maj int16,"; printVector(rowMajorTimes);
    std::cout << "Col-maj int16,"; printVector(colMajorTimes);
    // std::cout << "Col-maj float,"; printVector(floatcolMajorTimes);
    std::cout << "Col-maj int16 deinterleave,"; printVector(deTimes);
    double totalArmaTime = accumulate(armaTimes.begin(), armaTimes.end(), 0);
    double totalVCLTime = accumulate(vclTimes.begin(), vclTimes.end(), 0);
    double totalColMajorTime = accumulate(colMajorTimes.begin(), colMajorTimes.end(), 0);
    double totalFloatColMajorTime = accumulate(floatcolMajorTimes.begin(), floatcolMajorTimes.end(), 0);
    double totalRowMajorTime = accumulate(rowMajorTimes.begin(), rowMajorTimes.end(), 0);
    // printf("float version ran %2.3fx MKL/Armadillo on average\n", totalArmaTime/totalVCLTime);
    printf("floatColMajor version ran %2.3fx MKL/Armadillo on average\n", totalArmaTime/totalFloatColMajorTime);
    printf("int16colMajor version ran %2.3fx MKL/Armadillo on average\n", totalArmaTime/totalColMajorTime);
    printf("int16colMajor version ran %2.3fx floatColMajor version on average\n", totalFloatColMajorTime/totalColMajorTime);
    // printf("rowMajor version ran %2.3fx MKL/Armadillo on average\n", totalArmaTime/totalRowMajorTime);
}

#endif