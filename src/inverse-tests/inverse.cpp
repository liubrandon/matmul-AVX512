#include <mkl.h>
#include <armadillo>
#include <eigen3/Eigen/Dense>
#include <iostream>
#include "timer.h"
//g++ -Wl,--no-as-needed -O3 -ffast-math -larmadillo -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl inverse.cpp -o inv
static constexpr size_t kNumIters = 1000;
static constexpr size_t kSize = 64;
double freq_ghz;

enum class InverseMode { kInverse, kPseudoInverse };
enum class InverseMethod { kLibrary, kDeinterleaved };

std::complex<float> test_arma(const float *_in_mat_arr_real, const float *_in_mat_arr_imag, InverseMode mode, InverseMethod method) {
  float in_mat_arr_real[kSize * kSize];
  float in_mat_arr_imag[kSize * kSize];
  float out_mat_arr_real[kSize * kSize];
  float out_mat_arr_imag[kSize * kSize];
  for (size_t i = 0; i < kSize * kSize; i++) {
    in_mat_arr_real[i] = _in_mat_arr_real[i];
    in_mat_arr_imag[i] = _in_mat_arr_imag[i];
  }

  arma::Mat<float> input_real(in_mat_arr_real, kSize, kSize, false);
  arma::Mat<float> input_imag(in_mat_arr_imag, kSize, kSize, false);
  arma::Mat<float> output_real(out_mat_arr_real, kSize, kSize, false);
  arma::Mat<float> output_imag(out_mat_arr_imag, kSize, kSize, false);
  arma::Mat<arma::cx_float> input_interleaved(input_real, input_imag);
  arma::Mat<arma::cx_float> output_interleaved(output_real, output_imag);

  TscTimer timer;
  timer.start();
  for (size_t iter = 0; iter < kNumIters; iter++) {
    if (mode == InverseMode::kPseudoInverse) {

    } else {
      if(method == InverseMethod::kDeinterleaved) {
        output_real = arma::inv((input_real+input_imag*arma::inv(input_real)*input_imag));
        output_imag = -arma::inv((input_imag+input_real*arma::inv(input_imag)*input_real));
        
      } else {
        output_interleaved = input_interleaved.i();
      }
    }
    in_mat_arr_real[0] = out_mat_arr_real[0];
    in_mat_arr_imag[0] = out_mat_arr_imag[0];
  }

  timer.stop();
  printf("Armadillo: Average time for %s inverse of %zux%zu matrix = %.3f ms\n",
         method == InverseMethod::kLibrary ? "library" : "deinterleaved", kSize,
         kSize, timer.avg_usec(freq_ghz) / (1000.0 * kNumIters));
  // if(method == InverseMethod::kDeinterleaved) {
  //   std::cout << "DEINTERLEAVED: " << std::endl;
  //   std::cout << output_real << std::endl;
  //   std::cout << output_imag << std::endl;
  // } else {
  //   std::cout << "INTERLEAVED: " << std::endl;
  //   std::cout << output_interleaved << std::endl;
  // }
  return (method == InverseMethod::kDeinterleaved) ? std::complex<float>(accu(output_real), accu(output_imag)) : accu(output_interleaved);
}

std::complex<float> test_eigen(const float *_in_mat_arr_real, const float *_in_mat_arr_imag, InverseMode mode, InverseMethod method) {
  float in_mat_arr_real[kSize * kSize];
  float in_mat_arr_imag[kSize * kSize];
  float out_mat_arr_real[kSize * kSize];
  float out_mat_arr_imag[kSize * kSize];
  std::complex<float> in_mat_arr_interleaved[kSize * kSize];
  std::complex<float> out_mat_arr_interleaved[kSize * kSize];
  for (size_t i = 0; i < kSize * kSize; i++) {
    in_mat_arr_real[i] = _in_mat_arr_real[i];
    in_mat_arr_imag[i] = _in_mat_arr_imag[i];
    in_mat_arr_interleaved[i] = std::complex<float>(_in_mat_arr_real[i], _in_mat_arr_imag[i]);
  }

  Eigen::Map<Eigen::Matrix<float, kSize, kSize, Eigen::ColMajor>> input_real(in_mat_arr_real);
  Eigen::Map<Eigen::Matrix<float, kSize, kSize, Eigen::ColMajor>> input_imag(in_mat_arr_imag);
  Eigen::Map<Eigen::Matrix<float, kSize, kSize, Eigen::ColMajor>> output_real(out_mat_arr_real);
  Eigen::Map<Eigen::Matrix<float, kSize, kSize, Eigen::ColMajor>> output_imag(out_mat_arr_imag);
  Eigen::Map<Eigen::Matrix<std::complex<float>, kSize, kSize, Eigen::ColMajor>> input_interleaved(in_mat_arr_interleaved);
  Eigen::Map<Eigen::Matrix<std::complex<float>, kSize, kSize, Eigen::ColMajor>> output_interleaved(out_mat_arr_interleaved);
  TscTimer timer;
  timer.start();
  for (size_t iter = 0; iter < kNumIters; iter++) {
    if (mode == InverseMode::kPseudoInverse) {

    } else {
      if(method == InverseMethod::kDeinterleaved) {
        output_real = (input_real+input_imag*input_real.inverse()*input_imag).inverse();
        output_imag = -(input_imag+input_real*input_imag.inverse()*input_real).inverse();
      } else {
        output_interleaved = input_interleaved.inverse();
      }
    }
    in_mat_arr_real[0] = out_mat_arr_real[0];
    in_mat_arr_imag[0] = out_mat_arr_imag[0];
  }

  timer.stop();
  printf("Eigen: Average time for %s inverse of %zux%zu matrix = %.3f ms\n",
          method == InverseMethod::kLibrary ? "library" : "deinterleaved", kSize,
          kSize, timer.avg_usec(freq_ghz) / (1000.0 * kNumIters));
  return (method == InverseMethod::kDeinterleaved) ? std::complex<float>(output_real.sum(), output_imag.sum()) : output_interleaved.sum();
}

int main() {
  srand(time(0));
  freq_ghz = measure_rdtsc_freq();
  mkl_set_num_threads(1);
  
  float *in_base_mat_arr_real = new float[kSize * kSize];
  float *in_base_mat_arr_imag = new float[kSize * kSize];
  for (size_t i = 0; i < kSize * kSize; i++) {
    in_base_mat_arr_real[i] =
        static_cast<float>(rand()) / static_cast<float>(RAND_MAX);
    in_base_mat_arr_imag[i] =
        static_cast<float>(rand()) / static_cast<float>(RAND_MAX);
  }

  std::complex<float> ret_1 = test_arma(in_base_mat_arr_real, in_base_mat_arr_imag, InverseMode::kInverse, InverseMethod::kLibrary);
  std::complex<float> ret_2 = test_arma(in_base_mat_arr_real, in_base_mat_arr_imag, InverseMode::kInverse, InverseMethod::kDeinterleaved);
  std::complex<float> ret_3 = test_eigen(in_base_mat_arr_real, in_base_mat_arr_imag, InverseMode::kInverse, InverseMethod::kLibrary);
  std::complex<float> ret_4 = test_eigen(in_base_mat_arr_real, in_base_mat_arr_imag, InverseMode::kInverse, InverseMethod::kDeinterleaved);
  std::cout << ret_1 << std::endl;
  std::cout << ret_2 << std::endl;
  std::cout << ret_3 << std::endl;
  std::cout << ret_4 << std::endl;
}