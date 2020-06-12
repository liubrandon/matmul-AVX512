#include <volk/build/include/volk/volk.h>
#include <iostream>
#include "../timer.hpp"
#define NITER 1000000

double bench_dp_volk(lv_16sc_t* res, lv_16sc_t* a, lv_16sc_t* b) {
    double start = getTime();
    for(int i = 0; i < NITER; i++) {
        volk_16ic_x2_dot_prod_16ic(res, a, b, 8);
    }
    return timeSince(start);
}

double bench_dp_volk(lv_16sc_t* res, lv_16sc_t* a, lv_16sc_t* b) {
    double start = getTime();
    for(int i = 0; i < NITER; i++) {
        volk_16ic_x2_dot_prod_16ic(res, a, b, 8);
    }
    return timeSince(start);
}

int main() {
    lv_16sc_t volkRes;
    lv_16sc_t* vec = (lv_16sc_t*)volk_malloc(8*sizeof(lv_16sc_t), 64);
    lv_16sc_t* vec1 = (lv_16sc_t*)volk_malloc(8*sizeof(lv_16sc_t), 64);
    double volkTime = bench_dp_volk(&volkRes, vec, vec1);
    //double myTime = bench_dp_my(&myRes, vec, vec1);

    int16_t real[8];
    int16_t imag[8];
    
    
    // std::cout << res << std::endl;
    volk_16ic_deinterleave_16i_x2(real, imag, vec1, 8);
    // for(int i = 0; i < 8; i++) {
    //     std::cout << real[i] << ", ";
    // }
    // std::cout << std::endl;
    // for(int i = 0; i < 8; i++) {
    //     std::cout << imag[i] << ", ";
    // }
    // std::cout << std::endl;
}