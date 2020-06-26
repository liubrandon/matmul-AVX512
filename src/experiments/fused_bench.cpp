#include "immintrin.h"
#include "../timer.hpp"
#include <iostream>
#include <iomanip>
#include <stdio.h>

void print_m512(__m512 v) {
    float* val = (float*)&v;
    std::cout << "__m512: ";
    for(int i = 0; i < 16; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

void print_m512i(__m512i v) {
    int32_t* val = (int32_t*)&v;
    std::cout << "__m512i: ";
    for(int i = 0; i < 16; i+=2) {
        std::cout << "(" << std::setw(2) << val[i] << "," << std::setw(2) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

__m512 interleavedComplexFloatMultiply(__m512 a, __m512 b) {
    __m512i a_re_permuter = _mm512_setr_epi32(0,0,2,2,4,4,6,6,8,8,10,10,12,12,14,14);
    __m512i a_im_permuter = _mm512_setr_epi32(1,1,3,3,5,5,7,7,9,9,11,11,13,13,15,15);
    __m512i b_swap_permuter = _mm512_setr_epi32(1,0,3,2,5,4,7,6,9,8,11,10,13,12,15,14);
    __m512 a_re, a_im, b_swap, c, res;
    a_re = _mm512_permutevar_ps(a, a_re_permuter);
    printf("a_re: "); print_m512(a_re);
    a_im = _mm512_permutevar_ps(a, a_im_permuter);
    printf("a_im: "); print_m512(a_im);
    b_swap = _mm512_permutevar_ps(b, b_swap_permuter);
    printf("b_swap: "); print_m512(b_swap);
    c = _mm512_mul_ps(a_im, b_swap);
    printf("c: "); print_m512(c);
    res = _mm512_fmaddsub_ps(a_re, b, c);
    return res;
}

__m512 benchFMADDSUB(__m512 a, __m512 b, __m512 c, int numIter) {
    __m512 res;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        res = _mm512_fmaddsub_ps(a, b, c);
    }
    printf("Average µs to perform fused maddsub: %.10f\n", timeSince(start)/(double)numIter);
    return res;
}

__m512i benchMADDSUB(__m512i a, __m512i b, __m512i c, int numIter) {
    __m512i mult, addsub, res;
    double start = getTime();
    for(int i = 0; i < numIter; i++) {
        mult = _mm512_mullo_epi32(a, b);
        addsub = _mm512_mullo_epi32(c, _mm512_set_epi32(1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1));
        res = _mm512_add_epi32(mult, addsub);
    }
    printf("Average µs to perform split maddsub: %.10f\n", timeSince(start)/(double)numIter);
    return res;
}

int main() {
    float temp[16];
    float temp1[16];
    float temp2[16];
    int32_t temp3[16];
    int32_t temp4[16];
    int32_t temp5[16];
    for(int i = 0; i < 16; i++) {        
        temp3[i] = i;
        temp4[i] = i+1;
        temp5[i] = i+2;

        temp[i] = static_cast<float>(temp3[i]);
        temp1[i] = static_cast<float>(temp4[i]);
        temp2[i] = static_cast<float>(temp5[i]);
    }
    __m512 a = *(__m512*)temp;
    __m512 b = *(__m512*)temp1;
    __m512 c = *(__m512*)temp2;
    __m512i a1 = *(__m512i*)temp3;
    __m512i b1 = *(__m512i*)temp4;
    __m512i c1 = *(__m512i*)temp5;

    print_m512(a);
    //print_m512i(a1); printf("\n");
    print_m512(b);
    //print_m512i(b1); printf("\n");
    //print_m512(c);
    //print_m512i(c1); printf("\n");
    __m512 res = benchFMADDSUB(a, b, c, 1000);
    __m512i resi = benchMADDSUB(a1, b1, c1, 1000);
    //print_m512(res);
    //print_m512i(resi);

    __m512 mult = interleavedComplexFloatMultiply(a, b);
    print_m512(mult);
}