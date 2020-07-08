#include <mkl.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <string.h>
#include <Zydis/Zydis.h>


void outputASM(void* func, int m, int n) {
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
    const ZyanUSize length = 7000; // breaks on ret, should never reach length 7000
    ZydisDecodedInstruction instruction;

    // File to output ASM
    std::ofstream outFile;
    std::string filename = "jit_cgemm_" + std::to_string(m) + "x" + std::to_string(n) + ".asm";
    outFile.open(filename);
    while (ZYAN_SUCCESS(ZydisDecoderDecodeBuffer(&decoder, (void*)((uintptr_t)func + offset), length - offset, &instruction))) {
        // Print current instruction pointer.
        std::cout << "0x" << std::uppercase << std::hex << runtime_address << "   ";
        outFile << "0x" << std::uppercase << std::hex << runtime_address << "   ";
        // Format & print the binary instruction structure to human readable format
        char buffer[256];
        ZydisFormatterFormatInstruction(&formatter, &instruction, buffer, sizeof(buffer),
            runtime_address);
        puts(buffer);
        outFile << buffer << "\n";
        offset += instruction.length;
        runtime_address += instruction.length;
        if(strstr(buffer, "ret") != NULL)
        break;
    }
    outFile.close();
}

void runJITCGEMM(MKL_Complex8* a, MKL_Complex8* b, MKL_Complex8* c, MKL_INT m, MKL_INT k) {
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
    my_cgemm(jitter, a, b, c); // execute the GEMM kernel

    outputASM((void*)my_cgemm, m, k);

    // Destroy the created handle/GEMM kernel
    mkl_jit_destroy((void*)my_cgemm);
}

int main(int argc, char** argv) {
    if(argc != 3) fprintf(stderr, "Usage: %s m n\n matrix dimensions are m by n.", argv[0]);
    int m, n;
    m = strtoul(argv[1], NULL, 10);
    n = strtoul(argv[2], NULL, 10);
    MKL_Complex8 *a3, *b3, *c3;
    a3 = (MKL_Complex8*)mkl_calloc(m*n, sizeof(MKL_Complex8), 64);
    b3 = (MKL_Complex8*)mkl_calloc(n, sizeof(MKL_Complex8), 64);
    c3 = (MKL_Complex8*)mkl_calloc(m, sizeof(MKL_Complex8), 64);
    for(float i = 0; i < m*n; i++)
        a3[static_cast<int>(i)] = {i+1, i+2};
    for(float i = 0; i < n; i++)
        b3[static_cast<int>(i)] = {i+2, i+1};
    runJITCGEMM(a3, b3, c3, m, n);
    for(int i = 0; i < m; i++)  std::cout << "(" << c3[i].real << "," << c3[i].imag << ")";
    std::cout << std::endl;
}