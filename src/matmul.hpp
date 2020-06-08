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

void matmulAVXFloat_colmajor(const float* Areal, const float* Aimag, const int r1, const int c1, const Complex_float* B, Complex_float* C) {
    if(r1 == 16) {
        __m512 realResult = _mm512_set1_ps(0); // zero out accumulators
        __m512 imagResult = _mm512_set1_ps(0);
        for(int c = 0; c < c1; c++) {
            // FOIL
            __m512 realCol = _mm512_load_ps((const __m512*)&Areal[c*16]);//columnTo256Vec(A, r, c, r1, c1, REAL);
            __m512 imagCol = _mm512_load_ps((const __m512*)&Aimag[c*16]);//columnTo256Vec(A, r, c, r1, c1, IMAG);
            __m512 cReal = _mm512_set1_ps(B[c].real);
            __m512 cImag = _mm512_set1_ps(B[c].imag);

            // Get partial real C vector
            __m512 mul1 = _mm512_mul_ps(realCol, cReal);
            __m512 mul2 = _mm512_mul_ps(imagCol, cImag);
            __m512 partialReal = _mm512_sub_ps(mul1, mul2);

            // Get partial imag C vector
            __m512 mul3 = _mm512_mul_ps(imagCol, cReal);
            __m512 mul4 = _mm512_mul_ps(realCol, cImag);
            __m512 partialImag = _mm512_add_ps(mul3, mul4); 

            // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
            realResult = _mm512_add_ps(realResult, partialReal);
            imagResult = _mm512_add_ps(imagResult, partialImag);
        }
        float* realArray = (float*)(&realResult);
        float* imagArray = (float*)(&imagResult);
        for(int i = 0; i < 16; i++) {
            C[i] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
    }
    else if(r1 == 32 || r1 == 64) {
        for(int r = 0; r < r1; r+=16) {
            __m512 realResult = _mm512_set1_ps(0); // zero out accumulators
            __m512 imagResult = _mm512_set1_ps(0);
            for(int c = 0; c < c1; c++) {
                // FOIL
                __m512 realCol = _mm512_load_ps((const __m512*)&Areal[r+c*r1]);
                __m512 imagCol = _mm512_load_ps((const __m512*)&Aimag[r+c*r1]);
                __m512 cReal = _mm512_set1_ps(B[c].real);
                __m512 cImag = _mm512_set1_ps(B[c].imag);

                // Get partial real C vector
                __m512 mul1 = _mm512_mul_ps(realCol, cReal);
                __m512 mul2 = _mm512_mul_ps(imagCol, cImag);
                __m512 partialReal = _mm512_sub_ps(mul1, mul2);

                // Get partial imag C vector
                __m512 mul3 = _mm512_mul_ps(imagCol, cReal);
                __m512 mul4 = _mm512_mul_ps(realCol, cImag);
                __m512 partialImag = _mm512_add_ps(mul3, mul4); 

                // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
                realResult = _mm512_add_ps(realResult, partialReal);
                imagResult = _mm512_add_ps(imagResult, partialImag);
            }
            float* realArray = (float*)(&realResult);
            float* imagArray = (float*)(&imagResult);
            for(int i = 0; i < 16; i++) {
                C[r+i] = {realArray[i], imagArray[i]};
            } // extract with intrinsics?
        }
    }
    else {
        std::cerr << "Dimensions not supported" << std::endl;
        exit(1);
    }
}

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

// pass in real and imag matrices where r1 x c1 is the size of Areal and real and imag are stored column major
void matmulAVX512_colmajor(const int16_t* Areal, const int16_t* Aimag, const int r1, const int c1, const Complex_int16* B, Complex_int16* C) {
    if(r1 == 16) {
        __m256i realResult = _mm256_set1_epi64x(0); // zero out accumulators
        __m256i imagResult = _mm256_set1_epi64x(0);
        for(int c = 0; c < c1; c++) {
            // FOIL
            __m256i realCol = _mm256_load_si256((const __m256i*)&Areal[c*16]);//columnTo256Vec(A, r, c, r1, c1, REAL);
            __m256i imagCol = _mm256_load_si256((const __m256i*)&Aimag[c*16]);//columnTo256Vec(A, r, c, r1, c1, IMAG);
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
            C[i] = {realArray[i], imagArray[i]};
        } // extract with intrinsics?
    }
    else if(r1 == 32 || r1 == 64) {
        for(int r = 0; r < r1; r+=32) {
            __m512i realResult = _mm512_set1_epi16(0); // zero out accumulators
            __m512i imagResult = _mm512_set1_epi16(0);
            for(int c = 0; c < c1; c++) {
                // FOIL (two times, once for each 32 Complex numbers)
                __m512i realCol = _mm512_load_si512((const __m512i*)&Areal[r+c*r1]);//columnTo256Vec(A, r, c, r1, c1, REAL);
                __m512i imagCol = _mm512_load_si512((const __m512i*)&Aimag[r+c*r1]);//columnTo256Vec(A, r, c, r1, c1, IMAG);
                __m512i cReal = _mm512_set1_epi16(B[c].real);
                __m512i cImag = _mm512_set1_epi16(B[c].imag);

                // Get partial real C vector
                __m512i mul1 = _mm512_mullo_epi16(realCol, cReal);
                __m512i mul2 = _mm512_mullo_epi16(imagCol, cImag);
                __m512i partialReal = _mm512_sub_epi16(mul1, mul2);

                // Get partial imag C vector
                __m512i mul3 = _mm512_mullo_epi16(imagCol, cReal);
                __m512i mul4 = _mm512_mullo_epi16(realCol, cImag);
                __m512i partialImag = _mm512_add_epi16(mul3, mul4); 


                // Accumulate in result (see if theres a fused instruction for sub-add and add-add)
                realResult = _mm512_add_epi16(realResult, partialReal);
                imagResult = _mm512_add_epi16(imagResult, partialImag);
            }
            int16_t* realArray = (int16_t*)(&realResult);
            int16_t* imagArray = (int16_t*)(&imagResult);
            for(int i = 0; i < 32; i++) {
                C[r+i] = {realArray[i], imagArray[i]};
            } // extract with intrinsics?
        }
    }
    else {
        std::cerr << "Dimensions not supported" << std::endl;
        exit(1);
    }
}

// Areal and Aimag are the r1 x c1 real and imag component matrices stored in row major order
static inline void matmulAVX512_rowmajor(const int16_t* Areal, const int16_t* Aimag, const int r1, const int c1, const int16_t* Breal, const int16_t* Bimag, Complex_int16* C) {
    Complex_int16 tempC[64] __attribute__((aligned(64)));
    memset((void*)tempC, 0, 64*sizeof(tempC[0]));
    int cIdx = 0;
    int bIdx = 0;
    // (a+bi)*(c+di) = [ac-bd] + [bc+ad]i
    if(c1 == 16) { // One __m512i vector can hold exactly 32 int16_t
        for(int r = 0; r < r1*c1; r+=16, cIdx++) {
            __m256i a,b,c,d;
            a = _mm256_load_si256((const __m256i*)(&Areal[r]));
            b = _mm256_load_si256((const __m256i*)(&Aimag[r]));
            c = _mm256_load_si256((const __m256i*)(Breal));
            d = _mm256_load_si256((const __m256i*)(Bimag));
            __m256i ac,bd,bc,ad;
            ac = _mm256_mullo_epi16(a,c);
            bd = _mm256_mullo_epi16(b,d);
            bc = _mm256_mullo_epi16(b,c);
            ad = _mm256_mullo_epi16(a,d);
            __m256i real,complex; // real=ac-bd, complex=bc+ad
            real = _mm256_sub_epi16(ac,bd);
            complex = _mm256_add_epi16(bc,ad);
            int16_t realDot = int_hsum8x32(real); // I wrote this function based on the int32 version
            int16_t complexDot = int_hsum8x32(complex);
            Complex_int16 dot = {realDot, complexDot};
            tempC[cIdx] = dot;
        }
    }
    else if(c1 == 32) { // One __m512i vector can hold exactly 32 int16_t
        for(int r = 0; r < r1*c1; r+=32, cIdx++) {
            __m512i a,b,c,d;
            a = _mm512_load_si512((const void*)(&Areal[r]));
            b = _mm512_load_si512((const void*)(&Aimag[r]));
            c = _mm512_load_si512((const void*)(Breal));
            d = _mm512_load_si512((const void*)(Bimag));
            __m512i ac,bd,bc,ad;
            ac = _mm512_mullo_epi16(a,c);
            bd = _mm512_mullo_epi16(b,d);
            bc = _mm512_mullo_epi16(b,c);
            ad = _mm512_mullo_epi16(a,d);
            __m512i real,complex; // real=ac-bd, complex=bc+ad
            real = _mm512_sub_epi16(ac,bd);
            complex = _mm512_add_epi16(bc,ad);
            int16_t realDot = _mm512_reduce_add_epi16(real); // I wrote this function based on the int32 version
            int16_t complexDot = _mm512_reduce_add_epi16(complex);
            Complex_int16 dot = {realDot, complexDot};
            tempC[cIdx] = dot;
        }
    }
    else if(c1 == 64) {
        for(int r = 0; r < r1*c1; r+=64, cIdx++) {
            __m512i a,b,c,d;
            a = _mm512_load_si512((const void*)(&Areal[r]));
            b = _mm512_load_si512((const void*)(&Aimag[r]));
            c = _mm512_load_si512((const void*)(Breal));
            d = _mm512_load_si512((const void*)(Bimag));
            __m512i ac,bd,bc,ad;
            ac = _mm512_mullo_epi16(a,c);
            bd = _mm512_mullo_epi16(b,d);
            bc = _mm512_mullo_epi16(b,c);
            ad = _mm512_mullo_epi16(a,d);
            __m512i real,complex; // real=ac-bd, complex=bc+ad
            real = _mm512_sub_epi16(ac,bd);
            complex = _mm512_add_epi16(bc,ad);
            int16_t realDot = _mm512_reduce_add_epi16(real); // I wrote this function based on the int32 version
            int16_t complexDot = _mm512_reduce_add_epi16(complex);
            Complex_int16 dot = {realDot, complexDot};

            __m512i a1,b1,c1,d1;
            a1 = _mm512_load_si512((const void*)(&Areal[r+32]));
            b1 = _mm512_load_si512((const void*)(&Aimag[r+32]));
            c1 = _mm512_load_si512((const void*)(&Breal[32]));
            d1 = _mm512_load_si512((const void*)(&Bimag[32]));
            __m512i ac1,bd1,bc1,ad1;
            ac1 = _mm512_mullo_epi16(a1,c1);
            bd1 = _mm512_mullo_epi16(b1,d1);
            bc1 = _mm512_mullo_epi16(b1,c1);
            ad1 = _mm512_mullo_epi16(a1,d1);
            __m512i real1,complex1; // real=ac1-bd1, complex=bc1+ad1
            real1 = _mm512_sub_epi16(ac1,bd1);
            complex1 = _mm512_add_epi16(bc1,ad1);
            int16_t realDot1 = _mm512_reduce_add_epi16(real1); // I wrote this function based on the int32 version
            int16_t complexDot1 = _mm512_reduce_add_epi16(complex1);
            Complex_int16 dot1 = {realDot1, complexDot1};

            tempC[cIdx] = dot + dot1;
        }
    }
    for(int r = 0; r < r1; r+=16) {
        _mm512_storeu_si512((void*)(&C[r]), _mm512_loadu_si512((const void*)(&tempC[r])));
    }
}
#endif
