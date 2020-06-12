#include <mkl.h>
#include <iostream>
#include <string.h>
#include "timer.h"
static constexpr size_t kNumIters = 1000;
static constexpr size_t kSize = 3;

int main() {
    mkl_set_num_threads(1);
    float* in_base_mat_arr_real = new float[kSize * kSize];
    float* in_base_mat_arr_imag = new float[kSize * kSize];
    mkl_compact_complex_float* in_base_mat_arr_interleaved = new mkl_compact_complex_float[kSize * kSize];
    for (size_t i = 0; i < kSize * kSize; i++) {
        in_base_mat_arr_real[i] = static_cast<float>(rand()) / static_cast<float>(RAND_MAX);
        in_base_mat_arr_imag[i] = static_cast<float>(rand()) / static_cast<float>(RAND_MAX);
        in_base_mat_arr_interleaved[i] = {in_base_mat_arr_real[i], in_base_mat_arr_imag[i]};
    }
    float* packed = new float[kSize*kSize];
    memset(packed, 0, kSize*kSize);
    // for(int i = 0; i < kSize; i++) {
    //     for(int j = 0; j < kSize; j++) {
    //         std::cout << packed[i*kSize+j] << ", ";
    //     }
    //     std::cout << std::endl;
    // }
    mkl_cgepack_compact(MKL_ROW_MAJOR, kSize, kSize, &in_base_mat_arr_interleaved, MKL_ROW_MAJOR, packed, MKL_ROW_MAJOR, MKL_COMPACT_AVX512, 1);
    
}

