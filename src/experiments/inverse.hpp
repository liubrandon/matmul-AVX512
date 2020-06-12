#ifndef INVERSE_HPP
#define INVERSE
#include <mkl.h>
#include <armadillo>
#include <eigen3/Eigen/Dense>

enum class InverseMode { kInverse, kPseudoInverse };
enum class InverseMethod { kLibrary, kDeinterleaved };

float test_arma_real(const float *_in_mat_arr, InverseMode mode);
  
float test_eigen_real(const float *_in_mat_arr, InverseMode mode);

std::complex<float> test_arma_complex(const float *_in_mat_arr_real, const float *_in_mat_arr_imag, InverseMode mode, InverseMethod method);

std::complex<float> test_eigen_complex(const float *_in_mat_arr_real, const float *_in_mat_arr_imag, InverseMode mode, InverseMethod method);
  
#endif