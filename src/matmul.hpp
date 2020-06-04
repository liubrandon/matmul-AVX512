#ifndef MATMUL_HPP
#define MATMUL_HPP
// Project file headers
#include "complex_dotproduct.hpp"
#include "timer.hpp"
#include "bench_dot.hpp"
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

static inline void matmulVCL(const Complex_float* A, int r1, int c1, const Complex_float* B, Complex_float* C) {
    static const Complex8f bSlice1 = *(Complex8f*)(B+(0*8));
    static const Complex8f bSlice2 = *(Complex8f*)(B+(1*8));
    static const Complex8f bSlice3 = *(Complex8f*)(B+(2*8));
    static const Complex8f bSlice4 = *(Complex8f*)(B+(3*8));
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
    else if(c1 == 32) {
        for(int i = 0; i < r1*c1; i += 32) {
            const Complex1f dp = chorizontal_add(*(Complex8f*)(A+i+(0*8)) * bSlice1)
                               + chorizontal_add(*(Complex8f*)(A+i+(1*8)) * bSlice2)
                               + chorizontal_add(*(Complex8f*)(A+i+(2*8)) * bSlice3)
                               + chorizontal_add(*(Complex8f*)(A+i+(3*8)) * bSlice4);
            const Complex_float res = {dp.real(), dp.imag()};
            *C = res;
            C += 1;
        }
    }
    else if(c1 == 64) {
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
void matmulAVX512(const Complex_int16* A, const int r1, const int c1, const Complex_int16* B, Complex_int16* C) {
    static const __m512i bSlice[4] = {
        _mm512_loadu_si512((const void*)(0+B)),
        _mm512_loadu_si512((const void*)(16+B)),
        _mm512_loadu_si512((const void*)(32+B)),
        _mm512_loadu_si512((const void*)(48+B)),
    };
    int cIdx = 0;
    Complex_int16 tempC[64] __attribute__((aligned(64)));
    memset((void*)tempC, 0, 64*sizeof(tempC[0]));
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
    else if(c1 == 32) {
        for(int i = 0; i < r1 * c1; i += 32, cIdx++) { // treat i as the index of the Complex value inside A where A is row major
            const Complex_int16 dp = dotProduct16x32(_mm512_loadu_si512((const void*)(A + i)), bSlice[0])
                                   + dotProduct16x32(_mm512_loadu_si512((const void*)(A + i + 16)), bSlice[1]);
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
        //         //print_m512i(_mm512_loadu_si512((const void*)(A + r + c)));
        //         tempC[cIdx] = tempC[cIdx] + dotProduct16x32(_mm512_loadu_si512((const void*)(A + r + c)), bSlice[bIdx]);
        //     }
        //     //printMatrix(tempC, 16, 1);
        //     //return;
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
            const Complex_int16 dp = dotProduct16x32(_mm512_loadu_si512((const void*)(&A[i])), bSlice[0])
                                    + dotProduct16x32(_mm512_loadu_si512((const void*)(&A[i + 16])), bSlice[1])
                                    + dotProduct16x32(_mm512_loadu_si512((const void*)(&A[i + 32])), bSlice[2])
                                    + dotProduct16x32(_mm512_loadu_si512((const void*)(&A[i + 48])), bSlice[3]);
            tempC[cIdx] = dp;
        }
    }
    // Store tempC into C
    for(int r = 0; r < r1; r+=16) {
        _mm512_storeu_si512((void*)(&C[r]), _mm512_loadu_si512((const void*)(&tempC[r])));
    }
}

void v2matmulAVX512(const Complex_int16* A, const int r1, const int c1, const Complex_int16* B, Complex_int16* C) {
    for(int r = 0; r < r1; r+=16) {
        __m256i realResult = _mm256_set1_epi64x(0); // zero out accumulators
        __m256i imagResult = _mm256_set1_epi64x(0);
        for(int c = 0; c < c1; c++) {
            // FOIL
            __m256i realCol = columnTo256Vec(A, r, c, r1, c1, REAL);
            __m256i imagCol = columnTo256Vec(A, r, c, r1, c1, IMAG);
            __m256i cReal = _mm256_set1_epi16(B[c].real);
            __m256i cImag = _mm256_set1_epi16(B[c].imag);

            // Get partial real C vector
            __m256i mul1 = _mm256_mullo_epi16(realCol, cReal);
            __m256i mul2 = _mm256_mullo_epi16(imagCol, cImag);
            __m256i partialReal = _mm256_sub_epi16(mul1, mul2);

            // Get partial imag C vector
            __m256i mul3 = _mm256_mullo_epi16(imagCol, cReal);
            __m256i mul4 = _mm256_mullo_epi16(realCol, cImag);
            __m256i partialImag = _mm256_add_epi16(mul3, mul4); 

            // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
            realResult = _mm256_add_epi16(realResult, partialReal);
            imagResult = _mm256_add_epi16(imagResult, partialImag);
        }
        int16_t* realArray = (int16_t*)(&realResult);
        int16_t* imagArray = (int16_t*)(&imagResult);
        for(int i = 0; i < 16; i++) {
            C[i+r] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
    }
}
#endif
