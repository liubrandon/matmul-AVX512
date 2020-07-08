#include <iostream>
#include <complex>
#include "immintrin.h"
#include <iomanip>
#include <stdlib.h>
#include <string.h>
#include <mkl.h>
#include "../timer.hpp"
#include <Zydis/Zydis.h>
#include <fstream>

struct Complex_int16 {
    int16_t real;
    int16_t imag;
    Complex_int16& operator+(const Complex_int16& rhs){ 
        real += rhs.real;
        imag += rhs.imag;
        return *this;
    }
    bool operator==(const Complex_int16& rhs) const { 
        return (real != rhs.real) | (imag != rhs.imag) ? false : true;
    }
    bool operator!=(const Complex_int16& rhs) const { 
        return !(*this == rhs);
    }
    friend std::ostream& operator<<(std::ostream& os, const Complex_int16& c) {
        os << "(" << c.real << "," << c.imag << ")";
        return os;
    }
};

#define RESET   "\033[0m" // Terminal color codes
#define BOLDGREEN   "\033[1m\033[32m" 

void outputASM(void* func, int m, int n, std::string filePrefix) {
    // Initialize decoder context
    ZydisDecoder decoder;
    ZydisDecoderInit(&decoder, ZYDIS_MACHINE_MODE_LONG_64, ZYDIS_ADDRESS_WIDTH_64);

    // Initialize formatter. Only required when you actually plan to do instruction
    // formatting ("disassembling"), like we do here
    ZydisFormatter formatter;
    ZydisFormatterInit(&formatter, ZYDIS_FORMATTER_STYLE_INTEL);

    // Loop over the instructions in our buffer.
    // The runtime-address (instruction pointer) is chosen arbitrary here in order to better
    // visualize relative addressing
    ZyanU64 runtime_address = (*(uintptr_t*)func);
    ZyanUSize offset = 0;
    const ZyanUSize length = 2000; // breaks on ret, should never reach length 7000
    ZydisDecodedInstruction instruction;

    // File to output ASM
    std::ofstream outFile;
    std::string filename = filePrefix + std::to_string(m) + "x" + std::to_string(n) + ".asm";
    outFile.open(filename);
    while (ZYAN_SUCCESS(ZydisDecoderDecodeBuffer(&decoder, (void*)((uintptr_t)func + offset), length - offset, &instruction))) {
        // Print current instruction pointer.
        // std::cout << "0x" << std::uppercase << std::hex << runtime_address << "   ";
        // outFile << "0x" << std::uppercase << std::hex << runtime_address << "   ";
        // Format & print the binary instruction structure to human readable format
        char buffer[256];
        ZydisFormatterFormatInstruction(&formatter, &instruction, buffer, sizeof(buffer),
            runtime_address);
        //puts(buffer);
        outFile << buffer << "\n";
        offset += instruction.length;
        runtime_address += instruction.length;
        if(strstr(buffer, "ret") != NULL)
        break;
    }
    outFile.close();
}

void print_m512i(__m512i v) {
    int16_t* val = (int16_t*)&v;
    std::cout << "__m512i: ";
    for(int i = 0; i < 32; i+=2) {
        std::cout << "(" << std::setw(3) << val[i] << "," << std::setw(3) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

static const int8_t temp[64] = {2,3,0,1,6,7,4,5,10,11,8,9,14,15,12,13,18,19,16,17,22,23,20,21,26,27,24,25,30,31,28,29,34,35,
                                32,33,38,39,36,37,42,43,40,41,46,47,44,45,50,51,48,49,54,55,52,53,58,59,56,57,62,63,60,61};
static const int16_t temp1[32] = {-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1};
const __m512i swapPairs = _mm512_loadu_si512((const void*)temp);
const __m512i subAdd = _mm512_loadu_si512((const void*)temp1);
void matvecInt16_16x16(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, c_c, d_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i ac_bc_accu, ad_bd_accu, col_res;
    Complex_int16 val;
    ac_bc_accu = _mm512_set1_epi16(0);
    ad_bd_accu = _mm512_set1_epi16(0);
    // for(int c = 0; c < 16; c++) {
    //     // Load vec value
    //     Complex_int16 val = vec[c];

    //     // Load column slice (in this case where K = 16 a whole column fits in one vector)
    //     a_b = _mm512_loadu_si512((const void*)&mat[c*16]);

    //     // Load corresponding c and d from memory and broadcast to a whole vector
    //     c_c = _mm512_set1_epi16(val.real);
    //     d_d = _mm512_set1_epi16(val.imag);

    //     // Multiply accumulate ac_bc
    //     ac_bc = _mm512_mullo_epi16(a_b, c_c);
    //     ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);

    //     // Multiply accumulate ad_bd
    //     ad_bd = _mm512_mullo_epi16(a_b, d_d);
    //     ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
    // }
        val = vec[0];
        a_b = _mm512_loadu_si512((const void*)&mat[0]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[1];
        a_b = _mm512_loadu_si512((const void*)&mat[1*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[2];
        a_b = _mm512_loadu_si512((const void*)&mat[2*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[3];
        a_b = _mm512_loadu_si512((const void*)&mat[3*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[4];
        a_b = _mm512_loadu_si512((const void*)&mat[4*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[5];
        a_b = _mm512_loadu_si512((const void*)&mat[5*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[6];
        a_b = _mm512_loadu_si512((const void*)&mat[6*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[7];
        a_b = _mm512_loadu_si512((const void*)&mat[7*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[8];
        a_b = _mm512_loadu_si512((const void*)&mat[8*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[9];
        a_b = _mm512_loadu_si512((const void*)&mat[9*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[10];
        a_b = _mm512_loadu_si512((const void*)&mat[10*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[11];
        a_b = _mm512_loadu_si512((const void*)&mat[11*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[12];
        a_b = _mm512_loadu_si512((const void*)&mat[12*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[13];
        a_b = _mm512_loadu_si512((const void*)&mat[13*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[14];
        a_b = _mm512_loadu_si512((const void*)&mat[14*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        val = vec[15];
        a_b = _mm512_loadu_si512((const void*)&mat[15*16]);
        c_c = _mm512_set1_epi16(val.real);
        d_d = _mm512_set1_epi16(val.imag);
        ac_bc = _mm512_mullo_epi16(a_b, c_c);
        ac_bc_accu = _mm512_add_epi16(ac_bc_accu, ac_bc);
        ad_bd = _mm512_mullo_epi16(a_b, d_d);
        ad_bd_accu = _mm512_add_epi16(ad_bd_accu, ad_bd);
        
    // Swap even and odd in ad_bd
    bd_ad = _mm512_shuffle_epi8(ad_bd_accu, swapPairs); // Much lower latency than permutexvar_epi16

    // Fused negate multiply add -> simplified to multiply, add
    minus_bd_ad = _mm512_mullo_epi16(bd_ad, subAdd);
    col_res = _mm512_add_epi16(ac_bc_accu, minus_bd_ad);
    
    // Store results in the array
    _mm512_storeu_si512(res, col_res);
}

void matvecInt16(const Complex_int16* mat, int m, int k, const Complex_int16* vec, Complex_int16* res) {
    if(m == 16 && k == 16)
        matvecInt16(mat, m, k, vec, res);
    else {
        fprintf(stderr, "Unsupported dimensions.\n");
        exit(1);
    }
}

double benchJITCGEMM(MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c, MKL_INT m, MKL_INT k, int numIter) {
    MKL_Complex8 alpha = {1, 0};
    MKL_Complex8 beta = {0, 0};
    MKL_INT lda = m;
    MKL_INT ldb = k;
    MKL_INT ldc = m;
    // Create a handle and generate GEMM kernel
    void* jitter;
    mkl_jit_status_t status = mkl_jit_create_cgemm(&jitter, MKL_COL_MAJOR, MKL_NOTRANS, MKL_NOTRANS, m, 1, k, &alpha, lda, ldb, &beta, ldc);
    if (MKL_JIT_ERROR == status) {
        fprintf(stderr, "Error: insufficient memory to JIT and store the DGEMM kernel\n");
        exit(1);
    }
    // Get kernel associated with handle
    cgemm_jit_kernel_t my_cgemm = mkl_jit_get_cgemm_ptr(jitter);
    outputASM((void*)my_cgemm, m, k, "jit_cgemm_");
    double start = getTime();
    for(int i = 0; i < numIter; i++)
        my_cgemm(jitter, a, b, c); // execute the GEMM kernel
    double ret = timeSince(start);
    // Destroy the created handle/GEMM kernel
    mkl_jit_destroy((void*)my_cgemm);
    return ret;
}

double benchInt16(const Complex_int16* mat, int m, int k, const Complex_int16* vec, Complex_int16* res, int numIter) {
    double start = getTime();
    for(int i = 0; i < numIter; i++)
        matvecInt16_16x16(mat, vec, res);
    return timeSince(start);
}

int main(int argc, char** argv) {
    if(argc != 2) {
        fprintf(stderr, "Usage: %s MxK where M is # rows and K is # cols\n", argv[0]);
        exit(1);
    }
    srand(time(0));
    long numIter = 1000000;
    int m, k;
    Complex_int16 *mat, *vec, *res;
    MKL_Complex8 *a, *b, *c;
    char* nPtr;
    m = strtoul(argv[1], &nPtr, 0);
    k = strtoul(nPtr+1, NULL, 0);

    // int16
    mat = (Complex_int16*)aligned_alloc(64, m*k*sizeof(Complex_int16));
    vec = (Complex_int16*)aligned_alloc(64, k*sizeof(Complex_int16));
    res = (Complex_int16*)aligned_alloc(64, m*sizeof(Complex_int16));
    memset(res, 0, m*sizeof(Complex_int16));

    // float for MKL JIT cgemm
    a = (MKL_Complex8*)mkl_calloc(m*k, sizeof(MKL_Complex8), 64);
    b = (MKL_Complex8*)mkl_calloc(k, sizeof(MKL_Complex8), 64);
    c = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);

    int mod = 50;
    for(int i = 0; i < m*k; i++) {
        mat[i] = {(int16_t)(rand()%mod), (int16_t)(rand()%mod)};
        a[i] = {(float)mat[i].real, (float)mat[i].imag};
    }
    for(int i = 0; i < k; i++) {
        vec[i] = {(int16_t)(rand()%mod), (int16_t)(rand()%mod)};
        b[i] = {(float)vec[i].real, (float)vec[i].imag};
    }
    double myTime = benchInt16(mat, m, k, vec, res, numIter);
    double mklTime = benchJITCGEMM(a, b, c, m, k, numIter);
    for(int i = 0; i < m; i++)  std::cout << "(" << res[i].real << "," << res[i].imag << ")";
    std::cout << std::endl;
    for(int i = 0; i < m; i++)  std::cout << "(" << c[i].real << "," << c[i].imag << ")";
    std::cout << std::endl;
    printf("\n        ---------- \n\n");
    printf("     %ld iterations, (%dx%d) * (%dx%d)\n", numIter, m, k, k, 1);
    printf("MKL JIT cgemm: %.10f µs per iteration\n", mklTime/(double)numIter);
    printf(" int16 matvec: %.10f µs per iteration\n", myTime/(double)numIter);

    std::cout << "  " << BOLDGREEN << std::fixed << std::setprecision(2) << mklTime/myTime << "x" << RESET << " MKL JIT cgemm" << std::endl;
}