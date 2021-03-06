#include <iostream>
#include <complex>
#include <immintrin.h>
#include <iomanip>
#include <stdlib.h>
#include <string.h>
#include <mkl.h>
#include "../timer.hpp"
#include <Zydis/Zydis.h>
#include <fstream>

#define COMPILER_BARRIER() asm volatile("" ::: "memory");
struct Complex_float {
    float real;
    float imag;
};

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

void print_m512i_epi32(__m512i v) {
    int32_t* val = (int32_t*)&v;
    std::cout << "__m512i: ";
    for(int i = 0; i < 16; i+=2) {
        std::cout << "(" << std::setw(3) << val[i] << "," << std::setw(3) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

void print_m512(__m512 v) {
    float* val = (float*)&v;
    std::cout << "__m512 : ";
    for(int i = 0; i < 16; i+=2) {
        std::cout << "(" << std::setw(3) << val[i] << "," << std::setw(3) << val[i+1] << "), ";
    }
    std::cout << std::endl;
}

static const int8_t temp[64] = {2,3,0,1,6,7,4,5,10,11,8,9,14,15,12,13,18,19,16,17,22,23,20,21,26,27,24,25,30,31,28,29,34,35,
                                32,33,38,39,36,37,42,43,40,41,46,47,44,45,50,51,48,49,54,55,52,53,58,59,56,57,62,63,60,61};
const __m512i swapPairs = _mm512_loadu_si512((const void*)temp);
static const int16_t temp1[32] = {1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1};
const __m512i addSub1 = _mm512_loadu_si512((const void*)temp1);
void matvecInt16_16x16(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped, final_res, imag_res_shifted;
    Complex_int16* vec_swapped_arr;
    vec_swapped = _mm512_shuffle_epi8(_mm512_load_si512((const void*)vec), swapPairs);
    COMPILER_BARRIER();
    vec_swapped_arr = (Complex_int16*)&vec_swapped;

    a_b = _mm512_load_si512((const void*)&mat[0]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    for(int c = 1; c < 16; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*16]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
    }
    // One store vs two? Not much difference
    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    // _mm512_mask_storeu_epi16((void*)(res), 0x55555555, real_res);
    // COMPILER_BARRIER(); // Not sure if necessary
    // _mm512_mask_storeu_epi16((void*)((uintptr_t)res+2), 0x55555555, imag_res);
}

void matvecInt16_32x16(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2;
    __m512i real_res2, imag_res2;
    Complex_int16* vec_swapped_arr;
    vec_swapped = _mm512_shuffle_epi8(_mm512_load_si512((const void*)vec), swapPairs);
    COMPILER_BARRIER();
    vec_swapped_arr = (Complex_int16*)&vec_swapped;
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    for(int c = 1; c < 16; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*32]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*32+16]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 = _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 = _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
    }
    _mm512_storeu_si512(res, real_res);
    COMPILER_BARRIER();
    _mm512_mask_storeu_epi16((void*)((uintptr_t)res+2), 0x55555555, imag_res);
    _mm512_storeu_si512(res+16, real_res2);
    COMPILER_BARRIER();
    _mm512_mask_storeu_epi16((void*)((uintptr_t)(res+16)+2), 0x55555555, imag_res2);
}


void matvecInt16_64x16(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2, a_b3, a_b4;
    __m512i real_res2, imag_res2, real_res3, imag_res3, real_res4, imag_res4;
    // Complex_int16* vec_swapped_arr;
    // vec_swapped = _mm512_shuffle_epi8(_mm512_load_si512((const void*)vec), swapPairs);
    // COMPILER_BARRIER();
    // vec_swapped_arr = (Complex_int16*)&vec_swapped;
    // COMPILER_BARRIER();
    Complex_int16 vec_swapped_arr[16];
    Complex_int16 curr;
    for(int i = 0; i < 16; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    a_b3 = _mm512_load_si512((const void*)&mat[32]);
    a_b4 = _mm512_load_si512((const void*)&mat[48]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    real_res3 = _mm512_madd_epi16(a_b3, c_minus_d);
    imag_res3 = _mm512_madd_epi16(a_b3, d_c);
    real_res4 = _mm512_madd_epi16(a_b4, c_minus_d);
    imag_res4 = _mm512_madd_epi16(a_b4, d_c);
    for(int c = 1; c < 16; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*64]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*64+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*64+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*64+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 = _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 = _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
        real_res3 = _mm512_dpwssds_epi32(real_res3, a_b3, c_minus_d);
        imag_res3 = _mm512_dpwssds_epi32(imag_res3, a_b3, d_c);
        real_res4 = _mm512_dpwssds_epi32(real_res4, a_b4, c_minus_d);
        imag_res4 = _mm512_dpwssds_epi32(imag_res4, a_b4, d_c);
    }

    // _mm512_storeu_si512(res, real_res);
    // COMPILER_BARRIER();
    // _mm512_mask_storeu_epi16((void*)((uintptr_t)res+2), 0x55555555, imag_res);
    // _mm512_storeu_si512(res+16, real_res2);
    // COMPILER_BARRIER();
    // _mm512_mask_storeu_epi16((void*)((uintptr_t)(res+16)+2), 0x55555555, imag_res2);
    // _mm512_storeu_si512(res+32, real_res3);
    // COMPILER_BARRIER();
    // _mm512_mask_storeu_epi16((void*)((uintptr_t)(res+32)+2), 0x55555555, imag_res3);
    // _mm512_storeu_si512(res+48, real_res4);
    // COMPILER_BARRIER();
    // _mm512_mask_storeu_epi16((void*)((uintptr_t)(res+48)+2), 0x55555555, imag_res4);

    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    _mm512_storeu_si512((void*)(res+16), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res2, _mm512_slli_epi32(imag_res2, 16)));
    _mm512_storeu_si512((void*)(res+32), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res3, _mm512_slli_epi32(imag_res3, 16)));
    _mm512_storeu_si512((void*)(res+48), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res4, _mm512_slli_epi32(imag_res4, 16)));
}

void matvecInt16_64x64(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2, a_b3, a_b4;
    __m512i real_res2, imag_res2, real_res3, imag_res3, real_res4, imag_res4;
    Complex_int16 vec_swapped_arr[64];
    Complex_int16 curr;
    for(int i = 0; i < 64; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    a_b3 = _mm512_load_si512((const void*)&mat[32]);
    a_b4 = _mm512_load_si512((const void*)&mat[48]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    real_res3 = _mm512_madd_epi16(a_b3, c_minus_d);
    imag_res3 = _mm512_madd_epi16(a_b3, d_c);
    real_res4 = _mm512_madd_epi16(a_b4, c_minus_d);
    imag_res4 = _mm512_madd_epi16(a_b4, d_c);
    for(int c = 1; c < 64; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*64]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*64+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*64+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*64+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 = _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 = _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
        real_res3 = _mm512_dpwssds_epi32(real_res3, a_b3, c_minus_d);
        imag_res3 = _mm512_dpwssds_epi32(imag_res3, a_b3, d_c);
        real_res4 = _mm512_dpwssds_epi32(real_res4, a_b4, c_minus_d);
        imag_res4 = _mm512_dpwssds_epi32(imag_res4, a_b4, d_c);
    }
    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    _mm512_storeu_si512((void*)(res+16), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res2, _mm512_slli_epi32(imag_res2, 16)));
    _mm512_storeu_si512((void*)(res+32), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res3, _mm512_slli_epi32(imag_res3, 16)));
    _mm512_storeu_si512((void*)(res+48), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res4, _mm512_slli_epi32(imag_res4, 16)));
}

void matvecInt16_64x128(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2, a_b3, a_b4;
    __m512i real_res2, imag_res2, real_res3, imag_res3, real_res4, imag_res4;
    Complex_int16 vec_swapped_arr[128] __attribute__((aligned(64)));
    Complex_int16 curr;
    for(int i = 0; i < 128; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    a_b3 = _mm512_load_si512((const void*)&mat[32]);
    a_b4 = _mm512_load_si512((const void*)&mat[48]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    real_res3 = _mm512_madd_epi16(a_b3, c_minus_d);
    imag_res3 = _mm512_madd_epi16(a_b3, d_c);
    real_res4 = _mm512_madd_epi16(a_b4, c_minus_d);
    imag_res4 = _mm512_madd_epi16(a_b4, d_c);
    for(int c = 1; c < 128; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*64]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*64+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*64+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*64+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 = _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 = _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
        real_res3 = _mm512_dpwssds_epi32(real_res3, a_b3, c_minus_d);
        imag_res3 = _mm512_dpwssds_epi32(imag_res3, a_b3, d_c);
        real_res4 = _mm512_dpwssds_epi32(real_res4, a_b4, c_minus_d);
        imag_res4 = _mm512_dpwssds_epi32(imag_res4, a_b4, d_c);
    }
    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    _mm512_storeu_si512((void*)(res+16), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res2, _mm512_slli_epi32(imag_res2, 16)));
    _mm512_storeu_si512((void*)(res+32), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res3, _mm512_slli_epi32(imag_res3, 16)));
    _mm512_storeu_si512((void*)(res+48), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res4, _mm512_slli_epi32(imag_res4, 16)));
}

void matvecInt16_64x32(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2, a_b3, a_b4;
    __m512i real_res2, imag_res2, real_res3, imag_res3, real_res4, imag_res4;
    Complex_int16 vec_swapped_arr[32] __attribute__((aligned(64)));
    Complex_int16 curr;
    for(int i = 0; i < 32; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    a_b3 = _mm512_load_si512((const void*)&mat[32]);
    a_b4 = _mm512_load_si512((const void*)&mat[48]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    real_res3 = _mm512_madd_epi16(a_b3, c_minus_d);
    imag_res3 = _mm512_madd_epi16(a_b3, d_c);
    real_res4 = _mm512_madd_epi16(a_b4, c_minus_d);
    imag_res4 = _mm512_madd_epi16(a_b4, d_c);
    for(int c = 1; c < 32; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*64]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*64+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*64+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*64+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 = _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 = _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
        real_res3 = _mm512_dpwssds_epi32(real_res3, a_b3, c_minus_d);
        imag_res3 = _mm512_dpwssds_epi32(imag_res3, a_b3, d_c);
        real_res4 = _mm512_dpwssds_epi32(real_res4, a_b4, c_minus_d);
        imag_res4 = _mm512_dpwssds_epi32(imag_res4, a_b4, d_c);
    }
    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    _mm512_storeu_si512((void*)(res+16), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res2, _mm512_slli_epi32(imag_res2, 16)));
    _mm512_storeu_si512((void*)(res+32), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res3, _mm512_slli_epi32(imag_res3, 16)));
    _mm512_storeu_si512((void*)(res+48), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res4, _mm512_slli_epi32(imag_res4, 16)));
}

void matvecInt16_64x4096(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2, a_b3, a_b4;
    __m512i real_res2, imag_res2, real_res3, imag_res3, real_res4, imag_res4;
    Complex_int16 vec_swapped_arr[4096] __attribute__((aligned(64)));
    Complex_int16 curr;
    for(int i = 0; i < 4096; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    a_b3 = _mm512_load_si512((const void*)&mat[32]);
    a_b4 = _mm512_load_si512((const void*)&mat[48]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    real_res3 = _mm512_madd_epi16(a_b3, c_minus_d);
    imag_res3 = _mm512_madd_epi16(a_b3, d_c);
    real_res4 = _mm512_madd_epi16(a_b4, c_minus_d);
    imag_res4 = _mm512_madd_epi16(a_b4, d_c);
    for(int c = 1; c < 4096; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*64]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*64+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*64+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*64+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 = _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 = _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
        real_res3 = _mm512_dpwssds_epi32(real_res3, a_b3, c_minus_d);
        imag_res3 = _mm512_dpwssds_epi32(imag_res3, a_b3, d_c);
        real_res4 = _mm512_dpwssds_epi32(real_res4, a_b4, c_minus_d);
        imag_res4 = _mm512_dpwssds_epi32(imag_res4, a_b4, d_c);
    }
    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    _mm512_storeu_si512((void*)(res+16), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res2, _mm512_slli_epi32(imag_res2, 16)));
    _mm512_storeu_si512((void*)(res+32), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res3, _mm512_slli_epi32(imag_res3, 16)));
    _mm512_storeu_si512((void*)(res+48), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res4, _mm512_slli_epi32(imag_res4, 16)));
}


void matvecInt16_16x64(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, real_res, imag_res;
    __m512i a_b2, d_c2, c_minus_d2;
    __m512i a_b3, d_c3, c_minus_d3;
    __m512i a_b4, d_c4, c_minus_d4;
    Complex_int16 vec_swapped_arr[64] __attribute__((aligned(64)));;
    Complex_int16 curr;
    for(int i = 0; i < 64; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    // a_b = _mm512_load_si512((const void*)&mat[0]);
    // d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    // c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    // real_res = _mm512_madd_epi16(a_b, c_minus_d);
    // imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res = _mm512_set1_epi32(0);
    imag_res = _mm512_set1_epi32(0);
    for(int c = 0; c < 64; c+=4) {
        a_b = _mm512_load_si512((const void*)&mat[c*16]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*16+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*16+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*16+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        d_c2 = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c+1]);
        d_c3 = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c+2]);
        d_c4 = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c+3]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        c_minus_d2 = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c+1]));
        c_minus_d3 = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c+2]));
        c_minus_d4 = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c+3]));
        COMPILER_BARRIER();
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res = _mm512_dpwssds_epi32(real_res, a_b2, c_minus_d2);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b2, d_c2);
        real_res = _mm512_dpwssds_epi32(real_res, a_b3, c_minus_d3);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b3, d_c3);
        real_res = _mm512_dpwssds_epi32(real_res, a_b4, c_minus_d4);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b4, d_c4);
    }
    _mm512_store_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
}

void matvecInt16_16x4096(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, real_res, imag_res;
    __m512i a_b2, d_c2, c_minus_d2;
    __m512i a_b3, d_c3, c_minus_d3;
    __m512i a_b4, d_c4, c_minus_d4;
    Complex_int16 vec_swapped_arr[4096] __attribute__((aligned(64)));;
    Complex_int16 curr;
    for(int i = 0; i < 4096; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    // a_b = _mm512_load_si512((const void*)&mat[0]);
    // d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    // c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    // real_res = _mm512_madd_epi16(a_b, c_minus_d);
    // imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res = _mm512_set1_epi32(0);
    imag_res = _mm512_set1_epi32(0);
    for(int c = 0; c < 4096; c+=4) {
        a_b = _mm512_load_si512((const void*)&mat[c*16]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*16+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*16+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*16+48]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        d_c2 = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c+1]);
        d_c3 = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c+2]);
        d_c4 = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c+3]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        c_minus_d2 = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c+1]));
        c_minus_d3 = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c+2]));
        c_minus_d4 = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c+3]));
        COMPILER_BARRIER();
        real_res = _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res = _mm512_dpwssds_epi32(real_res, a_b2, c_minus_d2);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b2, d_c2);
        real_res = _mm512_dpwssds_epi32(real_res, a_b3, c_minus_d3);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b3, d_c3);
        real_res = _mm512_dpwssds_epi32(real_res, a_b4, c_minus_d4);
        imag_res = _mm512_dpwssds_epi32(imag_res, a_b4, d_c4);
    }
    _mm512_store_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
}


void matvecInt16_256x256(const Complex_int16* mat, const Complex_int16* vec, Complex_int16* res) {
    __m512i a_b, d_c, c_minus_d, ac_bc, ad_bd, bd_ad, minus_bd_ad;
    __m512i real_res, imag_res, vec_swapped;
    __m512i a_b2, a_b3, a_b4;
    __m512i a_b5, a_b6, a_b7, a_b8;
    __m512i a_b9, a_b10, a_b11, a_b12;
    __m512i a_b13, a_b14, a_b15, a_b16;
    __m512i real_res2, imag_res2, real_res3, imag_res3, real_res4, imag_res4;
    __m512i real_res5, imag_res5, real_res6, imag_res6, real_res7, imag_res7;
    __m512i real_res8, imag_res8, real_res9, imag_res9, real_res10, imag_res10;
    __m512i real_res11, imag_res11, real_res12, imag_res12, real_res13, imag_res13;
    __m512i real_res14, imag_res14, real_res15, imag_res15, real_res16, imag_res16;
    Complex_int16 vec_swapped_arr[256];
    Complex_int16 curr;
    for(int i = 0; i < 256; i++) {
        curr = vec[i];
        vec_swapped_arr[i] = {curr.imag, curr.real};
    }
    
    a_b = _mm512_load_si512((const void*)&mat[0]);
    a_b2 = _mm512_load_si512((const void*)&mat[16]);
    a_b3 = _mm512_load_si512((const void*)&mat[32]);
    a_b4 = _mm512_load_si512((const void*)&mat[48]);
    a_b5 = _mm512_load_si512((const void*)&mat[64]);
    a_b6 = _mm512_load_si512((const void*)&mat[80]);
    a_b7 = _mm512_load_si512((const void*)&mat[96]);
    a_b8 = _mm512_load_si512((const void*)&mat[112]);
    a_b9 = _mm512_load_si512((const void*)&mat[128]);
    a_b10 = _mm512_load_si512((const void*)&mat[144]);
    a_b11 = _mm512_load_si512((const void*)&mat[160]);
    a_b12 = _mm512_load_si512((const void*)&mat[176]);
    a_b13 = _mm512_load_si512((const void*)&mat[192]);
    a_b14 = _mm512_load_si512((const void*)&mat[208]);
    a_b15 = _mm512_load_si512((const void*)&mat[224]);
    a_b16 = _mm512_load_si512((const void*)&mat[240]);
    d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[0]);
    c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[0]));
    real_res = _mm512_madd_epi16(a_b, c_minus_d);
    imag_res = _mm512_madd_epi16(a_b, d_c);
    real_res2 = _mm512_madd_epi16(a_b2, c_minus_d);
    imag_res2 = _mm512_madd_epi16(a_b2, d_c);
    real_res3 = _mm512_madd_epi16(a_b3, c_minus_d);
    imag_res3 = _mm512_madd_epi16(a_b3, d_c);
    real_res4 = _mm512_madd_epi16(a_b4, c_minus_d);
    imag_res4 = _mm512_madd_epi16(a_b4, d_c);
    real_res5 = _mm512_madd_epi16(a_b5, c_minus_d);
    imag_res5 = _mm512_madd_epi16(a_b5, d_c);
    real_res6 = _mm512_madd_epi16(a_b6, c_minus_d);
    imag_res6 = _mm512_madd_epi16(a_b6, d_c);
    real_res7 = _mm512_madd_epi16(a_b7, c_minus_d);
    imag_res7 = _mm512_madd_epi16(a_b7, d_c);
    real_res8 = _mm512_madd_epi16(a_b8, c_minus_d);
    imag_res8 = _mm512_madd_epi16(a_b8, d_c);
    real_res9 = _mm512_madd_epi16(a_b9, c_minus_d);
    imag_res9 = _mm512_madd_epi16(a_b9, d_c);
    real_res10 = _mm512_madd_epi16(a_b10, c_minus_d);
    imag_res10 = _mm512_madd_epi16(a_b10, d_c);
    real_res11 = _mm512_madd_epi16(a_b11, c_minus_d);
    imag_res11 = _mm512_madd_epi16(a_b11, d_c);
    real_res12 = _mm512_madd_epi16(a_b12, c_minus_d);
    imag_res12 = _mm512_madd_epi16(a_b12, d_c);
    real_res13 = _mm512_madd_epi16(a_b13, c_minus_d);
    imag_res13 = _mm512_madd_epi16(a_b13, d_c);
    real_res14 = _mm512_madd_epi16(a_b14, c_minus_d);
    imag_res14 = _mm512_madd_epi16(a_b14, d_c);
    real_res15 = _mm512_madd_epi16(a_b15, c_minus_d);
    imag_res15 = _mm512_madd_epi16(a_b15, d_c);
    real_res16 = _mm512_madd_epi16(a_b16, c_minus_d);
    imag_res16 = _mm512_madd_epi16(a_b16, d_c);
    for(int c = 1; c < 256; c++) {
        a_b = _mm512_load_si512((const void*)&mat[c*256]);
        a_b2 = _mm512_load_si512((const void*)&mat[c*256+16]);
        a_b3 = _mm512_load_si512((const void*)&mat[c*256+32]);
        a_b4 = _mm512_load_si512((const void*)&mat[c*256+48]);
        a_b5 = _mm512_load_si512((const void*)&mat[c*256+256]);
        a_b6 = _mm512_load_si512((const void*)&mat[c*256+80]);
        a_b7 = _mm512_load_si512((const void*)&mat[c*256+96]);
        a_b8 = _mm512_load_si512((const void*)&mat[c*256+112]);
        a_b9 = _mm512_load_si512((const void*)&mat[c*256+128]);
        a_b10 = _mm512_load_si512((const void*)&mat[c*256+144]);
        a_b11 = _mm512_load_si512((const void*)&mat[c*256+160]);
        a_b12 = _mm512_load_si512((const void*)&mat[c*256+176]);
        a_b13 = _mm512_load_si512((const void*)&mat[c*256+192]);
        a_b14 = _mm512_load_si512((const void*)&mat[c*256+208]);
        a_b15 = _mm512_load_si512((const void*)&mat[c*256+224]);
        a_b16 = _mm512_load_si512((const void*)&mat[c*256+240]);
        d_c = _mm512_set1_epi32(*(int32_t*)&vec_swapped_arr[c]);
        c_minus_d = _mm512_mullo_epi16(addSub1, _mm512_set1_epi32(*(int32_t*)&vec[c]));
        real_res =   _mm512_dpwssds_epi32(real_res, a_b, c_minus_d);
        imag_res =   _mm512_dpwssds_epi32(imag_res, a_b, d_c);
        real_res2 =  _mm512_dpwssds_epi32(real_res2, a_b2, c_minus_d);
        imag_res2 =  _mm512_dpwssds_epi32(imag_res2, a_b2, d_c);
        real_res3 =  _mm512_dpwssds_epi32(real_res3, a_b3, c_minus_d);
        imag_res3 =  _mm512_dpwssds_epi32(imag_res3, a_b3, d_c);
        real_res4 =  _mm512_dpwssds_epi32(real_res4, a_b4, c_minus_d);
        imag_res4 =  _mm512_dpwssds_epi32(imag_res4, a_b4, d_c);
        real_res5 =  _mm512_dpwssds_epi32(real_res5, a_b5, c_minus_d);
        imag_res5 =  _mm512_dpwssds_epi32(imag_res5, a_b5, d_c);
        real_res6 =  _mm512_dpwssds_epi32(real_res6, a_b6, c_minus_d);
        imag_res6 =  _mm512_dpwssds_epi32(imag_res6, a_b6, d_c);
        real_res7 =  _mm512_dpwssds_epi32(real_res7, a_b7, c_minus_d);
        imag_res7 =  _mm512_dpwssds_epi32(imag_res7, a_b7, d_c);
        real_res8 =  _mm512_dpwssds_epi32(real_res8, a_b8, c_minus_d);
        imag_res8 =  _mm512_dpwssds_epi32(imag_res8, a_b8, d_c);
        real_res9 =  _mm512_dpwssds_epi32(real_res9, a_b9, c_minus_d);
        imag_res9 =  _mm512_dpwssds_epi32(imag_res9, a_b9, d_c);
        real_res10 = _mm512_dpwssds_epi32(real_res10, a_b10, c_minus_d);
        imag_res10 = _mm512_dpwssds_epi32(imag_res10, a_b10, d_c);
        real_res11 = _mm512_dpwssds_epi32(real_res11, a_b11, c_minus_d);
        imag_res11 = _mm512_dpwssds_epi32(imag_res11, a_b11, d_c);
        real_res12 = _mm512_dpwssds_epi32(real_res12, a_b12, c_minus_d);
        imag_res12 = _mm512_dpwssds_epi32(imag_res12, a_b12, d_c);
        real_res13 = _mm512_dpwssds_epi32(real_res13, a_b13, c_minus_d);
        imag_res13 = _mm512_dpwssds_epi32(imag_res13, a_b13, d_c);
        real_res14 = _mm512_dpwssds_epi32(real_res14, a_b14, c_minus_d);
        imag_res14 = _mm512_dpwssds_epi32(imag_res14, a_b14, d_c);
        real_res15 = _mm512_dpwssds_epi32(real_res15, a_b15, c_minus_d);
        imag_res15 = _mm512_dpwssds_epi32(imag_res15, a_b15, d_c);
        real_res16 = _mm512_dpwssds_epi32(real_res16, a_b16, c_minus_d);
        imag_res16 = _mm512_dpwssds_epi32(imag_res16, a_b16, d_c);
    }
    _mm512_storeu_si512(res, _mm512_mask_blend_epi16(0xAAAAAAAA, real_res, _mm512_slli_epi32(imag_res, 16)));
    _mm512_storeu_si512((void*)(res+16),  _mm512_mask_blend_epi16(0xAAAAAAAA, real_res2, _mm512_slli_epi32(imag_res2, 16)));
    _mm512_storeu_si512((void*)(res+32),  _mm512_mask_blend_epi16(0xAAAAAAAA, real_res3, _mm512_slli_epi32(imag_res3, 16)));
    _mm512_storeu_si512((void*)(res+48),  _mm512_mask_blend_epi16(0xAAAAAAAA, real_res4, _mm512_slli_epi32(imag_res4, 16)));
    _mm512_storeu_si512((void*)(res+64),  _mm512_mask_blend_epi16(0xAAAAAAAA, real_res5, _mm512_slli_epi32(imag_res5, 16)));
    _mm512_storeu_si512((void*)(res+80),  _mm512_mask_blend_epi16(0xAAAAAAAA, real_res6, _mm512_slli_epi32(imag_res6, 16)));
    _mm512_storeu_si512((void*)(res+96),  _mm512_mask_blend_epi16(0xAAAAAAAA, real_res7, _mm512_slli_epi32(imag_res7, 16)));
    _mm512_storeu_si512((void*)(res+112), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res8, _mm512_slli_epi32(imag_res8, 16)));
    _mm512_storeu_si512((void*)(res+128), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res9, _mm512_slli_epi32(imag_res9, 16)));
    _mm512_storeu_si512((void*)(res+144), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res10, _mm512_slli_epi32(imag_res10, 16)));
    _mm512_storeu_si512((void*)(res+160), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res11, _mm512_slli_epi32(imag_res11, 16)));
    _mm512_storeu_si512((void*)(res+176), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res12, _mm512_slli_epi32(imag_res12, 16)));
    _mm512_storeu_si512((void*)(res+192), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res13, _mm512_slli_epi32(imag_res13, 16)));
    _mm512_storeu_si512((void*)(res+208), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res14, _mm512_slli_epi32(imag_res14, 16)));
    _mm512_storeu_si512((void*)(res+224), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res15, _mm512_slli_epi32(imag_res15, 16)));
    _mm512_storeu_si512((void*)(res+240), _mm512_mask_blend_epi16(0xAAAAAAAA, real_res16, _mm512_slli_epi32(imag_res16, 16)));
}

static const int32_t temp2[16] = {1,0,3,2,5,4,7,6,9,8,11,10,13,12,15,14};
const __m512i swapPairsFloat = _mm512_loadu_si512((const void*)temp2);
static const float temp3[16] = {1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1};
const __m512 addSub = _mm512_loadu_ps((const void*)temp3);
void matvecFloat_16x16(const MKL_Complex8* mat, const MKL_Complex8* vec, MKL_Complex8* res) {
    __m512 a_b, a_b1, a_b2, a_b3, c_c, d_d, ac_bc, ad_bd, bd_ad, bd_ad1;
    __m512 ac_bc_accu, ad_bd_accu, ac_bc_accu1, ad_bd_accu1, ac_bc_accu2, ad_bd_accu2, ac_bc_accu3, ad_bd_accu3;
    MKL_Complex8 val;
    val = vec[0];
    // asm (
    //     "vmovups %[A_B], zmmword ptr %[MAT]"
    //     : [A_B] "=v" (a_b)
    //     : [MAT] "rm" (mat)
    //     :
    //     );
    a_b = _mm512_loadu_ps((const void*)&mat[0]);
    a_b1 = _mm512_loadu_ps((const void*)&mat[8]);
    c_c = _mm512_set1_ps(val.real);
    ac_bc_accu = _mm512_mul_ps(a_b, c_c);
    d_d = _mm512_set1_ps(val.imag);
    ad_bd_accu = _mm512_mul_ps(a_b, d_d);
    c_c = _mm512_set1_ps(val.real);
    ac_bc_accu1 = _mm512_mul_ps(a_b1, c_c);
    d_d = _mm512_set1_ps(val.imag);
    ad_bd_accu1 = _mm512_mul_ps(a_b1, d_d);

    for(int c = 1; c < 16; c++) {
        val = vec[c];
        a_b = _mm512_loadu_ps((const void*)&mat[c*16]);
        a_b1 = _mm512_loadu_ps((const void*)&mat[c*16+8]);
        c_c = _mm512_set1_ps(val.real);
        ac_bc_accu = _mm512_fmadd_ps(a_b, c_c, ac_bc_accu);
        d_d = _mm512_set1_ps(val.imag);
        ad_bd_accu = _mm512_fmadd_ps(a_b, d_d, ad_bd_accu);
        c_c = _mm512_set1_ps(val.real);
        ac_bc_accu1 = _mm512_fmadd_ps(a_b1, c_c, ac_bc_accu1);
        d_d = _mm512_set1_ps(val.imag);
        ad_bd_accu1 = _mm512_fmadd_ps(a_b1, d_d, ad_bd_accu1);
    }
    // Swap even and odd in ad_bd
    bd_ad = _mm512_permutevar_ps(ad_bd_accu, swapPairsFloat);
    ac_bc_accu = _mm512_fnmadd_ps(bd_ad, addSub, ac_bc_accu);

    bd_ad1 = _mm512_permutevar_ps(ad_bd_accu1, swapPairsFloat);

    // Fused negate multiply add -> simplified to multiply, add
    ac_bc_accu1 = _mm512_fnmadd_ps(bd_ad1, addSub, ac_bc_accu1);

    // Store results in the array
    _mm512_storeu_ps(res, ac_bc_accu);
    _mm512_storeu_ps(res+8, ac_bc_accu1);
}

void matvecInt16(const Complex_int16* mat, int m, int k, const Complex_int16* vec, Complex_int16* res) {
    if(m == 16 && k == 16)
        matvecInt16_16x16(mat, vec, res);
    else if(m == 32 && k == 16)
        matvecInt16_32x16(mat, vec, res);
    else if(m == 64 && k == 16)
        matvecInt16_64x16(mat, vec, res);
    else if(m == 16 && k == 64)
        matvecInt16_16x64(mat, vec, res);
    else if(m == 16 && k == 4096)
        matvecInt16_16x4096(mat, vec, res);
    else if(m == 64 && k == 64)
        matvecInt16_64x64(mat, vec, res);
    else if(m == 64 && k == 128)
        matvecInt16_64x128(mat, vec, res);
    else if(m == 64 && k == 32)
        matvecInt16_64x32(mat, vec, res);
    else if(m == 64 && k == 4096)
        matvecInt16_64x4096(mat, vec, res);
    else if(m == 256 && k == 256)
        matvecInt16_256x256(mat, vec, res);
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
    double start = getTime();
    mkl_jit_status_t status = mkl_jit_create_cgemm(&jitter, MKL_COL_MAJOR, MKL_NOTRANS, MKL_NOTRANS, m, 1, k, &alpha, lda, ldb, &beta, ldc);
    if (MKL_JIT_ERROR == status) {
        fprintf(stderr, "Error: insufficient memory to JIT and store the DGEMM kernel\n");
        exit(1);
    }
    // Get kernel associated with handle
    cgemm_jit_kernel_t my_cgemm = mkl_jit_get_cgemm_ptr(jitter);
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
        matvecInt16(mat, m, k, vec, res);
    return timeSince(start);
}

double benchFloat(const MKL_Complex8* a, int m, int k, const MKL_Complex8* b, MKL_Complex8* c, int numIter) {
    double start = getTime();
    for(int i = 0; i < numIter; i++)
        matvecFloat_16x16(a, b, c);
    return timeSince(start);
}

int main(int argc, char** argv) {
    if(argc != 2) {
        fprintf(stderr, "Usage: %s MxK where M is # rows and K is # cols\n", argv[0]);
        exit(1);
    }
    srand(time(0));
    long numIter = 100000;
    int m, k;
    Complex_int16 *mat, *vec, *res;
    MKL_Complex8 *a, *b, *c, *a1, *b1, *c1;
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
    
    // float for MKL JIT cgemm
    a1 = (MKL_Complex8*)mkl_calloc(m*k, sizeof(MKL_Complex8), 64);
    b1 = (MKL_Complex8*)mkl_calloc(k, sizeof(MKL_Complex8), 64);
    c1 = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);

    int mod = 10;
    int range = mod/2;
    for(int i = 0; i < m*k; i++) {
        mat[i] = {(int16_t)(rand()%mod-range), (int16_t)(rand()%mod-range)};
        a[i] = {(float)mat[i].real, (float)mat[i].imag};
        a1[i] = {(float)mat[i].real, (float)mat[i].imag};
    }
    for(int i = 0; i < k; i++) {
        vec[i] = {(int16_t)(rand()%mod-range), (int16_t)(rand()%mod-range)};
        b[i] = {(float)vec[i].real, (float)vec[i].imag};
        b1[i] = {(float)vec[i].real, (float)vec[i].imag};
    }
    //double floatTime = benchFloat(a1, m, k, b1, c1, numIter);
    double myTime = benchInt16(mat, m, k, vec, res, numIter);
    double mklTime = benchJITCGEMM(a, b, c, m, k, numIter);
    for(int i = 0; i < m; i++)  std::cout << "(" << res[i].real << "," << res[i].imag << ")";
    std::cout << std::endl;
    for(int i = 0; i < m; i++)  std::cout << "(" << c[i].real << "," << c[i].imag << ")";
    std::cout << std::endl;
    // for(int i = 0; i < m; i++)  std::cout << "(" << c1[i].real << "," << c1[i].imag << ")";
    // std::cout << std::endl;
    printf("\n        ---------- \n\n");
    printf("     %ld iterations, (%dx%d) * (%dx%d)\n", numIter, m, k, k, 1);
    printf("MKL JIT cgemm: %.10f µs per iteration\n", mklTime/(double)numIter);
    printf(" int16 matvec: %.10f µs per iteration\n", myTime/(double)numIter);
    //printf(" float matvec: %.10f µs per iteration\n", floatTime/(double)numIter);

    std::cout << "  " << BOLDGREEN << std::fixed << std::setprecision(2) << mklTime/myTime << "x" << RESET << " MKL JIT cgemm" << std::endl;

    mkl_free(a); mkl_free(b); mkl_free(c);
    mkl_free(a1); mkl_free(b1); mkl_free(c1);
    free(mat); free(vec); free(res);
}