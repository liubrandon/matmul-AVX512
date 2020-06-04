
./matmul:     file format elf64-x86-64


Disassembly of section .init:

0000000000001920 <_init>:
    1920:	48 83 ec 08          	sub    $0x8,%rsp
    1924:	48 8b 05 a5 b6 20 00 	mov    0x20b6a5(%rip),%rax        # 20cfd0 <__gmon_start__>
    192b:	48 85 c0             	test   %rax,%rax
    192e:	74 02                	je     1932 <_init+0x12>
    1930:	ff d0                	callq  *%rax
    1932:	48 83 c4 08          	add    $0x8,%rsp
    1936:	c3                   	retq   

Disassembly of section .plt:

0000000000001940 <.plt>:
    1940:	ff 35 02 b5 20 00    	pushq  0x20b502(%rip)        # 20ce48 <_GLOBAL_OFFSET_TABLE_+0x8>
    1946:	ff 25 04 b5 20 00    	jmpq   *0x20b504(%rip)        # 20ce50 <_GLOBAL_OFFSET_TABLE_+0x10>
    194c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001950 <_ZSt19__throw_logic_errorPKc@plt>:
    1950:	ff 25 02 b5 20 00    	jmpq   *0x20b502(%rip)        # 20ce58 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    1956:	68 00 00 00 00       	pushq  $0x0
    195b:	e9 e0 ff ff ff       	jmpq   1940 <.plt>

0000000000001960 <memcpy@plt>:
    1960:	ff 25 fa b4 20 00    	jmpq   *0x20b4fa(%rip)        # 20ce60 <memcpy@GLIBC_2.14>
    1966:	68 01 00 00 00       	pushq  $0x1
    196b:	e9 d0 ff ff ff       	jmpq   1940 <.plt>

0000000000001970 <_ZSt17__throw_bad_allocv@plt>:
    1970:	ff 25 f2 b4 20 00    	jmpq   *0x20b4f2(%rip)        # 20ce68 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
    1976:	68 02 00 00 00       	pushq  $0x2
    197b:	e9 c0 ff ff ff       	jmpq   1940 <.plt>

0000000000001980 <_ZNSo9_M_insertIyEERSoT_@plt>:
    1980:	ff 25 ea b4 20 00    	jmpq   *0x20b4ea(%rip)        # 20ce70 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
    1986:	68 03 00 00 00       	pushq  $0x3
    198b:	e9 b0 ff ff ff       	jmpq   1940 <.plt>

0000000000001990 <wrapper2_cgemv_@plt>:
    1990:	ff 25 e2 b4 20 00    	jmpq   *0x20b4e2(%rip)        # 20ce78 <wrapper2_cgemv_>
    1996:	68 04 00 00 00       	pushq  $0x4
    199b:	e9 a0 ff ff ff       	jmpq   1940 <.plt>

00000000000019a0 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>:
    19a0:	ff 25 da b4 20 00    	jmpq   *0x20b4da(%rip)        # 20ce80 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
    19a6:	68 05 00 00 00       	pushq  $0x5
    19ab:	e9 90 ff ff ff       	jmpq   1940 <.plt>

00000000000019b0 <_Znwm@plt>:
    19b0:	ff 25 d2 b4 20 00    	jmpq   *0x20b4d2(%rip)        # 20ce88 <_Znwm@GLIBCXX_3.4>
    19b6:	68 06 00 00 00       	pushq  $0x6
    19bb:	e9 80 ff ff ff       	jmpq   1940 <.plt>

00000000000019c0 <memmove@plt>:
    19c0:	ff 25 ca b4 20 00    	jmpq   *0x20b4ca(%rip)        # 20ce90 <memmove@GLIBC_2.2.5>
    19c6:	68 07 00 00 00       	pushq  $0x7
    19cb:	e9 70 ff ff ff       	jmpq   1940 <.plt>

00000000000019d0 <__assert_fail@plt>:
    19d0:	ff 25 c2 b4 20 00    	jmpq   *0x20b4c2(%rip)        # 20ce98 <__assert_fail@GLIBC_2.2.5>
    19d6:	68 08 00 00 00       	pushq  $0x8
    19db:	e9 60 ff ff ff       	jmpq   1940 <.plt>

00000000000019e0 <free@plt>:
    19e0:	ff 25 ba b4 20 00    	jmpq   *0x20b4ba(%rip)        # 20cea0 <free@GLIBC_2.2.5>
    19e6:	68 09 00 00 00       	pushq  $0x9
    19eb:	e9 50 ff ff ff       	jmpq   1940 <.plt>

00000000000019f0 <__fprintf_chk@plt>:
    19f0:	ff 25 b2 b4 20 00    	jmpq   *0x20b4b2(%rip)        # 20cea8 <__fprintf_chk@GLIBC_2.3.4>
    19f6:	68 0a 00 00 00       	pushq  $0xa
    19fb:	e9 40 ff ff ff       	jmpq   1940 <.plt>

0000000000001a00 <_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>:
    1a00:	ff 25 aa b4 20 00    	jmpq   *0x20b4aa(%rip)        # 20ceb0 <_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
    1a06:	68 0b 00 00 00       	pushq  $0xb
    1a0b:	e9 30 ff ff ff       	jmpq   1940 <.plt>

0000000000001a10 <__stack_chk_fail@plt>:
    1a10:	ff 25 a2 b4 20 00    	jmpq   *0x20b4a2(%rip)        # 20ceb8 <__stack_chk_fail@GLIBC_2.4>
    1a16:	68 0c 00 00 00       	pushq  $0xc
    1a1b:	e9 20 ff ff ff       	jmpq   1940 <.plt>

0000000000001a20 <wrapper2_cgemm_@plt>:
    1a20:	ff 25 9a b4 20 00    	jmpq   *0x20b49a(%rip)        # 20cec0 <wrapper2_cgemm_>
    1a26:	68 0d 00 00 00       	pushq  $0xd
    1a2b:	e9 10 ff ff ff       	jmpq   1940 <.plt>

0000000000001a30 <memset@plt>:
    1a30:	ff 25 92 b4 20 00    	jmpq   *0x20b492(%rip)        # 20cec8 <memset@GLIBC_2.2.5>
    1a36:	68 0e 00 00 00       	pushq  $0xe
    1a3b:	e9 00 ff ff ff       	jmpq   1940 <.plt>

0000000000001a40 <_ZSt16__throw_bad_castv@plt>:
    1a40:	ff 25 8a b4 20 00    	jmpq   *0x20b48a(%rip)        # 20ced0 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
    1a46:	68 0f 00 00 00       	pushq  $0xf
    1a4b:	e9 f0 fe ff ff       	jmpq   1940 <.plt>

0000000000001a50 <clock_gettime@plt>:
    1a50:	ff 25 82 b4 20 00    	jmpq   *0x20b482(%rip)        # 20ced8 <clock_gettime@GLIBC_2.17>
    1a56:	68 10 00 00 00       	pushq  $0x10
    1a5b:	e9 e0 fe ff ff       	jmpq   1940 <.plt>

0000000000001a60 <__cxa_guard_acquire@plt>:
    1a60:	ff 25 7a b4 20 00    	jmpq   *0x20b47a(%rip)        # 20cee0 <__cxa_guard_acquire@CXXABI_1.3>
    1a66:	68 11 00 00 00       	pushq  $0x11
    1a6b:	e9 d0 fe ff ff       	jmpq   1940 <.plt>

0000000000001a70 <__cxa_allocate_exception@plt>:
    1a70:	ff 25 72 b4 20 00    	jmpq   *0x20b472(%rip)        # 20cee8 <__cxa_allocate_exception@CXXABI_1.3>
    1a76:	68 12 00 00 00       	pushq  $0x12
    1a7b:	e9 c0 fe ff ff       	jmpq   1940 <.plt>

0000000000001a80 <_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv@plt>:
    1a80:	ff 25 6a b4 20 00    	jmpq   *0x20b46a(%rip)        # 20cef0 <_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv@GLIBCXX_3.4.21>
    1a86:	68 13 00 00 00       	pushq  $0x13
    1a8b:	e9 b0 fe ff ff       	jmpq   1940 <.plt>

0000000000001a90 <strlen@plt>:
    1a90:	ff 25 62 b4 20 00    	jmpq   *0x20b462(%rip)        # 20cef8 <strlen@GLIBC_2.2.5>
    1a96:	68 14 00 00 00       	pushq  $0x14
    1a9b:	e9 a0 fe ff ff       	jmpq   1940 <.plt>

0000000000001aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
    1aa0:	ff 25 5a b4 20 00    	jmpq   *0x20b45a(%rip)        # 20cf00 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
    1aa6:	68 15 00 00 00       	pushq  $0x15
    1aab:	e9 90 fe ff ff       	jmpq   1940 <.plt>

0000000000001ab0 <_ZNSo5flushEv@plt>:
    1ab0:	ff 25 52 b4 20 00    	jmpq   *0x20b452(%rip)        # 20cf08 <_ZNSo5flushEv@GLIBCXX_3.4>
    1ab6:	68 16 00 00 00       	pushq  $0x16
    1abb:	e9 80 fe ff ff       	jmpq   1940 <.plt>

0000000000001ac0 <_ZNSolsEs@plt>:
    1ac0:	ff 25 4a b4 20 00    	jmpq   *0x20b44a(%rip)        # 20cf10 <_ZNSolsEs@GLIBCXX_3.4>
    1ac6:	68 17 00 00 00       	pushq  $0x17
    1acb:	e9 70 fe ff ff       	jmpq   1940 <.plt>

0000000000001ad0 <setenv@plt>:
    1ad0:	ff 25 42 b4 20 00    	jmpq   *0x20b442(%rip)        # 20cf18 <setenv@GLIBC_2.2.5>
    1ad6:	68 18 00 00 00       	pushq  $0x18
    1adb:	e9 60 fe ff ff       	jmpq   1940 <.plt>

0000000000001ae0 <_ZdlPv@plt>:
    1ae0:	ff 25 3a b4 20 00    	jmpq   *0x20b43a(%rip)        # 20cf20 <_ZdlPv@GLIBCXX_3.4>
    1ae6:	68 19 00 00 00       	pushq  $0x19
    1aeb:	e9 50 fe ff ff       	jmpq   1940 <.plt>

0000000000001af0 <_ZNSo3putEc@plt>:
    1af0:	ff 25 32 b4 20 00    	jmpq   *0x20b432(%rip)        # 20cf28 <_ZNSo3putEc@GLIBCXX_3.4>
    1af6:	68 1a 00 00 00       	pushq  $0x1a
    1afb:	e9 40 fe ff ff       	jmpq   1940 <.plt>

0000000000001b00 <__cxa_guard_release@plt>:
    1b00:	ff 25 2a b4 20 00    	jmpq   *0x20b42a(%rip)        # 20cf30 <__cxa_guard_release@CXXABI_1.3>
    1b06:	68 1b 00 00 00       	pushq  $0x1b
    1b0b:	e9 30 fe ff ff       	jmpq   1940 <.plt>

0000000000001b10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    1b10:	ff 25 22 b4 20 00    	jmpq   *0x20b422(%rip)        # 20cf38 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    1b16:	68 1c 00 00 00       	pushq  $0x1c
    1b1b:	e9 20 fe ff ff       	jmpq   1940 <.plt>

0000000000001b20 <_ZSt20__throw_length_errorPKc@plt>:
    1b20:	ff 25 1a b4 20 00    	jmpq   *0x20b41a(%rip)        # 20cf40 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
    1b26:	68 1d 00 00 00       	pushq  $0x1d
    1b2b:	e9 10 fe ff ff       	jmpq   1940 <.plt>

0000000000001b30 <__cxa_throw@plt>:
    1b30:	ff 25 12 b4 20 00    	jmpq   *0x20b412(%rip)        # 20cf48 <__cxa_throw@CXXABI_1.3>
    1b36:	68 1e 00 00 00       	pushq  $0x1e
    1b3b:	e9 00 fe ff ff       	jmpq   1940 <.plt>

0000000000001b40 <_Unwind_Resume@plt>:
    1b40:	ff 25 0a b4 20 00    	jmpq   *0x20b40a(%rip)        # 20cf50 <_Unwind_Resume@GCC_3.0>
    1b46:	68 1f 00 00 00       	pushq  $0x1f
    1b4b:	e9 f0 fd ff ff       	jmpq   1940 <.plt>

0000000000001b50 <_ZNSo9_M_insertIdEERSoT_@plt>:
    1b50:	ff 25 02 b4 20 00    	jmpq   *0x20b402(%rip)        # 20cf58 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
    1b56:	68 20 00 00 00       	pushq  $0x20
    1b5b:	e9 e0 fd ff ff       	jmpq   1940 <.plt>

0000000000001b60 <strcmp@plt>:
    1b60:	ff 25 fa b3 20 00    	jmpq   *0x20b3fa(%rip)        # 20cf60 <strcmp@GLIBC_2.2.5>
    1b66:	68 21 00 00 00       	pushq  $0x21
    1b6b:	e9 d0 fd ff ff       	jmpq   1940 <.plt>

0000000000001b70 <strtoul@plt>:
    1b70:	ff 25 f2 b3 20 00    	jmpq   *0x20b3f2(%rip)        # 20cf68 <strtoul@GLIBC_2.2.5>
    1b76:	68 22 00 00 00       	pushq  $0x22
    1b7b:	e9 c0 fd ff ff       	jmpq   1940 <.plt>

0000000000001b80 <__cxa_atexit@plt>:
    1b80:	ff 25 ea b3 20 00    	jmpq   *0x20b3ea(%rip)        # 20cf70 <__cxa_atexit@GLIBC_2.2.5>
    1b86:	68 23 00 00 00       	pushq  $0x23
    1b8b:	e9 b0 fd ff ff       	jmpq   1940 <.plt>

0000000000001b90 <__cxa_free_exception@plt>:
    1b90:	ff 25 e2 b3 20 00    	jmpq   *0x20b3e2(%rip)        # 20cf78 <__cxa_free_exception@CXXABI_1.3>
    1b96:	68 24 00 00 00       	pushq  $0x24
    1b9b:	e9 a0 fd ff ff       	jmpq   1940 <.plt>

0000000000001ba0 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>:
    1ba0:	ff 25 da b3 20 00    	jmpq   *0x20b3da(%rip)        # 20cf80 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
    1ba6:	68 25 00 00 00       	pushq  $0x25
    1bab:	e9 90 fd ff ff       	jmpq   1940 <.plt>

0000000000001bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    1bb0:	ff 25 d2 b3 20 00    	jmpq   *0x20b3d2(%rip)        # 20cf88 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    1bb6:	68 26 00 00 00       	pushq  $0x26
    1bbb:	e9 80 fd ff ff       	jmpq   1940 <.plt>

0000000000001bc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
    1bc0:	ff 25 ca b3 20 00    	jmpq   *0x20b3ca(%rip)        # 20cf90 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1bc6:	68 27 00 00 00       	pushq  $0x27
    1bcb:	e9 70 fd ff ff       	jmpq   1940 <.plt>

0000000000001bd0 <_ZNSt8ios_base4InitC1Ev@plt>:
    1bd0:	ff 25 c2 b3 20 00    	jmpq   *0x20b3c2(%rip)        # 20cf98 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1bd6:	68 28 00 00 00       	pushq  $0x28
    1bdb:	e9 60 fd ff ff       	jmpq   1940 <.plt>

0000000000001be0 <__printf_chk@plt>:
    1be0:	ff 25 ba b3 20 00    	jmpq   *0x20b3ba(%rip)        # 20cfa0 <__printf_chk@GLIBC_2.3.4>
    1be6:	68 29 00 00 00       	pushq  $0x29
    1beb:	e9 50 fd ff ff       	jmpq   1940 <.plt>

0000000000001bf0 <posix_memalign@plt>:
    1bf0:	ff 25 b2 b3 20 00    	jmpq   *0x20b3b2(%rip)        # 20cfa8 <posix_memalign@GLIBC_2.2.5>
    1bf6:	68 2a 00 00 00       	pushq  $0x2a
    1bfb:	e9 40 fd ff ff       	jmpq   1940 <.plt>

0000000000001c00 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@plt>:
    1c00:	ff 25 aa b3 20 00    	jmpq   *0x20b3aa(%rip)        # 20cfb0 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@GLIBCXX_3.4.21>
    1c06:	68 2b 00 00 00       	pushq  $0x2b
    1c0b:	e9 30 fd ff ff       	jmpq   1940 <.plt>

Disassembly of section .plt.got:

0000000000001c10 <__cxa_finalize@plt>:
    1c10:	ff 25 b2 b3 20 00    	jmpq   *0x20b3b2(%rip)        # 20cfc8 <__cxa_finalize@GLIBC_2.2.5>
    1c16:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>:
    1c20:	41 55                	push   %r13
    1c22:	41 54                	push   %r12
    1c24:	55                   	push   %rbp
    1c25:	53                   	push   %rbx
    1c26:	48 89 fb             	mov    %rdi,%rbx
    1c29:	48 8d 3d b5 91 00 00 	lea    0x91b5(%rip),%rdi        # ade5 <_IO_stdin_used+0x65>
    1c30:	48 83 ec 38          	sub    $0x38,%rsp
    1c34:	48 8b 2d 1d b4 20 00 	mov    0x20b41d(%rip),%rbp        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    1c3b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c42:	00 00 
    1c44:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1c49:	31 c0                	xor    %eax,%eax
    1c4b:	e8 50 82 00 00       	callq  9ea0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1c50:	48 8d 35 8e 91 00 00 	lea    0x918e(%rip),%rsi        # ade5 <_IO_stdin_used+0x65>
    1c57:	48 89 ef             	mov    %rbp,%rdi
    1c5a:	48 89 c2             	mov    %rax,%rdx
    1c5d:	e8 4e ff ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1c62:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1c66:	48 8b 33             	mov    (%rbx),%rsi
    1c69:	48 89 ef             	mov    %rbp,%rdi
    1c6c:	48 89 e5             	mov    %rsp,%rbp
    1c6f:	e8 3c ff ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1c74:	48 89 c7             	mov    %rax,%rdi
    1c77:	e8 44 ff ff ff       	callq  1bc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    1c7c:	bf 10 00 00 00       	mov    $0x10,%edi
    1c81:	e8 ea fd ff ff       	callq  1a70 <__cxa_allocate_exception@plt>
    1c86:	4c 8b 23             	mov    (%rbx),%r12
    1c89:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1c8d:	49 89 c5             	mov    %rax,%r13
    1c90:	48 8d 45 10          	lea    0x10(%rbp),%rax
    1c94:	4c 89 e2             	mov    %r12,%rdx
    1c97:	48 89 04 24          	mov    %rax,(%rsp)
    1c9b:	48 01 da             	add    %rbx,%rdx
    1c9e:	74 11                	je     1cb1 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0x91>
    1ca0:	4d 85 e4             	test   %r12,%r12
    1ca3:	75 0c                	jne    1cb1 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0x91>
    1ca5:	48 8d 3d bc 92 00 00 	lea    0x92bc(%rip),%rdi        # af68 <_IO_stdin_used+0x1e8>
    1cac:	e8 9f fc ff ff       	callq  1950 <_ZSt19__throw_logic_errorPKc@plt>
    1cb1:	48 83 fb 0f          	cmp    $0xf,%rbx
    1cb5:	76 23                	jbe    1cda <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xba>
    1cb7:	48 85 db             	test   %rbx,%rbx
    1cba:	79 0c                	jns    1cc8 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xa8>
    1cbc:	48 8d 3d 2b 91 00 00 	lea    0x912b(%rip),%rdi        # adee <_IO_stdin_used+0x6e>
    1cc3:	e8 58 fe ff ff       	callq  1b20 <_ZSt20__throw_length_errorPKc@plt>
    1cc8:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
    1ccc:	e8 df fc ff ff       	callq  19b0 <_Znwm@plt>
    1cd1:	48 89 04 24          	mov    %rax,(%rsp)
    1cd5:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    1cda:	48 83 fb 01          	cmp    $0x1,%rbx
    1cde:	48 8b 0c 24          	mov    (%rsp),%rcx
    1ce2:	75 09                	jne    1ced <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xcd>
    1ce4:	45 8a 04 24          	mov    (%r12),%r8b
    1ce8:	44 88 01             	mov    %r8b,(%rcx)
    1ceb:	eb 10                	jmp    1cfd <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xdd>
    1ced:	48 85 db             	test   %rbx,%rbx
    1cf0:	74 0b                	je     1cfd <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xdd>
    1cf2:	48 89 cf             	mov    %rcx,%rdi
    1cf5:	4c 89 e6             	mov    %r12,%rsi
    1cf8:	48 89 d9             	mov    %rbx,%rcx
    1cfb:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
    1cfd:	4c 8b 0c 24          	mov    (%rsp),%r9
    1d01:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1d06:	48 89 ee             	mov    %rbp,%rsi
    1d09:	4c 89 ef             	mov    %r13,%rdi
    1d0c:	41 c6 04 19 00       	movb   $0x0,(%r9,%rbx,1)
    1d11:	e8 8a fc ff ff       	callq  19a0 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    1d16:	48 8b 3c 24          	mov    (%rsp),%rdi
    1d1a:	48 83 c5 10          	add    $0x10,%rbp
    1d1e:	48 39 ef             	cmp    %rbp,%rdi
    1d21:	74 05                	je     1d28 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0x108>
    1d23:	e8 b8 fd ff ff       	callq  1ae0 <_ZdlPv@plt>
    1d28:	48 8b 15 c9 b2 20 00 	mov    0x20b2c9(%rip),%rdx        # 20cff8 <_ZNSt11logic_errorD1Ev@GLIBCXX_3.4>
    1d2f:	48 8d 35 62 ae 20 00 	lea    0x20ae62(%rip),%rsi        # 20cb98 <_ZTISt11logic_error@@GLIBCXX_3.4>
    1d36:	4c 89 ef             	mov    %r13,%rdi
    1d39:	e8 f2 fd ff ff       	callq  1b30 <__cxa_throw@plt>
    1d3e:	48 8b 3c 24          	mov    (%rsp),%rdi
    1d42:	48 83 c5 10          	add    $0x10,%rbp
    1d46:	49 89 c4             	mov    %rax,%r12
    1d49:	48 39 ef             	cmp    %rbp,%rdi
    1d4c:	74 12                	je     1d60 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0x140>
    1d4e:	c5 f8 77             	vzeroupper 
    1d51:	e8 8a fd ff ff       	callq  1ae0 <_ZdlPv@plt>
    1d56:	eb 0b                	jmp    1d63 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0x143>
    1d58:	49 89 c4             	mov    %rax,%r12
    1d5b:	c5 f8 77             	vzeroupper 
    1d5e:	eb 03                	jmp    1d63 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0x143>
    1d60:	c5 f8 77             	vzeroupper 
    1d63:	4c 89 ef             	mov    %r13,%rdi
    1d66:	e8 25 fe ff ff       	callq  1b90 <__cxa_free_exception@plt>
    1d6b:	4c 89 e7             	mov    %r12,%rdi
    1d6e:	e8 cd fd ff ff       	callq  1b40 <_Unwind_Resume@plt>

0000000000001d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>:
    1d73:	41 57                	push   %r15
    1d75:	41 56                	push   %r14
    1d77:	49 89 f7             	mov    %rsi,%r15
    1d7a:	41 55                	push   %r13
    1d7c:	41 54                	push   %r12
    1d7e:	be 10 00 00 00       	mov    $0x10,%esi
    1d83:	55                   	push   %rbp
    1d84:	53                   	push   %rbx
    1d85:	4d 89 cc             	mov    %r9,%r12
    1d88:	48 89 fd             	mov    %rdi,%rbp
    1d8b:	49 89 d6             	mov    %rdx,%r14
    1d8e:	4d 89 c5             	mov    %r8,%r13
    1d91:	48 81 ec a8 01 00 00 	sub    $0x1a8,%rsp
    1d98:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
    1d9d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1da2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1da9:	00 00 
    1dab:	48 89 84 24 98 01 00 	mov    %rax,0x198(%rsp)
    1db2:	00 
    1db3:	31 c0                	xor    %eax,%eax
    1db5:	48 89 df             	mov    %rbx,%rdi
    1db8:	e8 43 fe ff ff       	callq  1c00 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@plt>
    1dbd:	4c 89 e6             	mov    %r12,%rsi
    1dc0:	48 89 df             	mov    %rbx,%rdi
    1dc3:	e8 48 fd ff ff       	callq  1b10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1dc8:	48 8d 3d c9 91 00 00 	lea    0x91c9(%rip),%rdi        # af98 <_IO_stdin_used+0x218>
    1dcf:	49 89 c4             	mov    %rax,%r12
    1dd2:	e8 c9 80 00 00       	callq  9ea0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1dd7:	48 8d 35 ba 91 00 00 	lea    0x91ba(%rip),%rsi        # af98 <_IO_stdin_used+0x218>
    1dde:	48 89 c2             	mov    %rax,%rdx
    1de1:	4c 89 e7             	mov    %r12,%rdi
    1de4:	e8 c7 fd ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1de9:	4c 89 fe             	mov    %r15,%rsi
    1dec:	4c 89 e7             	mov    %r12,%rdi
    1def:	e8 8c fb ff ff       	callq  1980 <_ZNSo9_M_insertIyEERSoT_@plt>
    1df4:	48 8d 74 24 1e       	lea    0x1e(%rsp),%rsi
    1df9:	ba 01 00 00 00       	mov    $0x1,%edx
    1dfe:	48 89 c7             	mov    %rax,%rdi
    1e01:	c6 44 24 1e 78       	movb   $0x78,0x1e(%rsp)
    1e06:	e8 a5 fd ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1e0b:	4c 89 f6             	mov    %r14,%rsi
    1e0e:	48 89 c7             	mov    %rax,%rdi
    1e11:	e8 6a fb ff ff       	callq  1980 <_ZNSo9_M_insertIyEERSoT_@plt>
    1e16:	48 8d 3d e9 8f 00 00 	lea    0x8fe9(%rip),%rdi        # ae06 <_IO_stdin_used+0x86>
    1e1d:	49 89 c7             	mov    %rax,%r15
    1e20:	e8 7b 80 00 00       	callq  9ea0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1e25:	48 8d 35 da 8f 00 00 	lea    0x8fda(%rip),%rsi        # ae06 <_IO_stdin_used+0x86>
    1e2c:	48 89 c2             	mov    %rax,%rdx
    1e2f:	4c 89 ff             	mov    %r15,%rdi
    1e32:	e8 79 fd ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1e37:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1e3c:	4c 89 ff             	mov    %r15,%rdi
    1e3f:	e8 3c fb ff ff       	callq  1980 <_ZNSo9_M_insertIyEERSoT_@plt>
    1e44:	48 8d 74 24 1f       	lea    0x1f(%rsp),%rsi
    1e49:	ba 01 00 00 00       	mov    $0x1,%edx
    1e4e:	48 89 c7             	mov    %rax,%rdi
    1e51:	c6 44 24 1f 78       	movb   $0x78,0x1f(%rsp)
    1e56:	e8 55 fd ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1e5b:	4c 89 ee             	mov    %r13,%rsi
    1e5e:	48 89 c7             	mov    %rax,%rdi
    1e61:	e8 1a fb ff ff       	callq  1980 <_ZNSo9_M_insertIyEERSoT_@plt>
    1e66:	48 8d 73 08          	lea    0x8(%rbx),%rsi
    1e6a:	48 89 ef             	mov    %rbp,%rdi
    1e6d:	e8 0e fc ff ff       	callq  1a80 <_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv@plt>
    1e72:	48 89 df             	mov    %rbx,%rdi
    1e75:	e8 26 fd ff ff       	callq  1ba0 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
    1e7a:	48 8b 8c 24 98 01 00 	mov    0x198(%rsp),%rcx
    1e81:	00 
    1e82:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1e89:	00 00 
    1e8b:	48 89 e8             	mov    %rbp,%rax
    1e8e:	74 1b                	je     1eab <_ZN4armaL25arma_incompat_size_stringEyyyyPKc+0x138>
    1e90:	e8 7b fb ff ff       	callq  1a10 <__stack_chk_fail@plt>
    1e95:	48 89 c5             	mov    %rax,%rbp
    1e98:	48 89 df             	mov    %rbx,%rdi
    1e9b:	c5 f8 77             	vzeroupper 
    1e9e:	e8 fd fc ff ff       	callq  1ba0 <_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
    1ea3:	48 89 ef             	mov    %rbp,%rdi
    1ea6:	e8 95 fc ff ff       	callq  1b40 <_Unwind_Resume@plt>
    1eab:	48 81 c4 a8 01 00 00 	add    $0x1a8,%rsp
    1eb2:	5b                   	pop    %rbx
    1eb3:	5d                   	pop    %rbp
    1eb4:	41 5c                	pop    %r12
    1eb6:	41 5d                	pop    %r13
    1eb8:	41 5e                	pop    %r14
    1eba:	41 5f                	pop    %r15
    1ebc:	c3                   	retq   

0000000000001ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>:
    1ebd:	53                   	push   %rbx
    1ebe:	48 8d 3d 20 8f 00 00 	lea    0x8f20(%rip),%rdi        # ade5 <_IO_stdin_used+0x65>
    1ec5:	48 8b 1d 8c b1 20 00 	mov    0x20b18c(%rip),%rbx        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    1ecc:	e8 cf 7f 00 00       	callq  9ea0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1ed1:	48 8d 35 0d 8f 00 00 	lea    0x8f0d(%rip),%rsi        # ade5 <_IO_stdin_used+0x65>
    1ed8:	48 89 c2             	mov    %rax,%rdx
    1edb:	48 89 df             	mov    %rbx,%rdi
    1ede:	e8 cd fc ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1ee3:	48 8d 35 d6 90 00 00 	lea    0x90d6(%rip),%rsi        # afc0 <_IO_stdin_used+0x240>
    1eea:	48 89 df             	mov    %rbx,%rdi
    1eed:	e8 1e fc ff ff       	callq  1b10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1ef2:	48 89 c7             	mov    %rax,%rdi
    1ef5:	e8 c6 fc ff ff       	callq  1bc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    1efa:	bf 08 00 00 00       	mov    $0x8,%edi
    1eff:	e8 6c fb ff ff       	callq  1a70 <__cxa_allocate_exception@plt>
    1f04:	48 8d 0d 25 ac 20 00 	lea    0x20ac25(%rip),%rcx        # 20cb30 <_ZTVSt9bad_alloc@@GLIBCXX_3.4+0x10>
    1f0b:	48 8b 15 a6 b0 20 00 	mov    0x20b0a6(%rip),%rdx        # 20cfb8 <_ZNSt9bad_allocD1Ev@GLIBCXX_3.4>
    1f12:	48 8d 35 37 ac 20 00 	lea    0x20ac37(%rip),%rsi        # 20cb50 <_ZTISt9bad_alloc@@GLIBCXX_3.4>
    1f19:	48 89 c7             	mov    %rax,%rdi
    1f1c:	48 89 08             	mov    %rcx,(%rax)
    1f1f:	e8 0c fc ff ff       	callq  1b30 <__cxa_throw@plt>

0000000000001f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>:
    1f24:	41 54                	push   %r12
    1f26:	55                   	push   %rbp
    1f27:	48 89 fd             	mov    %rdi,%rbp
    1f2a:	53                   	push   %rbx
    1f2b:	48 8d 3d b3 8e 00 00 	lea    0x8eb3(%rip),%rdi        # ade5 <_IO_stdin_used+0x65>
    1f32:	48 83 ec 40          	sub    $0x40,%rsp
    1f36:	48 8b 1d 1b b1 20 00 	mov    0x20b11b(%rip),%rbx        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    1f3d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f44:	00 00 
    1f46:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1f4b:	31 c0                	xor    %eax,%eax
    1f4d:	e8 4e 7f 00 00       	callq  9ea0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1f52:	48 8d 35 8c 8e 00 00 	lea    0x8e8c(%rip),%rsi        # ade5 <_IO_stdin_used+0x65>
    1f59:	48 89 c2             	mov    %rax,%rdx
    1f5c:	48 89 df             	mov    %rbx,%rdi
    1f5f:	e8 4c fc ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1f64:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    1f68:	48 89 df             	mov    %rbx,%rdi
    1f6b:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    1f70:	e8 9b fb ff ff       	callq  1b10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1f75:	48 89 c7             	mov    %rax,%rdi
    1f78:	e8 43 fc ff ff       	callq  1bc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    1f7d:	bf 10 00 00 00       	mov    $0x10,%edi
    1f82:	e8 e9 fa ff ff       	callq  1a70 <__cxa_allocate_exception@plt>
    1f87:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    1f8b:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
    1f90:	48 89 df             	mov    %rbx,%rdi
    1f93:	49 89 c4             	mov    %rax,%r12
    1f96:	e8 15 7f 00 00       	callq  9eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_>
    1f9b:	48 89 de             	mov    %rbx,%rsi
    1f9e:	4c 89 e7             	mov    %r12,%rdi
    1fa1:	e8 fa f9 ff ff       	callq  19a0 <_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    1fa6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1fab:	48 83 c3 10          	add    $0x10,%rbx
    1faf:	48 39 df             	cmp    %rbx,%rdi
    1fb2:	74 05                	je     1fb9 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_+0x95>
    1fb4:	e8 27 fb ff ff       	callq  1ae0 <_ZdlPv@plt>
    1fb9:	48 8b 15 38 b0 20 00 	mov    0x20b038(%rip),%rdx        # 20cff8 <_ZNSt11logic_errorD1Ev@GLIBCXX_3.4>
    1fc0:	48 8d 35 d1 ab 20 00 	lea    0x20abd1(%rip),%rsi        # 20cb98 <_ZTISt11logic_error@@GLIBCXX_3.4>
    1fc7:	4c 89 e7             	mov    %r12,%rdi
    1fca:	e8 61 fb ff ff       	callq  1b30 <__cxa_throw@plt>
    1fcf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1fd4:	48 83 c3 10          	add    $0x10,%rbx
    1fd8:	48 89 c5             	mov    %rax,%rbp
    1fdb:	48 39 df             	cmp    %rbx,%rdi
    1fde:	74 12                	je     1ff2 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_+0xce>
    1fe0:	c5 f8 77             	vzeroupper 
    1fe3:	e8 f8 fa ff ff       	callq  1ae0 <_ZdlPv@plt>
    1fe8:	eb 0b                	jmp    1ff5 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_+0xd1>
    1fea:	48 89 c5             	mov    %rax,%rbp
    1fed:	c5 f8 77             	vzeroupper 
    1ff0:	eb 03                	jmp    1ff5 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_+0xd1>
    1ff2:	c5 f8 77             	vzeroupper 
    1ff5:	4c 89 e7             	mov    %r12,%rdi
    1ff8:	e8 93 fb ff ff       	callq  1b90 <__cxa_free_exception@plt>
    1ffd:	48 89 ef             	mov    %rbp,%rdi
    2000:	e8 3b fb ff ff       	callq  1b40 <_Unwind_Resume@plt>

0000000000002005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>:
    2005:	41 54                	push   %r12
    2007:	55                   	push   %rbp
    2008:	48 8d 3d d6 8d 00 00 	lea    0x8dd6(%rip),%rdi        # ade5 <_IO_stdin_used+0x65>
    200f:	53                   	push   %rbx
    2010:	48 83 ec 40          	sub    $0x40,%rsp
    2014:	48 8b 1d 3d b0 20 00 	mov    0x20b03d(%rip),%rbx        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    201b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2022:	00 00 
    2024:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    2029:	31 c0                	xor    %eax,%eax
    202b:	e8 70 7e 00 00       	callq  9ea0 <_ZNSt11char_traitsIcE6lengthEPKc>
    2030:	48 8d 35 ae 8d 00 00 	lea    0x8dae(%rip),%rsi        # ade5 <_IO_stdin_used+0x65>
    2037:	48 89 c2             	mov    %rax,%rdx
    203a:	48 89 df             	mov    %rbx,%rdi
    203d:	e8 6e fb ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2042:	48 8d 35 c7 8f 00 00 	lea    0x8fc7(%rip),%rsi        # b010 <_IO_stdin_used+0x290>
    2049:	48 89 df             	mov    %rbx,%rdi
    204c:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    2051:	e8 ba fa ff ff       	callq  1b10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2056:	48 89 c7             	mov    %rax,%rdi
    2059:	e8 62 fb ff ff       	callq  1bc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    205e:	bf 10 00 00 00       	mov    $0x10,%edi
    2063:	e8 08 fa ff ff       	callq  1a70 <__cxa_allocate_exception@plt>
    2068:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
    206d:	48 8d 35 9c 8f 00 00 	lea    0x8f9c(%rip),%rsi        # b010 <_IO_stdin_used+0x290>
    2074:	48 89 df             	mov    %rbx,%rdi
    2077:	49 89 c4             	mov    %rax,%r12
    207a:	e8 31 7e 00 00       	callq  9eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_>
    207f:	48 89 de             	mov    %rbx,%rsi
    2082:	4c 89 e7             	mov    %r12,%rdi
    2085:	e8 76 f9 ff ff       	callq  1a00 <_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
    208a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    208f:	48 83 c3 10          	add    $0x10,%rbx
    2093:	48 39 df             	cmp    %rbx,%rdi
    2096:	74 05                	je     209d <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81+0x98>
    2098:	e8 43 fa ff ff       	callq  1ae0 <_ZdlPv@plt>
    209d:	48 8b 15 3c af 20 00 	mov    0x20af3c(%rip),%rdx        # 20cfe0 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
    20a4:	48 8d 35 d5 aa 20 00 	lea    0x20aad5(%rip),%rsi        # 20cb80 <_ZTISt13runtime_error@@GLIBCXX_3.4>
    20ab:	4c 89 e7             	mov    %r12,%rdi
    20ae:	e8 7d fa ff ff       	callq  1b30 <__cxa_throw@plt>
    20b3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20b8:	48 83 c3 10          	add    $0x10,%rbx
    20bc:	48 89 c5             	mov    %rax,%rbp
    20bf:	48 39 df             	cmp    %rbx,%rdi
    20c2:	74 12                	je     20d6 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81+0xd1>
    20c4:	c5 f8 77             	vzeroupper 
    20c7:	e8 14 fa ff ff       	callq  1ae0 <_ZdlPv@plt>
    20cc:	eb 0b                	jmp    20d9 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81+0xd4>
    20ce:	48 89 c5             	mov    %rax,%rbp
    20d1:	c5 f8 77             	vzeroupper 
    20d4:	eb 03                	jmp    20d9 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81+0xd4>
    20d6:	c5 f8 77             	vzeroupper 
    20d9:	4c 89 e7             	mov    %r12,%rdi
    20dc:	e8 af fa ff ff       	callq  1b90 <__cxa_free_exception@plt>
    20e1:	48 89 ef             	mov    %rbp,%rdi
    20e4:	e8 57 fa ff ff       	callq  1b40 <_Unwind_Resume@plt>
    20e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000020f0 <_GLOBAL__sub_I__Z11print_m512iDv8_x>:
    20f0:	48 8d 3d b2 b0 20 00 	lea    0x20b0b2(%rip),%rdi        # 20d1a9 <_ZStL8__ioinit>
    20f7:	48 83 ec 08          	sub    $0x8,%rsp
    20fb:	e8 d0 fa ff ff       	callq  1bd0 <_ZNSt8ios_base4InitC1Ev@plt>
    2100:	48 8b 3d d1 ae 20 00 	mov    0x20aed1(%rip),%rdi        # 20cfd8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2107:	48 8d 15 fa ae 20 00 	lea    0x20aefa(%rip),%rdx        # 20d008 <__dso_handle>
    210e:	48 8d 35 94 b0 20 00 	lea    0x20b094(%rip),%rsi        # 20d1a9 <_ZStL8__ioinit>
    2115:	48 83 c4 08          	add    $0x8,%rsp
    2119:	e9 62 fa ff ff       	jmpq   1b80 <__cxa_atexit@plt>
    211e:	66 90                	xchg   %ax,%ax

0000000000002120 <main>:
    2120:	83 ff 01             	cmp    $0x1,%edi
    2123:	53                   	push   %rbx
    2124:	0f 84 87 00 00 00    	je     21b1 <main+0x91>
    212a:	83 ff 02             	cmp    $0x2,%edi
    212d:	48 89 f3             	mov    %rsi,%rbx
    2130:	74 50                	je     2182 <main+0x62>
    2132:	83 ff 03             	cmp    $0x3,%edi
    2135:	75 42                	jne    2179 <main+0x59>
    2137:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    213b:	48 8d 35 57 8d 00 00 	lea    0x8d57(%rip),%rsi        # ae99 <_IO_stdin_used+0x119>
    2142:	e8 19 fa ff ff       	callq  1b60 <strcmp@plt>
    2147:	85 c0                	test   %eax,%eax
    2149:	75 2e                	jne    2179 <main+0x59>
    214b:	48 8d 35 4a 8d 00 00 	lea    0x8d4a(%rip),%rsi        # ae9c <_IO_stdin_used+0x11c>
    2152:	48 8d 3d 45 8d 00 00 	lea    0x8d45(%rip),%rdi        # ae9e <_IO_stdin_used+0x11e>
    2159:	ba 01 00 00 00       	mov    $0x1,%edx
    215e:	e8 6d f9 ff ff       	callq  1ad0 <setenv@plt>
    2163:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    2167:	31 d2                	xor    %edx,%edx
    2169:	31 f6                	xor    %esi,%esi
    216b:	e8 00 fa ff ff       	callq  1b70 <strtoul@plt>
    2170:	89 c7                	mov    %eax,%edi
    2172:	e8 f9 6d 00 00       	callq  8f70 <_ZL13runBenchmarksi>
    2177:	eb 42                	jmp    21bb <main+0x9b>
    2179:	48 8b 3b             	mov    (%rbx),%rdi
    217c:	5b                   	pop    %rbx
    217d:	e9 7e 0b 00 00       	jmpq   2d00 <_ZL9showUsagePc>
    2182:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
    2186:	48 8d 35 0c 8d 00 00 	lea    0x8d0c(%rip),%rsi        # ae99 <_IO_stdin_used+0x119>
    218d:	48 89 df             	mov    %rbx,%rdi
    2190:	e8 cb f9 ff ff       	callq  1b60 <strcmp@plt>
    2195:	85 c0                	test   %eax,%eax
    2197:	75 26                	jne    21bf <main+0x9f>
    2199:	48 8d 35 fc 8c 00 00 	lea    0x8cfc(%rip),%rsi        # ae9c <_IO_stdin_used+0x11c>
    21a0:	48 8d 3d f7 8c 00 00 	lea    0x8cf7(%rip),%rdi        # ae9e <_IO_stdin_used+0x11e>
    21a7:	ba 01 00 00 00       	mov    $0x1,%edx
    21ac:	e8 1f f9 ff ff       	callq  1ad0 <setenv@plt>
    21b1:	bf 40 42 0f 00       	mov    $0xf4240,%edi
    21b6:	e8 b5 6d 00 00       	callq  8f70 <_ZL13runBenchmarksi>
    21bb:	31 c0                	xor    %eax,%eax
    21bd:	5b                   	pop    %rbx
    21be:	c3                   	retq   
    21bf:	48 89 df             	mov    %rbx,%rdi
    21c2:	31 d2                	xor    %edx,%edx
    21c4:	31 f6                	xor    %esi,%esi
    21c6:	e8 a5 f9 ff ff       	callq  1b70 <strtoul@plt>
    21cb:	89 c7                	mov    %eax,%edi
    21cd:	e8 9e 6d 00 00       	callq  8f70 <_ZL13runBenchmarksi>
    21d2:	eb e7                	jmp    21bb <main+0x9b>
    21d4:	66 90                	xchg   %ax,%ax
    21d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    21dd:	00 00 00 

00000000000021e0 <_GLOBAL__sub_I__Z12matmulAVX512PK13Complex_int16iiS1_PS_>:
    21e0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    21e5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    21e9:	48 8d 3d 10 b6 20 00 	lea    0x20b610(%rip),%rdi        # 20d800 <_ZStL8__ioinit>
    21f0:	41 ff 72 f8          	pushq  -0x8(%r10)
    21f4:	55                   	push   %rbp
    21f5:	48 89 e5             	mov    %rsp,%rbp
    21f8:	41 52                	push   %r10
    21fa:	48 83 ec 28          	sub    $0x28,%rsp
    21fe:	e8 cd f9 ff ff       	callq  1bd0 <_ZNSt8ios_base4InitC1Ev@plt>
    2203:	48 8b 3d ce ad 20 00 	mov    0x20adce(%rip),%rdi        # 20cfd8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    220a:	48 8d 15 f7 ad 20 00 	lea    0x20adf7(%rip),%rdx        # 20d008 <__dso_handle>
    2211:	48 8d 35 e8 b5 20 00 	lea    0x20b5e8(%rip),%rsi        # 20d800 <_ZStL8__ioinit>
    2218:	e8 63 f9 ff ff       	callq  1b80 <__cxa_atexit@plt>
    221d:	80 3d f4 b5 20 00 00 	cmpb   $0x0,0x20b5f4(%rip)        # 20d818 <_ZGVN4arma5DatumIxE3nanE>
    2224:	62 f1 fe 48 6f 05 72 	vmovdqu64 0x9372(%rip),%zmm0        # b5a0 <_ZL5temp0>
    222b:	93 00 00 
    222e:	62 f1 fe 48 6f 0d 28 	vmovdqu64 0x9328(%rip),%zmm1        # b560 <_ZL5temp1>
    2235:	93 00 00 
    2238:	62 f1 fe 48 6f 15 de 	vmovdqu64 0x92de(%rip),%zmm2        # b520 <_ZL5temp2>
    223f:	92 00 00 
    2242:	62 f1 fe 48 6f 1d 94 	vmovdqu64 0x9294(%rip),%zmm3        # b4e0 <_ZL5temp3>
    2249:	92 00 00 
    224c:	62 f1 fd 48 7f 05 6a 	vmovdqa64 %zmm0,0x20b56a(%rip)        # 20d7c0 <_ZL4idx0>
    2253:	b5 20 00 
    2256:	62 f1 fd 48 7f 0d 20 	vmovdqa64 %zmm1,0x20b520(%rip)        # 20d780 <_ZL4idx1>
    225d:	b5 20 00 
    2260:	62 f1 fd 48 7f 15 d6 	vmovdqa64 %zmm2,0x20b4d6(%rip)        # 20d740 <_ZL4idx2>
    2267:	b4 20 00 
    226a:	62 f1 fd 48 7f 1d 8c 	vmovdqa64 %zmm3,0x20b48c(%rip)        # 20d700 <_ZL6addsub>
    2271:	b4 20 00 
    2274:	75 12                	jne    2288 <_GLOBAL__sub_I__Z12matmulAVX512PK13Complex_int16iiS1_PS_+0xa8>
    2276:	c6 05 9b b5 20 00 01 	movb   $0x1,0x20b59b(%rip)        # 20d818 <_ZGVN4arma5DatumIxE3nanE>
    227d:	48 c7 05 a8 b5 20 00 	movq   $0x0,0x20b5a8(%rip)        # 20d830 <_ZN4arma5DatumIxE3nanE>
    2284:	00 00 00 00 
    2288:	80 3d 81 b5 20 00 00 	cmpb   $0x0,0x20b581(%rip)        # 20d810 <_ZGVN4arma5DatumIdE3nanE>
    228f:	75 15                	jne    22a6 <_GLOBAL__sub_I__Z12matmulAVX512PK13Complex_int16iiS1_PS_+0xc6>
    2291:	48 8b 05 48 9a 00 00 	mov    0x9a48(%rip),%rax        # bce0 <_ZL5temp0+0x740>
    2298:	c6 05 71 b5 20 00 01 	movb   $0x1,0x20b571(%rip)        # 20d810 <_ZGVN4arma5DatumIdE3nanE>
    229f:	48 89 05 82 b5 20 00 	mov    %rax,0x20b582(%rip)        # 20d828 <_ZN4arma5DatumIdE3nanE>
    22a6:	80 3d 5b b5 20 00 00 	cmpb   $0x0,0x20b55b(%rip)        # 20d808 <_ZGVN4arma5DatumISt7complexIfEE3nanE>
    22ad:	75 27                	jne    22d6 <_GLOBAL__sub_I__Z12matmulAVX512PK13Complex_int16iiS1_PS_+0xf6>
    22af:	c5 fa 10 25 d9 91 00 	vmovss 0x91d9(%rip),%xmm4        # b490 <_IO_stdin_used+0x710>
    22b6:	00 
    22b7:	c6 05 4a b5 20 00 01 	movb   $0x1,0x20b54a(%rip)        # 20d808 <_ZGVN4arma5DatumISt7complexIfEE3nanE>
    22be:	c5 fa 10 2d ce 91 00 	vmovss 0x91ce(%rip),%xmm5        # b494 <_IO_stdin_used+0x714>
    22c5:	00 
    22c6:	c5 fa 11 25 52 b5 20 	vmovss %xmm4,0x20b552(%rip)        # 20d820 <_ZN4arma5DatumISt7complexIfEE3nanE>
    22cd:	00 
    22ce:	c5 fa 11 2d 4e b5 20 	vmovss %xmm5,0x20b54e(%rip)        # 20d824 <_ZN4arma5DatumISt7complexIfEE3nanE+0x4>
    22d5:	00 
    22d6:	c5 f8 77             	vzeroupper 
    22d9:	48 83 c4 28          	add    $0x28,%rsp
    22dd:	5a                   	pop    %rdx
    22de:	5d                   	pop    %rbp
    22df:	48 8d 62 f8          	lea    -0x8(%rdx),%rsp
    22e3:	c3                   	retq   
    22e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    22eb:	00 00 00 
    22ee:	66 90                	xchg   %ax,%ax

00000000000022f0 <_start>:
    22f0:	31 ed                	xor    %ebp,%ebp
    22f2:	49 89 d1             	mov    %rdx,%r9
    22f5:	5e                   	pop    %rsi
    22f6:	48 89 e2             	mov    %rsp,%rdx
    22f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    22fd:	50                   	push   %rax
    22fe:	54                   	push   %rsp
    22ff:	4c 8d 05 5a 8a 00 00 	lea    0x8a5a(%rip),%r8        # ad60 <__libc_csu_fini>
    2306:	48 8d 0d e3 89 00 00 	lea    0x89e3(%rip),%rcx        # acf0 <__libc_csu_init>
    230d:	48 8d 3d 0c fe ff ff 	lea    -0x1f4(%rip),%rdi        # 2120 <main>
    2314:	ff 15 ce ac 20 00    	callq  *0x20acce(%rip)        # 20cfe8 <__libc_start_main@GLIBC_2.2.5>
    231a:	f4                   	hlt    
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <deregister_tm_clones>:
    2320:	48 8d 3d 41 ad 20 00 	lea    0x20ad41(%rip),%rdi        # 20d068 <__TMC_END__>
    2327:	55                   	push   %rbp
    2328:	48 8d 05 39 ad 20 00 	lea    0x20ad39(%rip),%rax        # 20d068 <__TMC_END__>
    232f:	48 39 f8             	cmp    %rdi,%rax
    2332:	48 89 e5             	mov    %rsp,%rbp
    2335:	74 19                	je     2350 <deregister_tm_clones+0x30>
    2337:	48 8b 05 82 ac 20 00 	mov    0x20ac82(%rip),%rax        # 20cfc0 <_ITM_deregisterTMCloneTable>
    233e:	48 85 c0             	test   %rax,%rax
    2341:	74 0d                	je     2350 <deregister_tm_clones+0x30>
    2343:	5d                   	pop    %rbp
    2344:	ff e0                	jmpq   *%rax
    2346:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    234d:	00 00 00 
    2350:	5d                   	pop    %rbp
    2351:	c3                   	retq   
    2352:	0f 1f 40 00          	nopl   0x0(%rax)
    2356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    235d:	00 00 00 

0000000000002360 <register_tm_clones>:
    2360:	48 8d 3d 01 ad 20 00 	lea    0x20ad01(%rip),%rdi        # 20d068 <__TMC_END__>
    2367:	48 8d 35 fa ac 20 00 	lea    0x20acfa(%rip),%rsi        # 20d068 <__TMC_END__>
    236e:	55                   	push   %rbp
    236f:	48 29 fe             	sub    %rdi,%rsi
    2372:	48 89 e5             	mov    %rsp,%rbp
    2375:	48 c1 fe 03          	sar    $0x3,%rsi
    2379:	48 89 f0             	mov    %rsi,%rax
    237c:	48 c1 e8 3f          	shr    $0x3f,%rax
    2380:	48 01 c6             	add    %rax,%rsi
    2383:	48 d1 fe             	sar    %rsi
    2386:	74 18                	je     23a0 <register_tm_clones+0x40>
    2388:	48 8b 05 61 ac 20 00 	mov    0x20ac61(%rip),%rax        # 20cff0 <_ITM_registerTMCloneTable>
    238f:	48 85 c0             	test   %rax,%rax
    2392:	74 0c                	je     23a0 <register_tm_clones+0x40>
    2394:	5d                   	pop    %rbp
    2395:	ff e0                	jmpq   *%rax
    2397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    239e:	00 00 
    23a0:	5d                   	pop    %rbp
    23a1:	c3                   	retq   
    23a2:	0f 1f 40 00          	nopl   0x0(%rax)
    23a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    23ad:	00 00 00 

00000000000023b0 <__do_global_dtors_aux>:
    23b0:	80 3d f1 ad 20 00 00 	cmpb   $0x0,0x20adf1(%rip)        # 20d1a8 <completed.7698>
    23b7:	75 2f                	jne    23e8 <__do_global_dtors_aux+0x38>
    23b9:	48 83 3d 07 ac 20 00 	cmpq   $0x0,0x20ac07(%rip)        # 20cfc8 <__cxa_finalize@GLIBC_2.2.5>
    23c0:	00 
    23c1:	55                   	push   %rbp
    23c2:	48 89 e5             	mov    %rsp,%rbp
    23c5:	74 0c                	je     23d3 <__do_global_dtors_aux+0x23>
    23c7:	48 8b 3d 3a ac 20 00 	mov    0x20ac3a(%rip),%rdi        # 20d008 <__dso_handle>
    23ce:	e8 3d f8 ff ff       	callq  1c10 <__cxa_finalize@plt>
    23d3:	e8 48 ff ff ff       	callq  2320 <deregister_tm_clones>
    23d8:	c6 05 c9 ad 20 00 01 	movb   $0x1,0x20adc9(%rip)        # 20d1a8 <completed.7698>
    23df:	5d                   	pop    %rbp
    23e0:	c3                   	retq   
    23e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    23e8:	f3 c3                	repz retq 
    23ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000023f0 <frame_dummy>:
    23f0:	55                   	push   %rbp
    23f1:	48 89 e5             	mov    %rsp,%rbp
    23f4:	5d                   	pop    %rbp
    23f5:	e9 66 ff ff ff       	jmpq   2360 <register_tm_clones>
    23fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002400 <_Z11print_m512iDv8_x>:
    2400:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    2405:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    2409:	48 8d 35 74 89 00 00 	lea    0x8974(%rip),%rsi        # ad84 <_IO_stdin_used+0x4>
    2410:	48 8d 3d 69 ac 20 00 	lea    0x20ac69(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2417:	ba 09 00 00 00       	mov    $0x9,%edx
    241c:	41 ff 72 f8          	pushq  -0x8(%r10)
    2420:	55                   	push   %rbp
    2421:	48 89 e5             	mov    %rsp,%rbp
    2424:	41 57                	push   %r15
    2426:	41 56                	push   %r14
    2428:	41 55                	push   %r13
    242a:	41 54                	push   %r12
    242c:	41 52                	push   %r10
    242e:	53                   	push   %rbx
    242f:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    2433:	62 f1 fd 48 7f 85 90 	vmovdqa64 %zmm0,-0x70(%rbp)
    243a:	ff ff ff 
    243d:	c5 f8 77             	vzeroupper 
    2440:	4c 8d 3d 39 ac 20 00 	lea    0x20ac39(%rip),%r15        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2447:	48 8d 5d 90          	lea    -0x70(%rbp),%rbx
    244b:	e8 60 f7 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2450:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2454:	4d 89 fd             	mov    %r15,%r13
    2457:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    245b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2460:	48 8d 35 27 89 00 00 	lea    0x8927(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    2467:	ba 01 00 00 00       	mov    $0x1,%edx
    246c:	4c 89 ef             	mov    %r13,%rdi
    246f:	48 83 c3 08          	add    $0x8,%rbx
    2473:	e8 38 f7 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2478:	49 8b 17             	mov    (%r15),%rdx
    247b:	0f bf 73 f8          	movswl -0x8(%rbx),%esi
    247f:	4c 89 ef             	mov    %r13,%rdi
    2482:	48 8b 4a e8          	mov    -0x18(%rdx),%rcx
    2486:	49 c7 44 0f 10 02 00 	movq   $0x2,0x10(%r15,%rcx,1)
    248d:	00 00 
    248f:	e8 2c f6 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2494:	48 8d 35 f5 88 00 00 	lea    0x88f5(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    249b:	49 89 c4             	mov    %rax,%r12
    249e:	ba 01 00 00 00       	mov    $0x1,%edx
    24a3:	48 89 c7             	mov    %rax,%rdi
    24a6:	e8 05 f7 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    24ab:	49 8b 34 24          	mov    (%r12),%rsi
    24af:	48 8b 7e e8          	mov    -0x18(%rsi),%rdi
    24b3:	0f bf 73 fa          	movswl -0x6(%rbx),%esi
    24b7:	49 c7 44 3c 10 02 00 	movq   $0x2,0x10(%r12,%rdi,1)
    24be:	00 00 
    24c0:	4c 89 e7             	mov    %r12,%rdi
    24c3:	e8 f8 f5 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    24c8:	48 8d 35 c3 88 00 00 	lea    0x88c3(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    24cf:	ba 03 00 00 00       	mov    $0x3,%edx
    24d4:	48 89 c7             	mov    %rax,%rdi
    24d7:	e8 d4 f6 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    24dc:	48 8d 35 ab 88 00 00 	lea    0x88ab(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    24e3:	ba 01 00 00 00       	mov    $0x1,%edx
    24e8:	4c 89 ef             	mov    %r13,%rdi
    24eb:	e8 c0 f6 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    24f0:	4d 8b 07             	mov    (%r15),%r8
    24f3:	0f bf 73 fc          	movswl -0x4(%rbx),%esi
    24f7:	4c 89 ef             	mov    %r13,%rdi
    24fa:	4d 8b 48 e8          	mov    -0x18(%r8),%r9
    24fe:	4b c7 44 0f 10 02 00 	movq   $0x2,0x10(%r15,%r9,1)
    2505:	00 00 
    2507:	e8 b4 f5 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    250c:	48 8d 35 7d 88 00 00 	lea    0x887d(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    2513:	49 89 c6             	mov    %rax,%r14
    2516:	ba 01 00 00 00       	mov    $0x1,%edx
    251b:	48 89 c7             	mov    %rax,%rdi
    251e:	e8 8d f6 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2523:	4d 8b 1e             	mov    (%r14),%r11
    2526:	0f bf 73 fe          	movswl -0x2(%rbx),%esi
    252a:	4c 89 f7             	mov    %r14,%rdi
    252d:	4d 8b 53 e8          	mov    -0x18(%r11),%r10
    2531:	4b c7 44 16 10 02 00 	movq   $0x2,0x10(%r14,%r10,1)
    2538:	00 00 
    253a:	e8 81 f5 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    253f:	48 8d 35 4c 88 00 00 	lea    0x884c(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    2546:	ba 03 00 00 00       	mov    $0x3,%edx
    254b:	48 89 c7             	mov    %rax,%rdi
    254e:	e8 5d f6 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2553:	48 39 5d 88          	cmp    %rbx,-0x78(%rbp)
    2557:	0f 85 03 ff ff ff    	jne    2460 <_Z11print_m512iDv8_x+0x60>
    255d:	49 8b 1f             	mov    (%r15),%rbx
    2560:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
    2564:	4d 8b bc 07 f0 00 00 	mov    0xf0(%r15,%rax,1),%r15
    256b:	00 
    256c:	4d 85 ff             	test   %r15,%r15
    256f:	74 62                	je     25d3 <_Z11print_m512iDv8_x+0x1d3>
    2571:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
    2576:	74 30                	je     25a8 <_Z11print_m512iDv8_x+0x1a8>
    2578:	41 0f be 77 43       	movsbl 0x43(%r15),%esi
    257d:	48 8d 3d fc aa 20 00 	lea    0x20aafc(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2584:	e8 67 f5 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    2589:	48 89 c7             	mov    %rax,%rdi
    258c:	e8 1f f5 ff ff       	callq  1ab0 <_ZNSo5flushEv@plt>
    2591:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    2595:	5b                   	pop    %rbx
    2596:	59                   	pop    %rcx
    2597:	41 5c                	pop    %r12
    2599:	41 5d                	pop    %r13
    259b:	41 5e                	pop    %r14
    259d:	41 5f                	pop    %r15
    259f:	5d                   	pop    %rbp
    25a0:	48 8d 61 f8          	lea    -0x8(%rcx),%rsp
    25a4:	c3                   	retq   
    25a5:	0f 1f 00             	nopl   (%rax)
    25a8:	4c 89 ff             	mov    %r15,%rdi
    25ab:	e8 f0 f4 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    25b0:	4d 8b 2f             	mov    (%r15),%r13
    25b3:	48 8d 15 56 06 00 00 	lea    0x656(%rip),%rdx        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    25ba:	be 0a 00 00 00       	mov    $0xa,%esi
    25bf:	4d 8b 65 30          	mov    0x30(%r13),%r12
    25c3:	49 39 d4             	cmp    %rdx,%r12
    25c6:	74 b5                	je     257d <_Z11print_m512iDv8_x+0x17d>
    25c8:	4c 89 ff             	mov    %r15,%rdi
    25cb:	41 ff d4             	callq  *%r12
    25ce:	0f be f0             	movsbl %al,%esi
    25d1:	eb aa                	jmp    257d <_Z11print_m512iDv8_x+0x17d>
    25d3:	e8 68 f4 ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>
    25d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    25df:	00 

00000000000025e0 <_Z11print_m256iDv4_xi>:
    25e0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    25e5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    25e9:	48 8d 35 a6 87 00 00 	lea    0x87a6(%rip),%rsi        # ad96 <_IO_stdin_used+0x16>
    25f0:	ba 09 00 00 00       	mov    $0x9,%edx
    25f5:	41 ff 72 f8          	pushq  -0x8(%r10)
    25f9:	55                   	push   %rbp
    25fa:	48 89 e5             	mov    %rsp,%rbp
    25fd:	41 57                	push   %r15
    25ff:	41 56                	push   %r14
    2601:	41 55                	push   %r13
    2603:	41 54                	push   %r12
    2605:	41 52                	push   %r10
    2607:	53                   	push   %rbx
    2608:	89 fb                	mov    %edi,%ebx
    260a:	48 8d 3d 6f aa 20 00 	lea    0x20aa6f(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2611:	48 83 ec 20          	sub    $0x20,%rsp
    2615:	62 f1 fd 28 7f 85 b0 	vmovdqa64 %ymm0,-0x50(%rbp)
    261c:	ff ff ff 
    261f:	c5 f8 77             	vzeroupper 
    2622:	e8 89 f5 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2627:	83 fb 01             	cmp    $0x1,%ebx
    262a:	4c 8d 7d b0          	lea    -0x50(%rbp),%r15
    262e:	4c 8d 75 d0          	lea    -0x30(%rbp),%r14
    2632:	0f 84 a8 01 00 00    	je     27e0 <_Z11print_m256iDv4_xi+0x200>
    2638:	4c 8d 25 54 87 00 00 	lea    0x8754(%rip),%r12        # ad93 <_IO_stdin_used+0x13>
    263f:	41 0f bf 37          	movswl (%r15),%esi
    2643:	48 8d 3d 36 aa 20 00 	lea    0x20aa36(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    264a:	49 83 c7 10          	add    $0x10,%r15
    264e:	e8 6d f4 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2653:	ba 02 00 00 00       	mov    $0x2,%edx
    2658:	4c 89 e6             	mov    %r12,%rsi
    265b:	48 89 c7             	mov    %rax,%rdi
    265e:	49 89 c5             	mov    %rax,%r13
    2661:	e8 4a f5 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2666:	41 0f bf 77 f2       	movswl -0xe(%r15),%esi
    266b:	4c 89 ef             	mov    %r13,%rdi
    266e:	e8 4d f4 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2673:	ba 02 00 00 00       	mov    $0x2,%edx
    2678:	4c 89 e6             	mov    %r12,%rsi
    267b:	48 89 c7             	mov    %rax,%rdi
    267e:	e8 2d f5 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2683:	41 0f bf 77 f4       	movswl -0xc(%r15),%esi
    2688:	48 8d 3d f1 a9 20 00 	lea    0x20a9f1(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    268f:	e8 2c f4 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2694:	ba 02 00 00 00       	mov    $0x2,%edx
    2699:	4c 89 e6             	mov    %r12,%rsi
    269c:	48 89 c7             	mov    %rax,%rdi
    269f:	48 89 c3             	mov    %rax,%rbx
    26a2:	e8 09 f5 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    26a7:	41 0f bf 77 f6       	movswl -0xa(%r15),%esi
    26ac:	48 89 df             	mov    %rbx,%rdi
    26af:	e8 0c f4 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    26b4:	ba 02 00 00 00       	mov    $0x2,%edx
    26b9:	4c 89 e6             	mov    %r12,%rsi
    26bc:	48 89 c7             	mov    %rax,%rdi
    26bf:	e8 ec f4 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    26c4:	41 0f bf 77 f8       	movswl -0x8(%r15),%esi
    26c9:	48 8d 3d b0 a9 20 00 	lea    0x20a9b0(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    26d0:	e8 eb f3 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    26d5:	ba 02 00 00 00       	mov    $0x2,%edx
    26da:	4c 89 e6             	mov    %r12,%rsi
    26dd:	48 89 c7             	mov    %rax,%rdi
    26e0:	49 89 c5             	mov    %rax,%r13
    26e3:	e8 c8 f4 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    26e8:	41 0f bf 77 fa       	movswl -0x6(%r15),%esi
    26ed:	4c 89 ef             	mov    %r13,%rdi
    26f0:	e8 cb f3 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    26f5:	ba 02 00 00 00       	mov    $0x2,%edx
    26fa:	4c 89 e6             	mov    %r12,%rsi
    26fd:	48 89 c7             	mov    %rax,%rdi
    2700:	e8 ab f4 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2705:	41 0f bf 77 fc       	movswl -0x4(%r15),%esi
    270a:	48 8d 3d 6f a9 20 00 	lea    0x20a96f(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2711:	e8 aa f3 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2716:	ba 02 00 00 00       	mov    $0x2,%edx
    271b:	4c 89 e6             	mov    %r12,%rsi
    271e:	48 89 c7             	mov    %rax,%rdi
    2721:	48 89 c3             	mov    %rax,%rbx
    2724:	e8 87 f4 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2729:	41 0f bf 77 fe       	movswl -0x2(%r15),%esi
    272e:	48 89 df             	mov    %rbx,%rdi
    2731:	e8 8a f3 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2736:	ba 02 00 00 00       	mov    $0x2,%edx
    273b:	4c 89 e6             	mov    %r12,%rsi
    273e:	48 89 c7             	mov    %rax,%rdi
    2741:	e8 6a f4 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2746:	4d 39 fe             	cmp    %r15,%r14
    2749:	0f 85 f0 fe ff ff    	jne    263f <_Z11print_m256iDv4_xi+0x5f>
    274f:	48 8b 05 2a a9 20 00 	mov    0x20a92a(%rip),%rax        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2756:	48 8d 15 23 a9 20 00 	lea    0x20a923(%rip),%rdx        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    275d:	48 8b 48 e8          	mov    -0x18(%rax),%rcx
    2761:	4c 8b bc 0a f0 00 00 	mov    0xf0(%rdx,%rcx,1),%r15
    2768:	00 
    2769:	4d 85 ff             	test   %r15,%r15
    276c:	0f 84 eb 01 00 00    	je     295d <_Z11print_m256iDv4_xi+0x37d>
    2772:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
    2777:	74 37                	je     27b0 <_Z11print_m256iDv4_xi+0x1d0>
    2779:	41 0f be 77 43       	movsbl 0x43(%r15),%esi
    277e:	48 8d 3d fb a8 20 00 	lea    0x20a8fb(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2785:	e8 66 f3 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    278a:	48 89 c7             	mov    %rax,%rdi
    278d:	e8 1e f3 ff ff       	callq  1ab0 <_ZNSo5flushEv@plt>
    2792:	48 83 c4 20          	add    $0x20,%rsp
    2796:	5b                   	pop    %rbx
    2797:	41 58                	pop    %r8
    2799:	41 5c                	pop    %r12
    279b:	41 5d                	pop    %r13
    279d:	41 5e                	pop    %r14
    279f:	41 5f                	pop    %r15
    27a1:	5d                   	pop    %rbp
    27a2:	49 8d 60 f8          	lea    -0x8(%r8),%rsp
    27a6:	c3                   	retq   
    27a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    27ae:	00 00 
    27b0:	4c 89 ff             	mov    %r15,%rdi
    27b3:	e8 e8 f2 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    27b8:	49 8b 37             	mov    (%r15),%rsi
    27bb:	48 8d 3d 4e 04 00 00 	lea    0x44e(%rip),%rdi        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    27c2:	4c 8b 76 30          	mov    0x30(%rsi),%r14
    27c6:	be 0a 00 00 00       	mov    $0xa,%esi
    27cb:	49 39 fe             	cmp    %rdi,%r14
    27ce:	74 ae                	je     277e <_Z11print_m256iDv4_xi+0x19e>
    27d0:	4c 89 ff             	mov    %r15,%rdi
    27d3:	41 ff d6             	callq  *%r14
    27d6:	0f be f0             	movsbl %al,%esi
    27d9:	eb a3                	jmp    277e <_Z11print_m256iDv4_xi+0x19e>
    27db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    27e0:	4c 8d 25 99 a8 20 00 	lea    0x20a899(%rip),%r12        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    27e7:	48 8d 35 a0 85 00 00 	lea    0x85a0(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    27ee:	ba 01 00 00 00       	mov    $0x1,%edx
    27f3:	4c 89 e7             	mov    %r12,%rdi
    27f6:	49 83 c7 10          	add    $0x10,%r15
    27fa:	e8 b1 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    27ff:	41 0f bf 77 f0       	movswl -0x10(%r15),%esi
    2804:	4c 89 e7             	mov    %r12,%rdi
    2807:	e8 b4 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    280c:	48 8d 35 7d 85 00 00 	lea    0x857d(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    2813:	ba 01 00 00 00       	mov    $0x1,%edx
    2818:	48 89 c7             	mov    %rax,%rdi
    281b:	49 89 c5             	mov    %rax,%r13
    281e:	e8 8d f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2823:	41 0f bf 77 f2       	movswl -0xe(%r15),%esi
    2828:	4c 89 ef             	mov    %r13,%rdi
    282b:	e8 90 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2830:	48 8d 35 5b 85 00 00 	lea    0x855b(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    2837:	ba 03 00 00 00       	mov    $0x3,%edx
    283c:	48 89 c7             	mov    %rax,%rdi
    283f:	e8 6c f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2844:	48 8d 35 43 85 00 00 	lea    0x8543(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    284b:	ba 01 00 00 00       	mov    $0x1,%edx
    2850:	4c 89 e7             	mov    %r12,%rdi
    2853:	e8 58 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2858:	41 0f bf 77 f4       	movswl -0xc(%r15),%esi
    285d:	4c 89 e7             	mov    %r12,%rdi
    2860:	e8 5b f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2865:	48 8d 35 24 85 00 00 	lea    0x8524(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    286c:	ba 01 00 00 00       	mov    $0x1,%edx
    2871:	48 89 c7             	mov    %rax,%rdi
    2874:	48 89 c3             	mov    %rax,%rbx
    2877:	e8 34 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    287c:	41 0f bf 77 f6       	movswl -0xa(%r15),%esi
    2881:	48 89 df             	mov    %rbx,%rdi
    2884:	e8 37 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2889:	48 8d 35 02 85 00 00 	lea    0x8502(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    2890:	ba 03 00 00 00       	mov    $0x3,%edx
    2895:	48 89 c7             	mov    %rax,%rdi
    2898:	e8 13 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    289d:	48 8d 35 ea 84 00 00 	lea    0x84ea(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    28a4:	ba 01 00 00 00       	mov    $0x1,%edx
    28a9:	4c 89 e7             	mov    %r12,%rdi
    28ac:	e8 ff f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28b1:	41 0f bf 77 f8       	movswl -0x8(%r15),%esi
    28b6:	4c 89 e7             	mov    %r12,%rdi
    28b9:	e8 02 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    28be:	48 8d 35 cb 84 00 00 	lea    0x84cb(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    28c5:	ba 01 00 00 00       	mov    $0x1,%edx
    28ca:	48 89 c7             	mov    %rax,%rdi
    28cd:	49 89 c5             	mov    %rax,%r13
    28d0:	e8 db f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28d5:	41 0f bf 77 fa       	movswl -0x6(%r15),%esi
    28da:	4c 89 ef             	mov    %r13,%rdi
    28dd:	e8 de f1 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    28e2:	48 8d 35 a9 84 00 00 	lea    0x84a9(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    28e9:	ba 03 00 00 00       	mov    $0x3,%edx
    28ee:	48 89 c7             	mov    %rax,%rdi
    28f1:	e8 ba f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28f6:	48 8d 35 91 84 00 00 	lea    0x8491(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    28fd:	ba 01 00 00 00       	mov    $0x1,%edx
    2902:	4c 89 e7             	mov    %r12,%rdi
    2905:	e8 a6 f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    290a:	41 0f bf 77 fc       	movswl -0x4(%r15),%esi
    290f:	4c 89 e7             	mov    %r12,%rdi
    2912:	e8 a9 f1 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2917:	48 8d 35 72 84 00 00 	lea    0x8472(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    291e:	ba 01 00 00 00       	mov    $0x1,%edx
    2923:	48 89 c7             	mov    %rax,%rdi
    2926:	48 89 c3             	mov    %rax,%rbx
    2929:	e8 82 f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    292e:	41 0f bf 77 fe       	movswl -0x2(%r15),%esi
    2933:	48 89 df             	mov    %rbx,%rdi
    2936:	e8 85 f1 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    293b:	48 8d 35 50 84 00 00 	lea    0x8450(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    2942:	ba 03 00 00 00       	mov    $0x3,%edx
    2947:	48 89 c7             	mov    %rax,%rdi
    294a:	e8 61 f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    294f:	4d 39 f7             	cmp    %r14,%r15
    2952:	0f 85 8f fe ff ff    	jne    27e7 <_Z11print_m256iDv4_xi+0x207>
    2958:	e9 f2 fd ff ff       	jmpq   274f <_Z11print_m256iDv4_xi+0x16f>
    295d:	e8 de f0 ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>
    2962:	0f 1f 40 00          	nopl   0x0(%rax)
    2966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    296d:	00 00 00 

0000000000002970 <_Z11print_m128iDv2_x>:
    2970:	41 56                	push   %r14
    2972:	41 55                	push   %r13
    2974:	48 8d 35 25 84 00 00 	lea    0x8425(%rip),%rsi        # ada0 <_IO_stdin_used+0x20>
    297b:	41 54                	push   %r12
    297d:	55                   	push   %rbp
    297e:	4c 8d 25 fb a6 20 00 	lea    0x20a6fb(%rip),%r12        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2985:	53                   	push   %rbx
    2986:	48 8d 3d f3 a6 20 00 	lea    0x20a6f3(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    298d:	ba 09 00 00 00       	mov    $0x9,%edx
    2992:	4d 89 e5             	mov    %r12,%r13
    2995:	48 83 ec 10          	sub    $0x10,%rsp
    2999:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    299e:	48 89 e3             	mov    %rsp,%rbx
    29a1:	c5 f8 29 04 24       	vmovaps %xmm0,(%rsp)
    29a6:	e8 05 f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    29ab:	48 8d 35 dc 83 00 00 	lea    0x83dc(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    29b2:	ba 01 00 00 00       	mov    $0x1,%edx
    29b7:	4c 89 ef             	mov    %r13,%rdi
    29ba:	48 83 c3 04          	add    $0x4,%rbx
    29be:	e8 ed f1 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    29c3:	49 8b 04 24          	mov    (%r12),%rax
    29c7:	0f bf 73 fc          	movswl -0x4(%rbx),%esi
    29cb:	4c 89 ef             	mov    %r13,%rdi
    29ce:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
    29d2:	49 c7 44 14 10 02 00 	movq   $0x2,0x10(%r12,%rdx,1)
    29d9:	00 00 
    29db:	e8 e0 f0 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    29e0:	48 8d 35 a9 83 00 00 	lea    0x83a9(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    29e7:	48 89 c5             	mov    %rax,%rbp
    29ea:	ba 01 00 00 00       	mov    $0x1,%edx
    29ef:	48 89 c7             	mov    %rax,%rdi
    29f2:	e8 b9 f1 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    29f7:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
    29fb:	48 89 ef             	mov    %rbp,%rdi
    29fe:	48 8b 71 e8          	mov    -0x18(%rcx),%rsi
    2a02:	48 c7 44 35 10 02 00 	movq   $0x2,0x10(%rbp,%rsi,1)
    2a09:	00 00 
    2a0b:	0f bf 73 fe          	movswl -0x2(%rbx),%esi
    2a0f:	e8 ac f0 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2a14:	48 8d 35 77 83 00 00 	lea    0x8377(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    2a1b:	ba 03 00 00 00       	mov    $0x3,%edx
    2a20:	48 89 c7             	mov    %rax,%rdi
    2a23:	e8 88 f1 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2a28:	49 39 de             	cmp    %rbx,%r14
    2a2b:	0f 85 7a ff ff ff    	jne    29ab <_Z11print_m128iDv2_x+0x3b>
    2a31:	49 8b 3c 24          	mov    (%r12),%rdi
    2a35:	4c 8b 47 e8          	mov    -0x18(%rdi),%r8
    2a39:	4b 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%r8,1),%rbx
    2a40:	00 
    2a41:	48 85 db             	test   %rbx,%rbx
    2a44:	74 5d                	je     2aa3 <_Z11print_m128iDv2_x+0x133>
    2a46:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    2a4a:	74 2c                	je     2a78 <_Z11print_m128iDv2_x+0x108>
    2a4c:	0f be 73 43          	movsbl 0x43(%rbx),%esi
    2a50:	48 8d 3d 29 a6 20 00 	lea    0x20a629(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2a57:	e8 94 f0 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    2a5c:	48 89 c7             	mov    %rax,%rdi
    2a5f:	e8 4c f0 ff ff       	callq  1ab0 <_ZNSo5flushEv@plt>
    2a64:	48 83 c4 10          	add    $0x10,%rsp
    2a68:	5b                   	pop    %rbx
    2a69:	5d                   	pop    %rbp
    2a6a:	41 5c                	pop    %r12
    2a6c:	41 5d                	pop    %r13
    2a6e:	41 5e                	pop    %r14
    2a70:	c3                   	retq   
    2a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2a78:	48 89 df             	mov    %rbx,%rdi
    2a7b:	e8 20 f0 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2a80:	4c 8b 0b             	mov    (%rbx),%r9
    2a83:	4c 8d 15 86 01 00 00 	lea    0x186(%rip),%r10        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    2a8a:	be 0a 00 00 00       	mov    $0xa,%esi
    2a8f:	4d 8b 71 30          	mov    0x30(%r9),%r14
    2a93:	4d 39 d6             	cmp    %r10,%r14
    2a96:	74 b8                	je     2a50 <_Z11print_m128iDv2_x+0xe0>
    2a98:	48 89 df             	mov    %rbx,%rdi
    2a9b:	41 ff d6             	callq  *%r14
    2a9e:	0f be f0             	movsbl %al,%esi
    2aa1:	eb ad                	jmp    2a50 <_Z11print_m128iDv2_x+0xe0>
    2aa3:	e8 98 ef ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>
    2aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2aaf:	00 

0000000000002ab0 <_Z10print_m512Dv16_f>:
    2ab0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    2ab5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    2ab9:	48 8d 35 ea 82 00 00 	lea    0x82ea(%rip),%rsi        # adaa <_IO_stdin_used+0x2a>
    2ac0:	48 8d 3d b9 a5 20 00 	lea    0x20a5b9(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2ac7:	ba 08 00 00 00       	mov    $0x8,%edx
    2acc:	41 ff 72 f8          	pushq  -0x8(%r10)
    2ad0:	55                   	push   %rbp
    2ad1:	48 89 e5             	mov    %rsp,%rbp
    2ad4:	41 57                	push   %r15
    2ad6:	41 56                	push   %r14
    2ad8:	41 55                	push   %r13
    2ada:	41 54                	push   %r12
    2adc:	41 52                	push   %r10
    2ade:	53                   	push   %rbx
    2adf:	48 83 ec 40          	sub    $0x40,%rsp
    2ae3:	62 f1 7c 48 29 85 90 	vmovaps %zmm0,-0x70(%rbp)
    2aea:	ff ff ff 
    2aed:	c5 f8 77             	vzeroupper 
    2af0:	48 8d 5d 90          	lea    -0x70(%rbp),%rbx
    2af4:	4c 8d 2d 85 a5 20 00 	lea    0x20a585(%rip),%r13        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2afb:	e8 b0 f0 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b00:	4c 8d 7b 20          	lea    0x20(%rbx),%r15
    2b04:	4d 89 ee             	mov    %r13,%r14
    2b07:	48 8d 35 80 82 00 00 	lea    0x8280(%rip),%rsi        # ad8e <_IO_stdin_used+0xe>
    2b0e:	ba 01 00 00 00       	mov    $0x1,%edx
    2b13:	4c 89 f7             	mov    %r14,%rdi
    2b16:	48 83 c3 08          	add    $0x8,%rbx
    2b1a:	e8 91 f0 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b1f:	49 8b 45 00          	mov    0x0(%r13),%rax
    2b23:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    2b27:	4c 89 f7             	mov    %r14,%rdi
    2b2a:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
    2b2e:	c5 fa 5a 43 f8       	vcvtss2sd -0x8(%rbx),%xmm0,%xmm0
    2b33:	49 c7 44 15 10 02 00 	movq   $0x2,0x10(%r13,%rdx,1)
    2b3a:	00 00 
    2b3c:	e8 0f f0 ff ff       	callq  1b50 <_ZNSo9_M_insertIdEERSoT_@plt>
    2b41:	48 8d 35 48 82 00 00 	lea    0x8248(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    2b48:	49 89 c4             	mov    %rax,%r12
    2b4b:	ba 01 00 00 00       	mov    $0x1,%edx
    2b50:	48 89 c7             	mov    %rax,%rdi
    2b53:	e8 58 f0 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b58:	49 8b 0c 24          	mov    (%r12),%rcx
    2b5c:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    2b60:	4c 89 e7             	mov    %r12,%rdi
    2b63:	48 8b 71 e8          	mov    -0x18(%rcx),%rsi
    2b67:	c5 fa 5a 43 fc       	vcvtss2sd -0x4(%rbx),%xmm0,%xmm0
    2b6c:	49 c7 44 34 10 02 00 	movq   $0x2,0x10(%r12,%rsi,1)
    2b73:	00 00 
    2b75:	e8 d6 ef ff ff       	callq  1b50 <_ZNSo9_M_insertIdEERSoT_@plt>
    2b7a:	48 8d 35 11 82 00 00 	lea    0x8211(%rip),%rsi        # ad92 <_IO_stdin_used+0x12>
    2b81:	ba 03 00 00 00       	mov    $0x3,%edx
    2b86:	48 89 c7             	mov    %rax,%rdi
    2b89:	e8 22 f0 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b8e:	49 39 df             	cmp    %rbx,%r15
    2b91:	0f 85 70 ff ff ff    	jne    2b07 <_Z10print_m512Dv16_f+0x57>
    2b97:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    2b9b:	4c 8b 47 e8          	mov    -0x18(%rdi),%r8
    2b9f:	4b 8b 9c 05 f0 00 00 	mov    0xf0(%r13,%r8,1),%rbx
    2ba6:	00 
    2ba7:	48 85 db             	test   %rbx,%rbx
    2baa:	74 5f                	je     2c0b <_Z10print_m512Dv16_f+0x15b>
    2bac:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    2bb0:	74 2e                	je     2be0 <_Z10print_m512Dv16_f+0x130>
    2bb2:	0f be 73 43          	movsbl 0x43(%rbx),%esi
    2bb6:	48 8d 3d c3 a4 20 00 	lea    0x20a4c3(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    2bbd:	e8 2e ef ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    2bc2:	48 89 c7             	mov    %rax,%rdi
    2bc5:	e8 e6 ee ff ff       	callq  1ab0 <_ZNSo5flushEv@plt>
    2bca:	48 83 c4 40          	add    $0x40,%rsp
    2bce:	5b                   	pop    %rbx
    2bcf:	41 5a                	pop    %r10
    2bd1:	41 5c                	pop    %r12
    2bd3:	41 5d                	pop    %r13
    2bd5:	41 5e                	pop    %r14
    2bd7:	41 5f                	pop    %r15
    2bd9:	5d                   	pop    %rbp
    2bda:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
    2bde:	c3                   	retq   
    2bdf:	90                   	nop
    2be0:	48 89 df             	mov    %rbx,%rdi
    2be3:	e8 b8 ee ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2be8:	4c 8b 0b             	mov    (%rbx),%r9
    2beb:	4c 8d 1d 1e 00 00 00 	lea    0x1e(%rip),%r11        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    2bf2:	be 0a 00 00 00       	mov    $0xa,%esi
    2bf7:	4d 8b 79 30          	mov    0x30(%r9),%r15
    2bfb:	4d 39 df             	cmp    %r11,%r15
    2bfe:	74 b6                	je     2bb6 <_Z10print_m512Dv16_f+0x106>
    2c00:	48 89 df             	mov    %rbx,%rdi
    2c03:	41 ff d7             	callq  *%r15
    2c06:	0f be f0             	movsbl %al,%esi
    2c09:	eb ab                	jmp    2bb6 <_Z10print_m512Dv16_f+0x106>
    2c0b:	e8 30 ee ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>

0000000000002c10 <_ZNKSt5ctypeIcE8do_widenEc>:
    2c10:	89 f0                	mov    %esi,%eax
    2c12:	c3                   	retq   
    2c13:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2c1a:	00 00 00 
    2c1d:	0f 1f 00             	nopl   (%rax)

0000000000002c20 <_Z7getTimev>:
    2c20:	48 83 ec 28          	sub    $0x28,%rsp
    2c24:	bf 01 00 00 00       	mov    $0x1,%edi
    2c29:	48 89 e6             	mov    %rsp,%rsi
    2c2c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c33:	00 00 
    2c35:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2c3a:	31 c0                	xor    %eax,%eax
    2c3c:	e8 0f ee ff ff       	callq  1a50 <clock_gettime@plt>
    2c41:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    2c45:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    2c49:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2c4e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2c55:	00 00 
    2c57:	c4 e1 fb 2a 44 24 08 	vcvtsi2sdq 0x8(%rsp),%xmm0,%xmm0
    2c5e:	c5 fb 5e 15 52 81 00 	vdivsd 0x8152(%rip),%xmm0,%xmm2        # adb8 <_IO_stdin_used+0x38>
    2c65:	00 
    2c66:	c4 e1 f3 2a 0c 24    	vcvtsi2sdq (%rsp),%xmm1,%xmm1
    2c6c:	c5 eb 58 c1          	vaddsd %xmm1,%xmm2,%xmm0
    2c70:	75 05                	jne    2c77 <_Z7getTimev+0x57>
    2c72:	48 83 c4 28          	add    $0x28,%rsp
    2c76:	c3                   	retq   
    2c77:	e8 94 ed ff ff       	callq  1a10 <__stack_chk_fail@plt>
    2c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002c80 <_Z9timeSinced>:
    2c80:	48 83 ec 38          	sub    $0x38,%rsp
    2c84:	bf 01 00 00 00       	mov    $0x1,%edi
    2c89:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    2c8e:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    2c94:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c9b:	00 00 
    2c9d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2ca2:	31 c0                	xor    %eax,%eax
    2ca4:	e8 a7 ed ff ff       	callq  1a50 <clock_gettime@plt>
    2ca9:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    2cad:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    2cb1:	c5 fb 10 64 24 08    	vmovsd 0x8(%rsp),%xmm4
    2cb7:	c4 e1 f3 2a 4c 24 18 	vcvtsi2sdq 0x18(%rsp),%xmm1,%xmm1
    2cbe:	c5 f3 5e 05 f2 80 00 	vdivsd 0x80f2(%rip),%xmm1,%xmm0        # adb8 <_IO_stdin_used+0x38>
    2cc5:	00 
    2cc6:	c4 e1 eb 2a 54 24 10 	vcvtsi2sdq 0x10(%rsp),%xmm2,%xmm2
    2ccd:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    2cd2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2cd9:	00 00 
    2cdb:	c5 fb 58 da          	vaddsd %xmm2,%xmm0,%xmm3
    2cdf:	c5 e3 5c ec          	vsubsd %xmm4,%xmm3,%xmm5
    2ce3:	c5 d3 59 05 d5 80 00 	vmulsd 0x80d5(%rip),%xmm5,%xmm0        # adc0 <_IO_stdin_used+0x40>
    2cea:	00 
    2ceb:	75 05                	jne    2cf2 <_Z9timeSinced+0x72>
    2ced:	48 83 c4 38          	add    $0x38,%rsp
    2cf1:	c3                   	retq   
    2cf2:	e8 19 ed ff ff       	callq  1a10 <__stack_chk_fail@plt>
    2cf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2cfe:	00 00 

0000000000002d00 <_ZL9showUsagePc>:
    2d00:	48 83 ec 08          	sub    $0x8,%rsp
    2d04:	48 89 f9             	mov    %rdi,%rcx
    2d07:	48 8b 3d 92 a4 20 00 	mov    0x20a492(%rip),%rdi        # 20d1a0 <stderr@@GLIBC_2.2.5>
    2d0e:	48 8d 15 b3 80 00 00 	lea    0x80b3(%rip),%rdx        # adc8 <_IO_stdin_used+0x48>
    2d15:	be 01 00 00 00       	mov    $0x1,%esi
    2d1a:	31 c0                	xor    %eax,%eax
    2d1c:	e8 cf ec ff ff       	callq  19f0 <__fprintf_chk@plt>
    2d21:	48 8b 3d 78 a4 20 00 	mov    0x20a478(%rip),%rdi        # 20d1a0 <stderr@@GLIBC_2.2.5>
    2d28:	48 8d 15 81 81 00 00 	lea    0x8181(%rip),%rdx        # aeb0 <_IO_stdin_used+0x130>
    2d2f:	be 01 00 00 00       	mov    $0x1,%esi
    2d34:	31 c0                	xor    %eax,%eax
    2d36:	e8 b5 ec ff ff       	callq  19f0 <__fprintf_chk@plt>
    2d3b:	48 8b 3d 5e a4 20 00 	mov    0x20a45e(%rip),%rdi        # 20d1a0 <stderr@@GLIBC_2.2.5>
    2d42:	48 8d 15 d7 81 00 00 	lea    0x81d7(%rip),%rdx        # af20 <_IO_stdin_used+0x1a0>
    2d49:	b9 40 42 0f 00       	mov    $0xf4240,%ecx
    2d4e:	be 01 00 00 00       	mov    $0x1,%esi
    2d53:	31 c0                	xor    %eax,%eax
    2d55:	e8 96 ec ff ff       	callq  19f0 <__fprintf_chk@plt>
    2d5a:	b8 01 00 00 00       	mov    $0x1,%eax
    2d5f:	48 83 c4 08          	add    $0x8,%rsp
    2d63:	c3                   	retq   
    2d64:	66 90                	xchg   %ax,%ax
    2d66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2d6d:	00 00 00 

0000000000002d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>:
    2d70:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    2d75:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    2d79:	41 ff 72 f8          	pushq  -0x8(%r10)
    2d7d:	55                   	push   %rbp
    2d7e:	48 89 e5             	mov    %rsp,%rbp
    2d81:	41 57                	push   %r15
    2d83:	41 56                	push   %r14
    2d85:	41 55                	push   %r13
    2d87:	41 54                	push   %r12
    2d89:	41 89 d5             	mov    %edx,%r13d
    2d8c:	41 52                	push   %r10
    2d8e:	53                   	push   %rbx
    2d8f:	41 89 f4             	mov    %esi,%r12d
    2d92:	48 89 fb             	mov    %rdi,%rbx
    2d95:	49 89 ce             	mov    %rcx,%r14
    2d98:	48 81 ec 80 01 00 00 	sub    $0x180,%rsp
    2d9f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2da6:	00 00 
    2da8:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2dac:	31 c0                	xor    %eax,%eax
    2dae:	0f b6 05 0b a4 20 00 	movzbl 0x20a40b(%rip),%eax        # 20d1c0 <_ZGVZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    2db5:	84 c0                	test   %al,%al
    2db7:	0f 84 43 04 00 00    	je     3200 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x490>
    2dbd:	48 8d b5 90 fe ff ff 	lea    -0x170(%rbp),%rsi
    2dc4:	31 c0                	xor    %eax,%eax
    2dc6:	b9 20 00 00 00       	mov    $0x20,%ecx
    2dcb:	41 83 fd 08          	cmp    $0x8,%r13d
    2dcf:	48 89 f7             	mov    %rsi,%rdi
    2dd2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2dd5:	0f 84 35 02 00 00    	je     3010 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x2a0>
    2ddb:	41 83 fd 10          	cmp    $0x10,%r13d
    2ddf:	74 5f                	je     2e40 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0xd0>
    2de1:	41 83 fd 20          	cmp    $0x20,%r13d
    2de5:	0f 84 ed 06 00 00    	je     34d8 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x768>
    2deb:	41 83 fd 40          	cmp    $0x40,%r13d
    2def:	0f 84 8b 04 00 00    	je     3280 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x510>
    2df5:	45 85 e4             	test   %r12d,%r12d
    2df8:	7e 18                	jle    2e12 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0xa2>
    2dfa:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
    2dff:	4c 89 c7             	mov    %r8,%rdi
    2e02:	c1 ea 04             	shr    $0x4,%edx
    2e05:	48 83 c2 01          	add    $0x1,%rdx
    2e09:	48 c1 e2 06          	shl    $0x6,%rdx
    2e0d:	e8 4e eb ff ff       	callq  1960 <memcpy@plt>
    2e12:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2e16:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2e1d:	00 00 
    2e1f:	0f 85 26 08 00 00    	jne    364b <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x8db>
    2e25:	48 81 c4 80 01 00 00 	add    $0x180,%rsp
    2e2c:	5b                   	pop    %rbx
    2e2d:	5e                   	pop    %rsi
    2e2e:	41 5c                	pop    %r12
    2e30:	41 5d                	pop    %r13
    2e32:	41 5e                	pop    %r14
    2e34:	41 5f                	pop    %r15
    2e36:	5d                   	pop    %rbp
    2e37:	48 8d 66 f8          	lea    -0x8(%rsi),%rsp
    2e3b:	c3                   	retq   
    2e3c:	0f 1f 40 00          	nopl   0x0(%rax)
    2e40:	45 89 e3             	mov    %r12d,%r11d
    2e43:	41 c1 e3 04          	shl    $0x4,%r11d
    2e47:	45 85 db             	test   %r11d,%r11d
    2e4a:	7e a9                	jle    2df5 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x85>
    2e4c:	41 83 eb 01          	sub    $0x1,%r11d
    2e50:	48 8d 56 04          	lea    0x4(%rsi),%rdx
    2e54:	62 71 fd 48 6f 0d a2 	vmovdqa64 0x20a3a2(%rip),%zmm9        # 20d200 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    2e5b:	a3 20 00 
    2e5e:	41 c1 eb 04          	shr    $0x4,%r11d
    2e62:	62 f1 fd 48 6f 2d 54 	vmovdqa64 0x20a954(%rip),%zmm5        # 20d7c0 <_ZL4idx0>
    2e69:	a9 20 00 
    2e6c:	48 89 f7             	mov    %rsi,%rdi
    2e6f:	4a 8d 0c 9a          	lea    (%rdx,%r11,4),%rcx
    2e73:	62 71 fd 48 6f 05 03 	vmovdqa64 0x20a903(%rip),%zmm8        # 20d780 <_ZL4idx1>
    2e7a:	a9 20 00 
    2e7d:	62 71 fd 48 6f 3d b9 	vmovdqa64 0x20a8b9(%rip),%zmm15        # 20d740 <_ZL4idx2>
    2e84:	a8 20 00 
    2e87:	62 d2 d5 48 8d d1    	vpermw %zmm9,%zmm5,%zmm2
    2e8d:	f6 c1 04             	test   $0x4,%cl
    2e90:	62 71 fd 48 6f 2d 66 	vmovdqa64 0x20a866(%rip),%zmm13        # 20d700 <_ZL6addsub>
    2e97:	a8 20 00 
    2e9a:	62 71 fd 08 6f 15 0c 	vmovdqa64 0x8e0c(%rip),%xmm10        # bcb0 <_ZL5temp0+0x710>
    2ea1:	8e 00 00 
    2ea4:	62 f1 fd 08 6f 25 12 	vmovdqa64 0x8e12(%rip),%xmm4        # bcc0 <_ZL5temp0+0x720>
    2eab:	8e 00 00 
    2eae:	74 78                	je     2f28 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x1b8>
    2eb0:	48 83 c3 40          	add    $0x40,%rbx
    2eb4:	48 89 d7             	mov    %rdx,%rdi
    2eb7:	62 71 ff 48 6f 63 ff 	vmovdqu16 -0x40(%rbx),%zmm12
    2ebe:	48 39 d1             	cmp    %rdx,%rcx
    2ec1:	62 52 85 48 8d dc    	vpermw %zmm12,%zmm15,%zmm11
    2ec7:	62 d2 bd 48 8d fc    	vpermw %zmm12,%zmm8,%zmm7
    2ecd:	62 d1 25 48 d5 c9    	vpmullw %zmm9,%zmm11,%zmm1
    2ed3:	62 f1 45 48 d5 da    	vpmullw %zmm2,%zmm7,%zmm3
    2ed9:	62 d1 65 48 d5 f5    	vpmullw %zmm13,%zmm3,%zmm6
    2edf:	62 f1 4d 48 fd c1    	vpaddw %zmm1,%zmm6,%zmm0
    2ee5:	62 f3 fd 48 3b c5 01 	vextracti64x4 $0x1,%zmm0,%ymm5
    2eec:	c5 7d fd e5          	vpaddw %ymm5,%ymm0,%ymm12
    2ef0:	62 53 fd 28 39 e3 01 	vextracti64x2 $0x1,%ymm12,%xmm11
    2ef7:	c4 c1 19 fd db       	vpaddw %xmm11,%xmm12,%xmm3
    2efc:	62 f2 ad 08 8d f3    	vpermw %xmm3,%xmm10,%xmm6
    2f02:	c5 c9 fd cb          	vpaddw %xmm3,%xmm6,%xmm1
    2f06:	62 f2 dd 08 8d c1    	vpermw %xmm1,%xmm4,%xmm0
    2f0c:	c5 79 fd f1          	vpaddw %xmm1,%xmm0,%xmm14
    2f10:	c5 79 7e f0          	vmovd  %xmm14,%eax
    2f14:	c4 63 79 15 76 02 01 	vpextrw $0x1,%xmm14,0x2(%rsi)
    2f1b:	66 89 06             	mov    %ax,(%rsi)
    2f1e:	0f 84 e3 00 00 00    	je     3007 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x297>
    2f24:	0f 1f 40 00          	nopl   0x0(%rax)
    2f28:	62 f1 ff 48 6f 2b    	vmovdqu16 (%rbx),%zmm5
    2f2e:	48 83 c7 08          	add    $0x8,%rdi
    2f32:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
    2f36:	62 72 bd 48 8d e5    	vpermw %zmm5,%zmm8,%zmm12
    2f3c:	62 f2 85 48 8d fd    	vpermw %zmm5,%zmm15,%zmm7
    2f42:	62 71 1d 48 d5 da    	vpmullw %zmm2,%zmm12,%zmm11
    2f48:	62 d1 25 48 d5 dd    	vpmullw %zmm13,%zmm11,%zmm3
    2f4e:	62 d1 45 48 d5 f1    	vpmullw %zmm9,%zmm7,%zmm6
    2f54:	62 f1 65 48 fd c6    	vpaddw %zmm6,%zmm3,%zmm0
    2f5a:	62 d3 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm0,%ymm14
    2f61:	c4 c1 7d fd ee       	vpaddw %ymm14,%ymm0,%ymm5
    2f66:	62 f3 fd 28 39 ef 01 	vextracti64x2 $0x1,%ymm5,%xmm7
    2f6d:	62 71 ff 48 6f 73 ff 	vmovdqu16 -0x40(%rbx),%zmm14
    2f74:	62 52 85 48 8d e6    	vpermw %zmm14,%zmm15,%zmm12
    2f7a:	c5 51 fd df          	vpaddw %xmm7,%xmm5,%xmm11
    2f7e:	62 d2 ad 08 8d db    	vpermw %xmm11,%xmm10,%xmm3
    2f84:	62 d2 bd 48 8d ee    	vpermw %zmm14,%zmm8,%zmm5
    2f8a:	c4 c1 61 fd f3       	vpaddw %xmm11,%xmm3,%xmm6
    2f8f:	62 f2 dd 08 8d c6    	vpermw %xmm6,%xmm4,%xmm0
    2f95:	62 d1 1d 48 d5 d9    	vpmullw %zmm9,%zmm12,%zmm3
    2f9b:	62 f1 55 48 d5 fa    	vpmullw %zmm2,%zmm5,%zmm7
    2fa1:	62 51 45 48 d5 dd    	vpmullw %zmm13,%zmm7,%zmm11
    2fa7:	c5 f9 fd ce          	vpaddw %xmm6,%xmm0,%xmm1
    2fab:	62 f1 25 48 fd f3    	vpaddw %zmm3,%zmm11,%zmm6
    2fb1:	62 f3 fd 48 3b f0 01 	vextracti64x4 $0x1,%zmm6,%ymm0
    2fb8:	c4 e3 79 15 4f fa 01 	vpextrw $0x1,%xmm1,-0x6(%rdi)
    2fbf:	c4 c1 79 7e cd       	vmovd  %xmm1,%r13d
    2fc4:	c5 4d fd f0          	vpaddw %ymm0,%ymm6,%ymm14
    2fc8:	62 53 fd 28 39 f4 01 	vextracti64x2 $0x1,%ymm14,%xmm12
    2fcf:	66 44 89 6f f8       	mov    %r13w,-0x8(%rdi)
    2fd4:	c4 c1 09 fd fc       	vpaddw %xmm12,%xmm14,%xmm7
    2fd9:	62 72 ad 08 8d df    	vpermw %xmm7,%xmm10,%xmm11
    2fdf:	c5 a1 fd df          	vpaddw %xmm7,%xmm11,%xmm3
    2fe3:	62 f2 dd 08 8d f3    	vpermw %xmm3,%xmm4,%xmm6
    2fe9:	c5 c9 fd cb          	vpaddw %xmm3,%xmm6,%xmm1
    2fed:	c4 c1 79 7e c9       	vmovd  %xmm1,%r9d
    2ff2:	c4 e3 79 15 4f fe 01 	vpextrw $0x1,%xmm1,-0x2(%rdi)
    2ff9:	66 44 89 4f fc       	mov    %r9w,-0x4(%rdi)
    2ffe:	48 39 f9             	cmp    %rdi,%rcx
    3001:	0f 85 21 ff ff ff    	jne    2f28 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x1b8>
    3007:	c5 f8 77             	vzeroupper 
    300a:	e9 e6 fd ff ff       	jmpq   2df5 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x85>
    300f:	90                   	nop
    3010:	46 8d 14 e5 00 00 00 	lea    0x0(,%r12,8),%r10d
    3017:	00 
    3018:	45 85 d2             	test   %r10d,%r10d
    301b:	0f 8e d4 fd ff ff    	jle    2df5 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x85>
    3021:	62 51 7f 08 6f 0e    	vmovdqu8 (%r14),%xmm9
    3027:	31 ff                	xor    %edi,%edi
    3029:	4c 8d 7e 02          	lea    0x2(%rsi),%r15
    302d:	c4 43 35 38 46 10 01 	vinserti128 $0x1,0x10(%r14),%ymm9,%ymm8
    3034:	45 8d 72 ff          	lea    -0x1(%r10),%r14d
    3038:	62 f1 fd 28 6f 15 be 	vmovdqa64 0x8bbe(%rip),%ymm2        # bc00 <_ZL5temp0+0x660>
    303f:	8b 00 00 
    3042:	41 c1 ee 03          	shr    $0x3,%r14d
    3046:	62 71 fd 28 6f 3d f0 	vmovdqa64 0x8bf0(%rip),%ymm15        # bc40 <_ZL5temp0+0x6a0>
    304d:	8b 00 00 
    3050:	4e 8d 1c b5 04 00 00 	lea    0x4(,%r14,4),%r11
    3057:	00 
    3058:	41 83 e6 01          	and    $0x1,%r14d
    305c:	62 71 fd 08 6f 2d 3a 	vmovdqa64 0x8c3a(%rip),%xmm13        # bca0 <_ZL5temp0+0x700>
    3063:	8c 00 00 
    3066:	62 52 ed 28 8d d0    	vpermw %ymm8,%ymm2,%ymm10
    306c:	c5 ad d5 25 ac 8b 00 	vpmullw 0x8bac(%rip),%ymm10,%ymm4        # bc20 <_ZL5temp0+0x680>
    3073:	00 
    3074:	0f 85 86 00 00 00    	jne    3100 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x390>
    307a:	62 f1 7f 08 6f 03    	vmovdqu8 (%rbx),%xmm0
    3080:	bf 04 00 00 00       	mov    $0x4,%edi
    3085:	48 c7 85 88 fe ff ff 	movq   $0x0,-0x178(%rbp)
    308c:	00 00 00 00 
    3090:	c4 63 7d 38 73 10 01 	vinserti128 $0x1,0x10(%rbx),%ymm0,%ymm14
    3097:	c4 c1 3d d5 ee       	vpmullw %ymm14,%ymm8,%ymm5
    309c:	c4 41 5d d5 e6       	vpmullw %ymm14,%ymm4,%ymm12
    30a1:	c4 c2 55 05 fc       	vphsubw %ymm12,%ymm5,%ymm7
    30a6:	62 72 85 28 8d df    	vpermw %ymm7,%ymm15,%ymm11
    30ac:	62 73 fd 28 39 db 01 	vextracti64x2 $0x1,%ymm11,%xmm3
    30b3:	c5 a1 fd f3          	vpaddw %xmm3,%xmm11,%xmm6
    30b7:	62 f2 95 08 8d ce    	vpermw %xmm6,%xmm13,%xmm1
    30bd:	c5 71 fd ce          	vpaddw %xmm6,%xmm1,%xmm9
    30c1:	c4 c1 79 c5 c9 03    	vpextrw $0x3,%xmm9,%ecx
    30c7:	c4 c1 79 c5 d1 02    	vpextrw $0x2,%xmm9,%edx
    30cd:	48 c1 e1 10          	shl    $0x10,%rcx
    30d1:	48 09 d1             	or     %rdx,%rcx
    30d4:	49 83 fb 04          	cmp    $0x4,%r11
    30d8:	48 89 8d 80 fe ff ff 	mov    %rcx,-0x180(%rbp)
    30df:	c5 b1 fd 95 80 fe ff 	vpaddw -0x180(%rbp),%xmm9,%xmm2
    30e6:	ff 
    30e7:	c5 f9 7e d0          	vmovd  %xmm2,%eax
    30eb:	66 89 06             	mov    %ax,(%rsi)
    30ee:	c4 c3 79 15 17 01    	vpextrw $0x1,%xmm2,(%r15)
    30f4:	0f 84 0d ff ff ff    	je     3007 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x297>
    30fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3100:	62 71 7f 08 6f 14 fb 	vmovdqu8 (%rbx,%rdi,8),%xmm10
    3107:	4c 8d 77 04          	lea    0x4(%rdi),%r14
    310b:	48 c7 85 88 fe ff ff 	movq   $0x0,-0x178(%rbp)
    3112:	00 00 00 00 
    3116:	c4 63 2d 38 74 fb 10 	vinserti128 $0x1,0x10(%rbx,%rdi,8),%ymm10,%ymm14
    311d:	01 
    311e:	62 b1 7f 08 6f 14 f3 	vmovdqu8 (%rbx,%r14,8),%xmm2
    3125:	c4 23 6d 38 54 f3 10 	vinserti128 $0x1,0x10(%rbx,%r14,8),%ymm2,%ymm10
    312c:	01 
    312d:	c4 c1 3d d5 c6       	vpmullw %ymm14,%ymm8,%ymm0
    3132:	c4 c1 5d d5 ee       	vpmullw %ymm14,%ymm4,%ymm5
    3137:	c4 62 7d 05 e5       	vphsubw %ymm5,%ymm0,%ymm12
    313c:	62 d2 85 28 8d fc    	vpermw %ymm12,%ymm15,%ymm7
    3142:	c4 41 3d d5 f2       	vpmullw %ymm10,%ymm8,%ymm14
    3147:	c4 c1 5d d5 c2       	vpmullw %ymm10,%ymm4,%ymm0
    314c:	c4 e2 0d 05 e8       	vphsubw %ymm0,%ymm14,%ymm5
    3151:	62 d3 fd 28 39 fb 01 	vextracti64x2 $0x1,%ymm7,%xmm11
    3158:	62 72 85 28 8d e5    	vpermw %ymm5,%ymm15,%ymm12
    315e:	c4 c1 41 fd db       	vpaddw %xmm11,%xmm7,%xmm3
    3163:	62 f2 95 08 8d f3    	vpermw %xmm3,%xmm13,%xmm6
    3169:	62 73 fd 28 39 e7 01 	vextracti64x2 $0x1,%ymm12,%xmm7
    3170:	c5 c9 fd cb          	vpaddw %xmm3,%xmm6,%xmm1
    3174:	c5 79 c5 e9 03       	vpextrw $0x3,%xmm1,%r13d
    3179:	c5 19 fd df          	vpaddw %xmm7,%xmm12,%xmm11
    317d:	62 d2 95 08 8d db    	vpermw %xmm11,%xmm13,%xmm3
    3183:	c5 79 c5 c9 02       	vpextrw $0x2,%xmm1,%r9d
    3188:	49 c1 e5 10          	shl    $0x10,%r13
    318c:	c4 c1 61 fd f3       	vpaddw %xmm11,%xmm3,%xmm6
    3191:	c5 f9 c5 ce 03       	vpextrw $0x3,%xmm6,%ecx
    3196:	c5 f9 c5 d6 02       	vpextrw $0x2,%xmm6,%edx
    319b:	4d 09 cd             	or     %r9,%r13
    319e:	4c 89 ad 80 fe ff ff 	mov    %r13,-0x180(%rbp)
    31a5:	48 c1 e1 10          	shl    $0x10,%rcx
    31a9:	c5 71 fd 8d 80 fe ff 	vpaddw -0x180(%rbp),%xmm1,%xmm9
    31b0:	ff 
    31b1:	c4 41 79 7e ca       	vmovd  %xmm9,%r10d
    31b6:	48 09 d1             	or     %rdx,%rcx
    31b9:	48 89 8d 80 fe ff ff 	mov    %rcx,-0x180(%rbp)
    31c0:	66 44 89 14 3e       	mov    %r10w,(%rsi,%rdi,1)
    31c5:	c5 c9 fd 8d 80 fe ff 	vpaddw -0x180(%rbp),%xmm6,%xmm1
    31cc:	ff 
    31cd:	c5 f9 7e c8          	vmovd  %xmm1,%eax
    31d1:	c4 43 79 15 0c 3f 01 	vpextrw $0x1,%xmm9,(%r15,%rdi,1)
    31d8:	66 89 44 3e 04       	mov    %ax,0x4(%rsi,%rdi,1)
    31dd:	c4 c3 79 15 4c 3f 04 	vpextrw $0x1,%xmm1,0x4(%r15,%rdi,1)
    31e4:	01 
    31e5:	48 83 c7 08          	add    $0x8,%rdi
    31e9:	49 39 fb             	cmp    %rdi,%r11
    31ec:	0f 85 0e ff ff ff    	jne    3100 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x390>
    31f2:	e9 10 fe ff ff       	jmpq   3007 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x297>
    31f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    31fe:	00 00 
    3200:	48 8d 3d b9 9f 20 00 	lea    0x209fb9(%rip),%rdi        # 20d1c0 <_ZGVZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3207:	4c 89 85 80 fe ff ff 	mov    %r8,-0x180(%rbp)
    320e:	e8 4d e8 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    3213:	85 c0                	test   %eax,%eax
    3215:	4c 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%r8
    321c:	0f 84 9b fb ff ff    	je     2dbd <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x4d>
    3222:	62 d1 fe 48 6f 06    	vmovdqu64 (%r14),%zmm0
    3228:	48 8d 3d 91 9f 20 00 	lea    0x209f91(%rip),%rdi        # 20d1c0 <_ZGVZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    322f:	62 d1 fe 48 6f 4e 01 	vmovdqu64 0x40(%r14),%zmm1
    3236:	62 d1 fe 48 6f 56 02 	vmovdqu64 0x80(%r14),%zmm2
    323d:	62 d1 fe 48 6f 5e 03 	vmovdqu64 0xc0(%r14),%zmm3
    3244:	62 f1 fd 48 7f 05 b2 	vmovdqa64 %zmm0,0x209fb2(%rip)        # 20d200 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    324b:	9f 20 00 
    324e:	62 f1 fd 48 7f 0d e8 	vmovdqa64 %zmm1,0x209fe8(%rip)        # 20d240 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    3255:	9f 20 00 
    3258:	62 f1 fd 48 7f 15 1e 	vmovdqa64 %zmm2,0x20a01e(%rip)        # 20d280 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x80>
    325f:	a0 20 00 
    3262:	62 f1 fd 48 7f 1d 54 	vmovdqa64 %zmm3,0x20a054(%rip)        # 20d2c0 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0xc0>
    3269:	a0 20 00 
    326c:	c5 f8 77             	vzeroupper 
    326f:	e8 8c e8 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    3274:	4c 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%r8
    327b:	e9 3d fb ff ff       	jmpq   2dbd <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x4d>
    3280:	44 89 e2             	mov    %r12d,%edx
    3283:	c1 e2 06             	shl    $0x6,%edx
    3286:	85 d2                	test   %edx,%edx
    3288:	0f 8e 67 fb ff ff    	jle    2df5 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x85>
    328e:	62 f1 fd 48 6f 35 28 	vmovdqa64 0x20a528(%rip),%zmm6        # 20d7c0 <_ZL4idx0>
    3295:	a5 20 00 
    3298:	83 ea 01             	sub    $0x1,%edx
    329b:	48 89 f1             	mov    %rsi,%rcx
    329e:	62 f1 fd 48 6f 3d 58 	vmovdqa64 0x209f58(%rip),%zmm7        # 20d200 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    32a5:	9f 20 00 
    32a8:	c1 ea 06             	shr    $0x6,%edx
    32ab:	62 71 fd 48 6f 05 8b 	vmovdqa64 0x209f8b(%rip),%zmm8        # 20d240 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    32b2:	9f 20 00 
    32b5:	48 c1 e2 08          	shl    $0x8,%rdx
    32b9:	62 71 fd 48 6f 0d bd 	vmovdqa64 0x209fbd(%rip),%zmm9        # 20d280 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x80>
    32c0:	9f 20 00 
    32c3:	62 f2 cd 48 8d df    	vpermw %zmm7,%zmm6,%zmm3
    32c9:	62 71 fd 48 6f 15 ed 	vmovdqa64 0x209fed(%rip),%zmm10        # 20d2c0 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0xc0>
    32d0:	9f 20 00 
    32d3:	62 52 cd 48 8d d8    	vpermw %zmm8,%zmm6,%zmm11
    32d9:	62 52 cd 48 8d e1    	vpermw %zmm9,%zmm6,%zmm12
    32df:	62 f1 fd 48 6f 2d 97 	vmovdqa64 0x20a497(%rip),%zmm5        # 20d780 <_ZL4idx1>
    32e6:	a4 20 00 
    32e9:	62 52 cd 48 8d ea    	vpermw %zmm10,%zmm6,%zmm13
    32ef:	62 f1 fd 48 6f 25 47 	vmovdqa64 0x20a447(%rip),%zmm4        # 20d740 <_ZL4idx2>
    32f6:	a4 20 00 
    32f9:	62 71 fd 48 6f 3d fd 	vmovdqa64 0x20a3fd(%rip),%zmm15        # 20d700 <_ZL6addsub>
    3300:	a3 20 00 
    3303:	48 8d bc 13 00 01 00 	lea    0x100(%rbx,%rdx,1),%rdi
    330a:	00 
    330b:	62 f1 fd 08 6f 15 9b 	vmovdqa64 0x899b(%rip),%xmm2        # bcb0 <_ZL5temp0+0x710>
    3312:	89 00 00 
    3315:	62 f1 fd 08 6f 0d a1 	vmovdqa64 0x89a1(%rip),%xmm1        # bcc0 <_ZL5temp0+0x720>
    331c:	89 00 00 
    331f:	90                   	nop
    3320:	48 81 c3 00 01 00 00 	add    $0x100,%rbx
    3327:	48 83 c1 04          	add    $0x4,%rcx
    332b:	62 71 ff 48 6f 73 ff 	vmovdqu16 -0x40(%rbx),%zmm14
    3332:	62 d2 d5 48 8d c6    	vpermw %zmm14,%zmm5,%zmm0
    3338:	62 d2 dd 48 8d f6    	vpermw %zmm14,%zmm4,%zmm6
    333e:	62 51 7d 48 d5 f5    	vpmullw %zmm13,%zmm0,%zmm14
    3344:	62 d1 0d 48 d5 c7    	vpmullw %zmm15,%zmm14,%zmm0
    334a:	62 d1 4d 48 d5 f2    	vpmullw %zmm10,%zmm6,%zmm6
    3350:	62 f1 7d 48 fd c6    	vpaddw %zmm6,%zmm0,%zmm0
    3356:	62 f3 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm0,%ymm6
    335d:	c5 fd fd c6          	vpaddw %ymm6,%ymm0,%ymm0
    3361:	62 f3 fd 28 39 c6 01 	vextracti64x2 $0x1,%ymm0,%xmm6
    3368:	c5 f9 fd c6          	vpaddw %xmm6,%xmm0,%xmm0
    336c:	62 72 ed 08 8d f0    	vpermw %xmm0,%xmm2,%xmm14
    3372:	c5 89 fd f0          	vpaddw %xmm0,%xmm14,%xmm6
    3376:	62 f2 f5 08 8d c6    	vpermw %xmm6,%xmm1,%xmm0
    337c:	c5 79 fd f6          	vpaddw %xmm6,%xmm0,%xmm14
    3380:	62 f1 ff 48 6f 73 fe 	vmovdqu16 -0x80(%rbx),%zmm6
    3387:	c4 41 79 7e f5       	vmovd  %xmm14,%r13d
    338c:	c4 41 79 c5 ce 01    	vpextrw $0x1,%xmm14,%r9d
    3392:	62 f2 d5 48 8d c6    	vpermw %zmm6,%zmm5,%zmm0
    3398:	62 72 dd 48 8d f6    	vpermw %zmm6,%zmm4,%zmm14
    339e:	62 d1 7d 48 d5 f4    	vpmullw %zmm12,%zmm0,%zmm6
    33a4:	62 d1 4d 48 d5 c7    	vpmullw %zmm15,%zmm6,%zmm0
    33aa:	62 51 0d 48 d5 f1    	vpmullw %zmm9,%zmm14,%zmm14
    33b0:	62 d1 7d 48 fd f6    	vpaddw %zmm14,%zmm0,%zmm6
    33b6:	62 f3 fd 48 3b f0 01 	vextracti64x4 $0x1,%zmm6,%ymm0
    33bd:	c5 cd fd f0          	vpaddw %ymm0,%ymm6,%ymm6
    33c1:	62 f3 fd 28 39 f0 01 	vextracti64x2 $0x1,%ymm6,%xmm0
    33c8:	c5 c9 fd f0          	vpaddw %xmm0,%xmm6,%xmm6
    33cc:	62 72 ed 08 8d f6    	vpermw %xmm6,%xmm2,%xmm14
    33d2:	c5 89 fd f6          	vpaddw %xmm6,%xmm14,%xmm6
    33d6:	62 f2 f5 08 8d c6    	vpermw %xmm6,%xmm1,%xmm0
    33dc:	c5 79 fd f6          	vpaddw %xmm6,%xmm0,%xmm14
    33e0:	62 f1 ff 48 6f 73 fd 	vmovdqu16 -0xc0(%rbx),%zmm6
    33e7:	c4 41 79 7e f6       	vmovd  %xmm14,%r14d
    33ec:	c4 41 79 c5 d6 01    	vpextrw $0x1,%xmm14,%r10d
    33f2:	62 f2 d5 48 8d c6    	vpermw %zmm6,%zmm5,%zmm0
    33f8:	62 72 dd 48 8d f6    	vpermw %zmm6,%zmm4,%zmm14
    33fe:	62 d1 7d 48 d5 f3    	vpmullw %zmm11,%zmm0,%zmm6
    3404:	62 d1 4d 48 d5 c7    	vpmullw %zmm15,%zmm6,%zmm0
    340a:	62 51 0d 48 d5 f0    	vpmullw %zmm8,%zmm14,%zmm14
    3410:	62 d1 7d 48 fd f6    	vpaddw %zmm14,%zmm0,%zmm6
    3416:	62 f3 fd 48 3b f0 01 	vextracti64x4 $0x1,%zmm6,%ymm0
    341d:	c5 cd fd f0          	vpaddw %ymm0,%ymm6,%ymm6
    3421:	62 f3 fd 28 39 f0 01 	vextracti64x2 $0x1,%ymm6,%xmm0
    3428:	c5 c9 fd f0          	vpaddw %xmm0,%xmm6,%xmm6
    342c:	62 72 ed 08 8d f6    	vpermw %xmm6,%xmm2,%xmm14
    3432:	c5 89 fd f6          	vpaddw %xmm6,%xmm14,%xmm6
    3436:	62 f2 f5 08 8d c6    	vpermw %xmm6,%xmm1,%xmm0
    343c:	c5 79 fd f6          	vpaddw %xmm6,%xmm0,%xmm14
    3440:	62 f1 ff 48 6f 73 fc 	vmovdqu16 -0x100(%rbx),%zmm6
    3447:	c4 41 79 7e f7       	vmovd  %xmm14,%r15d
    344c:	c4 41 79 c5 de 01    	vpextrw $0x1,%xmm14,%r11d
    3452:	62 f2 d5 48 8d c6    	vpermw %zmm6,%zmm5,%zmm0
    3458:	62 72 dd 48 8d f6    	vpermw %zmm6,%zmm4,%zmm14
    345e:	62 f1 7d 48 d5 f3    	vpmullw %zmm3,%zmm0,%zmm6
    3464:	62 d1 4d 48 d5 c7    	vpmullw %zmm15,%zmm6,%zmm0
    346a:	62 71 0d 48 d5 f7    	vpmullw %zmm7,%zmm14,%zmm14
    3470:	62 d1 7d 48 fd f6    	vpaddw %zmm14,%zmm0,%zmm6
    3476:	62 f3 fd 48 3b f0 01 	vextracti64x4 $0x1,%zmm6,%ymm0
    347d:	c5 cd fd f0          	vpaddw %ymm0,%ymm6,%ymm6
    3481:	62 f3 fd 28 39 f0 01 	vextracti64x2 $0x1,%ymm6,%xmm0
    3488:	c5 c9 fd f0          	vpaddw %xmm0,%xmm6,%xmm6
    348c:	62 72 ed 08 8d f6    	vpermw %xmm6,%xmm2,%xmm14
    3492:	c5 89 fd f6          	vpaddw %xmm6,%xmm14,%xmm6
    3496:	62 f2 f5 08 8d c6    	vpermw %xmm6,%xmm1,%xmm0
    349c:	c5 79 fd f6          	vpaddw %xmm6,%xmm0,%xmm14
    34a0:	c4 c1 79 c5 c6 01    	vpextrw $0x1,%xmm14,%eax
    34a6:	c5 79 7e f2          	vmovd  %xmm14,%edx
    34aa:	44 01 fa             	add    %r15d,%edx
    34ad:	44 01 d8             	add    %r11d,%eax
    34b0:	44 01 f2             	add    %r14d,%edx
    34b3:	44 01 d0             	add    %r10d,%eax
    34b6:	44 01 ea             	add    %r13d,%edx
    34b9:	44 01 c8             	add    %r9d,%eax
    34bc:	66 89 51 fc          	mov    %dx,-0x4(%rcx)
    34c0:	66 89 41 fe          	mov    %ax,-0x2(%rcx)
    34c4:	48 39 df             	cmp    %rbx,%rdi
    34c7:	0f 85 53 fe ff ff    	jne    3320 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x5b0>
    34cd:	e9 35 fb ff ff       	jmpq   3007 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x297>
    34d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    34d8:	44 89 e1             	mov    %r12d,%ecx
    34db:	c1 e1 05             	shl    $0x5,%ecx
    34de:	85 c9                	test   %ecx,%ecx
    34e0:	0f 8e 0f f9 ff ff    	jle    2df5 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x85>
    34e6:	62 f1 fd 48 6f 3d d0 	vmovdqa64 0x20a2d0(%rip),%zmm7        # 20d7c0 <_ZL4idx0>
    34ed:	a2 20 00 
    34f0:	83 e9 01             	sub    $0x1,%ecx
    34f3:	48 89 f7             	mov    %rsi,%rdi
    34f6:	62 71 fd 48 6f 05 00 	vmovdqa64 0x209d00(%rip),%zmm8        # 20d200 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    34fd:	9d 20 00 
    3500:	c1 e9 05             	shr    $0x5,%ecx
    3503:	62 71 fd 48 6f 0d 33 	vmovdqa64 0x209d33(%rip),%zmm9        # 20d240 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    350a:	9d 20 00 
    350d:	48 c1 e1 07          	shl    $0x7,%rcx
    3511:	62 52 c5 48 8d e0    	vpermw %zmm8,%zmm7,%zmm12
    3517:	62 71 fd 48 6f 3d 5f 	vmovdqa64 0x20a25f(%rip),%zmm15        # 20d780 <_ZL4idx1>
    351e:	a2 20 00 
    3521:	4c 8d ac 0b 80 00 00 	lea    0x80(%rbx,%rcx,1),%r13
    3528:	00 
    3529:	62 52 c5 48 8d d1    	vpermw %zmm9,%zmm7,%zmm10
    352f:	62 f1 fd 48 6f 2d 07 	vmovdqa64 0x20a207(%rip),%zmm5        # 20d740 <_ZL4idx2>
    3536:	a2 20 00 
    3539:	62 f1 fd 48 6f 25 bd 	vmovdqa64 0x20a1bd(%rip),%zmm4        # 20d700 <_ZL6addsub>
    3540:	a1 20 00 
    3543:	62 71 fd 08 6f 2d 63 	vmovdqa64 0x8763(%rip),%xmm13        # bcb0 <_ZL5temp0+0x710>
    354a:	87 00 00 
    354d:	62 f1 fd 08 6f 15 69 	vmovdqa64 0x8769(%rip),%xmm2        # bcc0 <_ZL5temp0+0x720>
    3554:	87 00 00 
    3557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    355e:	00 00 
    3560:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
    3564:	48 83 c7 04          	add    $0x4,%rdi
    3568:	62 f1 ff 48 6f 4b ff 	vmovdqu16 -0x40(%rbx),%zmm1
    356f:	62 72 85 48 8d d9    	vpermw %zmm1,%zmm15,%zmm11
    3575:	62 f2 d5 48 8d d9    	vpermw %zmm1,%zmm5,%zmm3
    357b:	62 d1 25 48 d5 f2    	vpmullw %zmm10,%zmm11,%zmm6
    3581:	62 f1 4d 48 d5 c4    	vpmullw %zmm4,%zmm6,%zmm0
    3587:	62 f1 ff 48 6f 73 fe 	vmovdqu16 -0x80(%rbx),%zmm6
    358e:	62 51 65 48 d5 f1    	vpmullw %zmm9,%zmm3,%zmm14
    3594:	62 d1 7d 48 fd fe    	vpaddw %zmm14,%zmm0,%zmm7
    359a:	62 d3 fd 48 3b fb 01 	vextracti64x4 $0x1,%zmm7,%ymm11
    35a1:	c4 c1 45 fd db       	vpaddw %ymm11,%ymm7,%ymm3
    35a6:	62 f3 fd 28 39 d8 01 	vextracti64x2 $0x1,%ymm3,%xmm0
    35ad:	c5 61 fd f0          	vpaddw %xmm0,%xmm3,%xmm14
    35b1:	62 d2 95 08 8d fe    	vpermw %xmm14,%xmm13,%xmm7
    35b7:	62 f2 85 48 8d c6    	vpermw %zmm6,%zmm15,%zmm0
    35bd:	c4 c1 41 fd ce       	vpaddw %xmm14,%xmm7,%xmm1
    35c2:	62 72 d5 48 8d f6    	vpermw %zmm6,%zmm5,%zmm14
    35c8:	62 72 ed 08 8d d9    	vpermw %xmm1,%xmm2,%xmm11
    35ce:	62 d1 7d 48 d5 fc    	vpmullw %zmm12,%zmm0,%zmm7
    35d4:	c5 a1 fd d9          	vpaddw %xmm1,%xmm11,%xmm3
    35d8:	62 d1 0d 48 d5 c8    	vpmullw %zmm8,%zmm14,%zmm1
    35de:	c4 c1 79 7e d9       	vmovd  %xmm3,%r9d
    35e3:	c5 79 c5 f3 01       	vpextrw $0x1,%xmm3,%r14d
    35e8:	62 71 45 48 d5 dc    	vpmullw %zmm4,%zmm7,%zmm11
    35ee:	62 f1 25 48 fd d9    	vpaddw %zmm1,%zmm11,%zmm3
    35f4:	62 f3 fd 48 3b d8 01 	vextracti64x4 $0x1,%zmm3,%ymm0
    35fb:	c5 65 fd f0          	vpaddw %ymm0,%ymm3,%ymm14
    35ff:	62 53 fd 28 39 f3 01 	vextracti64x2 $0x1,%ymm14,%xmm11
    3606:	c4 c1 09 fd db       	vpaddw %xmm11,%xmm14,%xmm3
    360b:	62 f2 95 08 8d cb    	vpermw %xmm3,%xmm13,%xmm1
    3611:	c5 f1 fd f3          	vpaddw %xmm3,%xmm1,%xmm6
    3615:	62 f2 ed 08 8d c6    	vpermw %xmm6,%xmm2,%xmm0
    361b:	c5 79 fd f6          	vpaddw %xmm6,%xmm0,%xmm14
    361f:	c4 41 79 c5 fe 01    	vpextrw $0x1,%xmm14,%r15d
    3625:	c4 41 79 7e f2       	vmovd  %xmm14,%r10d
    362a:	45 01 ca             	add    %r9d,%r10d
    362d:	45 01 f7             	add    %r14d,%r15d
    3630:	66 44 89 57 fc       	mov    %r10w,-0x4(%rdi)
    3635:	66 44 89 7f fe       	mov    %r15w,-0x2(%rdi)
    363a:	49 39 dd             	cmp    %rbx,%r13
    363d:	0f 85 1d ff ff ff    	jne    3560 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x7f0>
    3643:	c5 f8 77             	vzeroupper 
    3646:	e9 aa f7 ff ff       	jmpq   2df5 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_+0x85>
    364b:	e8 c0 e3 ff ff       	callq  1a10 <__stack_chk_fail@plt>

0000000000003650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>:
    3650:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    3655:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    3659:	41 ff 72 f8          	pushq  -0x8(%r10)
    365d:	55                   	push   %rbp
    365e:	48 89 e5             	mov    %rsp,%rbp
    3661:	41 57                	push   %r15
    3663:	41 56                	push   %r14
    3665:	41 55                	push   %r13
    3667:	41 54                	push   %r12
    3669:	41 52                	push   %r10
    366b:	53                   	push   %rbx
    366c:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    3673:	48 89 bd 60 ff ff ff 	mov    %rdi,-0xa0(%rbp)
    367a:	89 95 14 ff ff ff    	mov    %edx,-0xec(%rbp)
    3680:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
    3687:	00 00 
    3689:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    368d:	31 ff                	xor    %edi,%edi
    368f:	85 f6                	test   %esi,%esi
    3691:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    3698:	0f 8e 87 06 00 00    	jle    3d25 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x6d5>
    369e:	89 d0                	mov    %edx,%eax
    36a0:	8d 0c 12             	lea    (%rdx,%rdx,1),%ecx
    36a3:	8d 76 ff             	lea    -0x1(%rsi),%esi
    36a6:	8d 3c 85 00 00 00 00 	lea    0x0(,%rax,4),%edi
    36ad:	8d 1c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebx
    36b4:	41 89 c2             	mov    %eax,%r10d
    36b7:	8d 14 11             	lea    (%rcx,%rdx,1),%edx
    36ba:	c1 ee 04             	shr    $0x4,%esi
    36bd:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
    36c4:	44 8d 0c 07          	lea    (%rdi,%rax,1),%r9d
    36c8:	41 89 df             	mov    %ebx,%r15d
    36cb:	89 9d 08 ff ff ff    	mov    %ebx,-0xf8(%rbp)
    36d1:	44 8d 2c 95 00 00 00 	lea    0x0(,%rdx,4),%r13d
    36d8:	00 
    36d9:	01 c3                	add    %eax,%ebx
    36db:	41 29 c7             	sub    %eax,%r15d
    36de:	47 8d 24 09          	lea    (%r9,%r9,1),%r12d
    36e2:	89 9d 00 ff ff ff    	mov    %ebx,-0x100(%rbp)
    36e8:	49 63 da             	movslq %r10d,%rbx
    36eb:	44 6b f0 0e          	imul   $0xe,%eax,%r14d
    36ef:	44 89 ad f4 fe ff ff 	mov    %r13d,-0x10c(%rbp)
    36f6:	41 01 c5             	add    %eax,%r13d
    36f9:	44 89 a5 fc fe ff ff 	mov    %r12d,-0x104(%rbp)
    3700:	41 01 c4             	add    %eax,%r12d
    3703:	c1 e0 04             	shl    $0x4,%eax
    3706:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%rbp)
    370c:	44 29 d0             	sub    %r10d,%eax
    370f:	44 8d 1c 12          	lea    (%rdx,%rdx,1),%r11d
    3713:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
    3719:	48 c1 e6 06          	shl    $0x6,%rsi
    371d:	48 89 d8             	mov    %rbx,%rax
    3720:	4d 8d 44 30 40       	lea    0x40(%r8,%rsi,1),%r8
    3725:	83 e8 01             	sub    $0x1,%eax
    3728:	48 63 c9             	movslq %ecx,%rcx
    372b:	48 63 d2             	movslq %edx,%rdx
    372e:	48 63 ff             	movslq %edi,%rdi
    3731:	4d 63 c9             	movslq %r9d,%r9
    3734:	4d 63 db             	movslq %r11d,%r11
    3737:	48 83 c0 01          	add    $0x1,%rax
    373b:	44 89 bd 04 ff ff ff 	mov    %r15d,-0xfc(%rbp)
    3742:	44 89 a5 f8 fe ff ff 	mov    %r12d,-0x108(%rbp)
    3749:	44 89 ad f0 fe ff ff 	mov    %r13d,-0x110(%rbp)
    3750:	44 89 b5 0c ff ff ff 	mov    %r14d,-0xf4(%rbp)
    3757:	4c 89 85 18 ff ff ff 	mov    %r8,-0xe8(%rbp)
    375e:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
    3765:	00 00 00 
    3768:	48 89 9d e0 fe ff ff 	mov    %rbx,-0x120(%rbp)
    376f:	48 89 8d d8 fe ff ff 	mov    %rcx,-0x128(%rbp)
    3776:	48 89 95 d0 fe ff ff 	mov    %rdx,-0x130(%rbp)
    377d:	48 89 bd c8 fe ff ff 	mov    %rdi,-0x138(%rbp)
    3784:	4c 89 8d c0 fe ff ff 	mov    %r9,-0x140(%rbp)
    378b:	4c 89 9d b8 fe ff ff 	mov    %r11,-0x148(%rbp)
    3792:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    3799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    37a0:	44 8b bd 14 ff ff ff 	mov    -0xec(%rbp),%r15d
    37a7:	45 85 ff             	test   %r15d,%r15d
    37aa:	0f 8e a0 05 00 00    	jle    3d50 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x700>
    37b0:	4c 63 b5 54 ff ff ff 	movslq -0xac(%rbp),%r14
    37b7:	4c 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%r10
    37be:	4c 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%r8
    37c5:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    37cc:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    37d3:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
    37da:	4c 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%r9
    37e1:	48 63 b5 04 ff ff ff 	movslq -0xfc(%rbp),%rsi
    37e8:	4d 01 f2             	add    %r14,%r10
    37eb:	4d 01 f0             	add    %r14,%r8
    37ee:	4c 01 f0             	add    %r14,%rax
    37f1:	4a 8d 1c 92          	lea    (%rdx,%r10,4),%rbx
    37f5:	4e 8d 1c 82          	lea    (%rdx,%r8,4),%r11
    37f9:	4c 8d 14 82          	lea    (%rdx,%rax,4),%r10
    37fd:	4c 63 85 08 ff ff ff 	movslq -0xf8(%rbp),%r8
    3804:	48 63 85 00 ff ff ff 	movslq -0x100(%rbp),%rax
    380b:	4c 01 f1             	add    %r14,%rcx
    380e:	4d 01 f1             	add    %r14,%r9
    3811:	48 8d 3c 8a          	lea    (%rdx,%rcx,4),%rdi
    3815:	48 63 8d fc fe ff ff 	movslq -0x104(%rbp),%rcx
    381c:	4e 8d 3c 8a          	lea    (%rdx,%r9,4),%r15
    3820:	4c 01 f6             	add    %r14,%rsi
    3823:	4c 8b a5 e0 fe ff ff 	mov    -0x120(%rbp),%r12
    382a:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    382e:	4e 8d 2c b2          	lea    (%rdx,%r14,4),%r13
    3832:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    3839:	00 00 00 00 
    383d:	4d 01 f0             	add    %r14,%r8
    3840:	4c 01 f0             	add    %r14,%rax
    3843:	4c 89 7d 90          	mov    %r15,-0x70(%rbp)
    3847:	4e 8d 0c 82          	lea    (%rdx,%r8,4),%r9
    384b:	4c 8d 04 82          	lea    (%rdx,%rax,4),%r8
    384f:	48 63 85 f4 fe ff ff 	movslq -0x10c(%rbp),%rax
    3856:	4c 01 f1             	add    %r14,%rcx
    3859:	4c 8d 3c b2          	lea    (%rdx,%rsi,4),%r15
    385d:	48 63 b5 f8 fe ff ff 	movslq -0x108(%rbp),%rsi
    3864:	48 8d 3c 8a          	lea    (%rdx,%rcx,4),%rdi
    3868:	4d 01 f4             	add    %r14,%r12
    386b:	4e 8d 24 a2          	lea    (%rdx,%r12,4),%r12
    386f:	62 f1 4d 08 ef f6    	vpxord %xmm6,%xmm6,%xmm6
    3875:	4c 01 f0             	add    %r14,%rax
    3878:	48 8d 0c 82          	lea    (%rdx,%rax,4),%rcx
    387c:	48 63 85 f0 fe ff ff 	movslq -0x110(%rbp),%rax
    3883:	4c 01 f6             	add    %r14,%rsi
    3886:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    388a:	62 71 fd 28 6f d6    	vmovdqa64 %ymm6,%ymm10
    3890:	4c 01 f0             	add    %r14,%rax
    3893:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
    3897:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    389b:	48 63 85 0c ff ff ff 	movslq -0xf4(%rbp),%rax
    38a2:	4c 01 f0             	add    %r14,%rax
    38a5:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
    38a9:	48 63 95 ec fe ff ff 	movslq -0x114(%rbp),%rdx
    38b0:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    38b4:	49 01 d6             	add    %rdx,%r14
    38b7:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    38be:	4e 8d 34 b2          	lea    (%rdx,%r14,4),%r14
    38c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    38c8:	41 0f b7 45 00       	movzwl 0x0(%r13),%eax
    38cd:	41 0f b7 14 24       	movzwl (%r12),%edx
    38d2:	49 83 c5 04          	add    $0x4,%r13
    38d6:	49 83 c4 04          	add    $0x4,%r12
    38da:	48 83 c3 04          	add    $0x4,%rbx
    38de:	49 83 c3 04          	add    $0x4,%r11
    38e2:	49 83 c2 04          	add    $0x4,%r10
    38e6:	49 83 c7 04          	add    $0x4,%r15
    38ea:	49 83 c1 04          	add    $0x4,%r9
    38ee:	49 83 c0 04          	add    $0x4,%r8
    38f2:	48 83 c7 04          	add    $0x4,%rdi
    38f6:	48 83 c6 04          	add    $0x4,%rsi
    38fa:	66 89 45 a0          	mov    %ax,-0x60(%rbp)
    38fe:	0f b7 43 fc          	movzwl -0x4(%rbx),%eax
    3902:	48 83 c1 04          	add    $0x4,%rcx
    3906:	66 89 55 a2          	mov    %dx,-0x5e(%rbp)
    390a:	41 0f b7 53 fc       	movzwl -0x4(%r11),%edx
    390f:	49 83 c6 04          	add    $0x4,%r14
    3913:	66 89 45 a4          	mov    %ax,-0x5c(%rbp)
    3917:	41 0f b7 42 fc       	movzwl -0x4(%r10),%eax
    391c:	66 89 55 a6          	mov    %dx,-0x5a(%rbp)
    3920:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    3924:	66 89 45 a8          	mov    %ax,-0x58(%rbp)
    3928:	0f b7 02             	movzwl (%rdx),%eax
    392b:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    392f:	66 89 45 aa          	mov    %ax,-0x56(%rbp)
    3933:	0f b7 02             	movzwl (%rdx),%eax
    3936:	41 0f b7 57 fc       	movzwl -0x4(%r15),%edx
    393b:	66 89 45 ac          	mov    %ax,-0x54(%rbp)
    393f:	41 0f b7 41 fc       	movzwl -0x4(%r9),%eax
    3944:	66 89 55 ae          	mov    %dx,-0x52(%rbp)
    3948:	41 0f b7 50 fc       	movzwl -0x4(%r8),%edx
    394d:	66 89 45 b0          	mov    %ax,-0x50(%rbp)
    3951:	0f b7 47 fc          	movzwl -0x4(%rdi),%eax
    3955:	66 89 55 b2          	mov    %dx,-0x4e(%rbp)
    3959:	0f b7 56 fc          	movzwl -0x4(%rsi),%edx
    395d:	66 89 45 b4          	mov    %ax,-0x4c(%rbp)
    3961:	0f b7 41 fc          	movzwl -0x4(%rcx),%eax
    3965:	66 89 55 b6          	mov    %dx,-0x4a(%rbp)
    3969:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    396d:	66 89 45 b8          	mov    %ax,-0x48(%rbp)
    3971:	0f b7 02             	movzwl (%rdx),%eax
    3974:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    3978:	66 89 45 ba          	mov    %ax,-0x46(%rbp)
    397c:	0f b7 02             	movzwl (%rdx),%eax
    397f:	41 0f b7 56 fc       	movzwl -0x4(%r14),%edx
    3984:	62 f1 fd 08 6f 55 fa 	vmovdqa64 -0x60(%rbp),%xmm2
    398b:	66 89 45 bc          	mov    %ax,-0x44(%rbp)
    398f:	41 0f b7 45 fe       	movzwl -0x2(%r13),%eax
    3994:	66 89 55 be          	mov    %dx,-0x42(%rbp)
    3998:	41 0f b7 54 24 fe    	movzwl -0x2(%r12),%edx
    399e:	c4 e3 6d 38 7d b0 01 	vinserti128 $0x1,-0x50(%rbp),%ymm2,%ymm7
    39a5:	66 89 45 a0          	mov    %ax,-0x60(%rbp)
    39a9:	0f b7 43 fe          	movzwl -0x2(%rbx),%eax
    39ad:	66 89 55 a2          	mov    %dx,-0x5e(%rbp)
    39b1:	41 0f b7 53 fe       	movzwl -0x2(%r11),%edx
    39b6:	66 89 45 a4          	mov    %ax,-0x5c(%rbp)
    39ba:	41 0f b7 42 fe       	movzwl -0x2(%r10),%eax
    39bf:	66 89 55 a6          	mov    %dx,-0x5a(%rbp)
    39c3:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    39c7:	66 89 45 a8          	mov    %ax,-0x58(%rbp)
    39cb:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    39cf:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    39d3:	66 89 45 aa          	mov    %ax,-0x56(%rbp)
    39d7:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    39db:	41 0f b7 57 fe       	movzwl -0x2(%r15),%edx
    39e0:	66 89 45 ac          	mov    %ax,-0x54(%rbp)
    39e4:	41 0f b7 41 fe       	movzwl -0x2(%r9),%eax
    39e9:	66 89 55 ae          	mov    %dx,-0x52(%rbp)
    39ed:	41 0f b7 50 fe       	movzwl -0x2(%r8),%edx
    39f2:	66 89 45 b0          	mov    %ax,-0x50(%rbp)
    39f6:	0f b7 47 fe          	movzwl -0x2(%rdi),%eax
    39fa:	66 89 55 b2          	mov    %dx,-0x4e(%rbp)
    39fe:	0f b7 56 fe          	movzwl -0x2(%rsi),%edx
    3a02:	66 89 45 b4          	mov    %ax,-0x4c(%rbp)
    3a06:	66 89 55 b6          	mov    %dx,-0x4a(%rbp)
    3a0a:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
    3a0e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    3a12:	48 83 45 88 04       	addq   $0x4,-0x78(%rbp)
    3a17:	62 f1 fd 08 6f 45 fa 	vmovdqa64 -0x60(%rbp),%xmm0
    3a1e:	48 83 45 90 04       	addq   $0x4,-0x70(%rbp)
    3a23:	48 83 45 98 04       	addq   $0x4,-0x68(%rbp)
    3a28:	66 89 45 b8          	mov    %ax,-0x48(%rbp)
    3a2c:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    3a30:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    3a34:	48 83 45 80 04       	addq   $0x4,-0x80(%rbp)
    3a39:	66 89 45 ba          	mov    %ax,-0x46(%rbp)
    3a3d:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    3a41:	41 0f b7 56 fe       	movzwl -0x2(%r14),%edx
    3a46:	66 89 45 bc          	mov    %ax,-0x44(%rbp)
    3a4a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    3a51:	66 89 55 be          	mov    %dx,-0x42(%rbp)
    3a55:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    3a5c:	c4 63 7d 38 45 b0 01 	vinserti128 $0x1,-0x50(%rbp),%ymm0,%ymm8
    3a63:	c4 e2 7d 79 0c 82    	vpbroadcastw (%rdx,%rax,4),%ymm1
    3a69:	c4 e2 7d 79 5c 82 02 	vpbroadcastw 0x2(%rdx,%rax,4),%ymm3
    3a70:	48 83 c0 01          	add    $0x1,%rax
    3a74:	48 3b 85 68 ff ff ff 	cmp    -0x98(%rbp),%rax
    3a7b:	c5 f5 d5 ef          	vpmullw %ymm7,%ymm1,%ymm5
    3a7f:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    3a86:	c4 c1 55 fd e2       	vpaddw %ymm10,%ymm5,%ymm4
    3a8b:	c4 41 65 d5 c8       	vpmullw %ymm8,%ymm3,%ymm9
    3a90:	c5 65 d5 df          	vpmullw %ymm7,%ymm3,%ymm11
    3a94:	c4 41 75 d5 e0       	vpmullw %ymm8,%ymm1,%ymm12
    3a99:	c4 41 5d f9 d1       	vpsubw %ymm9,%ymm4,%ymm10
    3a9e:	c4 41 25 fd ec       	vpaddw %ymm12,%ymm11,%ymm13
    3aa3:	c5 95 fd f6          	vpaddw %ymm6,%ymm13,%ymm6
    3aa7:	0f 85 1b fe ff ff    	jne    38c8 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x278>
    3aad:	c4 63 7d 39 d2 01    	vextracti128 $0x1,%ymm10,%xmm2
    3ab3:	c4 e3 7d 39 f7 01    	vextracti128 $0x1,%ymm6,%xmm7
    3ab9:	c4 41 79 c5 ea 00    	vpextrw $0x0,%xmm10,%r13d
    3abf:	c5 f9 c5 c2 01       	vpextrw $0x1,%xmm2,%eax
    3ac4:	c4 41 79 c5 fa 03    	vpextrw $0x3,%xmm10,%r15d
    3aca:	c4 41 79 c5 e2 01    	vpextrw $0x1,%xmm10,%r12d
    3ad0:	44 89 6d 98          	mov    %r13d,-0x68(%rbp)
    3ad4:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
    3ada:	c5 f9 c5 c2 04       	vpextrw $0x4,%xmm2,%eax
    3adf:	c4 41 79 c5 d2 02    	vpextrw $0x2,%xmm10,%r10d
    3ae5:	44 89 7d 80          	mov    %r15d,-0x80(%rbp)
    3ae9:	c4 41 79 c5 c2 04    	vpextrw $0x4,%xmm10,%r8d
    3aef:	44 89 65 90          	mov    %r12d,-0x70(%rbp)
    3af3:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
    3af9:	c5 f9 c5 c2 05       	vpextrw $0x5,%xmm2,%eax
    3afe:	c4 c1 79 c5 fa 05    	vpextrw $0x5,%xmm10,%edi
    3b04:	44 89 55 88          	mov    %r10d,-0x78(%rbp)
    3b08:	c4 c1 79 c5 f2 06    	vpextrw $0x6,%xmm10,%esi
    3b0e:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
    3b15:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%rbp)
    3b1b:	c5 f9 c5 c7 05       	vpextrw $0x5,%xmm7,%eax
    3b20:	c4 c1 79 c5 ca 07    	vpextrw $0x7,%xmm10,%ecx
    3b26:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
    3b2c:	c5 79 c5 f2 00       	vpextrw $0x0,%xmm2,%r14d
    3b31:	89 b5 4c ff ff ff    	mov    %esi,-0xb4(%rbp)
    3b37:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
    3b3d:	c5 f9 c5 c2 06       	vpextrw $0x6,%xmm2,%eax
    3b42:	c5 79 c5 ea 02       	vpextrw $0x2,%xmm2,%r13d
    3b47:	89 8d 48 ff ff ff    	mov    %ecx,-0xb8(%rbp)
    3b4d:	c5 79 c5 fa 03       	vpextrw $0x3,%xmm2,%r15d
    3b52:	44 89 b5 44 ff ff ff 	mov    %r14d,-0xbc(%rbp)
    3b59:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%rbp)
    3b5f:	c5 f9 c5 c7 06       	vpextrw $0x6,%xmm7,%eax
    3b64:	44 89 ad 3c ff ff ff 	mov    %r13d,-0xc4(%rbp)
    3b6b:	c5 f9 c5 de 00       	vpextrw $0x0,%xmm6,%ebx
    3b70:	44 89 bd 38 ff ff ff 	mov    %r15d,-0xc8(%rbp)
    3b77:	c5 79 c5 de 01       	vpextrw $0x1,%xmm6,%r11d
    3b7c:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%rbp)
    3b82:	c5 f9 c5 c2 07       	vpextrw $0x7,%xmm2,%eax
    3b87:	c5 79 c5 d6 02       	vpextrw $0x2,%xmm6,%r10d
    3b8c:	c5 79 c5 ce 03       	vpextrw $0x3,%xmm6,%r9d
    3b91:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
    3b97:	c5 79 c5 c6 04       	vpextrw $0x4,%xmm6,%r8d
    3b9c:	c5 f9 c5 fe 05       	vpextrw $0x5,%xmm6,%edi
    3ba1:	c5 f9 c5 f6 06       	vpextrw $0x6,%xmm6,%esi
    3ba6:	c5 f9 c5 d6 07       	vpextrw $0x7,%xmm6,%edx
    3bab:	c5 f9 c5 cf 00       	vpextrw $0x0,%xmm7,%ecx
    3bb0:	c5 79 c5 e7 01       	vpextrw $0x1,%xmm7,%r12d
    3bb5:	c5 79 c5 ef 02       	vpextrw $0x2,%xmm7,%r13d
    3bba:	c5 79 c5 f7 03       	vpextrw $0x3,%xmm7,%r14d
    3bbf:	c5 79 c5 ff 04       	vpextrw $0x4,%xmm7,%r15d
    3bc4:	c5 f9 c5 c7 07       	vpextrw $0x7,%xmm7,%eax
    3bc9:	c5 f9 6e 45 98       	vmovd  -0x68(%rbp),%xmm0
    3bce:	c5 f9 6e 4d 90       	vmovd  -0x70(%rbp),%xmm1
    3bd3:	c5 f9 6e 5d 88       	vmovd  -0x78(%rbp),%xmm3
    3bd8:	c5 79 6e 4d 80       	vmovd  -0x80(%rbp),%xmm9
    3bdd:	c5 79 c4 c3 01       	vpinsrw $0x1,%ebx,%xmm0,%xmm8
    3be2:	c5 f9 6e b5 78 ff ff 	vmovd  -0x88(%rbp),%xmm6
    3be9:	ff 
    3bea:	c4 c1 71 c4 eb 01    	vpinsrw $0x1,%r11d,%xmm1,%xmm5
    3bf0:	c5 79 6e bd 50 ff ff 	vmovd  -0xb0(%rbp),%xmm15
    3bf7:	ff 
    3bf8:	c5 f9 6e bd 4c ff ff 	vmovd  -0xb4(%rbp),%xmm7
    3bff:	ff 
    3c00:	c5 f9 6e 85 48 ff ff 	vmovd  -0xb8(%rbp),%xmm0
    3c07:	ff 
    3c08:	c4 c1 61 c4 e2 01    	vpinsrw $0x1,%r10d,%xmm3,%xmm4
    3c0e:	c5 39 62 dd          	vpunpckldq %xmm5,%xmm8,%xmm11
    3c12:	c5 f9 c4 ca 01       	vpinsrw $0x1,%edx,%xmm0,%xmm1
    3c17:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    3c1e:	c5 f9 6e 85 34 ff ff 	vmovd  -0xcc(%rbp),%xmm0
    3c25:	ff 
    3c26:	c4 41 31 c4 d1 01    	vpinsrw $0x1,%r9d,%xmm9,%xmm10
    3c2c:	c4 41 49 c4 f0 01    	vpinsrw $0x1,%r8d,%xmm6,%xmm14
    3c32:	c5 f9 6e b5 3c ff ff 	vmovd  -0xc4(%rbp),%xmm6
    3c39:	ff 
    3c3a:	c5 81 c4 d7 01       	vpinsrw $0x1,%edi,%xmm15,%xmm2
    3c3f:	c5 79 6e bd 38 ff ff 	vmovd  -0xc8(%rbp),%xmm15
    3c46:	ff 
    3c47:	48 83 c2 40          	add    $0x40,%rdx
    3c4b:	c5 41 c4 c6 01       	vpinsrw $0x1,%esi,%xmm7,%xmm8
    3c50:	c4 41 59 62 e2       	vpunpckldq %xmm10,%xmm4,%xmm12
    3c55:	c5 79 6e 95 44 ff ff 	vmovd  -0xbc(%rbp),%xmm10
    3c5c:	ff 
    3c5d:	c5 89 62 ea          	vpunpckldq %xmm2,%xmm14,%xmm5
    3c61:	c5 b9 62 d9          	vpunpckldq %xmm1,%xmm8,%xmm3
    3c65:	c4 41 21 6c ec       	vpunpcklqdq %xmm12,%xmm11,%xmm13
    3c6a:	c5 79 6e a5 40 ff ff 	vmovd  -0xc0(%rbp),%xmm12
    3c71:	ff 
    3c72:	c5 29 c4 d9 01       	vpinsrw $0x1,%ecx,%xmm10,%xmm11
    3c77:	c5 d1 6c e3          	vpunpcklqdq %xmm3,%xmm5,%xmm4
    3c7b:	c5 f9 6e 9d 30 ff ff 	vmovd  -0xd0(%rbp),%xmm3
    3c82:	ff 
    3c83:	c4 41 49 c4 f5 01    	vpinsrw $0x1,%r13d,%xmm6,%xmm14
    3c89:	c4 c1 01 c4 fe 01    	vpinsrw $0x1,%r14d,%xmm15,%xmm7
    3c8f:	c4 63 15 38 cc 01    	vinserti128 $0x1,%xmm4,%ymm13,%ymm9
    3c95:	c5 f9 6e a5 28 ff ff 	vmovd  -0xd8(%rbp),%xmm4
    3c9c:	ff 
    3c9d:	c4 41 19 c4 ec 01    	vpinsrw $0x1,%r12d,%xmm12,%xmm13
    3ca3:	c5 59 c4 95 24 ff ff 	vpinsrw $0x1,-0xdc(%rbp),%xmm4,%xmm10
    3caa:	ff 01 
    3cac:	c5 78 11 4a c0       	vmovups %xmm9,-0x40(%rdx)
    3cb1:	c4 63 7d 39 4a d0 01 	vextracti128 $0x1,%ymm9,-0x30(%rdx)
    3cb8:	c4 c1 21 62 d5       	vpunpckldq %xmm13,%xmm11,%xmm2
    3cbd:	c5 79 6e 9d 20 ff ff 	vmovd  -0xe0(%rbp),%xmm11
    3cc4:	ff 
    3cc5:	c4 c1 79 c4 ef 01    	vpinsrw $0x1,%r15d,%xmm0,%xmm5
    3ccb:	c5 61 c4 8d 2c ff ff 	vpinsrw $0x1,-0xd4(%rbp),%xmm3,%xmm9
    3cd2:	ff 01 
    3cd4:	c5 21 c4 e0 01       	vpinsrw $0x1,%eax,%xmm11,%xmm12
    3cd9:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
    3cdf:	c5 09 62 c7          	vpunpckldq %xmm7,%xmm14,%xmm8
    3ce3:	01 85 54 ff ff ff    	add    %eax,-0xac(%rbp)
    3ce9:	c4 41 51 62 e9       	vpunpckldq %xmm9,%xmm5,%xmm13
    3cee:	c4 c1 29 62 f4       	vpunpckldq %xmm12,%xmm10,%xmm6
    3cf3:	c4 c1 69 6c c8       	vpunpcklqdq %xmm8,%xmm2,%xmm1
    3cf8:	c5 11 6c f6          	vpunpcklqdq %xmm6,%xmm13,%xmm14
    3cfc:	c4 43 75 38 fe 01    	vinserti128 $0x1,%xmm14,%ymm1,%ymm15
    3d02:	c5 78 11 7a e0       	vmovups %xmm15,-0x20(%rdx)
    3d07:	c4 63 7d 39 7a f0 01 	vextracti128 $0x1,%ymm15,-0x10(%rdx)
    3d0e:	48 39 95 18 ff ff ff 	cmp    %rdx,-0xe8(%rbp)
    3d15:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    3d1c:	0f 85 7e fa ff ff    	jne    37a0 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x150>
    3d22:	c5 f8 77             	vzeroupper 
    3d25:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3d29:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3d30:	00 00 
    3d32:	0f 85 e9 00 00 00    	jne    3e21 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x7d1>
    3d38:	48 81 c4 20 01 00 00 	add    $0x120,%rsp
    3d3f:	5b                   	pop    %rbx
    3d40:	59                   	pop    %rcx
    3d41:	41 5c                	pop    %r12
    3d43:	41 5d                	pop    %r13
    3d45:	41 5e                	pop    %r14
    3d47:	41 5f                	pop    %r15
    3d49:	5d                   	pop    %rbp
    3d4a:	48 8d 61 f8          	lea    -0x8(%rcx),%rsp
    3d4e:	c3                   	retq   
    3d4f:	90                   	nop
    3d50:	31 db                	xor    %ebx,%ebx
    3d52:	45 31 db             	xor    %r11d,%r11d
    3d55:	45 31 c9             	xor    %r9d,%r9d
    3d58:	66 89 9d 20 ff ff ff 	mov    %bx,-0xe0(%rbp)
    3d5f:	31 db                	xor    %ebx,%ebx
    3d61:	45 31 d2             	xor    %r10d,%r10d
    3d64:	66 89 9d 44 ff ff ff 	mov    %bx,-0xbc(%rbp)
    3d6b:	31 db                	xor    %ebx,%ebx
    3d6d:	66 44 89 9d 24 ff ff 	mov    %r11w,-0xdc(%rbp)
    3d74:	ff 
    3d75:	66 89 9d 78 ff ff ff 	mov    %bx,-0x88(%rbp)
    3d7c:	45 31 db             	xor    %r11d,%r11d
    3d7f:	31 db                	xor    %ebx,%ebx
    3d81:	31 d2                	xor    %edx,%edx
    3d83:	45 31 e4             	xor    %r12d,%r12d
    3d86:	45 31 c0             	xor    %r8d,%r8d
    3d89:	31 ff                	xor    %edi,%edi
    3d8b:	31 f6                	xor    %esi,%esi
    3d8d:	66 44 89 8d 28 ff ff 	mov    %r9w,-0xd8(%rbp)
    3d94:	ff 
    3d95:	66 44 89 95 34 ff ff 	mov    %r10w,-0xcc(%rbp)
    3d9c:	ff 
    3d9d:	45 31 c9             	xor    %r9d,%r9d
    3da0:	45 31 d2             	xor    %r10d,%r10d
    3da3:	66 44 89 9d 48 ff ff 	mov    %r11w,-0xb8(%rbp)
    3daa:	ff 
    3dab:	66 89 5d 88          	mov    %bx,-0x78(%rbp)
    3daf:	45 31 db             	xor    %r11d,%r11d
    3db2:	31 db                	xor    %ebx,%ebx
    3db4:	66 89 95 2c ff ff ff 	mov    %dx,-0xd4(%rbp)
    3dbb:	66 44 89 a5 30 ff ff 	mov    %r12w,-0xd0(%rbp)
    3dc2:	ff 
    3dc3:	66 44 89 85 38 ff ff 	mov    %r8w,-0xc8(%rbp)
    3dca:	ff 
    3dcb:	66 89 bd 3c ff ff ff 	mov    %di,-0xc4(%rbp)
    3dd2:	31 c0                	xor    %eax,%eax
    3dd4:	66 89 b5 40 ff ff ff 	mov    %si,-0xc0(%rbp)
    3ddb:	66 44 89 8d 4c ff ff 	mov    %r9w,-0xb4(%rbp)
    3de2:	ff 
    3de3:	45 31 ff             	xor    %r15d,%r15d
    3de6:	66 44 89 95 50 ff ff 	mov    %r10w,-0xb0(%rbp)
    3ded:	ff 
    3dee:	66 44 89 5d 80       	mov    %r11w,-0x80(%rbp)
    3df3:	45 31 f6             	xor    %r14d,%r14d
    3df6:	66 89 5d 90          	mov    %bx,-0x70(%rbp)
    3dfa:	45 31 ed             	xor    %r13d,%r13d
    3dfd:	45 31 e4             	xor    %r12d,%r12d
    3e00:	31 c9                	xor    %ecx,%ecx
    3e02:	31 d2                	xor    %edx,%edx
    3e04:	31 f6                	xor    %esi,%esi
    3e06:	31 ff                	xor    %edi,%edi
    3e08:	45 31 c0             	xor    %r8d,%r8d
    3e0b:	45 31 c9             	xor    %r9d,%r9d
    3e0e:	45 31 d2             	xor    %r10d,%r10d
    3e11:	45 31 db             	xor    %r11d,%r11d
    3e14:	31 db                	xor    %ebx,%ebx
    3e16:	66 c7 45 98 00 00    	movw   $0x0,-0x68(%rbp)
    3e1c:	e9 a8 fd ff ff       	jmpq   3bc9 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x579>
    3e21:	e8 ea db ff ff       	callq  1a10 <__stack_chk_fail@plt>
    3e26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3e2d:	00 00 00 

0000000000003e30 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i>:
    3e30:	85 d2                	test   %edx,%edx
    3e32:	0f 8e 68 01 00 00    	jle    3fa0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x170>
    3e38:	0f b7 06             	movzwl (%rsi),%eax
    3e3b:	44 0f b7 46 02       	movzwl 0x2(%rsi),%r8d
    3e40:	66 39 07             	cmp    %ax,(%rdi)
    3e43:	0f 94 c1             	sete   %cl
    3e46:	66 44 39 47 02       	cmp    %r8w,0x2(%rdi)
    3e4b:	0f 94 c0             	sete   %al
    3e4e:	20 c8                	and    %cl,%al
    3e50:	0f 84 3c 01 00 00    	je     3f92 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x162>
    3e56:	48 8d 4f 06          	lea    0x6(%rdi),%rcx
    3e5a:	83 ea 01             	sub    $0x1,%edx
    3e5d:	4c 8d 46 06          	lea    0x6(%rsi),%r8
    3e61:	4c 8d 14 91          	lea    (%rcx,%rdx,4),%r10
    3e65:	83 e2 03             	and    $0x3,%edx
    3e68:	0f 84 89 00 00 00    	je     3ef7 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0xc7>
    3e6e:	45 0f b7 58 fe       	movzwl -0x2(%r8),%r11d
    3e73:	45 0f b7 08          	movzwl (%r8),%r9d
    3e77:	4c 8d 46 0a          	lea    0xa(%rsi),%r8
    3e7b:	66 44 39 59 fe       	cmp    %r11w,-0x2(%rcx)
    3e80:	41 0f 94 c3          	sete   %r11b
    3e84:	66 44 39 09          	cmp    %r9w,(%rcx)
    3e88:	48 8d 4f 0a          	lea    0xa(%rdi),%rcx
    3e8c:	41 0f 94 c1          	sete   %r9b
    3e90:	45 84 cb             	test   %r9b,%r11b
    3e93:	0f 84 f7 00 00 00    	je     3f90 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3e99:	48 83 fa 01          	cmp    $0x1,%rdx
    3e9d:	74 58                	je     3ef7 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0xc7>
    3e9f:	48 83 fa 02          	cmp    $0x2,%rdx
    3ea3:	74 2a                	je     3ecf <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x9f>
    3ea5:	41 0f b7 50 fe       	movzwl -0x2(%r8),%edx
    3eaa:	45 0f b7 00          	movzwl (%r8),%r8d
    3eae:	66 39 51 fe          	cmp    %dx,-0x2(%rcx)
    3eb2:	41 0f 94 c3          	sete   %r11b
    3eb6:	66 44 39 01          	cmp    %r8w,(%rcx)
    3eba:	48 8d 4f 0e          	lea    0xe(%rdi),%rcx
    3ebe:	4c 8d 46 0e          	lea    0xe(%rsi),%r8
    3ec2:	41 0f 94 c1          	sete   %r9b
    3ec6:	45 84 cb             	test   %r9b,%r11b
    3ec9:	0f 84 c1 00 00 00    	je     3f90 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3ecf:	41 0f b7 70 fe       	movzwl -0x2(%r8),%esi
    3ed4:	41 0f b7 38          	movzwl (%r8),%edi
    3ed8:	66 39 71 fe          	cmp    %si,-0x2(%rcx)
    3edc:	41 0f 94 c3          	sete   %r11b
    3ee0:	66 39 39             	cmp    %di,(%rcx)
    3ee3:	0f 94 c2             	sete   %dl
    3ee6:	48 83 c1 04          	add    $0x4,%rcx
    3eea:	49 83 c0 04          	add    $0x4,%r8
    3eee:	41 84 d3             	test   %dl,%r11b
    3ef1:	0f 84 99 00 00 00    	je     3f90 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3ef7:	4c 39 d1             	cmp    %r10,%rcx
    3efa:	0f 84 98 00 00 00    	je     3f98 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x168>
    3f00:	45 0f b7 48 fe       	movzwl -0x2(%r8),%r9d
    3f05:	45 0f b7 18          	movzwl (%r8),%r11d
    3f09:	49 8d 78 04          	lea    0x4(%r8),%rdi
    3f0d:	66 44 39 49 fe       	cmp    %r9w,-0x2(%rcx)
    3f12:	4c 8d 49 04          	lea    0x4(%rcx),%r9
    3f16:	40 0f 94 c6          	sete   %sil
    3f1a:	66 44 39 19          	cmp    %r11w,(%rcx)
    3f1e:	0f 94 c2             	sete   %dl
    3f21:	40 84 d6             	test   %dl,%sil
    3f24:	74 6a                	je     3f90 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3f26:	0f b7 77 fe          	movzwl -0x2(%rdi),%esi
    3f2a:	41 0f b7 50 04       	movzwl 0x4(%r8),%edx
    3f2f:	66 41 39 71 fe       	cmp    %si,-0x2(%r9)
    3f34:	41 0f 94 c3          	sete   %r11b
    3f38:	66 39 51 04          	cmp    %dx,0x4(%rcx)
    3f3c:	41 0f 94 c1          	sete   %r9b
    3f40:	45 84 cb             	test   %r9b,%r11b
    3f43:	74 4b                	je     3f90 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3f45:	41 0f b7 78 06       	movzwl 0x6(%r8),%edi
    3f4a:	45 0f b7 58 08       	movzwl 0x8(%r8),%r11d
    3f4f:	66 39 79 06          	cmp    %di,0x6(%rcx)
    3f53:	40 0f 94 c6          	sete   %sil
    3f57:	66 44 39 59 08       	cmp    %r11w,0x8(%rcx)
    3f5c:	0f 94 c2             	sete   %dl
    3f5f:	40 84 d6             	test   %dl,%sil
    3f62:	74 2c                	je     3f90 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3f64:	45 0f b7 48 0a       	movzwl 0xa(%r8),%r9d
    3f69:	41 0f b7 70 0c       	movzwl 0xc(%r8),%esi
    3f6e:	66 44 39 49 0a       	cmp    %r9w,0xa(%rcx)
    3f73:	40 0f 94 c7          	sete   %dil
    3f77:	66 39 71 0c          	cmp    %si,0xc(%rcx)
    3f7b:	41 0f 94 c3          	sete   %r11b
    3f7f:	48 83 c1 10          	add    $0x10,%rcx
    3f83:	49 83 c0 10          	add    $0x10,%r8
    3f87:	44 84 df             	test   %r11b,%dil
    3f8a:	0f 85 67 ff ff ff    	jne    3ef7 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0xc7>
    3f90:	31 c0                	xor    %eax,%eax
    3f92:	f3 c3                	repz retq 
    3f94:	0f 1f 40 00          	nopl   0x0(%rax)
    3f98:	f3 c3                	repz retq 
    3f9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3fa0:	b8 01 00 00 00       	mov    $0x1,%eax
    3fa5:	c3                   	retq   
    3fa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3fad:	00 00 00 

0000000000003fb0 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i>:
    3fb0:	41 57                	push   %r15
    3fb2:	41 56                	push   %r14
    3fb4:	45 89 cf             	mov    %r9d,%r15d
    3fb7:	41 55                	push   %r13
    3fb9:	41 54                	push   %r12
    3fbb:	49 89 cd             	mov    %rcx,%r13
    3fbe:	55                   	push   %rbp
    3fbf:	53                   	push   %rbx
    3fc0:	89 f5                	mov    %esi,%ebp
    3fc2:	48 89 fb             	mov    %rdi,%rbx
    3fc5:	41 89 d4             	mov    %edx,%r12d
    3fc8:	4d 89 c6             	mov    %r8,%r14
    3fcb:	48 83 ec 18          	sub    $0x18,%rsp
    3fcf:	44 89 4c 24 04       	mov    %r9d,0x4(%rsp)
    3fd4:	e8 47 ec ff ff       	callq  2c20 <_Z7getTimev>
    3fd9:	45 85 ff             	test   %r15d,%r15d
    3fdc:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    3fe2:	0f 8e 71 01 00 00    	jle    4159 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x1a9>
    3fe8:	44 89 fa             	mov    %r15d,%edx
    3feb:	45 31 ff             	xor    %r15d,%r15d
    3fee:	83 e2 07             	and    $0x7,%edx
    3ff1:	0f 84 bb 00 00 00    	je     40b2 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x102>
    3ff7:	83 fa 01             	cmp    $0x1,%edx
    3ffa:	0f 84 90 00 00 00    	je     4090 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0xe0>
    4000:	83 fa 02             	cmp    $0x2,%edx
    4003:	74 74                	je     4079 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0xc9>
    4005:	83 fa 03             	cmp    $0x3,%edx
    4008:	74 58                	je     4062 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0xb2>
    400a:	83 fa 04             	cmp    $0x4,%edx
    400d:	74 3c                	je     404b <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x9b>
    400f:	83 fa 05             	cmp    $0x5,%edx
    4012:	74 20                	je     4034 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x84>
    4014:	83 fa 06             	cmp    $0x6,%edx
    4017:	0f 85 5b 01 00 00    	jne    4178 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x1c8>
    401d:	4d 89 f0             	mov    %r14,%r8
    4020:	4c 89 e9             	mov    %r13,%rcx
    4023:	44 89 e2             	mov    %r12d,%edx
    4026:	89 ee                	mov    %ebp,%esi
    4028:	48 89 df             	mov    %rbx,%rdi
    402b:	41 83 c7 01          	add    $0x1,%r15d
    402f:	e8 3c ed ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4034:	4d 89 f0             	mov    %r14,%r8
    4037:	4c 89 e9             	mov    %r13,%rcx
    403a:	44 89 e2             	mov    %r12d,%edx
    403d:	89 ee                	mov    %ebp,%esi
    403f:	48 89 df             	mov    %rbx,%rdi
    4042:	41 83 c7 01          	add    $0x1,%r15d
    4046:	e8 25 ed ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    404b:	4d 89 f0             	mov    %r14,%r8
    404e:	4c 89 e9             	mov    %r13,%rcx
    4051:	44 89 e2             	mov    %r12d,%edx
    4054:	89 ee                	mov    %ebp,%esi
    4056:	48 89 df             	mov    %rbx,%rdi
    4059:	41 83 c7 01          	add    $0x1,%r15d
    405d:	e8 0e ed ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4062:	4d 89 f0             	mov    %r14,%r8
    4065:	4c 89 e9             	mov    %r13,%rcx
    4068:	44 89 e2             	mov    %r12d,%edx
    406b:	89 ee                	mov    %ebp,%esi
    406d:	48 89 df             	mov    %rbx,%rdi
    4070:	41 83 c7 01          	add    $0x1,%r15d
    4074:	e8 f7 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4079:	4d 89 f0             	mov    %r14,%r8
    407c:	4c 89 e9             	mov    %r13,%rcx
    407f:	44 89 e2             	mov    %r12d,%edx
    4082:	89 ee                	mov    %ebp,%esi
    4084:	48 89 df             	mov    %rbx,%rdi
    4087:	41 83 c7 01          	add    $0x1,%r15d
    408b:	e8 e0 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4090:	4d 89 f0             	mov    %r14,%r8
    4093:	4c 89 e9             	mov    %r13,%rcx
    4096:	44 89 e2             	mov    %r12d,%edx
    4099:	89 ee                	mov    %ebp,%esi
    409b:	48 89 df             	mov    %rbx,%rdi
    409e:	41 83 c7 01          	add    $0x1,%r15d
    40a2:	e8 c9 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    40a7:	44 39 7c 24 04       	cmp    %r15d,0x4(%rsp)
    40ac:	0f 84 a7 00 00 00    	je     4159 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x1a9>
    40b2:	4d 89 f0             	mov    %r14,%r8
    40b5:	4c 89 e9             	mov    %r13,%rcx
    40b8:	44 89 e2             	mov    %r12d,%edx
    40bb:	89 ee                	mov    %ebp,%esi
    40bd:	48 89 df             	mov    %rbx,%rdi
    40c0:	41 83 c7 08          	add    $0x8,%r15d
    40c4:	e8 a7 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    40c9:	4d 89 f0             	mov    %r14,%r8
    40cc:	4c 89 e9             	mov    %r13,%rcx
    40cf:	44 89 e2             	mov    %r12d,%edx
    40d2:	89 ee                	mov    %ebp,%esi
    40d4:	48 89 df             	mov    %rbx,%rdi
    40d7:	e8 94 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    40dc:	4d 89 f0             	mov    %r14,%r8
    40df:	4c 89 e9             	mov    %r13,%rcx
    40e2:	44 89 e2             	mov    %r12d,%edx
    40e5:	89 ee                	mov    %ebp,%esi
    40e7:	48 89 df             	mov    %rbx,%rdi
    40ea:	e8 81 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    40ef:	4d 89 f0             	mov    %r14,%r8
    40f2:	4c 89 e9             	mov    %r13,%rcx
    40f5:	44 89 e2             	mov    %r12d,%edx
    40f8:	89 ee                	mov    %ebp,%esi
    40fa:	48 89 df             	mov    %rbx,%rdi
    40fd:	e8 6e ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4102:	4d 89 f0             	mov    %r14,%r8
    4105:	4c 89 e9             	mov    %r13,%rcx
    4108:	44 89 e2             	mov    %r12d,%edx
    410b:	89 ee                	mov    %ebp,%esi
    410d:	48 89 df             	mov    %rbx,%rdi
    4110:	e8 5b ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4115:	4d 89 f0             	mov    %r14,%r8
    4118:	4c 89 e9             	mov    %r13,%rcx
    411b:	44 89 e2             	mov    %r12d,%edx
    411e:	89 ee                	mov    %ebp,%esi
    4120:	48 89 df             	mov    %rbx,%rdi
    4123:	e8 48 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4128:	4d 89 f0             	mov    %r14,%r8
    412b:	4c 89 e9             	mov    %r13,%rcx
    412e:	44 89 e2             	mov    %r12d,%edx
    4131:	89 ee                	mov    %ebp,%esi
    4133:	48 89 df             	mov    %rbx,%rdi
    4136:	e8 35 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    413b:	4d 89 f0             	mov    %r14,%r8
    413e:	4c 89 e9             	mov    %r13,%rcx
    4141:	44 89 e2             	mov    %r12d,%edx
    4144:	89 ee                	mov    %ebp,%esi
    4146:	48 89 df             	mov    %rbx,%rdi
    4149:	e8 22 ec ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    414e:	44 39 7c 24 04       	cmp    %r15d,0x4(%rsp)
    4153:	0f 85 59 ff ff ff    	jne    40b2 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x102>
    4159:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    415f:	48 83 c4 18          	add    $0x18,%rsp
    4163:	5b                   	pop    %rbx
    4164:	5d                   	pop    %rbp
    4165:	41 5c                	pop    %r12
    4167:	41 5d                	pop    %r13
    4169:	41 5e                	pop    %r14
    416b:	41 5f                	pop    %r15
    416d:	e9 0e eb ff ff       	jmpq   2c80 <_Z9timeSinced>
    4172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4178:	4d 89 f0             	mov    %r14,%r8
    417b:	4c 89 e9             	mov    %r13,%rcx
    417e:	44 89 e2             	mov    %r12d,%edx
    4181:	89 ee                	mov    %ebp,%esi
    4183:	48 89 df             	mov    %rbx,%rdi
    4186:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    418c:	e8 df eb ff ff       	callq  2d70 <_Z12matmulAVX512PK13Complex_int16iiS1_PS_>
    4191:	e9 87 fe ff ff       	jmpq   401d <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x6d>
    4196:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    419d:	00 00 00 

00000000000041a0 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i>:
    41a0:	41 57                	push   %r15
    41a2:	41 56                	push   %r14
    41a4:	45 89 cf             	mov    %r9d,%r15d
    41a7:	41 55                	push   %r13
    41a9:	41 54                	push   %r12
    41ab:	49 89 cd             	mov    %rcx,%r13
    41ae:	55                   	push   %rbp
    41af:	53                   	push   %rbx
    41b0:	89 f5                	mov    %esi,%ebp
    41b2:	48 89 fb             	mov    %rdi,%rbx
    41b5:	41 89 d4             	mov    %edx,%r12d
    41b8:	4d 89 c6             	mov    %r8,%r14
    41bb:	48 83 ec 18          	sub    $0x18,%rsp
    41bf:	44 89 4c 24 04       	mov    %r9d,0x4(%rsp)
    41c4:	e8 57 ea ff ff       	callq  2c20 <_Z7getTimev>
    41c9:	45 85 ff             	test   %r15d,%r15d
    41cc:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    41d2:	0f 8e 71 01 00 00    	jle    4349 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x1a9>
    41d8:	44 89 fa             	mov    %r15d,%edx
    41db:	45 31 ff             	xor    %r15d,%r15d
    41de:	83 e2 07             	and    $0x7,%edx
    41e1:	0f 84 bb 00 00 00    	je     42a2 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x102>
    41e7:	83 fa 01             	cmp    $0x1,%edx
    41ea:	0f 84 90 00 00 00    	je     4280 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0xe0>
    41f0:	83 fa 02             	cmp    $0x2,%edx
    41f3:	74 74                	je     4269 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0xc9>
    41f5:	83 fa 03             	cmp    $0x3,%edx
    41f8:	74 58                	je     4252 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0xb2>
    41fa:	83 fa 04             	cmp    $0x4,%edx
    41fd:	74 3c                	je     423b <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x9b>
    41ff:	83 fa 05             	cmp    $0x5,%edx
    4202:	74 20                	je     4224 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x84>
    4204:	83 fa 06             	cmp    $0x6,%edx
    4207:	0f 85 5b 01 00 00    	jne    4368 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x1c8>
    420d:	4d 89 f0             	mov    %r14,%r8
    4210:	4c 89 e9             	mov    %r13,%rcx
    4213:	44 89 e2             	mov    %r12d,%edx
    4216:	89 ee                	mov    %ebp,%esi
    4218:	48 89 df             	mov    %rbx,%rdi
    421b:	41 83 c7 01          	add    $0x1,%r15d
    421f:	e8 2c f4 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4224:	4d 89 f0             	mov    %r14,%r8
    4227:	4c 89 e9             	mov    %r13,%rcx
    422a:	44 89 e2             	mov    %r12d,%edx
    422d:	89 ee                	mov    %ebp,%esi
    422f:	48 89 df             	mov    %rbx,%rdi
    4232:	41 83 c7 01          	add    $0x1,%r15d
    4236:	e8 15 f4 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    423b:	4d 89 f0             	mov    %r14,%r8
    423e:	4c 89 e9             	mov    %r13,%rcx
    4241:	44 89 e2             	mov    %r12d,%edx
    4244:	89 ee                	mov    %ebp,%esi
    4246:	48 89 df             	mov    %rbx,%rdi
    4249:	41 83 c7 01          	add    $0x1,%r15d
    424d:	e8 fe f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4252:	4d 89 f0             	mov    %r14,%r8
    4255:	4c 89 e9             	mov    %r13,%rcx
    4258:	44 89 e2             	mov    %r12d,%edx
    425b:	89 ee                	mov    %ebp,%esi
    425d:	48 89 df             	mov    %rbx,%rdi
    4260:	41 83 c7 01          	add    $0x1,%r15d
    4264:	e8 e7 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4269:	4d 89 f0             	mov    %r14,%r8
    426c:	4c 89 e9             	mov    %r13,%rcx
    426f:	44 89 e2             	mov    %r12d,%edx
    4272:	89 ee                	mov    %ebp,%esi
    4274:	48 89 df             	mov    %rbx,%rdi
    4277:	41 83 c7 01          	add    $0x1,%r15d
    427b:	e8 d0 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4280:	4d 89 f0             	mov    %r14,%r8
    4283:	4c 89 e9             	mov    %r13,%rcx
    4286:	44 89 e2             	mov    %r12d,%edx
    4289:	89 ee                	mov    %ebp,%esi
    428b:	48 89 df             	mov    %rbx,%rdi
    428e:	41 83 c7 01          	add    $0x1,%r15d
    4292:	e8 b9 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4297:	44 39 7c 24 04       	cmp    %r15d,0x4(%rsp)
    429c:	0f 84 a7 00 00 00    	je     4349 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x1a9>
    42a2:	4d 89 f0             	mov    %r14,%r8
    42a5:	4c 89 e9             	mov    %r13,%rcx
    42a8:	44 89 e2             	mov    %r12d,%edx
    42ab:	89 ee                	mov    %ebp,%esi
    42ad:	48 89 df             	mov    %rbx,%rdi
    42b0:	41 83 c7 08          	add    $0x8,%r15d
    42b4:	e8 97 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    42b9:	4d 89 f0             	mov    %r14,%r8
    42bc:	4c 89 e9             	mov    %r13,%rcx
    42bf:	44 89 e2             	mov    %r12d,%edx
    42c2:	89 ee                	mov    %ebp,%esi
    42c4:	48 89 df             	mov    %rbx,%rdi
    42c7:	e8 84 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    42cc:	4d 89 f0             	mov    %r14,%r8
    42cf:	4c 89 e9             	mov    %r13,%rcx
    42d2:	44 89 e2             	mov    %r12d,%edx
    42d5:	89 ee                	mov    %ebp,%esi
    42d7:	48 89 df             	mov    %rbx,%rdi
    42da:	e8 71 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    42df:	4d 89 f0             	mov    %r14,%r8
    42e2:	4c 89 e9             	mov    %r13,%rcx
    42e5:	44 89 e2             	mov    %r12d,%edx
    42e8:	89 ee                	mov    %ebp,%esi
    42ea:	48 89 df             	mov    %rbx,%rdi
    42ed:	e8 5e f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    42f2:	4d 89 f0             	mov    %r14,%r8
    42f5:	4c 89 e9             	mov    %r13,%rcx
    42f8:	44 89 e2             	mov    %r12d,%edx
    42fb:	89 ee                	mov    %ebp,%esi
    42fd:	48 89 df             	mov    %rbx,%rdi
    4300:	e8 4b f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4305:	4d 89 f0             	mov    %r14,%r8
    4308:	4c 89 e9             	mov    %r13,%rcx
    430b:	44 89 e2             	mov    %r12d,%edx
    430e:	89 ee                	mov    %ebp,%esi
    4310:	48 89 df             	mov    %rbx,%rdi
    4313:	e8 38 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4318:	4d 89 f0             	mov    %r14,%r8
    431b:	4c 89 e9             	mov    %r13,%rcx
    431e:	44 89 e2             	mov    %r12d,%edx
    4321:	89 ee                	mov    %ebp,%esi
    4323:	48 89 df             	mov    %rbx,%rdi
    4326:	e8 25 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    432b:	4d 89 f0             	mov    %r14,%r8
    432e:	4c 89 e9             	mov    %r13,%rcx
    4331:	44 89 e2             	mov    %r12d,%edx
    4334:	89 ee                	mov    %ebp,%esi
    4336:	48 89 df             	mov    %rbx,%rdi
    4339:	e8 12 f3 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    433e:	44 39 7c 24 04       	cmp    %r15d,0x4(%rsp)
    4343:	0f 85 59 ff ff ff    	jne    42a2 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x102>
    4349:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    434f:	48 83 c4 18          	add    $0x18,%rsp
    4353:	5b                   	pop    %rbx
    4354:	5d                   	pop    %rbp
    4355:	41 5c                	pop    %r12
    4357:	41 5d                	pop    %r13
    4359:	41 5e                	pop    %r14
    435b:	41 5f                	pop    %r15
    435d:	e9 1e e9 ff ff       	jmpq   2c80 <_Z9timeSinced>
    4362:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4368:	4d 89 f0             	mov    %r14,%r8
    436b:	4c 89 e9             	mov    %r13,%rcx
    436e:	44 89 e2             	mov    %r12d,%edx
    4371:	89 ee                	mov    %ebp,%esi
    4373:	48 89 df             	mov    %rbx,%rdi
    4376:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    437c:	e8 cf f2 ff ff       	callq  3650 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4381:	e9 87 fe ff ff       	jmpq   420d <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x6d>
    4386:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    438d:	00 00 00 

0000000000004390 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i>:
    4390:	41 55                	push   %r13
    4392:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    4397:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    439b:	41 ff 75 f8          	pushq  -0x8(%r13)
    439f:	55                   	push   %rbp
    43a0:	48 89 e5             	mov    %rsp,%rbp
    43a3:	41 57                	push   %r15
    43a5:	41 56                	push   %r14
    43a7:	41 55                	push   %r13
    43a9:	41 54                	push   %r12
    43ab:	49 89 fd             	mov    %rdi,%r13
    43ae:	53                   	push   %rbx
    43af:	41 89 d4             	mov    %edx,%r12d
    43b2:	89 f3                	mov    %esi,%ebx
    43b4:	49 89 cf             	mov    %rcx,%r15
    43b7:	4d 89 c6             	mov    %r8,%r14
    43ba:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    43c1:	44 89 4d cc          	mov    %r9d,-0x34(%rbp)
    43c5:	e8 56 e8 ff ff       	callq  2c20 <_Z7getTimev>
    43ca:	8b 7d cc             	mov    -0x34(%rbp),%edi
    43cd:	c5 fb 11 45 98       	vmovsd %xmm0,-0x68(%rbp)
    43d2:	85 ff                	test   %edi,%edi
    43d4:	0f 8e 86 02 00 00    	jle    4660 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x2d0>
    43da:	89 de                	mov    %ebx,%esi
    43dc:	89 d9                	mov    %ebx,%ecx
    43de:	8d 14 dd 00 00 00 00 	lea    0x0(,%rbx,8),%edx
    43e5:	c1 e6 05             	shl    $0x5,%esi
    43e8:	89 d8                	mov    %ebx,%eax
    43ea:	c1 e1 04             	shl    $0x4,%ecx
    43ed:	c1 e0 06             	shl    $0x6,%eax
    43f0:	44 8d 4e ff          	lea    -0x1(%rsi),%r9d
    43f4:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    43f8:	89 45 8c             	mov    %eax,-0x74(%rbp)
    43fb:	8d 7a ff             	lea    -0x1(%rdx),%edi
    43fe:	83 e8 01             	sub    $0x1,%eax
    4401:	c1 e8 06             	shr    $0x6,%eax
    4404:	41 c1 e9 05          	shr    $0x5,%r9d
    4408:	41 c1 eb 04          	shr    $0x4,%r11d
    440c:	48 c1 e0 09          	shl    $0x9,%rax
    4410:	49 c1 e1 08          	shl    $0x8,%r9
    4414:	49 c1 e3 07          	shl    $0x7,%r11
    4418:	c1 ef 03             	shr    $0x3,%edi
    441b:	4d 8d 84 05 00 02 00 	lea    0x200(%r13,%rax,1),%r8
    4422:	00 
    4423:	4b 8d 9c 1d 80 00 00 	lea    0x80(%r13,%r11,1),%rbx
    442a:	00 
    442b:	4f 8d 94 0d 00 01 00 	lea    0x100(%r13,%r9,1),%r10
    4432:	00 
    4433:	48 8d 04 fd 08 00 00 	lea    0x8(,%rdi,8),%rax
    443a:	00 
    443b:	89 75 a0             	mov    %esi,-0x60(%rbp)
    443e:	4c 89 f6             	mov    %r14,%rsi
    4441:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
    4445:	4d 89 ee             	mov    %r13,%r14
    4448:	89 4d a4             	mov    %ecx,-0x5c(%rbp)
    444b:	89 55 c8             	mov    %edx,-0x38(%rbp)
    444e:	31 db                	xor    %ebx,%ebx
    4450:	4c 89 45 80          	mov    %r8,-0x80(%rbp)
    4454:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
    4458:	49 89 f5             	mov    %rsi,%r13
    445b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    445f:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    4463:	eb 2d                	jmp    4492 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x102>
    4465:	0f 1f 00             	nopl   (%rax)
    4468:	41 83 fc 10          	cmp    $0x10,%r12d
    446c:	0f 84 4e 03 00 00    	je     47c0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x430>
    4472:	41 83 fc 20          	cmp    $0x20,%r12d
    4476:	0f 84 c4 05 00 00    	je     4a40 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x6b0>
    447c:	41 83 fc 40          	cmp    $0x40,%r12d
    4480:	0f 84 7a 07 00 00    	je     4c00 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x870>
    4486:	83 c3 01             	add    $0x1,%ebx
    4489:	39 5d cc             	cmp    %ebx,-0x34(%rbp)
    448c:	0f 84 c6 01 00 00    	je     4658 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x2c8>
    4492:	0f b6 0d e7 91 20 00 	movzbl 0x2091e7(%rip),%ecx        # 20d680 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4499:	84 c9                	test   %cl,%cl
    449b:	0f 84 cf 02 00 00    	je     4770 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x3e0>
    44a1:	0f b6 15 58 91 20 00 	movzbl 0x209158(%rip),%edx        # 20d600 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    44a8:	84 d2                	test   %dl,%dl
    44aa:	0f 84 70 02 00 00    	je     4720 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x390>
    44b0:	44 0f b6 05 c8 90 20 	movzbl 0x2090c8(%rip),%r8d        # 20d580 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    44b7:	00 
    44b8:	45 84 c0             	test   %r8b,%r8b
    44bb:	0f 84 0f 02 00 00    	je     46d0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x340>
    44c1:	44 0f b6 0d 37 90 20 	movzbl 0x209037(%rip),%r9d        # 20d500 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    44c8:	00 
    44c9:	45 84 c9             	test   %r9b,%r9b
    44cc:	0f 84 ae 01 00 00    	je     4680 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x2f0>
    44d2:	41 83 fc 08          	cmp    $0x8,%r12d
    44d6:	75 90                	jne    4468 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xd8>
    44d8:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
    44dc:	45 85 c0             	test   %r8d,%r8d
    44df:	7e a5                	jle    4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    44e1:	4c 8b 4d c0          	mov    -0x40(%rbp),%r9
    44e5:	62 71 7c 48 28 35 d1 	vmovaps 0x2091d1(%rip),%zmm14        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    44ec:	91 20 00 
    44ef:	45 31 d2             	xor    %r10d,%r10d
    44f2:	b9 03 00 00 00       	mov    $0x3,%ecx
    44f7:	ba 02 00 00 00       	mov    $0x2,%edx
    44fc:	62 51 0c 48 c6 ee b1 	vshufps $0xb1,%zmm14,%zmm14,%zmm13
    4503:	c5 f9 92 f9          	kmovb  %ecx,%k7
    4507:	c5 f9 92 ca          	kmovb  %edx,%k1
    450b:	41 f6 c1 08          	test   $0x8,%r9b
    450f:	74 6f                	je     4580 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x1f0>
    4511:	62 51 7c 48 28 1e    	vmovaps (%r14),%zmm11
    4517:	41 ba 08 00 00 00    	mov    $0x8,%r10d
    451d:	4c 3b 55 c0          	cmp    -0x40(%rbp),%r10
    4521:	62 51 24 48 c6 e3 f5 	vshufps $0xf5,%zmm11,%zmm11,%zmm12
    4528:	62 d1 24 48 c6 e3 a0 	vshufps $0xa0,%zmm11,%zmm11,%zmm4
    452f:	62 51 14 48 59 cc    	vmulps %zmm12,%zmm13,%zmm9
    4535:	62 d2 35 48 96 e6    	vfmaddsub132ps %zmm14,%zmm9,%zmm4
    453b:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
    4542:	c5 74 58 c4          	vaddps %ymm4,%ymm1,%ymm8
    4546:	c4 43 7d 19 c7 01    	vextractf128 $0x1,%ymm8,%xmm15
    454c:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4551:	c5 50 12 d6          	vmovhlps %xmm6,%xmm5,%xmm10
    4555:	62 f1 7c 8f 28 f6    	vmovaps %xmm6,%xmm6{%k7}{z}
    455b:	c5 a8 58 fe          	vaddps %xmm6,%xmm10,%xmm7
    455f:	62 f2 7d 89 8a fb    	vcompressps %xmm7,%xmm3{%k1}{z}
    4565:	c4 c1 7a 11 7d 00    	vmovss %xmm7,0x0(%r13)
    456b:	c4 c1 7a 11 5d 04    	vmovss %xmm3,0x4(%r13)
    4571:	0f 84 0f ff ff ff    	je     4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    457e:	00 00 
    4580:	62 91 7c 48 28 04 d6 	vmovaps (%r14,%r10,8),%zmm0
    4587:	4d 8d 5a 08          	lea    0x8(%r10),%r11
    458b:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    4592:	62 91 7c 48 28 3c de 	vmovaps (%r14,%r11,8),%zmm7
    4599:	62 71 7c 48 c6 d8 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm11
    45a0:	62 f1 44 48 c6 df f5 	vshufps $0xf5,%zmm7,%zmm7,%zmm3
    45a7:	62 71 14 48 59 e2    	vmulps %zmm2,%zmm13,%zmm12
    45ad:	62 f1 14 48 59 d3    	vmulps %zmm3,%zmm13,%zmm2
    45b3:	62 f1 44 48 c6 c7 a0 	vshufps $0xa0,%zmm7,%zmm7,%zmm0
    45ba:	62 52 1d 48 96 de    	vfmaddsub132ps %zmm14,%zmm12,%zmm11
    45c0:	62 73 fd 48 1b dc 01 	vextractf64x4 $0x1,%zmm11,%ymm4
    45c7:	62 d2 6d 48 96 c6    	vfmaddsub132ps %zmm14,%zmm2,%zmm0
    45cd:	c4 41 5c 58 cb       	vaddps %ymm11,%ymm4,%ymm9
    45d2:	62 d3 fd 48 1b c3 01 	vextractf64x4 $0x1,%zmm0,%ymm11
    45d9:	c5 24 58 e0          	vaddps %ymm0,%ymm11,%ymm12
    45dd:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
    45e3:	c4 41 70 58 c1       	vaddps %xmm9,%xmm1,%xmm8
    45e8:	c4 63 7d 19 e4 01    	vextractf128 $0x1,%ymm12,%xmm4
    45ee:	c4 41 58 58 cc       	vaddps %xmm12,%xmm4,%xmm9
    45f3:	c4 41 50 12 f8       	vmovhlps %xmm8,%xmm5,%xmm15
    45f8:	62 51 7c 8f 28 c0    	vmovaps %xmm8,%xmm8{%k7}{z}
    45fe:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4603:	c4 c1 50 12 c9       	vmovhlps %xmm9,%xmm5,%xmm1
    4608:	62 51 7c 8f 28 c9    	vmovaps %xmm9,%xmm9{%k7}{z}
    460e:	c4 41 70 58 c1       	vaddps %xmm9,%xmm1,%xmm8
    4613:	62 d2 7d 89 8a f2    	vcompressps %xmm6,%xmm10{%k1}{z}
    4619:	c4 81 7a 11 74 15 00 	vmovss %xmm6,0x0(%r13,%r10,1)
    4620:	c4 01 7a 11 54 15 04 	vmovss %xmm10,0x4(%r13,%r10,1)
    4627:	62 52 7d 89 8a c7    	vcompressps %xmm8,%xmm15{%k1}{z}
    462d:	c4 01 7a 11 44 15 08 	vmovss %xmm8,0x8(%r13,%r10,1)
    4634:	c4 01 7a 11 7c 15 0c 	vmovss %xmm15,0xc(%r13,%r10,1)
    463b:	49 83 c2 10          	add    $0x10,%r10
    463f:	4d 39 ca             	cmp    %r9,%r10
    4642:	0f 85 38 ff ff ff    	jne    4580 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x1f0>
    4648:	83 c3 01             	add    $0x1,%ebx
    464b:	39 5d cc             	cmp    %ebx,-0x34(%rbp)
    464e:	0f 85 3e fe ff ff    	jne    4492 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x102>
    4654:	0f 1f 40 00          	nopl   0x0(%rax)
    4658:	c5 f8 77             	vzeroupper 
    465b:	c5 fb 10 45 98       	vmovsd -0x68(%rbp),%xmm0
    4660:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    4667:	5b                   	pop    %rbx
    4668:	41 5c                	pop    %r12
    466a:	41 5d                	pop    %r13
    466c:	41 5e                	pop    %r14
    466e:	41 5f                	pop    %r15
    4670:	5d                   	pop    %rbp
    4671:	49 8d 65 f0          	lea    -0x10(%r13),%rsp
    4675:	41 5d                	pop    %r13
    4677:	e9 04 e6 ff ff       	jmpq   2c80 <_Z9timeSinced>
    467c:	0f 1f 40 00          	nopl   0x0(%rax)
    4680:	48 8d 3d 79 8e 20 00 	lea    0x208e79(%rip),%rdi        # 20d500 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    4687:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    468c:	c5 f8 77             	vzeroupper 
    468f:	e8 cc d3 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4694:	85 c0                	test   %eax,%eax
    4696:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    469b:	0f 84 31 fe ff ff    	je     44d2 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x142>
    46a1:	48 8d 3d 58 8e 20 00 	lea    0x208e58(%rip),%rdi        # 20d500 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    46a8:	62 d1 7c 48 28 5f 03 	vmovaps 0xc0(%r15),%zmm3
    46af:	62 f1 7c 48 29 1d 87 	vmovaps %zmm3,0x208e87(%rip)        # 20d540 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    46b6:	8e 20 00 
    46b9:	c5 f8 77             	vzeroupper 
    46bc:	e8 3f d4 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    46c1:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    46c6:	e9 07 fe ff ff       	jmpq   44d2 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x142>
    46cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    46d0:	48 8d 3d a9 8e 20 00 	lea    0x208ea9(%rip),%rdi        # 20d580 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    46d7:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    46dc:	c5 f8 77             	vzeroupper 
    46df:	e8 7c d3 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    46e4:	85 c0                	test   %eax,%eax
    46e6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    46eb:	0f 84 d0 fd ff ff    	je     44c1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x131>
    46f1:	48 8d 3d 88 8e 20 00 	lea    0x208e88(%rip),%rdi        # 20d580 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    46f8:	62 d1 7c 48 28 57 02 	vmovaps 0x80(%r15),%zmm2
    46ff:	62 f1 7c 48 29 15 b7 	vmovaps %zmm2,0x208eb7(%rip)        # 20d5c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4706:	8e 20 00 
    4709:	c5 f8 77             	vzeroupper 
    470c:	e8 ef d3 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4711:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4716:	e9 a6 fd ff ff       	jmpq   44c1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x131>
    471b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4720:	48 8d 3d d9 8e 20 00 	lea    0x208ed9(%rip),%rdi        # 20d600 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4727:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    472c:	c5 f8 77             	vzeroupper 
    472f:	e8 2c d3 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4734:	85 c0                	test   %eax,%eax
    4736:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    473b:	0f 84 6f fd ff ff    	je     44b0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x120>
    4741:	48 8d 3d b8 8e 20 00 	lea    0x208eb8(%rip),%rdi        # 20d600 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4748:	62 d1 7c 48 28 4f 01 	vmovaps 0x40(%r15),%zmm1
    474f:	62 f1 7c 48 29 0d e7 	vmovaps %zmm1,0x208ee7(%rip)        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4756:	8e 20 00 
    4759:	c5 f8 77             	vzeroupper 
    475c:	e8 9f d3 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4761:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4766:	e9 45 fd ff ff       	jmpq   44b0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x120>
    476b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4770:	48 8d 3d 09 8f 20 00 	lea    0x208f09(%rip),%rdi        # 20d680 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4777:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    477c:	c5 f8 77             	vzeroupper 
    477f:	e8 dc d2 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4784:	85 c0                	test   %eax,%eax
    4786:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    478b:	0f 84 10 fd ff ff    	je     44a1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x111>
    4791:	48 8d 3d e8 8e 20 00 	lea    0x208ee8(%rip),%rdi        # 20d680 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4798:	62 d1 7c 48 28 07    	vmovaps (%r15),%zmm0
    479e:	62 f1 7c 48 29 05 18 	vmovaps %zmm0,0x208f18(%rip)        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    47a5:	8f 20 00 
    47a8:	c5 f8 77             	vzeroupper 
    47ab:	e8 50 d3 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    47b0:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    47b5:	e9 e7 fc ff ff       	jmpq   44a1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x111>
    47ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    47c0:	8b 55 a4             	mov    -0x5c(%rbp),%edx
    47c3:	85 d2                	test   %edx,%edx
    47c5:	0f 8e bb fc ff ff    	jle    4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    47cb:	4c 8b 5d a8          	mov    -0x58(%rbp),%r11
    47cf:	62 71 7c 48 28 35 67 	vmovaps 0x208e67(%rip),%zmm14        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    47d6:	8e 20 00 
    47d9:	41 b9 03 00 00 00    	mov    $0x3,%r9d
    47df:	62 71 7c 48 28 2d d7 	vmovaps 0x208ed7(%rip),%zmm13        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    47e6:	8e 20 00 
    47e9:	41 ba 02 00 00 00    	mov    $0x2,%r10d
    47ef:	4c 89 f0             	mov    %r14,%rax
    47f2:	4c 89 ee             	mov    %r13,%rsi
    47f5:	62 51 0c 48 c6 de b1 	vshufps $0xb1,%zmm14,%zmm14,%zmm11
    47fc:	c4 c1 79 92 e9       	kmovb  %r9d,%k5
    4801:	4c 89 df             	mov    %r11,%rdi
    4804:	62 51 14 48 c6 e5 b1 	vshufps $0xb1,%zmm13,%zmm13,%zmm12
    480b:	c4 c1 79 92 f2       	kmovb  %r10d,%k6
    4810:	4c 29 f7             	sub    %r14,%rdi
    4813:	81 e7 80 00 00 00    	and    $0x80,%edi
    4819:	0f 84 c1 00 00 00    	je     48e0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x550>
    481f:	62 d1 7c 48 28 76 01 	vmovaps 0x40(%r14),%zmm6
    4826:	49 8d 86 80 00 00 00 	lea    0x80(%r14),%rax
    482d:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
    4831:	62 d1 7c 48 28 06    	vmovaps (%r14),%zmm0
    4837:	49 8d 75 08          	lea    0x8(%r13),%rsi
    483b:	62 71 4c 48 c6 d6 f5 	vshufps $0xf5,%zmm6,%zmm6,%zmm10
    4842:	62 f1 4c 48 c6 e6 a0 	vshufps $0xa0,%zmm6,%zmm6,%zmm4
    4849:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    4850:	62 d1 24 48 59 ca    	vmulps %zmm10,%zmm11,%zmm1
    4856:	62 71 7c 48 c6 d0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm10
    485d:	62 d2 75 48 96 e6    	vfmaddsub132ps %zmm14,%zmm1,%zmm4
    4863:	62 f3 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm4,%ymm7
    486a:	c5 44 58 cc          	vaddps %ymm4,%ymm7,%ymm9
    486e:	62 f1 1c 48 59 e2    	vmulps %zmm2,%zmm12,%zmm4
    4874:	c4 43 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm8
    487a:	62 52 5d 48 96 d5    	vfmaddsub132ps %zmm13,%zmm4,%zmm10
    4880:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
    4887:	c4 41 38 58 f9       	vaddps %xmm9,%xmm8,%xmm15
    488c:	c4 c1 74 58 fa       	vaddps %ymm10,%ymm1,%ymm7
    4891:	62 d1 7c 8d 28 df    	vmovaps %xmm15,%xmm3{%k5}{z}
    4897:	c4 c1 50 12 f7       	vmovhlps %xmm15,%xmm5,%xmm6
    489c:	c4 c3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm9
    48a2:	c5 c8 58 f3          	vaddps %xmm3,%xmm6,%xmm6
    48a6:	c5 30 58 c7          	vaddps %xmm7,%xmm9,%xmm8
    48aa:	c4 41 50 12 f8       	vmovhlps %xmm8,%xmm5,%xmm15
    48af:	62 51 7c 8d 28 c0    	vmovaps %xmm8,%xmm8{%k5}{z}
    48b5:	c4 c1 00 58 d8       	vaddps %xmm8,%xmm15,%xmm3
    48ba:	c5 c8 58 c3          	vaddps %xmm3,%xmm6,%xmm0
    48be:	62 f2 7d 8e 8a c2    	vcompressps %xmm0,%xmm2{%k6}{z}
    48c4:	c4 c1 7a 11 45 00    	vmovss %xmm0,0x0(%r13)
    48ca:	c4 c1 7a 11 55 04    	vmovss %xmm2,0x4(%r13)
    48d0:	0f 84 b0 fb ff ff    	je     4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    48d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    48dd:	00 00 00 
    48e0:	62 71 7c 48 28 50 01 	vmovaps 0x40(%rax),%zmm10
    48e7:	48 05 00 01 00 00    	add    $0x100,%rax
    48ed:	48 83 c6 10          	add    $0x10,%rsi
    48f1:	62 f1 7c 48 28 40 fc 	vmovaps -0x100(%rax),%zmm0
    48f8:	62 d1 2c 48 c6 e2 f5 	vshufps $0xf5,%zmm10,%zmm10,%zmm4
    48ff:	62 d1 2c 48 c6 fa a0 	vshufps $0xa0,%zmm10,%zmm10,%zmm7
    4906:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    490d:	62 f1 24 48 59 cc    	vmulps %zmm4,%zmm11,%zmm1
    4913:	62 f1 7c 48 c6 e0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm4
    491a:	62 d2 75 48 96 fe    	vfmaddsub132ps %zmm14,%zmm1,%zmm7
    4920:	62 d3 fd 48 1b f9 01 	vextractf64x4 $0x1,%zmm7,%ymm9
    4927:	c5 34 58 c7          	vaddps %ymm7,%ymm9,%ymm8
    492b:	62 f1 1c 48 59 fa    	vmulps %zmm2,%zmm12,%zmm7
    4931:	c4 43 7d 19 c7 01    	vextractf128 $0x1,%ymm8,%xmm15
    4937:	62 d2 45 48 96 e5    	vfmaddsub132ps %zmm13,%zmm7,%zmm4
    493d:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
    4944:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4949:	c5 74 58 cc          	vaddps %ymm4,%ymm1,%ymm9
    494d:	62 f1 7c 48 28 60 ff 	vmovaps -0x40(%rax),%zmm4
    4954:	62 f1 5c 48 c6 fc f5 	vshufps $0xf5,%zmm4,%zmm4,%zmm7
    495b:	62 f1 7c 8d 28 de    	vmovaps %xmm6,%xmm3{%k5}{z}
    4961:	c5 50 12 d6          	vmovhlps %xmm6,%xmm5,%xmm10
    4965:	c4 43 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm8
    496b:	c5 28 58 d3          	vaddps %xmm3,%xmm10,%xmm10
    496f:	62 f1 24 48 59 cf    	vmulps %zmm7,%zmm11,%zmm1
    4975:	c4 41 38 58 f9       	vaddps %xmm9,%xmm8,%xmm15
    497a:	62 71 5c 48 c6 cc a0 	vshufps $0xa0,%zmm4,%zmm4,%zmm9
    4981:	62 52 75 48 96 ce    	vfmaddsub132ps %zmm14,%zmm1,%zmm9
    4987:	62 53 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm8
    498e:	c4 c1 50 12 f7       	vmovhlps %xmm15,%xmm5,%xmm6
    4993:	62 51 7c 8d 28 ff    	vmovaps %xmm15,%xmm15{%k5}{z}
    4999:	c4 c1 48 58 df       	vaddps %xmm15,%xmm6,%xmm3
    499e:	c4 41 3c 58 f9       	vaddps %ymm9,%ymm8,%ymm15
    49a3:	c5 a8 58 c3          	vaddps %xmm3,%xmm10,%xmm0
    49a7:	c4 63 7d 19 fe 01    	vextractf128 $0x1,%ymm15,%xmm6
    49ad:	62 f2 7d 8e 8a c2    	vcompressps %xmm0,%xmm2{%k6}{z}
    49b3:	c5 fa 11 46 f0       	vmovss %xmm0,-0x10(%rsi)
    49b8:	62 f1 7c 48 28 40 fe 	vmovaps -0x80(%rax),%zmm0
    49bf:	c4 41 48 58 d7       	vaddps %xmm15,%xmm6,%xmm10
    49c4:	c5 fa 11 56 f4       	vmovss %xmm2,-0xc(%rsi)
    49c9:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    49d0:	62 f1 7c 48 c6 e0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm4
    49d7:	62 71 1c 48 59 ca    	vmulps %zmm2,%zmm12,%zmm9
    49dd:	62 d1 7c 8d 28 da    	vmovaps %xmm10,%xmm3{%k5}{z}
    49e3:	c4 c1 50 12 fa       	vmovhlps %xmm10,%xmm5,%xmm7
    49e8:	c5 c0 58 fb          	vaddps %xmm3,%xmm7,%xmm7
    49ec:	62 d2 35 48 96 e5    	vfmaddsub132ps %zmm13,%zmm9,%zmm4
    49f2:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
    49f9:	c5 74 58 c4          	vaddps %ymm4,%ymm1,%ymm8
    49fd:	c4 43 7d 19 c7 01    	vextractf128 $0x1,%ymm8,%xmm15
    4a03:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4a08:	c5 50 12 d6          	vmovhlps %xmm6,%xmm5,%xmm10
    4a0c:	62 f1 7c 8d 28 f6    	vmovaps %xmm6,%xmm6{%k5}{z}
    4a12:	c5 a8 58 de          	vaddps %xmm6,%xmm10,%xmm3
    4a16:	c5 c0 58 c3          	vaddps %xmm3,%xmm7,%xmm0
    4a1a:	62 f2 7d 8e 8a c2    	vcompressps %xmm0,%xmm2{%k6}{z}
    4a20:	c5 fa 11 46 f8       	vmovss %xmm0,-0x8(%rsi)
    4a25:	c5 fa 11 56 fc       	vmovss %xmm2,-0x4(%rsi)
    4a2a:	49 39 c3             	cmp    %rax,%r11
    4a2d:	0f 85 ad fe ff ff    	jne    48e0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x550>
    4a33:	e9 4e fa ff ff       	jmpq   4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4a3f:	00 
    4a40:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
    4a44:	45 85 db             	test   %r11d,%r11d
    4a47:	0f 8e 39 fa ff ff    	jle    4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4a4d:	62 71 7c 48 28 1d e9 	vmovaps 0x208ae9(%rip),%zmm11        # 20d540 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    4a54:	8a 20 00 
    4a57:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    4a5b:	be 03 00 00 00       	mov    $0x3,%esi
    4a60:	62 71 7c 48 28 35 56 	vmovaps 0x208b56(%rip),%zmm14        # 20d5c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4a67:	8b 20 00 
    4a6a:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    4a70:	4c 89 f7             	mov    %r14,%rdi
    4a73:	62 71 7c 48 28 2d c3 	vmovaps 0x208bc3(%rip),%zmm13        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4a7a:	8b 20 00 
    4a7d:	62 41 24 48 c6 c3 b1 	vshufps $0xb1,%zmm11,%zmm11,%zmm24
    4a84:	c5 f9 92 de          	kmovb  %esi,%k3
    4a88:	62 71 7c 48 28 25 2e 	vmovaps 0x208c2e(%rip),%zmm12        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4a8f:	8c 20 00 
    4a92:	62 c1 0c 48 c6 fe b1 	vshufps $0xb1,%zmm14,%zmm14,%zmm23
    4a99:	c4 c1 79 92 e0       	kmovb  %r8d,%k4
    4a9e:	62 c1 14 48 c6 f5 b1 	vshufps $0xb1,%zmm13,%zmm13,%zmm22
    4aa5:	4c 89 e8             	mov    %r13,%rax
    4aa8:	62 c1 1c 48 c6 ec b1 	vshufps $0xb1,%zmm12,%zmm12,%zmm21
    4aaf:	90                   	nop
    4ab0:	62 f1 7c 48 28 5f 03 	vmovaps 0xc0(%rdi),%zmm3
    4ab7:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    4abe:	48 83 c0 08          	add    $0x8,%rax
    4ac2:	62 f1 7c 48 28 47 fe 	vmovaps -0x80(%rdi),%zmm0
    4ac9:	62 f1 64 48 c6 cb f5 	vshufps $0xf5,%zmm3,%zmm3,%zmm1
    4ad0:	62 71 64 48 c6 c3 a0 	vshufps $0xa0,%zmm3,%zmm3,%zmm8
    4ad7:	62 f1 7c 48 c6 d8 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm3
    4ade:	62 f1 3c 40 59 f9    	vmulps %zmm1,%zmm24,%zmm7
    4ae4:	62 f1 44 40 59 cb    	vmulps %zmm3,%zmm23,%zmm1
    4aea:	62 52 45 48 96 c3    	vfmaddsub132ps %zmm11,%zmm7,%zmm8
    4af0:	62 73 fd 48 1b c6 01 	vextractf64x4 $0x1,%zmm8,%ymm6
    4af7:	c4 c1 4c 58 e0       	vaddps %ymm8,%ymm6,%ymm4
    4afc:	62 71 7c 48 c6 c0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm8
    4b03:	62 52 75 48 96 c6    	vfmaddsub132ps %zmm14,%zmm1,%zmm8
    4b09:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
    4b10:	c4 c3 7d 19 e2 01    	vextractf128 $0x1,%ymm4,%xmm10
    4b16:	c4 c1 44 58 f0       	vaddps %ymm8,%ymm7,%ymm6
    4b1b:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
    4b1f:	c4 e3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm4
    4b25:	62 d1 7c 8b 28 d1    	vmovaps %xmm9,%xmm2{%k3}{z}
    4b2b:	c4 41 50 12 f9       	vmovhlps %xmm9,%xmm5,%xmm15
    4b30:	62 71 7c 48 28 4f fd 	vmovaps -0xc0(%rdi),%zmm9
    4b37:	c5 58 58 d6          	vaddps %xmm6,%xmm4,%xmm10
    4b3b:	62 d1 34 48 c6 c9 f5 	vshufps $0xf5,%zmm9,%zmm9,%zmm1
    4b42:	62 d1 34 48 c6 c1 a0 	vshufps $0xa0,%zmm9,%zmm9,%zmm0
    4b49:	c5 00 58 fa          	vaddps %xmm2,%xmm15,%xmm15
    4b4d:	62 f1 4c 40 59 f9    	vmulps %zmm1,%zmm22,%zmm7
    4b53:	62 d1 7c 8b 28 da    	vmovaps %xmm10,%xmm3{%k3}{z}
    4b59:	c4 41 50 12 c2       	vmovhlps %xmm10,%xmm5,%xmm8
    4b5e:	c5 38 58 c3          	vaddps %xmm3,%xmm8,%xmm8
    4b62:	62 d2 45 48 96 c5    	vfmaddsub132ps %zmm13,%zmm7,%zmm0
    4b68:	62 f3 fd 48 1b c6 01 	vextractf64x4 $0x1,%zmm0,%ymm6
    4b6f:	c5 4c 58 d0          	vaddps %ymm0,%ymm6,%ymm10
    4b73:	62 f1 7c 48 28 47 fc 	vmovaps -0x100(%rdi),%zmm0
    4b7a:	62 f1 7c 48 c6 f0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm6
    4b81:	c4 63 7d 19 d4 01    	vextractf128 $0x1,%ymm10,%xmm4
    4b87:	c4 41 58 58 ca       	vaddps %xmm10,%xmm4,%xmm9
    4b8c:	62 f1 54 40 59 e6    	vmulps %zmm6,%zmm21,%zmm4
    4b92:	62 71 7c 48 c6 d0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm10
    4b99:	62 d1 7c 8b 28 f9    	vmovaps %xmm9,%xmm7{%k3}{z}
    4b9f:	62 52 5d 48 96 d4    	vfmaddsub132ps %zmm12,%zmm4,%zmm10
    4ba5:	c4 c1 50 12 c9       	vmovhlps %xmm9,%xmm5,%xmm1
    4baa:	62 53 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm9
    4bb1:	c5 f0 58 cf          	vaddps %xmm7,%xmm1,%xmm1
    4bb5:	c4 c1 34 58 c2       	vaddps %ymm10,%ymm9,%ymm0
    4bba:	c4 e3 7d 19 c6 01    	vextractf128 $0x1,%ymm0,%xmm6
    4bc0:	c5 48 58 d0          	vaddps %xmm0,%xmm6,%xmm10
    4bc4:	c4 c1 50 12 e2       	vmovhlps %xmm10,%xmm5,%xmm4
    4bc9:	62 51 7c 8b 28 d2    	vmovaps %xmm10,%xmm10{%k3}{z}
    4bcf:	c4 c1 58 58 fa       	vaddps %xmm10,%xmm4,%xmm7
    4bd4:	c5 70 58 cf          	vaddps %xmm7,%xmm1,%xmm9
    4bd8:	c4 c1 30 58 d8       	vaddps %xmm8,%xmm9,%xmm3
    4bdd:	c4 c1 60 58 d7       	vaddps %xmm15,%xmm3,%xmm2
    4be2:	62 f2 7d 8c 8a d0    	vcompressps %xmm2,%xmm0{%k4}{z}
    4be8:	c5 fa 11 50 f8       	vmovss %xmm2,-0x8(%rax)
    4bed:	c5 fa 11 40 fc       	vmovss %xmm0,-0x4(%rax)
    4bf2:	48 39 f9             	cmp    %rdi,%rcx
    4bf5:	0f 85 b5 fe ff ff    	jne    4ab0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x720>
    4bfb:	e9 86 f8 ff ff       	jmpq   4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4c00:	44 0f b6 15 78 88 20 	movzbl 0x208878(%rip),%r10d        # 20d480 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4c07:	00 
    4c08:	45 84 d2             	test   %r10b,%r10b
    4c0b:	0f 84 7f 03 00 00    	je     4f90 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xc00>
    4c11:	44 0f b6 1d e7 87 20 	movzbl 0x2087e7(%rip),%r11d        # 20d400 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4c18:	00 
    4c19:	45 84 db             	test   %r11b,%r11b
    4c1c:	0f 84 5e 04 00 00    	je     5080 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xcf0>
    4c22:	0f b6 3d 57 87 20 00 	movzbl 0x208757(%rip),%edi        # 20d380 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4c29:	40 84 ff             	test   %dil,%dil
    4c2c:	0f 84 fe 03 00 00    	je     5030 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xca0>
    4c32:	0f b6 05 c7 86 20 00 	movzbl 0x2086c7(%rip),%eax        # 20d300 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4c39:	84 c0                	test   %al,%al
    4c3b:	0f 84 9f 03 00 00    	je     4fe0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xc50>
    4c41:	8b 75 8c             	mov    -0x74(%rbp),%esi
    4c44:	85 f6                	test   %esi,%esi
    4c46:	0f 8e 3a f8 ff ff    	jle    4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4c4c:	62 61 7c 48 28 05 ea 	vmovaps 0x2086ea(%rip),%zmm24        # 20d340 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4c53:	86 20 00 
    4c56:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
    4c5a:	ba 03 00 00 00       	mov    $0x3,%edx
    4c5f:	62 e1 7c 48 28 3d 57 	vmovaps 0x208757(%rip),%zmm23        # 20d3c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4c66:	87 20 00 
    4c69:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    4c6f:	4d 89 f0             	mov    %r14,%r8
    4c72:	62 e1 7c 48 28 35 c4 	vmovaps 0x2087c4(%rip),%zmm22        # 20d440 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4c79:	87 20 00 
    4c7c:	62 01 3c 40 c6 f8 b1 	vshufps $0xb1,%zmm24,%zmm24,%zmm31
    4c83:	c5 f9 92 ca          	kmovb  %edx,%k1
    4c87:	62 e1 7c 48 28 2d 2f 	vmovaps 0x20882f(%rip),%zmm21        # 20d4c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4c8e:	88 20 00 
    4c91:	62 21 44 40 c6 f7 b1 	vshufps $0xb1,%zmm23,%zmm23,%zmm30
    4c98:	c4 c1 79 92 d1       	kmovb  %r9d,%k2
    4c9d:	62 e1 7c 48 28 25 99 	vmovaps 0x208899(%rip),%zmm20        # 20d540 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    4ca4:	88 20 00 
    4ca7:	62 21 4c 40 c6 ee b1 	vshufps $0xb1,%zmm22,%zmm22,%zmm29
    4cae:	62 e1 7c 48 28 1d 08 	vmovaps 0x208908(%rip),%zmm19        # 20d5c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4cb5:	89 20 00 
    4cb8:	62 21 54 40 c6 e5 b1 	vshufps $0xb1,%zmm21,%zmm21,%zmm28
    4cbf:	62 e1 7c 48 28 15 77 	vmovaps 0x208977(%rip),%zmm18        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4cc6:	89 20 00 
    4cc9:	62 21 5c 40 c6 dc b1 	vshufps $0xb1,%zmm20,%zmm20,%zmm27
    4cd0:	62 e1 7c 48 28 0d e6 	vmovaps 0x2089e6(%rip),%zmm17        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4cd7:	89 20 00 
    4cda:	62 21 64 40 c6 d3 b1 	vshufps $0xb1,%zmm19,%zmm19,%zmm26
    4ce1:	62 21 6c 40 c6 ca b1 	vshufps $0xb1,%zmm18,%zmm18,%zmm25
    4ce8:	4c 89 e9             	mov    %r13,%rcx
    4ceb:	62 b1 74 40 c6 d9 b1 	vshufps $0xb1,%zmm17,%zmm17,%zmm3
    4cf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4cf8:	62 51 7c 48 28 40 07 	vmovaps 0x1c0(%r8),%zmm8
    4cff:	62 a1 7c 00 57 c0    	vxorps %xmm16,%xmm16,%xmm16
    4d05:	62 d1 7c 48 28 40 06 	vmovaps 0x180(%r8),%zmm0
    4d0c:	49 81 c0 00 02 00 00 	add    $0x200,%r8
    4d13:	48 83 c1 08          	add    $0x8,%rcx
    4d17:	62 51 3c 48 c6 c8 f5 	vshufps $0xf5,%zmm8,%zmm8,%zmm9
    4d1e:	62 f1 7c 48 c6 c8 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm1
    4d25:	62 51 3c 48 c6 d0 a0 	vshufps $0xa0,%zmm8,%zmm8,%zmm10
    4d2c:	62 51 04 40 59 d9    	vmulps %zmm9,%zmm31,%zmm11
    4d32:	62 f1 0c 40 59 d1    	vmulps %zmm1,%zmm30,%zmm2
    4d38:	62 f1 7c 48 c6 e0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm4
    4d3f:	62 12 25 48 96 d0    	vfmaddsub132ps %zmm24,%zmm11,%zmm10
    4d45:	62 53 fd 48 1b d4 01 	vextractf64x4 $0x1,%zmm10,%ymm12
    4d4c:	62 b2 6d 48 96 e7    	vfmaddsub132ps %zmm23,%zmm2,%zmm4
    4d52:	62 f3 fd 48 1b e6 01 	vextractf64x4 $0x1,%zmm4,%ymm6
    4d59:	c4 41 1c 58 ea       	vaddps %ymm10,%ymm12,%ymm13
    4d5e:	62 51 7c 48 28 60 fd 	vmovaps -0xc0(%r8),%zmm12
    4d65:	c5 cc 58 fc          	vaddps %ymm4,%ymm6,%ymm7
    4d69:	c4 43 7d 19 ee 01    	vextractf128 $0x1,%ymm13,%xmm14
    4d6f:	c4 c3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm8
    4d75:	c4 41 08 58 fd       	vaddps %xmm13,%xmm14,%xmm15
    4d7a:	62 51 1c 48 c6 ec f5 	vshufps $0xf5,%zmm12,%zmm12,%zmm13
    4d81:	62 51 1c 48 c6 f4 a0 	vshufps $0xa0,%zmm12,%zmm12,%zmm14
    4d88:	c5 38 58 df          	vaddps %xmm7,%xmm8,%xmm11
    4d8c:	62 d1 7c 48 28 78 fc 	vmovaps -0x100(%r8),%zmm7
    4d93:	62 71 44 48 c6 c7 f5 	vshufps $0xf5,%zmm7,%zmm7,%zmm8
    4d9a:	62 c1 7c 09 28 c7    	vmovaps %xmm15,%xmm16{%k1}
    4da0:	c4 41 50 12 cf       	vmovhlps %xmm15,%xmm5,%xmm9
    4da5:	62 51 14 40 59 fd    	vmulps %zmm13,%zmm29,%zmm15
    4dab:	62 d1 7c 89 28 d3    	vmovaps %xmm11,%xmm2{%k1}{z}
    4db1:	62 51 1c 40 59 e8    	vmulps %zmm8,%zmm28,%zmm13
    4db7:	c4 41 50 12 d3       	vmovhlps %xmm11,%xmm5,%xmm10
    4dbc:	62 e1 7c 08 29 45 fb 	vmovaps %xmm16,-0x50(%rbp)
    4dc3:	62 71 44 48 c6 e7 a0 	vshufps $0xa0,%zmm7,%zmm7,%zmm12
    4dca:	62 32 05 48 96 f6    	vfmaddsub132ps %zmm22,%zmm15,%zmm14
    4dd0:	62 73 fd 48 1b f0 01 	vextractf64x4 $0x1,%zmm14,%ymm0
    4dd7:	c5 28 58 d2          	vaddps %xmm2,%xmm10,%xmm10
    4ddb:	62 32 15 48 96 e5    	vfmaddsub132ps %zmm21,%zmm13,%zmm12
    4de1:	62 d1 7c 48 28 78 fb 	vmovaps -0x140(%r8),%zmm7
    4de8:	c4 c1 7c 58 ce       	vaddps %ymm14,%ymm0,%ymm1
    4ded:	62 53 fd 48 1b e6 01 	vextractf64x4 $0x1,%zmm12,%ymm14
    4df4:	62 71 44 48 c6 c7 f5 	vshufps $0xf5,%zmm7,%zmm7,%zmm8
    4dfb:	62 c1 7c 48 28 40 f8 	vmovaps -0x200(%r8),%zmm16
    4e02:	62 71 44 48 c6 ef a0 	vshufps $0xa0,%zmm7,%zmm7,%zmm13
    4e09:	c4 41 0c 58 fc       	vaddps %ymm12,%ymm14,%ymm15
    4e0e:	62 51 24 40 59 f0    	vmulps %zmm8,%zmm27,%zmm14
    4e14:	c5 30 58 4d b0       	vaddps -0x50(%rbp),%xmm9,%xmm9
    4e19:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
    4e1f:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
    4e25:	c5 d8 58 f1          	vaddps %xmm1,%xmm4,%xmm6
    4e29:	62 32 0d 48 96 ec    	vfmaddsub132ps %zmm20,%zmm14,%zmm13
    4e2f:	62 51 7c 48 28 70 fa 	vmovaps -0x180(%r8),%zmm14
    4e36:	c4 c1 78 58 cf       	vaddps %xmm15,%xmm0,%xmm1
    4e3b:	62 53 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm15
    4e42:	62 f1 7c 89 28 e6    	vmovaps %xmm6,%xmm4{%k1}{z}
    4e48:	c4 c1 04 58 c5       	vaddps %ymm13,%ymm15,%ymm0
    4e4d:	c5 50 12 de          	vmovhlps %xmm6,%xmm5,%xmm11
    4e51:	62 51 0c 48 c6 fe f5 	vshufps $0xf5,%zmm14,%zmm14,%zmm15
    4e58:	62 f1 7c 89 28 f1    	vmovaps %xmm1,%xmm6{%k1}{z}
    4e5e:	c5 50 12 e1          	vmovhlps %xmm1,%xmm5,%xmm12
    4e62:	c5 20 58 dc          	vaddps %xmm4,%xmm11,%xmm11
    4e66:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
    4e6c:	c5 18 58 e6          	vaddps %xmm6,%xmm12,%xmm12
    4e70:	c5 70 58 c0          	vaddps %xmm0,%xmm1,%xmm8
    4e74:	62 d1 2c 40 59 cf    	vmulps %zmm15,%zmm26,%zmm1
    4e7a:	62 d1 0c 48 c6 c6 a0 	vshufps $0xa0,%zmm14,%zmm14,%zmm0
    4e81:	62 d1 7c 89 28 f8    	vmovaps %xmm8,%xmm7{%k1}{z}
    4e87:	62 b2 75 48 96 c3    	vfmaddsub132ps %zmm19,%zmm1,%zmm0
    4e8d:	c4 41 50 12 e8       	vmovhlps %xmm8,%xmm5,%xmm13
    4e92:	62 d3 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm0,%ymm8
    4e99:	c5 10 58 ef          	vaddps %xmm7,%xmm13,%xmm13
    4e9d:	c5 3c 58 f0          	vaddps %ymm0,%ymm8,%ymm14
    4ea1:	c4 43 7d 19 f7 01    	vextractf128 $0x1,%ymm14,%xmm15
    4ea7:	c4 c1 00 58 c6       	vaddps %xmm14,%xmm15,%xmm0
    4eac:	62 51 7c 48 28 78 f9 	vmovaps -0x1c0(%r8),%zmm15
    4eb3:	62 d1 04 48 c6 cf f5 	vshufps $0xf5,%zmm15,%zmm15,%zmm1
    4eba:	62 71 7c 89 28 c0    	vmovaps %xmm0,%xmm8{%k1}{z}
    4ec0:	c5 50 12 f0          	vmovhlps %xmm0,%xmm5,%xmm14
    4ec4:	62 d1 04 48 c6 c7 a0 	vshufps $0xa0,%zmm15,%zmm15,%zmm0
    4ecb:	62 71 34 40 59 f9    	vmulps %zmm1,%zmm25,%zmm15
    4ed1:	c4 41 08 58 f0       	vaddps %xmm8,%xmm14,%xmm14
    4ed6:	62 b2 05 48 96 c2    	vfmaddsub132ps %zmm18,%zmm15,%zmm0
    4edc:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
    4ee3:	c5 f4 58 c0          	vaddps %ymm0,%ymm1,%ymm0
    4ee7:	62 b1 7c 40 c6 c8 f5 	vshufps $0xf5,%zmm16,%zmm16,%zmm1
    4eee:	62 a1 7c 40 c6 c0 a0 	vshufps $0xa0,%zmm16,%zmm16,%zmm16
    4ef5:	62 f1 64 48 59 c9    	vmulps %zmm1,%zmm3,%zmm1
    4efb:	c4 c3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm15
    4f01:	62 b2 7d 40 b6 c9    	vfmaddsub231ps %zmm17,%zmm16,%zmm1
    4f07:	62 b3 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm1,%ymm16
    4f0e:	c5 80 58 c0          	vaddps %xmm0,%xmm15,%xmm0
    4f12:	62 f1 7c 20 58 c9    	vaddps %ymm1,%ymm16,%ymm1
    4f18:	c5 50 12 f8          	vmovhlps %xmm0,%xmm5,%xmm15
    4f1c:	62 f1 7c 89 28 c0    	vmovaps %xmm0,%xmm0{%k1}{z}
    4f22:	62 b3 7d 28 19 c8 01 	vextractf32x4 $0x1,%ymm1,%xmm16
    4f29:	c5 80 58 c0          	vaddps %xmm0,%xmm15,%xmm0
    4f2d:	62 f1 7c 00 58 c9    	vaddps %xmm1,%xmm16,%xmm1
    4f33:	62 e1 54 08 12 c1    	vmovhlps %xmm1,%xmm5,%xmm16
    4f39:	62 f1 7c 89 28 c9    	vmovaps %xmm1,%xmm1{%k1}{z}
    4f3f:	62 71 7c 00 58 f9    	vaddps %xmm1,%xmm16,%xmm15
    4f45:	c4 c1 78 58 cf       	vaddps %xmm15,%xmm0,%xmm1
    4f4a:	c4 41 70 58 c6       	vaddps %xmm14,%xmm1,%xmm8
    4f4f:	c4 c1 38 58 fd       	vaddps %xmm13,%xmm8,%xmm7
    4f54:	c4 c1 40 58 f4       	vaddps %xmm12,%xmm7,%xmm6
    4f59:	c4 c1 48 58 e3       	vaddps %xmm11,%xmm6,%xmm4
    4f5e:	c4 c1 58 58 d2       	vaddps %xmm10,%xmm4,%xmm2
    4f63:	c4 41 68 58 f9       	vaddps %xmm9,%xmm2,%xmm15
    4f68:	62 72 7d 8a 8a f8    	vcompressps %xmm15,%xmm0{%k2}{z}
    4f6e:	c5 7a 11 79 f8       	vmovss %xmm15,-0x8(%rcx)
    4f73:	c5 fa 11 41 fc       	vmovss %xmm0,-0x4(%rcx)
    4f78:	4d 39 c2             	cmp    %r8,%r10
    4f7b:	0f 85 77 fd ff ff    	jne    4cf8 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x968>
    4f81:	e9 00 f5 ff ff       	jmpq   4486 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4f86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4f8d:	00 00 00 
    4f90:	48 8d 3d e9 84 20 00 	lea    0x2084e9(%rip),%rdi        # 20d480 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4f97:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    4f9c:	c5 f8 77             	vzeroupper 
    4f9f:	e8 bc ca ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4fa4:	85 c0                	test   %eax,%eax
    4fa6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4fab:	0f 84 60 fc ff ff    	je     4c11 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x881>
    4fb1:	48 8d 3d c8 84 20 00 	lea    0x2084c8(%rip),%rdi        # 20d480 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4fb8:	62 d1 7c 48 28 67 04 	vmovaps 0x100(%r15),%zmm4
    4fbf:	62 f1 7c 48 29 25 f7 	vmovaps %zmm4,0x2084f7(%rip)        # 20d4c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4fc6:	84 20 00 
    4fc9:	c5 f8 77             	vzeroupper 
    4fcc:	e8 2f cb ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4fd1:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4fd6:	e9 36 fc ff ff       	jmpq   4c11 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x881>
    4fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4fe0:	48 8d 3d 19 83 20 00 	lea    0x208319(%rip),%rdi        # 20d300 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4fe7:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    4fec:	c5 f8 77             	vzeroupper 
    4fef:	e8 6c ca ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4ff4:	85 c0                	test   %eax,%eax
    4ff6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4ffb:	0f 84 40 fc ff ff    	je     4c41 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8b1>
    5001:	48 8d 3d f8 82 20 00 	lea    0x2082f8(%rip),%rdi        # 20d300 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    5008:	62 d1 7c 48 28 7f 07 	vmovaps 0x1c0(%r15),%zmm7
    500f:	62 f1 7c 48 29 3d 27 	vmovaps %zmm7,0x208327(%rip)        # 20d340 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    5016:	83 20 00 
    5019:	c5 f8 77             	vzeroupper 
    501c:	e8 df ca ff ff       	callq  1b00 <__cxa_guard_release@plt>
    5021:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    5026:	e9 16 fc ff ff       	jmpq   4c41 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8b1>
    502b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5030:	48 8d 3d 49 83 20 00 	lea    0x208349(%rip),%rdi        # 20d380 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    5037:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    503c:	c5 f8 77             	vzeroupper 
    503f:	e8 1c ca ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    5044:	85 c0                	test   %eax,%eax
    5046:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    504b:	0f 84 e1 fb ff ff    	je     4c32 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8a2>
    5051:	48 8d 3d 28 83 20 00 	lea    0x208328(%rip),%rdi        # 20d380 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    5058:	62 d1 7c 48 28 77 06 	vmovaps 0x180(%r15),%zmm6
    505f:	62 f1 7c 48 29 35 57 	vmovaps %zmm6,0x208357(%rip)        # 20d3c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    5066:	83 20 00 
    5069:	c5 f8 77             	vzeroupper 
    506c:	e8 8f ca ff ff       	callq  1b00 <__cxa_guard_release@plt>
    5071:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    5076:	e9 b7 fb ff ff       	jmpq   4c32 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8a2>
    507b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5080:	48 8d 3d 79 83 20 00 	lea    0x208379(%rip),%rdi        # 20d400 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    5087:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    508c:	c5 f8 77             	vzeroupper 
    508f:	e8 cc c9 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    5094:	85 c0                	test   %eax,%eax
    5096:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    509b:	0f 84 81 fb ff ff    	je     4c22 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x892>
    50a1:	48 8d 3d 58 83 20 00 	lea    0x208358(%rip),%rdi        # 20d400 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    50a8:	62 d1 7c 48 28 6f 05 	vmovaps 0x140(%r15),%zmm5
    50af:	62 f1 7c 48 29 2d 87 	vmovaps %zmm5,0x208387(%rip)        # 20d440 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    50b6:	83 20 00 
    50b9:	c5 f8 77             	vzeroupper 
    50bc:	e8 3f ca ff ff       	callq  1b00 <__cxa_guard_release@plt>
    50c1:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    50c6:	e9 57 fb ff ff       	jmpq   4c22 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x892>
    50cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000050d0 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati>:
    50d0:	85 d2                	test   %edx,%edx
    50d2:	0f 8e 85 05 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    50d8:	8d 42 ff             	lea    -0x1(%rdx),%eax
    50db:	83 f8 0e             	cmp    $0xe,%eax
    50de:	0f 86 cc 05 00 00    	jbe    56b0 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x5e0>
    50e4:	62 f1 ff 48 6f 07    	vmovdqu16 (%rdi),%zmm0
    50ea:	41 89 d2             	mov    %edx,%r10d
    50ed:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    50f3:	41 c1 ea 04          	shr    $0x4,%r10d
    50f7:	48 8d 4f 40          	lea    0x40(%rdi),%rcx
    50fb:	4c 8d 9e 80 00 00 00 	lea    0x80(%rsi),%r11
    5102:	62 f3 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm0,%ymm3
    5109:	45 8d 4a ff          	lea    -0x1(%r10),%r9d
    510d:	62 f2 7d 48 23 c8    	vpmovsxwd %ymm0,%zmm1
    5113:	41 83 e1 03          	and    $0x3,%r9d
    5117:	45 39 d0             	cmp    %r10d,%r8d
    511a:	62 f2 7d 48 23 e3    	vpmovsxwd %ymm3,%zmm4
    5120:	62 f1 7c 48 5b d1    	vcvtdq2ps %zmm1,%zmm2
    5126:	62 f1 7c 48 11 16    	vmovups %zmm2,(%rsi)
    512c:	62 f1 7c 48 5b ec    	vcvtdq2ps %zmm4,%zmm5
    5132:	62 f1 7c 48 11 6e 01 	vmovups %zmm5,0x40(%rsi)
    5139:	0f 83 8a 01 00 00    	jae    52c9 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x1f9>
    513f:	45 85 c9             	test   %r9d,%r9d
    5142:	0f 84 97 00 00 00    	je     51df <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x10f>
    5148:	41 83 f9 01          	cmp    $0x1,%r9d
    514c:	74 49                	je     5197 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0xc7>
    514e:	41 83 f9 02          	cmp    $0x2,%r9d
    5152:	0f 85 08 05 00 00    	jne    5660 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x590>
    5158:	62 71 ff 48 6f 21    	vmovdqu16 (%rcx),%zmm12
    515e:	41 83 c0 01          	add    $0x1,%r8d
    5162:	48 83 c1 40          	add    $0x40,%rcx
    5166:	49 83 eb 80          	sub    $0xffffffffffffff80,%r11
    516a:	62 53 fd 48 3b e7 01 	vextracti64x4 $0x1,%zmm12,%ymm15
    5171:	62 52 7d 48 23 ec    	vpmovsxwd %ymm12,%zmm13
    5177:	62 51 7c 48 5b f5    	vcvtdq2ps %zmm13,%zmm14
    517d:	62 51 7c 48 11 73 fe 	vmovups %zmm14,-0x80(%r11)
    5184:	62 d2 7d 48 23 c7    	vpmovsxwd %ymm15,%zmm0
    518a:	62 f1 7c 48 5b c8    	vcvtdq2ps %zmm0,%zmm1
    5190:	62 d1 7c 48 11 4b ff 	vmovups %zmm1,-0x40(%r11)
    5197:	62 f1 ff 48 6f 11    	vmovdqu16 (%rcx),%zmm2
    519d:	41 83 c0 01          	add    $0x1,%r8d
    51a1:	48 83 c1 40          	add    $0x40,%rcx
    51a5:	49 83 eb 80          	sub    $0xffffffffffffff80,%r11
    51a9:	62 f3 fd 48 3b d5 01 	vextracti64x4 $0x1,%zmm2,%ymm5
    51b0:	62 f2 7d 48 23 da    	vpmovsxwd %ymm2,%zmm3
    51b6:	62 f1 7c 48 5b e3    	vcvtdq2ps %zmm3,%zmm4
    51bc:	62 d1 7c 48 11 63 fe 	vmovups %zmm4,-0x80(%r11)
    51c3:	62 f2 7d 48 23 f5    	vpmovsxwd %ymm5,%zmm6
    51c9:	62 f1 7c 48 5b fe    	vcvtdq2ps %zmm6,%zmm7
    51cf:	62 d1 7c 48 11 7b ff 	vmovups %zmm7,-0x40(%r11)
    51d6:	45 39 d0             	cmp    %r10d,%r8d
    51d9:	0f 83 ea 00 00 00    	jae    52c9 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x1f9>
    51df:	62 71 ff 48 6f 01    	vmovdqu16 (%rcx),%zmm8
    51e5:	41 83 c0 04          	add    $0x4,%r8d
    51e9:	48 81 c1 00 01 00 00 	add    $0x100,%rcx
    51f0:	62 71 ff 48 6f 71 fd 	vmovdqu16 -0xc0(%rcx),%zmm14
    51f7:	49 81 c3 00 02 00 00 	add    $0x200,%r11
    51fe:	62 53 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm11
    5205:	62 52 7d 48 23 c8    	vpmovsxwd %ymm8,%zmm9
    520b:	62 f1 ff 48 6f 61 fe 	vmovdqu16 -0x80(%rcx),%zmm4
    5212:	62 73 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm14,%ymm1
    5219:	62 52 7d 48 23 fe    	vpmovsxwd %ymm14,%zmm15
    521f:	62 51 7c 48 5b d1    	vcvtdq2ps %zmm9,%zmm10
    5225:	62 51 7c 48 11 53 f8 	vmovups %zmm10,-0x200(%r11)
    522c:	62 f3 fd 48 3b e7 01 	vextracti64x4 $0x1,%zmm4,%ymm7
    5233:	62 71 ff 48 6f 51 ff 	vmovdqu16 -0x40(%rcx),%zmm10
    523a:	62 52 7d 48 23 e3    	vpmovsxwd %ymm11,%zmm12
    5240:	62 f2 7d 48 23 ec    	vpmovsxwd %ymm4,%zmm5
    5246:	62 f2 7d 48 23 d1    	vpmovsxwd %ymm1,%zmm2
    524c:	62 d1 7c 48 5b c7    	vcvtdq2ps %zmm15,%zmm0
    5252:	62 d1 7c 48 11 43 fa 	vmovups %zmm0,-0x180(%r11)
    5259:	62 51 7c 48 5b ec    	vcvtdq2ps %zmm12,%zmm13
    525f:	62 51 7c 48 11 6b f9 	vmovups %zmm13,-0x1c0(%r11)
    5266:	62 53 fd 48 3b d5 01 	vextracti64x4 $0x1,%zmm10,%ymm13
    526d:	62 72 7d 48 23 c7    	vpmovsxwd %ymm7,%zmm8
    5273:	62 52 7d 48 23 da    	vpmovsxwd %ymm10,%zmm11
    5279:	62 f1 7c 48 5b da    	vcvtdq2ps %zmm2,%zmm3
    527f:	62 f1 7c 48 5b f5    	vcvtdq2ps %zmm5,%zmm6
    5285:	62 d1 7c 48 11 5b fb 	vmovups %zmm3,-0x140(%r11)
    528c:	62 52 7d 48 23 f5    	vpmovsxwd %ymm13,%zmm14
    5292:	62 d1 7c 48 11 73 fc 	vmovups %zmm6,-0x100(%r11)
    5299:	62 51 7c 48 5b c8    	vcvtdq2ps %zmm8,%zmm9
    529f:	62 51 7c 48 5b e3    	vcvtdq2ps %zmm11,%zmm12
    52a5:	62 51 7c 48 11 4b fd 	vmovups %zmm9,-0xc0(%r11)
    52ac:	62 51 7c 48 11 63 fe 	vmovups %zmm12,-0x80(%r11)
    52b3:	62 51 7c 48 5b fe    	vcvtdq2ps %zmm14,%zmm15
    52b9:	62 51 7c 48 11 7b ff 	vmovups %zmm15,-0x40(%r11)
    52c0:	45 39 d0             	cmp    %r10d,%r8d
    52c3:	0f 82 16 ff ff ff    	jb     51df <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x10f>
    52c9:	89 d0                	mov    %edx,%eax
    52cb:	83 e0 f0             	and    $0xfffffff0,%eax
    52ce:	39 c2                	cmp    %eax,%edx
    52d0:	0f 84 ea 03 00 00    	je     56c0 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x5f0>
    52d6:	c5 f8 77             	vzeroupper 
    52d9:	4c 63 d0             	movslq %eax,%r10
    52dc:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    52e0:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    52e4:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    52e8:	44 8d 50 01          	lea    0x1(%rax),%r10d
    52ec:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    52f0:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    52f5:	41 0f bf 09          	movswl (%r9),%ecx
    52f9:	44 39 d2             	cmp    %r10d,%edx
    52fc:	c4 c1 7a 2a c0       	vcvtsi2ss %r8d,%xmm0,%xmm0
    5301:	c5 f2 2a c9          	vcvtsi2ss %ecx,%xmm1,%xmm1
    5305:	c4 c1 7a 11 43 04    	vmovss %xmm0,0x4(%r11)
    530b:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    5310:	0f 8e 47 03 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5316:	4d 63 da             	movslq %r10d,%r11
    5319:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    531d:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5321:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    5325:	44 8d 58 02          	lea    0x2(%rax),%r11d
    5329:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    532d:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5332:	41 0f bf 09          	movswl (%r9),%ecx
    5336:	44 39 da             	cmp    %r11d,%edx
    5339:	c4 c1 6a 2a d0       	vcvtsi2ss %r8d,%xmm2,%xmm2
    533e:	c5 e2 2a d9          	vcvtsi2ss %ecx,%xmm3,%xmm3
    5342:	c4 c1 7a 11 52 04    	vmovss %xmm2,0x4(%r10)
    5348:	c4 c1 7a 11 1a       	vmovss %xmm3,(%r10)
    534d:	0f 8e 0a 03 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5353:	4d 63 d3             	movslq %r11d,%r10
    5356:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    535a:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    535e:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    5362:	44 8d 50 03          	lea    0x3(%rax),%r10d
    5366:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    536a:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    536f:	41 0f bf 09          	movswl (%r9),%ecx
    5373:	44 39 d2             	cmp    %r10d,%edx
    5376:	c4 c1 5a 2a e0       	vcvtsi2ss %r8d,%xmm4,%xmm4
    537b:	c5 d2 2a e9          	vcvtsi2ss %ecx,%xmm5,%xmm5
    537f:	c4 c1 7a 11 63 04    	vmovss %xmm4,0x4(%r11)
    5385:	c4 c1 7a 11 2b       	vmovss %xmm5,(%r11)
    538a:	0f 8e cd 02 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5390:	4d 63 da             	movslq %r10d,%r11
    5393:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    5397:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    539b:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    539f:	44 8d 58 04          	lea    0x4(%rax),%r11d
    53a3:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
    53a7:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    53ac:	41 0f bf 09          	movswl (%r9),%ecx
    53b0:	44 39 da             	cmp    %r11d,%edx
    53b3:	c4 c1 4a 2a f0       	vcvtsi2ss %r8d,%xmm6,%xmm6
    53b8:	c5 c2 2a f9          	vcvtsi2ss %ecx,%xmm7,%xmm7
    53bc:	c4 c1 7a 11 72 04    	vmovss %xmm6,0x4(%r10)
    53c2:	c4 c1 7a 11 3a       	vmovss %xmm7,(%r10)
    53c7:	0f 8e 90 02 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    53cd:	4d 63 d3             	movslq %r11d,%r10
    53d0:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    53d5:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    53d9:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    53dd:	44 8d 50 05          	lea    0x5(%rax),%r10d
    53e1:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    53e6:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    53eb:	41 0f bf 09          	movswl (%r9),%ecx
    53ef:	44 39 d2             	cmp    %r10d,%edx
    53f2:	c4 41 3a 2a c0       	vcvtsi2ss %r8d,%xmm8,%xmm8
    53f7:	c5 32 2a c9          	vcvtsi2ss %ecx,%xmm9,%xmm9
    53fb:	c4 41 7a 11 43 04    	vmovss %xmm8,0x4(%r11)
    5401:	c4 41 7a 11 0b       	vmovss %xmm9,(%r11)
    5406:	0f 8e 51 02 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    540c:	4d 63 da             	movslq %r10d,%r11
    540f:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    5414:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5418:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    541c:	44 8d 58 06          	lea    0x6(%rax),%r11d
    5420:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    5425:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    542a:	41 0f bf 09          	movswl (%r9),%ecx
    542e:	44 39 da             	cmp    %r11d,%edx
    5431:	c4 41 2a 2a d0       	vcvtsi2ss %r8d,%xmm10,%xmm10
    5436:	c5 22 2a d9          	vcvtsi2ss %ecx,%xmm11,%xmm11
    543a:	c4 41 7a 11 52 04    	vmovss %xmm10,0x4(%r10)
    5440:	c4 41 7a 11 1a       	vmovss %xmm11,(%r10)
    5445:	0f 8e 12 02 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    544b:	4d 63 d3             	movslq %r11d,%r10
    544e:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    5453:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    5457:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    545b:	44 8d 50 07          	lea    0x7(%rax),%r10d
    545f:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    5464:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5469:	41 0f bf 09          	movswl (%r9),%ecx
    546d:	44 39 d2             	cmp    %r10d,%edx
    5470:	c4 41 1a 2a e0       	vcvtsi2ss %r8d,%xmm12,%xmm12
    5475:	c5 12 2a e9          	vcvtsi2ss %ecx,%xmm13,%xmm13
    5479:	c4 41 7a 11 63 04    	vmovss %xmm12,0x4(%r11)
    547f:	c4 41 7a 11 2b       	vmovss %xmm13,(%r11)
    5484:	0f 8e d3 01 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    548a:	4d 63 da             	movslq %r10d,%r11
    548d:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
    5492:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5496:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    549a:	44 8d 58 08          	lea    0x8(%rax),%r11d
    549e:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
    54a3:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    54a8:	41 0f bf 09          	movswl (%r9),%ecx
    54ac:	44 39 da             	cmp    %r11d,%edx
    54af:	c4 41 0a 2a f0       	vcvtsi2ss %r8d,%xmm14,%xmm14
    54b4:	c5 02 2a f9          	vcvtsi2ss %ecx,%xmm15,%xmm15
    54b8:	c4 41 7a 11 72 04    	vmovss %xmm14,0x4(%r10)
    54be:	c4 41 7a 11 3a       	vmovss %xmm15,(%r10)
    54c3:	0f 8e 94 01 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    54c9:	4d 63 d3             	movslq %r11d,%r10
    54cc:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    54d0:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    54d4:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    54d8:	44 8d 50 09          	lea    0x9(%rax),%r10d
    54dc:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    54e0:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    54e5:	41 0f bf 09          	movswl (%r9),%ecx
    54e9:	44 39 d2             	cmp    %r10d,%edx
    54ec:	c4 c1 7a 2a c0       	vcvtsi2ss %r8d,%xmm0,%xmm0
    54f1:	c5 f2 2a c9          	vcvtsi2ss %ecx,%xmm1,%xmm1
    54f5:	c4 c1 7a 11 43 04    	vmovss %xmm0,0x4(%r11)
    54fb:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    5500:	0f 8e 57 01 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5506:	4d 63 da             	movslq %r10d,%r11
    5509:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    550d:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5511:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    5515:	44 8d 58 0a          	lea    0xa(%rax),%r11d
    5519:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    551d:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5522:	41 0f bf 09          	movswl (%r9),%ecx
    5526:	44 39 da             	cmp    %r11d,%edx
    5529:	c4 c1 6a 2a d0       	vcvtsi2ss %r8d,%xmm2,%xmm2
    552e:	c5 e2 2a d9          	vcvtsi2ss %ecx,%xmm3,%xmm3
    5532:	c4 c1 7a 11 52 04    	vmovss %xmm2,0x4(%r10)
    5538:	c4 c1 7a 11 1a       	vmovss %xmm3,(%r10)
    553d:	0f 8e 1a 01 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5543:	4d 63 d3             	movslq %r11d,%r10
    5546:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    554a:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    554e:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    5552:	44 8d 50 0b          	lea    0xb(%rax),%r10d
    5556:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    555a:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    555f:	41 0f bf 09          	movswl (%r9),%ecx
    5563:	44 39 d2             	cmp    %r10d,%edx
    5566:	c4 c1 5a 2a e0       	vcvtsi2ss %r8d,%xmm4,%xmm4
    556b:	c5 d2 2a e9          	vcvtsi2ss %ecx,%xmm5,%xmm5
    556f:	c4 c1 7a 11 63 04    	vmovss %xmm4,0x4(%r11)
    5575:	c4 c1 7a 11 2b       	vmovss %xmm5,(%r11)
    557a:	0f 8e dd 00 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5580:	4d 63 da             	movslq %r10d,%r11
    5583:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    5587:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    558b:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    558f:	44 8d 58 0c          	lea    0xc(%rax),%r11d
    5593:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
    5597:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    559c:	41 0f bf 09          	movswl (%r9),%ecx
    55a0:	44 39 da             	cmp    %r11d,%edx
    55a3:	c4 c1 4a 2a f0       	vcvtsi2ss %r8d,%xmm6,%xmm6
    55a8:	c5 c2 2a f9          	vcvtsi2ss %ecx,%xmm7,%xmm7
    55ac:	c4 c1 7a 11 72 04    	vmovss %xmm6,0x4(%r10)
    55b2:	c4 c1 7a 11 3a       	vmovss %xmm7,(%r10)
    55b7:	0f 8e a0 00 00 00    	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    55bd:	4d 63 d3             	movslq %r11d,%r10
    55c0:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    55c5:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    55c9:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    55cd:	44 8d 50 0d          	lea    0xd(%rax),%r10d
    55d1:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    55d6:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    55db:	41 0f bf 09          	movswl (%r9),%ecx
    55df:	44 39 d2             	cmp    %r10d,%edx
    55e2:	c4 41 3a 2a c0       	vcvtsi2ss %r8d,%xmm8,%xmm8
    55e7:	c5 32 2a c9          	vcvtsi2ss %ecx,%xmm9,%xmm9
    55eb:	c4 41 7a 11 43 04    	vmovss %xmm8,0x4(%r11)
    55f1:	c4 41 7a 11 0b       	vmovss %xmm9,(%r11)
    55f6:	7e 65                	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    55f8:	4d 63 da             	movslq %r10d,%r11
    55fb:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    5600:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5604:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    5609:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    560d:	83 c0 0e             	add    $0xe,%eax
    5610:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5615:	41 0f bf 09          	movswl (%r9),%ecx
    5619:	39 c2                	cmp    %eax,%edx
    561b:	c4 41 2a 2a d0       	vcvtsi2ss %r8d,%xmm10,%xmm10
    5620:	c5 22 2a d9          	vcvtsi2ss %ecx,%xmm11,%xmm11
    5624:	c4 41 7a 11 52 04    	vmovss %xmm10,0x4(%r10)
    562a:	c4 41 7a 11 1a       	vmovss %xmm11,(%r10)
    562f:	7e 2c                	jle    565d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5631:	48 98                	cltq   
    5633:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    5638:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
    563c:	48 8d 34 c6          	lea    (%rsi,%rax,8),%rsi
    5640:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    5645:	0f bf 57 02          	movswl 0x2(%rdi),%edx
    5649:	0f bf 07             	movswl (%rdi),%eax
    564c:	c5 1a 2a e2          	vcvtsi2ss %edx,%xmm12,%xmm12
    5650:	c5 12 2a e8          	vcvtsi2ss %eax,%xmm13,%xmm13
    5654:	c5 7a 11 66 04       	vmovss %xmm12,0x4(%rsi)
    5659:	c5 7a 11 2e          	vmovss %xmm13,(%rsi)
    565d:	f3 c3                	repz retq 
    565f:	90                   	nop
    5660:	62 f1 ff 48 6f 31    	vmovdqu16 (%rcx),%zmm6
    5666:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    566c:	48 8d 8f 80 00 00 00 	lea    0x80(%rdi),%rcx
    5673:	62 d3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm9
    567a:	62 f2 7d 48 23 fe    	vpmovsxwd %ymm6,%zmm7
    5680:	62 71 7c 48 5b c7    	vcvtdq2ps %zmm7,%zmm8
    5686:	62 51 7c 48 11 03    	vmovups %zmm8,(%r11)
    568c:	62 52 7d 48 23 d1    	vpmovsxwd %ymm9,%zmm10
    5692:	62 51 7c 48 5b da    	vcvtdq2ps %zmm10,%zmm11
    5698:	62 51 7c 48 11 5b 01 	vmovups %zmm11,0x40(%r11)
    569f:	4c 8d 9e 00 01 00 00 	lea    0x100(%rsi),%r11
    56a6:	e9 ad fa ff ff       	jmpq   5158 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x88>
    56ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    56b0:	31 c0                	xor    %eax,%eax
    56b2:	e9 22 fc ff ff       	jmpq   52d9 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x209>
    56b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    56be:	00 00 
    56c0:	c5 f8 77             	vzeroupper 
    56c3:	c3                   	retq   
    56c4:	66 90                	xchg   %ax,%ax
    56c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    56cd:	00 00 00 

00000000000056d0 <_Z11printVectorSt6vectorIdSaIdEE>:
    56d0:	41 54                	push   %r12
    56d2:	55                   	push   %rbp
    56d3:	53                   	push   %rbx
    56d4:	48 8b 17             	mov    (%rdi),%rdx
    56d7:	48 3b 57 08          	cmp    0x8(%rdi),%rdx
    56db:	74 4c                	je     5729 <_Z11printVectorSt6vectorIdSaIdEE+0x59>
    56dd:	4c 8d 25 9c 79 20 00 	lea    0x20799c(%rip),%r12        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    56e4:	48 89 fd             	mov    %rdi,%rbp
    56e7:	31 db                	xor    %ebx,%ebx
    56e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    56f0:	c5 fb 10 04 da       	vmovsd (%rdx,%rbx,8),%xmm0
    56f5:	4c 89 e7             	mov    %r12,%rdi
    56f8:	48 83 c3 01          	add    $0x1,%rbx
    56fc:	e8 4f c4 ff ff       	callq  1b50 <_ZNSo9_M_insertIdEERSoT_@plt>
    5701:	48 8d 35 88 56 00 00 	lea    0x5688(%rip),%rsi        # ad90 <_IO_stdin_used+0x10>
    5708:	ba 01 00 00 00       	mov    $0x1,%edx
    570d:	48 89 c7             	mov    %rax,%rdi
    5710:	e8 9b c4 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    5715:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    5719:	48 8b 45 08          	mov    0x8(%rbp),%rax
    571d:	48 29 d0             	sub    %rdx,%rax
    5720:	48 c1 f8 03          	sar    $0x3,%rax
    5724:	48 39 d8             	cmp    %rbx,%rax
    5727:	77 c7                	ja     56f0 <_Z11printVectorSt6vectorIdSaIdEE+0x20>
    5729:	48 8b 0d 50 79 20 00 	mov    0x207950(%rip),%rcx        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5730:	48 8d 3d 49 79 20 00 	lea    0x207949(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5737:	48 8b 71 e8          	mov    -0x18(%rcx),%rsi
    573b:	48 8b ac 37 f0 00 00 	mov    0xf0(%rdi,%rsi,1),%rbp
    5742:	00 
    5743:	48 85 ed             	test   %rbp,%rbp
    5746:	74 53                	je     579b <_Z11printVectorSt6vectorIdSaIdEE+0xcb>
    5748:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
    574c:	74 22                	je     5770 <_Z11printVectorSt6vectorIdSaIdEE+0xa0>
    574e:	0f be 75 43          	movsbl 0x43(%rbp),%esi
    5752:	48 8d 3d 27 79 20 00 	lea    0x207927(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5759:	e8 92 c3 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    575e:	5b                   	pop    %rbx
    575f:	5d                   	pop    %rbp
    5760:	41 5c                	pop    %r12
    5762:	48 89 c7             	mov    %rax,%rdi
    5765:	e9 46 c3 ff ff       	jmpq   1ab0 <_ZNSo5flushEv@plt>
    576a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5770:	48 89 ef             	mov    %rbp,%rdi
    5773:	e8 28 c3 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    5778:	4c 8b 45 00          	mov    0x0(%rbp),%r8
    577c:	4c 8d 0d 8d d4 ff ff 	lea    -0x2b73(%rip),%r9        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    5783:	be 0a 00 00 00       	mov    $0xa,%esi
    5788:	49 8b 58 30          	mov    0x30(%r8),%rbx
    578c:	4c 39 cb             	cmp    %r9,%rbx
    578f:	74 c1                	je     5752 <_Z11printVectorSt6vectorIdSaIdEE+0x82>
    5791:	48 89 ef             	mov    %rbp,%rdi
    5794:	ff d3                	callq  *%rbx
    5796:	0f be f0             	movsbl %al,%esi
    5799:	eb b7                	jmp    5752 <_Z11printVectorSt6vectorIdSaIdEE+0x82>
    579b:	e8 a0 c2 ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>

00000000000057a0 <_Z8newBenchv>:
    57a0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    57a5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    57a9:	62 51 15 48 ef ed    	vpxord %zmm13,%zmm13,%zmm13
    57af:	41 ff 72 f8          	pushq  -0x8(%r10)
    57b3:	55                   	push   %rbp
    57b4:	48 89 e5             	mov    %rsp,%rbp
    57b7:	41 57                	push   %r15
    57b9:	41 56                	push   %r14
    57bb:	41 55                	push   %r13
    57bd:	41 54                	push   %r12
    57bf:	41 52                	push   %r10
    57c1:	53                   	push   %rbx
    57c2:	48 81 ec c0 02 00 00 	sub    $0x2c0,%rsp
    57c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    57d0:	00 00 
    57d2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    57d6:	31 c0                	xor    %eax,%eax
    57d8:	b8 40 04 00 00       	mov    $0x440,%eax
    57dd:	62 f1 fd 48 6f 25 19 	vmovdqa64 0x5e19(%rip),%zmm4        # b600 <_ZL5temp0+0x60>
    57e4:	5e 00 00 
    57e7:	48 29 c4             	sub    %rax,%rsp
    57ea:	62 f1 fd 48 6f 1d 4c 	vmovdqa64 0x5e4c(%rip),%zmm3        # b640 <_ZL5temp0+0xa0>
    57f1:	5e 00 00 
    57f4:	48 8d 7c 24 3f       	lea    0x3f(%rsp),%rdi
    57f9:	62 f1 fd 48 6f 15 7d 	vmovdqa64 0x5e7d(%rip),%zmm2        # b680 <_ZL5temp0+0xe0>
    5800:	5e 00 00 
    5803:	48 29 c4             	sub    %rax,%rsp
    5806:	62 f1 fd 48 6f 0d b0 	vmovdqa64 0x5eb0(%rip),%zmm1        # b6c0 <_ZL5temp0+0x120>
    580d:	5e 00 00 
    5810:	48 8d 5c 24 3f       	lea    0x3f(%rsp),%rbx
    5815:	62 f1 fd 48 6f 05 e1 	vmovdqa64 0x5ee1(%rip),%zmm0        # b700 <_ZL5temp0+0x160>
    581c:	5e 00 00 
    581f:	48 89 fa             	mov    %rdi,%rdx
    5822:	62 71 fd 48 6f 25 14 	vmovdqa64 0x5f14(%rip),%zmm12        # b740 <_ZL5temp0+0x1a0>
    5829:	5f 00 00 
    582c:	48 83 e2 c0          	and    $0xffffffffffffffc0,%rdx
    5830:	48 83 e3 c0          	and    $0xffffffffffffffc0,%rbx
    5834:	62 71 fd 48 6f 1d 42 	vmovdqa64 0x5f42(%rip),%zmm11        # b780 <_ZL5temp0+0x1e0>
    583b:	5f 00 00 
    583e:	48 89 95 38 fd ff ff 	mov    %rdx,-0x2c8(%rbp)
    5845:	62 71 fd 48 6f 15 71 	vmovdqa64 0x5f71(%rip),%zmm10        # b7c0 <_ZL5temp0+0x220>
    584c:	5f 00 00 
    584f:	62 71 fd 48 6f 0d a7 	vmovdqa64 0x5fa7(%rip),%zmm9        # b800 <_ZL5temp0+0x260>
    5856:	5f 00 00 
    5859:	62 71 fd 48 6f 05 dd 	vmovdqa64 0x5fdd(%rip),%zmm8        # b840 <_ZL5temp0+0x2a0>
    5860:	5f 00 00 
    5863:	62 f1 fd 48 7f 22    	vmovdqa64 %zmm4,(%rdx)
    5869:	62 f1 fd 48 7f 5a 01 	vmovdqa64 %zmm3,0x40(%rdx)
    5870:	62 f1 fd 48 7f 52 02 	vmovdqa64 %zmm2,0x80(%rdx)
    5877:	62 f1 fd 48 7f 4a 03 	vmovdqa64 %zmm1,0xc0(%rdx)
    587e:	62 f1 fd 48 7f 42 04 	vmovdqa64 %zmm0,0x100(%rdx)
    5885:	62 71 fd 48 7f 62 05 	vmovdqa64 %zmm12,0x140(%rdx)
    588c:	62 71 fd 48 7f 5a 06 	vmovdqa64 %zmm11,0x180(%rdx)
    5893:	62 71 fd 48 7f 52 07 	vmovdqa64 %zmm10,0x1c0(%rdx)
    589a:	62 71 fd 48 7f 4a 08 	vmovdqa64 %zmm9,0x200(%rdx)
    58a1:	62 71 fd 48 7f 42 09 	vmovdqa64 %zmm8,0x240(%rdx)
    58a8:	62 f1 fd 48 6f 3d ce 	vmovdqa64 0x5fce(%rip),%zmm7        # b880 <_ZL5temp0+0x2e0>
    58af:	5f 00 00 
    58b2:	62 f1 fd 28 6f 35 a4 	vmovdqa64 0x63a4(%rip),%ymm6        # bc60 <_ZL5temp0+0x6c0>
    58b9:	63 00 00 
    58bc:	62 f1 fd 28 6f 2d ba 	vmovdqa64 0x63ba(%rip),%ymm5        # bc80 <_ZL5temp0+0x6e0>
    58c3:	63 00 00 
    58c6:	62 f1 fd 48 7f 7a 0a 	vmovdqa64 %zmm7,0x280(%rdx)
    58cd:	62 f1 fd 48 7f 62 0b 	vmovdqa64 %zmm4,0x2c0(%rdx)
    58d4:	62 f1 fd 48 7f 5a 0c 	vmovdqa64 %zmm3,0x300(%rdx)
    58db:	62 f1 fd 48 7f 52 0d 	vmovdqa64 %zmm2,0x340(%rdx)
    58e2:	62 f1 fd 48 7f 4a 0e 	vmovdqa64 %zmm1,0x380(%rdx)
    58e9:	62 f1 fd 48 7f 42 0f 	vmovdqa64 %zmm0,0x3c0(%rdx)
    58f0:	62 f1 fd 28 7f b5 90 	vmovdqa64 %ymm6,-0x270(%rbp)
    58f7:	fd ff ff 
    58fa:	62 f1 fd 28 7f ad b0 	vmovdqa64 %ymm5,-0x250(%rbp)
    5901:	fd ff ff 
    5904:	62 71 fd 48 7f ad d0 	vmovdqa64 %zmm13,-0x230(%rbp)
    590b:	fd ff ff 
    590e:	62 f1 fd 48 7f 23    	vmovdqa64 %zmm4,(%rbx)
    5914:	62 f1 fd 48 7f 5b 01 	vmovdqa64 %zmm3,0x40(%rbx)
    591b:	62 f1 fd 48 7f 53 02 	vmovdqa64 %zmm2,0x80(%rbx)
    5922:	62 f1 fd 48 7f 4b 03 	vmovdqa64 %zmm1,0xc0(%rbx)
    5929:	62 f1 fd 48 7f 43 04 	vmovdqa64 %zmm0,0x100(%rbx)
    5930:	62 71 fd 48 7f 63 05 	vmovdqa64 %zmm12,0x140(%rbx)
    5937:	62 71 fd 48 7f 5b 06 	vmovdqa64 %zmm11,0x180(%rbx)
    593e:	62 71 fd 48 7f 53 07 	vmovdqa64 %zmm10,0x1c0(%rbx)
    5945:	62 71 fd 48 7f 4b 08 	vmovdqa64 %zmm9,0x200(%rbx)
    594c:	62 71 fd 48 7f 43 09 	vmovdqa64 %zmm8,0x240(%rbx)
    5953:	62 f1 fd 48 7f 7b 0a 	vmovdqa64 %zmm7,0x280(%rbx)
    595a:	62 f1 fd 48 7f 63 0b 	vmovdqa64 %zmm4,0x2c0(%rbx)
    5961:	62 f1 fd 48 7f 5b 0c 	vmovdqa64 %zmm3,0x300(%rbx)
    5968:	62 f1 fd 48 7f 53 0d 	vmovdqa64 %zmm2,0x340(%rbx)
    596f:	62 f1 fd 48 7f 4b 0e 	vmovdqa64 %zmm1,0x380(%rbx)
    5976:	62 f1 fd 48 7f 43 0f 	vmovdqa64 %zmm0,0x3c0(%rbx)
    597d:	62 f1 fd 28 7f b5 10 	vmovdqa64 %ymm6,-0x1f0(%rbp)
    5984:	fe ff ff 
    5987:	62 f1 fd 28 7f ad 30 	vmovdqa64 %ymm5,-0x1d0(%rbp)
    598e:	fe ff ff 
    5991:	c5 f8 77             	vzeroupper 
    5994:	e8 87 d2 ff ff       	callq  2c20 <_Z7getTimev>
    5999:	62 f1 45 08 ef ff    	vpxord %xmm7,%xmm7,%xmm7
    599f:	4c 8d 8d 10 fe ff ff 	lea    -0x1f0(%rbp),%r9
    59a6:	49 89 d8             	mov    %rbx,%r8
    59a9:	49 8d 71 40          	lea    0x40(%r9),%rsi
    59ad:	62 71 fd 28 6f df    	vmovdqa64 %ymm7,%ymm11
    59b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    59b8:	41 0f b7 08          	movzwl (%r8),%ecx
    59bc:	45 0f b7 58 40       	movzwl 0x40(%r8),%r11d
    59c1:	49 83 c1 04          	add    $0x4,%r9
    59c5:	45 0f b7 a8 80 00 00 	movzwl 0x80(%r8),%r13d
    59cc:	00 
    59cd:	45 0f b7 b0 c0 00 00 	movzwl 0xc0(%r8),%r14d
    59d4:	00 
    59d5:	49 83 c0 04          	add    $0x4,%r8
    59d9:	45 0f b7 b8 fc 00 00 	movzwl 0xfc(%r8),%r15d
    59e0:	00 
    59e1:	45 0f b7 90 3c 01 00 	movzwl 0x13c(%r8),%r10d
    59e8:	00 
    59e9:	41 0f b7 80 7c 01 00 	movzwl 0x17c(%r8),%eax
    59f0:	00 
    59f1:	41 0f b7 b8 bc 01 00 	movzwl 0x1bc(%r8),%edi
    59f8:	00 
    59f9:	41 0f b7 90 fc 01 00 	movzwl 0x1fc(%r8),%edx
    5a00:	00 
    5a01:	41 0f b7 98 3c 02 00 	movzwl 0x23c(%r8),%ebx
    5a08:	00 
    5a09:	45 0f b7 a0 7c 02 00 	movzwl 0x27c(%r8),%r12d
    5a10:	00 
    5a11:	66 89 8d 90 fe ff ff 	mov    %cx,-0x170(%rbp)
    5a18:	66 44 89 9d 92 fe ff 	mov    %r11w,-0x16e(%rbp)
    5a1f:	ff 
    5a20:	41 0f b7 88 bc 02 00 	movzwl 0x2bc(%r8),%ecx
    5a27:	00 
    5a28:	45 0f b7 98 fc 02 00 	movzwl 0x2fc(%r8),%r11d
    5a2f:	00 
    5a30:	66 44 89 ad 94 fe ff 	mov    %r13w,-0x16c(%rbp)
    5a37:	ff 
    5a38:	66 44 89 b5 96 fe ff 	mov    %r14w,-0x16a(%rbp)
    5a3f:	ff 
    5a40:	45 0f b7 a8 3c 03 00 	movzwl 0x33c(%r8),%r13d
    5a47:	00 
    5a48:	45 0f b7 b0 7c 03 00 	movzwl 0x37c(%r8),%r14d
    5a4f:	00 
    5a50:	66 44 89 bd 98 fe ff 	mov    %r15w,-0x168(%rbp)
    5a57:	ff 
    5a58:	45 0f b7 b8 bc 03 00 	movzwl 0x3bc(%r8),%r15d
    5a5f:	00 
    5a60:	66 44 89 95 9a fe ff 	mov    %r10w,-0x166(%rbp)
    5a67:	ff 
    5a68:	66 89 85 9c fe ff ff 	mov    %ax,-0x164(%rbp)
    5a6f:	66 89 bd 9e fe ff ff 	mov    %di,-0x162(%rbp)
    5a76:	66 89 95 a0 fe ff ff 	mov    %dx,-0x160(%rbp)
    5a7d:	66 89 9d a2 fe ff ff 	mov    %bx,-0x15e(%rbp)
    5a84:	66 44 89 a5 a4 fe ff 	mov    %r12w,-0x15c(%rbp)
    5a8b:	ff 
    5a8c:	66 89 8d a6 fe ff ff 	mov    %cx,-0x15a(%rbp)
    5a93:	66 44 89 9d a8 fe ff 	mov    %r11w,-0x158(%rbp)
    5a9a:	ff 
    5a9b:	66 44 89 ad aa fe ff 	mov    %r13w,-0x156(%rbp)
    5aa2:	ff 
    5aa3:	66 44 89 b5 ac fe ff 	mov    %r14w,-0x154(%rbp)
    5aaa:	ff 
    5aab:	66 44 89 bd ae fe ff 	mov    %r15w,-0x152(%rbp)
    5ab2:	ff 
    5ab3:	62 71 fd 28 6f b5 90 	vmovdqa64 -0x170(%rbp),%ymm14
    5aba:	fe ff ff 
    5abd:	45 0f b7 50 fe       	movzwl -0x2(%r8),%r10d
    5ac2:	41 0f b7 40 3e       	movzwl 0x3e(%r8),%eax
    5ac7:	41 0f b7 78 7e       	movzwl 0x7e(%r8),%edi
    5acc:	41 0f b7 90 be 00 00 	movzwl 0xbe(%r8),%edx
    5ad3:	00 
    5ad4:	41 0f b7 98 fe 00 00 	movzwl 0xfe(%r8),%ebx
    5adb:	00 
    5adc:	45 0f b7 a0 3e 01 00 	movzwl 0x13e(%r8),%r12d
    5ae3:	00 
    5ae4:	41 0f b7 88 7e 01 00 	movzwl 0x17e(%r8),%ecx
    5aeb:	00 
    5aec:	45 0f b7 98 be 01 00 	movzwl 0x1be(%r8),%r11d
    5af3:	00 
    5af4:	45 0f b7 a8 fe 01 00 	movzwl 0x1fe(%r8),%r13d
    5afb:	00 
    5afc:	45 0f b7 b0 3e 02 00 	movzwl 0x23e(%r8),%r14d
    5b03:	00 
    5b04:	45 0f b7 b8 7e 02 00 	movzwl 0x27e(%r8),%r15d
    5b0b:	00 
    5b0c:	66 44 89 95 90 fe ff 	mov    %r10w,-0x170(%rbp)
    5b13:	ff 
    5b14:	66 89 85 92 fe ff ff 	mov    %ax,-0x16e(%rbp)
    5b1b:	45 0f b7 90 be 02 00 	movzwl 0x2be(%r8),%r10d
    5b22:	00 
    5b23:	41 0f b7 80 fe 02 00 	movzwl 0x2fe(%r8),%eax
    5b2a:	00 
    5b2b:	66 89 bd 94 fe ff ff 	mov    %di,-0x16c(%rbp)
    5b32:	66 89 95 96 fe ff ff 	mov    %dx,-0x16a(%rbp)
    5b39:	41 0f b7 b8 3e 03 00 	movzwl 0x33e(%r8),%edi
    5b40:	00 
    5b41:	41 0f b7 90 7e 03 00 	movzwl 0x37e(%r8),%edx
    5b48:	00 
    5b49:	66 89 9d 98 fe ff ff 	mov    %bx,-0x168(%rbp)
    5b50:	41 0f b7 98 be 03 00 	movzwl 0x3be(%r8),%ebx
    5b57:	00 
    5b58:	66 44 89 a5 9a fe ff 	mov    %r12w,-0x166(%rbp)
    5b5f:	ff 
    5b60:	66 89 8d 9c fe ff ff 	mov    %cx,-0x164(%rbp)
    5b67:	66 44 89 9d 9e fe ff 	mov    %r11w,-0x162(%rbp)
    5b6e:	ff 
    5b6f:	66 44 89 ad a0 fe ff 	mov    %r13w,-0x160(%rbp)
    5b76:	ff 
    5b77:	66 44 89 b5 a2 fe ff 	mov    %r14w,-0x15e(%rbp)
    5b7e:	ff 
    5b7f:	66 44 89 bd a4 fe ff 	mov    %r15w,-0x15c(%rbp)
    5b86:	ff 
    5b87:	66 44 89 95 a6 fe ff 	mov    %r10w,-0x15a(%rbp)
    5b8e:	ff 
    5b8f:	66 89 85 a8 fe ff ff 	mov    %ax,-0x158(%rbp)
    5b96:	66 89 bd aa fe ff ff 	mov    %di,-0x156(%rbp)
    5b9d:	66 89 95 ac fe ff ff 	mov    %dx,-0x154(%rbp)
    5ba4:	66 89 9d ae fe ff ff 	mov    %bx,-0x152(%rbp)
    5bab:	c4 c2 7d 79 61 fc    	vpbroadcastw -0x4(%r9),%ymm4
    5bb1:	c4 c2 7d 79 51 fe    	vpbroadcastw -0x2(%r9),%ymm2
    5bb7:	49 39 f1             	cmp    %rsi,%r9
    5bba:	62 71 fd 28 6f bd 90 	vmovdqa64 -0x170(%rbp),%ymm15
    5bc1:	fe ff ff 
    5bc4:	c4 c1 5d d5 de       	vpmullw %ymm14,%ymm4,%ymm3
    5bc9:	c4 c1 65 fd cb       	vpaddw %ymm11,%ymm3,%ymm1
    5bce:	c4 41 6d d5 ce       	vpmullw %ymm14,%ymm2,%ymm9
    5bd3:	c4 41 6d d5 e7       	vpmullw %ymm15,%ymm2,%ymm12
    5bd8:	c4 41 5d d5 d7       	vpmullw %ymm15,%ymm4,%ymm10
    5bdd:	c4 41 75 f9 dc       	vpsubw %ymm12,%ymm1,%ymm11
    5be2:	c4 41 2d fd c1       	vpaddw %ymm9,%ymm10,%ymm8
    5be7:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
    5beb:	0f 85 c7 fd ff ff    	jne    59b8 <_Z8newBenchv+0x218>
    5bf1:	c4 43 7d 39 dd 01    	vextracti128 $0x1,%ymm11,%xmm13
    5bf7:	c4 c1 79 c5 c3 07    	vpextrw $0x7,%xmm11,%eax
    5bfd:	c4 c3 7d 39 fe 01    	vextracti128 $0x1,%ymm7,%xmm14
    5c03:	c4 41 79 c5 c3 00    	vpextrw $0x0,%xmm11,%r8d
    5c09:	89 85 6c fd ff ff    	mov    %eax,-0x294(%rbp)
    5c0f:	c4 c1 79 c5 c5 04    	vpextrw $0x4,%xmm13,%eax
    5c15:	c4 41 79 c5 cb 01    	vpextrw $0x1,%xmm11,%r9d
    5c1b:	c4 c1 79 c5 f3 02    	vpextrw $0x2,%xmm11,%esi
    5c21:	44 89 85 88 fd ff ff 	mov    %r8d,-0x278(%rbp)
    5c28:	89 85 58 fd ff ff    	mov    %eax,-0x2a8(%rbp)
    5c2e:	c4 c1 79 c5 c5 05    	vpextrw $0x5,%xmm13,%eax
    5c34:	c4 41 79 c5 e3 03    	vpextrw $0x3,%xmm11,%r12d
    5c3a:	44 89 8d 84 fd ff ff 	mov    %r9d,-0x27c(%rbp)
    5c41:	89 b5 80 fd ff ff    	mov    %esi,-0x280(%rbp)
    5c47:	c5 79 c5 ff 00       	vpextrw $0x0,%xmm7,%r15d
    5c4c:	89 85 54 fd ff ff    	mov    %eax,-0x2ac(%rbp)
    5c52:	c4 c1 79 c5 c6 05    	vpextrw $0x5,%xmm14,%eax
    5c58:	44 89 a5 7c fd ff ff 	mov    %r12d,-0x284(%rbp)
    5c5f:	c5 79 c5 f7 01       	vpextrw $0x1,%xmm7,%r14d
    5c64:	c5 79 c5 ef 02       	vpextrw $0x2,%xmm7,%r13d
    5c69:	c5 79 6e bd 88 fd ff 	vmovd  -0x278(%rbp),%xmm15
    5c70:	ff 
    5c71:	89 85 50 fd ff ff    	mov    %eax,-0x2b0(%rbp)
    5c77:	c4 c1 79 c5 c5 06    	vpextrw $0x6,%xmm13,%eax
    5c7d:	c5 79 c5 e7 03       	vpextrw $0x3,%xmm7,%r12d
    5c82:	c5 f9 6e a5 84 fd ff 	vmovd  -0x27c(%rbp),%xmm4
    5c89:	ff 
    5c8a:	c5 f9 6e 9d 80 fd ff 	vmovd  -0x280(%rbp),%xmm3
    5c91:	ff 
    5c92:	c4 c1 79 c5 cb 04    	vpextrw $0x4,%xmm11,%ecx
    5c98:	c4 41 79 c5 db 05    	vpextrw $0x5,%xmm11,%r11d
    5c9e:	89 85 4c fd ff ff    	mov    %eax,-0x2b4(%rbp)
    5ca4:	c4 41 79 c5 d3 06    	vpextrw $0x6,%xmm11,%r10d
    5caa:	c5 79 6e 9d 7c fd ff 	vmovd  -0x284(%rbp),%xmm11
    5cb1:	ff 
    5cb2:	c4 c1 79 c5 c6 06    	vpextrw $0x6,%xmm14,%eax
    5cb8:	89 8d 78 fd ff ff    	mov    %ecx,-0x288(%rbp)
    5cbe:	c4 c1 01 c4 d7 01    	vpinsrw $0x1,%r15d,%xmm15,%xmm2
    5cc4:	44 89 9d 74 fd ff ff 	mov    %r11d,-0x28c(%rbp)
    5ccb:	c4 41 59 c4 e6 01    	vpinsrw $0x1,%r14d,%xmm4,%xmm12
    5cd1:	44 89 95 70 fd ff ff 	mov    %r10d,-0x290(%rbp)
    5cd8:	c4 c1 61 c4 cd 01    	vpinsrw $0x1,%r13d,%xmm3,%xmm1
    5cde:	89 85 48 fd ff ff    	mov    %eax,-0x2b8(%rbp)
    5ce4:	c4 41 21 c4 d4 01    	vpinsrw $0x1,%r12d,%xmm11,%xmm10
    5cea:	c5 79 6e bd 70 fd ff 	vmovd  -0x290(%rbp),%xmm15
    5cf1:	ff 
    5cf2:	c5 f9 c5 df 04       	vpextrw $0x4,%xmm7,%ebx
    5cf7:	c5 79 c5 df 05       	vpextrw $0x5,%xmm7,%r11d
    5cfc:	c5 79 c5 d7 06       	vpextrw $0x6,%xmm7,%r10d
    5d01:	c5 f9 c5 d7 07       	vpextrw $0x7,%xmm7,%edx
    5d06:	c5 f9 6e bd 78 fd ff 	vmovd  -0x288(%rbp),%xmm7
    5d0d:	ff 
    5d0e:	c4 c1 79 c5 fd 00    	vpextrw $0x0,%xmm13,%edi
    5d14:	c4 41 79 c5 c5 01    	vpextrw $0x1,%xmm13,%r8d
    5d1a:	c4 c1 79 c5 f5 02    	vpextrw $0x2,%xmm13,%esi
    5d20:	c4 c1 79 c5 cd 03    	vpextrw $0x3,%xmm13,%ecx
    5d26:	89 bd 68 fd ff ff    	mov    %edi,-0x298(%rbp)
    5d2c:	c4 c1 79 c5 c5 07    	vpextrw $0x7,%xmm13,%eax
    5d32:	c5 79 6e ad 74 fd ff 	vmovd  -0x28c(%rbp),%xmm13
    5d39:	ff 
    5d3a:	44 89 85 64 fd ff ff 	mov    %r8d,-0x29c(%rbp)
    5d41:	c4 41 69 62 cc       	vpunpckldq %xmm12,%xmm2,%xmm9
    5d46:	c5 f9 6e 95 6c fd ff 	vmovd  -0x294(%rbp),%xmm2
    5d4d:	ff 
    5d4e:	c4 41 71 62 c2       	vpunpckldq %xmm10,%xmm1,%xmm8
    5d53:	89 b5 60 fd ff ff    	mov    %esi,-0x2a0(%rbp)
    5d59:	89 8d 5c fd ff ff    	mov    %ecx,-0x2a4(%rbp)
    5d5f:	c5 c1 c4 f3 01       	vpinsrw $0x1,%ebx,%xmm7,%xmm6
    5d64:	c4 c1 01 c4 e2 01    	vpinsrw $0x1,%r10d,%xmm15,%xmm4
    5d6a:	89 85 44 fd ff ff    	mov    %eax,-0x2bc(%rbp)
    5d70:	c5 69 c4 e2 01       	vpinsrw $0x1,%edx,%xmm2,%xmm12
    5d75:	c5 79 6e 95 68 fd ff 	vmovd  -0x298(%rbp),%xmm10
    5d7c:	ff 
    5d7d:	c4 41 79 c5 ce 00    	vpextrw $0x0,%xmm14,%r9d
    5d83:	c4 41 79 c5 c6 01    	vpextrw $0x1,%xmm14,%r8d
    5d89:	c4 c1 79 c5 fe 02    	vpextrw $0x2,%xmm14,%edi
    5d8f:	c4 c1 79 c5 f6 03    	vpextrw $0x3,%xmm14,%esi
    5d95:	c4 c1 79 c5 ce 04    	vpextrw $0x4,%xmm14,%ecx
    5d9b:	c4 c1 79 c5 c6 07    	vpextrw $0x7,%xmm14,%eax
    5da1:	c4 41 11 c4 f3 01    	vpinsrw $0x1,%r11d,%xmm13,%xmm14
    5da7:	c4 c1 31 6c e8       	vpunpcklqdq %xmm8,%xmm9,%xmm5
    5dac:	c5 79 6e 85 64 fd ff 	vmovd  -0x29c(%rbp),%xmm8
    5db3:	ff 
    5db4:	c4 c1 59 62 cc       	vpunpckldq %xmm12,%xmm4,%xmm1
    5db9:	c4 c1 49 62 de       	vpunpckldq %xmm14,%xmm6,%xmm3
    5dbe:	c5 f9 6e b5 60 fd ff 	vmovd  -0x2a0(%rbp),%xmm6
    5dc5:	ff 
    5dc6:	c4 41 29 c4 c9 01    	vpinsrw $0x1,%r9d,%xmm10,%xmm9
    5dcc:	c5 79 6e 95 54 fd ff 	vmovd  -0x2ac(%rbp),%xmm10
    5dd3:	ff 
    5dd4:	c4 c1 39 c4 f8 01    	vpinsrw $0x1,%r8d,%xmm8,%xmm7
    5dda:	c5 79 6e b5 5c fd ff 	vmovd  -0x2a4(%rbp),%xmm14
    5de1:	ff 
    5de2:	c5 61 6c d9          	vpunpcklqdq %xmm1,%xmm3,%xmm11
    5de6:	c5 f9 6e 9d 58 fd ff 	vmovd  -0x2a8(%rbp),%xmm3
    5ded:	ff 
    5dee:	c5 49 c4 ef 01       	vpinsrw $0x1,%edi,%xmm6,%xmm13
    5df3:	c5 b1 62 e7          	vpunpckldq %xmm7,%xmm9,%xmm4
    5df7:	c5 29 c4 8d 50 fd ff 	vpinsrw $0x1,-0x2b0(%rbp),%xmm10,%xmm9
    5dfe:	ff 01 
    5e00:	c5 79 6e 85 4c fd ff 	vmovd  -0x2b4(%rbp),%xmm8
    5e07:	ff 
    5e08:	c5 f9 6e b5 44 fd ff 	vmovd  -0x2bc(%rbp),%xmm6
    5e0f:	ff 
    5e10:	c5 09 c4 fe 01       	vpinsrw $0x1,%esi,%xmm14,%xmm15
    5e15:	c5 b9 c4 bd 48 fd ff 	vpinsrw $0x1,-0x2b8(%rbp),%xmm8,%xmm7
    5e1c:	ff 01 
    5e1e:	c4 c1 11 62 d7       	vpunpckldq %xmm15,%xmm13,%xmm2
    5e23:	c5 e1 c4 c9 01       	vpinsrw $0x1,%ecx,%xmm3,%xmm1
    5e28:	c5 49 c4 e8 01       	vpinsrw $0x1,%eax,%xmm6,%xmm13
    5e2d:	c5 59 6c e2          	vpunpcklqdq %xmm2,%xmm4,%xmm12
    5e31:	c4 41 71 62 f1       	vpunpckldq %xmm9,%xmm1,%xmm14
    5e36:	c4 41 41 62 fd       	vpunpckldq %xmm13,%xmm7,%xmm15
    5e3b:	c4 c3 55 38 eb 01    	vinserti128 $0x1,%xmm11,%ymm5,%ymm5
    5e41:	c4 c1 09 6c e7       	vpunpcklqdq %xmm15,%xmm14,%xmm4
    5e46:	c4 63 1d 38 dc 01    	vinserti128 $0x1,%xmm4,%ymm12,%ymm11
    5e4c:	62 d3 d5 48 3a d3 01 	vinserti64x4 $0x1,%ymm11,%zmm5,%zmm2
    5e53:	62 f1 fd 48 7f 95 50 	vmovdqa64 %zmm2,-0x1b0(%rbp)
    5e5a:	fe ff ff 
    5e5d:	c5 f8 77             	vzeroupper 
    5e60:	e8 1b ce ff ff       	callq  2c80 <_Z9timeSinced>
    5e65:	e8 b6 cd ff ff       	callq  2c20 <_Z7getTimev>
    5e6a:	44 0f b6 3d 4e 73 20 	movzbl 0x20734e(%rip),%r15d        # 20d1c0 <_ZGVZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    5e71:	00 
    5e72:	45 84 ff             	test   %r15b,%r15b
    5e75:	0f 84 dd 07 00 00    	je     6658 <_Z8newBenchv+0xeb8>
    5e7b:	4c 8d b5 90 fe ff ff 	lea    -0x170(%rbp),%r14
    5e82:	b9 20 00 00 00       	mov    $0x20,%ecx
    5e87:	31 c0                	xor    %eax,%eax
    5e89:	62 71 fd 48 6f 15 6d 	vmovdqa64 0x20736d(%rip),%zmm10        # 20d200 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    5e90:	73 20 00 
    5e93:	4c 8b ad 38 fd ff ff 	mov    -0x2c8(%rbp),%r13
    5e9a:	4c 89 f7             	mov    %r14,%rdi
    5e9d:	62 f1 fd 48 6f 35 19 	vmovdqa64 0x207919(%rip),%zmm6        # 20d7c0 <_ZL4idx0>
    5ea4:	79 20 00 
    5ea7:	4d 8d 66 40          	lea    0x40(%r14),%r12
    5eab:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    5eae:	62 52 cd 48 8d ea    	vpermw %zmm10,%zmm6,%zmm13
    5eb4:	62 71 fd 48 6f 0d c2 	vmovdqa64 0x2078c2(%rip),%zmm9        # 20d780 <_ZL4idx1>
    5ebb:	78 20 00 
    5ebe:	62 71 fd 48 6f 05 78 	vmovdqa64 0x207878(%rip),%zmm8        # 20d740 <_ZL4idx2>
    5ec5:	78 20 00 
    5ec8:	62 f1 fd 48 6f 3d 2e 	vmovdqa64 0x20782e(%rip),%zmm7        # 20d700 <_ZL6addsub>
    5ecf:	78 20 00 
    5ed2:	62 71 fd 08 6f 35 d4 	vmovdqa64 0x5dd4(%rip),%xmm14        # bcb0 <_ZL5temp0+0x710>
    5ed9:	5d 00 00 
    5edc:	62 71 fd 08 6f 3d da 	vmovdqa64 0x5dda(%rip),%xmm15        # bcc0 <_ZL5temp0+0x720>
    5ee3:	5d 00 00 
    5ee6:	49 83 c6 10          	add    $0x10,%r14
    5eea:	49 81 c5 00 01 00 00 	add    $0x100,%r13
    5ef1:	62 d1 fd 48 6f 65 fc 	vmovdqa64 -0x100(%r13),%zmm4
    5ef8:	62 f2 b5 48 8d ec    	vpermw %zmm4,%zmm9,%zmm5
    5efe:	62 72 bd 48 8d dc    	vpermw %zmm4,%zmm8,%zmm11
    5f04:	62 d1 55 48 d5 d5    	vpmullw %zmm13,%zmm5,%zmm2
    5f0a:	62 71 6d 48 d5 e7    	vpmullw %zmm7,%zmm2,%zmm12
    5f10:	62 d1 25 48 d5 da    	vpmullw %zmm10,%zmm11,%zmm3
    5f16:	62 f1 1d 48 fd cb    	vpaddw %zmm3,%zmm12,%zmm1
    5f1c:	62 f3 fd 48 3b cc 01 	vextracti64x4 $0x1,%zmm1,%ymm4
    5f23:	c5 f5 fd ec          	vpaddw %ymm4,%ymm1,%ymm5
    5f27:	62 f3 fd 28 39 ea 01 	vextracti64x2 $0x1,%ymm5,%xmm2
    5f2e:	c5 51 fd e2          	vpaddw %xmm2,%xmm5,%xmm12
    5f32:	62 d2 8d 08 8d dc    	vpermw %xmm12,%xmm14,%xmm3
    5f38:	62 d1 fd 48 6f 6d fd 	vmovdqa64 -0xc0(%r13),%zmm5
    5f3f:	62 72 b5 48 8d dd    	vpermw %zmm5,%zmm9,%zmm11
    5f45:	c4 c1 61 fd cc       	vpaddw %xmm12,%xmm3,%xmm1
    5f4a:	62 72 bd 48 8d e5    	vpermw %zmm5,%zmm8,%zmm12
    5f50:	62 f2 85 08 8d f1    	vpermw %xmm1,%xmm15,%xmm6
    5f56:	62 d1 25 48 d5 d5    	vpmullw %zmm13,%zmm11,%zmm2
    5f5c:	62 f1 6d 48 d5 df    	vpmullw %zmm7,%zmm2,%zmm3
    5f62:	c5 c9 fd e1          	vpaddw %xmm1,%xmm6,%xmm4
    5f66:	62 d1 1d 48 d5 ca    	vpmullw %zmm10,%zmm12,%zmm1
    5f6c:	62 f1 65 48 fd f1    	vpaddw %zmm1,%zmm3,%zmm6
    5f72:	62 f3 fd 48 3b f5 01 	vextracti64x4 $0x1,%zmm6,%ymm5
    5f79:	c5 f9 7e e3          	vmovd  %xmm4,%ebx
    5f7d:	c4 c3 79 15 66 f2 01 	vpextrw $0x1,%xmm4,-0xe(%r14)
    5f84:	66 41 89 5e f0       	mov    %bx,-0x10(%r14)
    5f89:	c5 4d fd dd          	vpaddw %ymm5,%ymm6,%ymm11
    5f8d:	62 73 fd 28 39 da 01 	vextracti64x2 $0x1,%ymm11,%xmm2
    5f94:	c5 a1 fd da          	vpaddw %xmm2,%xmm11,%xmm3
    5f98:	62 f2 8d 08 8d cb    	vpermw %xmm3,%xmm14,%xmm1
    5f9e:	62 51 fd 48 6f 5d fe 	vmovdqa64 -0x80(%r13),%zmm11
    5fa5:	62 52 b5 48 8d e3    	vpermw %zmm11,%zmm9,%zmm12
    5fab:	c5 f1 fd f3          	vpaddw %xmm3,%xmm1,%xmm6
    5faf:	62 d2 bd 48 8d db    	vpermw %zmm11,%zmm8,%zmm3
    5fb5:	62 f2 85 08 8d e6    	vpermw %xmm6,%xmm15,%xmm4
    5fbb:	62 d1 1d 48 d5 d5    	vpmullw %zmm13,%zmm12,%zmm2
    5fc1:	62 d1 65 48 d5 ca    	vpmullw %zmm10,%zmm3,%zmm1
    5fc7:	c5 d9 fd ee          	vpaddw %xmm6,%xmm4,%xmm5
    5fcb:	62 f1 6d 48 d5 f7    	vpmullw %zmm7,%zmm2,%zmm6
    5fd1:	62 f1 4d 48 fd e1    	vpaddw %zmm1,%zmm6,%zmm4
    5fd7:	62 d3 fd 48 3b e3 01 	vextracti64x4 $0x1,%zmm4,%ymm11
    5fde:	c4 c1 79 7e eb       	vmovd  %xmm5,%r11d
    5fe3:	c4 c3 79 15 6e f6 01 	vpextrw $0x1,%xmm5,-0xa(%r14)
    5fea:	66 45 89 5e f4       	mov    %r11w,-0xc(%r14)
    5fef:	c4 41 5d fd e3       	vpaddw %ymm11,%ymm4,%ymm12
    5ff4:	62 73 fd 28 39 e2 01 	vextracti64x2 $0x1,%ymm12,%xmm2
    5ffb:	c5 99 fd f2          	vpaddw %xmm2,%xmm12,%xmm6
    5fff:	62 f2 8d 08 8d ce    	vpermw %xmm6,%xmm14,%xmm1
    6005:	62 51 fd 48 6f 65 ff 	vmovdqa64 -0x40(%r13),%zmm12
    600c:	62 d2 b5 48 8d dc    	vpermw %zmm12,%zmm9,%zmm3
    6012:	c5 f1 fd e6          	vpaddw %xmm6,%xmm1,%xmm4
    6016:	62 d2 bd 48 8d f4    	vpermw %zmm12,%zmm8,%zmm6
    601c:	62 f2 85 08 8d ec    	vpermw %xmm4,%xmm15,%xmm5
    6022:	62 d1 65 48 d5 d5    	vpmullw %zmm13,%zmm3,%zmm2
    6028:	62 d1 4d 48 d5 ca    	vpmullw %zmm10,%zmm6,%zmm1
    602e:	c5 51 fd dc          	vpaddw %xmm4,%xmm5,%xmm11
    6032:	62 f1 6d 48 d5 e7    	vpmullw %zmm7,%zmm2,%zmm4
    6038:	62 f1 5d 48 fd e9    	vpaddw %zmm1,%zmm4,%zmm5
    603e:	62 d3 fd 48 3b ec 01 	vextracti64x4 $0x1,%zmm5,%ymm12
    6045:	c4 41 79 7e da       	vmovd  %xmm11,%r10d
    604a:	c4 43 79 15 5e fa 01 	vpextrw $0x1,%xmm11,-0x6(%r14)
    6051:	66 45 89 56 f8       	mov    %r10w,-0x8(%r14)
    6056:	c4 c1 55 fd dc       	vpaddw %ymm12,%ymm5,%ymm3
    605b:	62 f3 fd 28 39 da 01 	vextracti64x2 $0x1,%ymm3,%xmm2
    6062:	c5 e1 fd e2          	vpaddw %xmm2,%xmm3,%xmm4
    6066:	62 f2 8d 08 8d cc    	vpermw %xmm4,%xmm14,%xmm1
    606c:	c5 f1 fd ec          	vpaddw %xmm4,%xmm1,%xmm5
    6070:	62 72 85 08 8d dd    	vpermw %xmm5,%xmm15,%xmm11
    6076:	c5 21 fd e5          	vpaddw %xmm5,%xmm11,%xmm12
    607a:	c5 79 7e e2          	vmovd  %xmm12,%edx
    607e:	c4 43 79 15 66 fe 01 	vpextrw $0x1,%xmm12,-0x2(%r14)
    6085:	66 41 89 56 fc       	mov    %dx,-0x4(%r14)
    608a:	4d 39 f4             	cmp    %r14,%r12
    608d:	0f 85 53 fe ff ff    	jne    5ee6 <_Z8newBenchv+0x746>
    6093:	62 71 fd 48 6f 95 90 	vmovdqa64 -0x170(%rbp),%zmm10
    609a:	fe ff ff 
    609d:	62 71 fd 48 7f 95 d0 	vmovdqa64 %zmm10,-0x230(%rbp)
    60a4:	fd ff ff 
    60a7:	c5 f8 77             	vzeroupper 
    60aa:	4c 8d 2d 5b 4d 00 00 	lea    0x4d5b(%rip),%r13        # ae0c <_IO_stdin_used+0x8c>
    60b1:	e8 ca cb ff ff       	callq  2c80 <_Z9timeSinced>
    60b6:	0f bf 8d d2 fd ff ff 	movswl -0x22e(%rbp),%ecx
    60bd:	4c 8d bd d0 fd ff ff 	lea    -0x230(%rbp),%r15
    60c4:	4c 89 ee             	mov    %r13,%rsi
    60c7:	0f bf 95 d0 fd ff ff 	movswl -0x230(%rbp),%edx
    60ce:	bf 01 00 00 00       	mov    $0x1,%edi
    60d3:	31 c0                	xor    %eax,%eax
    60d5:	4d 8d 77 40          	lea    0x40(%r15),%r14
    60d9:	49 83 c7 04          	add    $0x4,%r15
    60dd:	e8 fe ba ff ff       	callq  1be0 <__printf_chk@plt>
    60e2:	48 8d 35 fa 4c 00 00 	lea    0x4cfa(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    60e9:	bf 01 00 00 00       	mov    $0x1,%edi
    60ee:	31 c0                	xor    %eax,%eax
    60f0:	e8 eb ba ff ff       	callq  1be0 <__printf_chk@plt>
    60f5:	41 0f bf 4f 02       	movswl 0x2(%r15),%ecx
    60fa:	41 0f bf 17          	movswl (%r15),%edx
    60fe:	4c 89 ee             	mov    %r13,%rsi
    6101:	bf 01 00 00 00       	mov    $0x1,%edi
    6106:	31 c0                	xor    %eax,%eax
    6108:	49 83 c7 14          	add    $0x14,%r15
    610c:	e8 cf ba ff ff       	callq  1be0 <__printf_chk@plt>
    6111:	48 8d 35 cb 4c 00 00 	lea    0x4ccb(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    6118:	bf 01 00 00 00       	mov    $0x1,%edi
    611d:	31 c0                	xor    %eax,%eax
    611f:	e8 bc ba ff ff       	callq  1be0 <__printf_chk@plt>
    6124:	41 0f bf 4f f2       	movswl -0xe(%r15),%ecx
    6129:	41 0f bf 57 f0       	movswl -0x10(%r15),%edx
    612e:	4c 89 ee             	mov    %r13,%rsi
    6131:	bf 01 00 00 00       	mov    $0x1,%edi
    6136:	31 c0                	xor    %eax,%eax
    6138:	e8 a3 ba ff ff       	callq  1be0 <__printf_chk@plt>
    613d:	48 8d 35 9f 4c 00 00 	lea    0x4c9f(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    6144:	bf 01 00 00 00       	mov    $0x1,%edi
    6149:	31 c0                	xor    %eax,%eax
    614b:	e8 90 ba ff ff       	callq  1be0 <__printf_chk@plt>
    6150:	41 0f bf 4f f6       	movswl -0xa(%r15),%ecx
    6155:	41 0f bf 57 f4       	movswl -0xc(%r15),%edx
    615a:	4c 89 ee             	mov    %r13,%rsi
    615d:	bf 01 00 00 00       	mov    $0x1,%edi
    6162:	31 c0                	xor    %eax,%eax
    6164:	e8 77 ba ff ff       	callq  1be0 <__printf_chk@plt>
    6169:	48 8d 35 73 4c 00 00 	lea    0x4c73(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    6170:	bf 01 00 00 00       	mov    $0x1,%edi
    6175:	31 c0                	xor    %eax,%eax
    6177:	e8 64 ba ff ff       	callq  1be0 <__printf_chk@plt>
    617c:	41 0f bf 4f fa       	movswl -0x6(%r15),%ecx
    6181:	41 0f bf 57 f8       	movswl -0x8(%r15),%edx
    6186:	4c 89 ee             	mov    %r13,%rsi
    6189:	bf 01 00 00 00       	mov    $0x1,%edi
    618e:	31 c0                	xor    %eax,%eax
    6190:	e8 4b ba ff ff       	callq  1be0 <__printf_chk@plt>
    6195:	48 8d 35 47 4c 00 00 	lea    0x4c47(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    619c:	bf 01 00 00 00       	mov    $0x1,%edi
    61a1:	31 c0                	xor    %eax,%eax
    61a3:	e8 38 ba ff ff       	callq  1be0 <__printf_chk@plt>
    61a8:	41 0f bf 4f fe       	movswl -0x2(%r15),%ecx
    61ad:	41 0f bf 57 fc       	movswl -0x4(%r15),%edx
    61b2:	4c 89 ee             	mov    %r13,%rsi
    61b5:	bf 01 00 00 00       	mov    $0x1,%edi
    61ba:	31 c0                	xor    %eax,%eax
    61bc:	e8 1f ba ff ff       	callq  1be0 <__printf_chk@plt>
    61c1:	48 8d 35 1b 4c 00 00 	lea    0x4c1b(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    61c8:	31 c0                	xor    %eax,%eax
    61ca:	bf 01 00 00 00       	mov    $0x1,%edi
    61cf:	e8 0c ba ff ff       	callq  1be0 <__printf_chk@plt>
    61d4:	4d 39 fe             	cmp    %r15,%r14
    61d7:	0f 85 18 ff ff ff    	jne    60f5 <_Z8newBenchv+0x955>
    61dd:	4c 8b 0d 9c 6e 20 00 	mov    0x206e9c(%rip),%r9        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    61e4:	48 8d 35 95 6e 20 00 	lea    0x206e95(%rip),%rsi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    61eb:	4d 8b 41 e8          	mov    -0x18(%r9),%r8
    61ef:	4e 8b a4 06 f0 00 00 	mov    0xf0(%rsi,%r8,1),%r12
    61f6:	00 
    61f7:	4d 85 e4             	test   %r12,%r12
    61fa:	0f 84 e8 04 00 00    	je     66e8 <_Z8newBenchv+0xf48>
    6200:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    6206:	0f 84 17 04 00 00    	je     6623 <_Z8newBenchv+0xe83>
    620c:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    6212:	48 8d 3d 67 6e 20 00 	lea    0x206e67(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    6219:	4c 8d 35 ec 4b 00 00 	lea    0x4bec(%rip),%r14        # ae0c <_IO_stdin_used+0x8c>
    6220:	48 8d 9d 50 fe ff ff 	lea    -0x1b0(%rbp),%rbx
    6227:	e8 c4 b8 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    622c:	48 89 c7             	mov    %rax,%rdi
    622f:	4c 8d 7b 40          	lea    0x40(%rbx),%r15
    6233:	48 83 c3 04          	add    $0x4,%rbx
    6237:	e8 74 b8 ff ff       	callq  1ab0 <_ZNSo5flushEv@plt>
    623c:	0f bf 8d 52 fe ff ff 	movswl -0x1ae(%rbp),%ecx
    6243:	0f bf 95 50 fe ff ff 	movswl -0x1b0(%rbp),%edx
    624a:	4c 89 f6             	mov    %r14,%rsi
    624d:	bf 01 00 00 00       	mov    $0x1,%edi
    6252:	31 c0                	xor    %eax,%eax
    6254:	e8 87 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    6259:	48 8d 35 83 4b 00 00 	lea    0x4b83(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    6260:	bf 01 00 00 00       	mov    $0x1,%edi
    6265:	31 c0                	xor    %eax,%eax
    6267:	e8 74 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    626c:	0f bf 4b 02          	movswl 0x2(%rbx),%ecx
    6270:	0f bf 13             	movswl (%rbx),%edx
    6273:	4c 89 f6             	mov    %r14,%rsi
    6276:	bf 01 00 00 00       	mov    $0x1,%edi
    627b:	31 c0                	xor    %eax,%eax
    627d:	48 83 c3 14          	add    $0x14,%rbx
    6281:	e8 5a b9 ff ff       	callq  1be0 <__printf_chk@plt>
    6286:	48 8d 35 56 4b 00 00 	lea    0x4b56(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    628d:	bf 01 00 00 00       	mov    $0x1,%edi
    6292:	31 c0                	xor    %eax,%eax
    6294:	e8 47 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    6299:	0f bf 4b f2          	movswl -0xe(%rbx),%ecx
    629d:	0f bf 53 f0          	movswl -0x10(%rbx),%edx
    62a1:	4c 89 f6             	mov    %r14,%rsi
    62a4:	bf 01 00 00 00       	mov    $0x1,%edi
    62a9:	31 c0                	xor    %eax,%eax
    62ab:	e8 30 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    62b0:	48 8d 35 2c 4b 00 00 	lea    0x4b2c(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    62b7:	bf 01 00 00 00       	mov    $0x1,%edi
    62bc:	31 c0                	xor    %eax,%eax
    62be:	e8 1d b9 ff ff       	callq  1be0 <__printf_chk@plt>
    62c3:	0f bf 4b f6          	movswl -0xa(%rbx),%ecx
    62c7:	0f bf 53 f4          	movswl -0xc(%rbx),%edx
    62cb:	4c 89 f6             	mov    %r14,%rsi
    62ce:	bf 01 00 00 00       	mov    $0x1,%edi
    62d3:	31 c0                	xor    %eax,%eax
    62d5:	e8 06 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    62da:	48 8d 35 02 4b 00 00 	lea    0x4b02(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    62e1:	bf 01 00 00 00       	mov    $0x1,%edi
    62e6:	31 c0                	xor    %eax,%eax
    62e8:	e8 f3 b8 ff ff       	callq  1be0 <__printf_chk@plt>
    62ed:	0f bf 4b fa          	movswl -0x6(%rbx),%ecx
    62f1:	0f bf 53 f8          	movswl -0x8(%rbx),%edx
    62f5:	4c 89 f6             	mov    %r14,%rsi
    62f8:	bf 01 00 00 00       	mov    $0x1,%edi
    62fd:	31 c0                	xor    %eax,%eax
    62ff:	e8 dc b8 ff ff       	callq  1be0 <__printf_chk@plt>
    6304:	48 8d 35 d8 4a 00 00 	lea    0x4ad8(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    630b:	bf 01 00 00 00       	mov    $0x1,%edi
    6310:	31 c0                	xor    %eax,%eax
    6312:	e8 c9 b8 ff ff       	callq  1be0 <__printf_chk@plt>
    6317:	0f bf 4b fe          	movswl -0x2(%rbx),%ecx
    631b:	0f bf 53 fc          	movswl -0x4(%rbx),%edx
    631f:	4c 89 f6             	mov    %r14,%rsi
    6322:	bf 01 00 00 00       	mov    $0x1,%edi
    6327:	31 c0                	xor    %eax,%eax
    6329:	e8 b2 b8 ff ff       	callq  1be0 <__printf_chk@plt>
    632e:	48 8d 35 ae 4a 00 00 	lea    0x4aae(%rip),%rsi        # ade3 <_IO_stdin_used+0x63>
    6335:	31 c0                	xor    %eax,%eax
    6337:	bf 01 00 00 00       	mov    $0x1,%edi
    633c:	e8 9f b8 ff ff       	callq  1be0 <__printf_chk@plt>
    6341:	49 39 df             	cmp    %rbx,%r15
    6344:	0f 85 22 ff ff ff    	jne    626c <_Z8newBenchv+0xacc>
    634a:	44 0f b7 9d 52 fe ff 	movzwl -0x1ae(%rbp),%r11d
    6351:	ff 
    6352:	66 44 39 9d d2 fd ff 	cmp    %r11w,-0x22e(%rbp)
    6359:	ff 
    635a:	0f 85 a4 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6360:	44 0f b7 95 d0 fd ff 	movzwl -0x230(%rbp),%r10d
    6367:	ff 
    6368:	66 44 39 95 50 fe ff 	cmp    %r10w,-0x1b0(%rbp)
    636f:	ff 
    6370:	0f 85 8e 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6376:	0f b7 95 54 fe ff ff 	movzwl -0x1ac(%rbp),%edx
    637d:	66 39 95 d4 fd ff ff 	cmp    %dx,-0x22c(%rbp)
    6384:	0f 85 7a 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    638a:	44 0f b7 ad 56 fe ff 	movzwl -0x1aa(%rbp),%r13d
    6391:	ff 
    6392:	66 44 39 ad d6 fd ff 	cmp    %r13w,-0x22a(%rbp)
    6399:	ff 
    639a:	0f 85 64 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    63a0:	44 0f b7 8d da fd ff 	movzwl -0x226(%rbp),%r9d
    63a7:	ff 
    63a8:	66 44 39 8d 5a fe ff 	cmp    %r9w,-0x1a6(%rbp)
    63af:	ff 
    63b0:	0f 85 4e 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    63b6:	44 0f b7 85 d8 fd ff 	movzwl -0x228(%rbp),%r8d
    63bd:	ff 
    63be:	66 44 39 85 58 fe ff 	cmp    %r8w,-0x1a8(%rbp)
    63c5:	ff 
    63c6:	0f 85 38 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    63cc:	0f b7 b5 5c fe ff ff 	movzwl -0x1a4(%rbp),%esi
    63d3:	66 39 b5 dc fd ff ff 	cmp    %si,-0x224(%rbp)
    63da:	0f 85 24 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    63e0:	44 0f b7 a5 5e fe ff 	movzwl -0x1a2(%rbp),%r12d
    63e7:	ff 
    63e8:	66 44 39 a5 de fd ff 	cmp    %r12w,-0x222(%rbp)
    63ef:	ff 
    63f0:	0f 85 0e 02 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    63f6:	0f b7 8d 60 fe ff ff 	movzwl -0x1a0(%rbp),%ecx
    63fd:	66 39 8d e0 fd ff ff 	cmp    %cx,-0x220(%rbp)
    6404:	0f 85 fa 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    640a:	0f b7 85 e2 fd ff ff 	movzwl -0x21e(%rbp),%eax
    6411:	66 39 85 62 fe ff ff 	cmp    %ax,-0x19e(%rbp)
    6418:	0f 85 e6 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    641e:	0f b7 bd 64 fe ff ff 	movzwl -0x19c(%rbp),%edi
    6425:	66 39 bd e4 fd ff ff 	cmp    %di,-0x21c(%rbp)
    642c:	0f 85 d2 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6432:	0f b7 9d e6 fd ff ff 	movzwl -0x21a(%rbp),%ebx
    6439:	66 39 9d 66 fe ff ff 	cmp    %bx,-0x19a(%rbp)
    6440:	0f 85 be 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6446:	44 0f b7 bd 6a fe ff 	movzwl -0x196(%rbp),%r15d
    644d:	ff 
    644e:	66 44 39 bd ea fd ff 	cmp    %r15w,-0x216(%rbp)
    6455:	ff 
    6456:	0f 85 a8 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    645c:	44 0f b7 b5 e8 fd ff 	movzwl -0x218(%rbp),%r14d
    6463:	ff 
    6464:	66 44 39 b5 68 fe ff 	cmp    %r14w,-0x198(%rbp)
    646b:	ff 
    646c:	0f 85 92 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6472:	44 0f b7 9d ec fd ff 	movzwl -0x214(%rbp),%r11d
    6479:	ff 
    647a:	66 44 39 9d 6c fe ff 	cmp    %r11w,-0x194(%rbp)
    6481:	ff 
    6482:	0f 85 7c 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6488:	44 0f b7 95 ee fd ff 	movzwl -0x212(%rbp),%r10d
    648f:	ff 
    6490:	66 44 39 95 6e fe ff 	cmp    %r10w,-0x192(%rbp)
    6497:	ff 
    6498:	0f 85 66 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    649e:	0f b7 95 f2 fd ff ff 	movzwl -0x20e(%rbp),%edx
    64a5:	66 39 95 72 fe ff ff 	cmp    %dx,-0x18e(%rbp)
    64ac:	0f 85 52 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    64b2:	44 0f b7 ad f0 fd ff 	movzwl -0x210(%rbp),%r13d
    64b9:	ff 
    64ba:	66 44 39 ad 70 fe ff 	cmp    %r13w,-0x190(%rbp)
    64c1:	ff 
    64c2:	0f 85 3c 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    64c8:	44 0f b7 8d f6 fd ff 	movzwl -0x20a(%rbp),%r9d
    64cf:	ff 
    64d0:	66 44 39 8d 76 fe ff 	cmp    %r9w,-0x18a(%rbp)
    64d7:	ff 
    64d8:	0f 85 26 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    64de:	44 0f b7 85 f4 fd ff 	movzwl -0x20c(%rbp),%r8d
    64e5:	ff 
    64e6:	66 44 39 85 74 fe ff 	cmp    %r8w,-0x18c(%rbp)
    64ed:	ff 
    64ee:	0f 85 10 01 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    64f4:	0f b7 b5 fa fd ff ff 	movzwl -0x206(%rbp),%esi
    64fb:	66 39 b5 7a fe ff ff 	cmp    %si,-0x186(%rbp)
    6502:	0f 85 fc 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6508:	44 0f b7 a5 f8 fd ff 	movzwl -0x208(%rbp),%r12d
    650f:	ff 
    6510:	66 44 39 a5 78 fe ff 	cmp    %r12w,-0x188(%rbp)
    6517:	ff 
    6518:	0f 85 e6 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    651e:	0f b7 8d fe fd ff ff 	movzwl -0x202(%rbp),%ecx
    6525:	66 39 8d 7e fe ff ff 	cmp    %cx,-0x182(%rbp)
    652c:	0f 85 d2 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6532:	0f b7 85 fc fd ff ff 	movzwl -0x204(%rbp),%eax
    6539:	66 39 85 7c fe ff ff 	cmp    %ax,-0x184(%rbp)
    6540:	0f 85 be 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6546:	0f b7 bd 02 fe ff ff 	movzwl -0x1fe(%rbp),%edi
    654d:	66 39 bd 82 fe ff ff 	cmp    %di,-0x17e(%rbp)
    6554:	0f 85 aa 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    655a:	0f b7 9d 00 fe ff ff 	movzwl -0x200(%rbp),%ebx
    6561:	66 39 9d 80 fe ff ff 	cmp    %bx,-0x180(%rbp)
    6568:	0f 85 96 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    656e:	44 0f b7 bd 06 fe ff 	movzwl -0x1fa(%rbp),%r15d
    6575:	ff 
    6576:	66 44 39 bd 86 fe ff 	cmp    %r15w,-0x17a(%rbp)
    657d:	ff 
    657e:	0f 85 80 00 00 00    	jne    6604 <_Z8newBenchv+0xe64>
    6584:	44 0f b7 b5 04 fe ff 	movzwl -0x1fc(%rbp),%r14d
    658b:	ff 
    658c:	66 44 39 b5 84 fe ff 	cmp    %r14w,-0x17c(%rbp)
    6593:	ff 
    6594:	75 6e                	jne    6604 <_Z8newBenchv+0xe64>
    6596:	44 0f b7 9d 0a fe ff 	movzwl -0x1f6(%rbp),%r11d
    659d:	ff 
    659e:	66 44 39 9d 8a fe ff 	cmp    %r11w,-0x176(%rbp)
    65a5:	ff 
    65a6:	75 5c                	jne    6604 <_Z8newBenchv+0xe64>
    65a8:	44 0f b7 95 08 fe ff 	movzwl -0x1f8(%rbp),%r10d
    65af:	ff 
    65b0:	66 44 39 95 88 fe ff 	cmp    %r10w,-0x178(%rbp)
    65b7:	ff 
    65b8:	75 4a                	jne    6604 <_Z8newBenchv+0xe64>
    65ba:	0f b7 95 8c fe ff ff 	movzwl -0x174(%rbp),%edx
    65c1:	66 39 95 0c fe ff ff 	cmp    %dx,-0x1f4(%rbp)
    65c8:	75 3a                	jne    6604 <_Z8newBenchv+0xe64>
    65ca:	44 0f b7 ad 8e fe ff 	movzwl -0x172(%rbp),%r13d
    65d1:	ff 
    65d2:	66 44 39 ad 0e fe ff 	cmp    %r13w,-0x1f2(%rbp)
    65d9:	ff 
    65da:	75 28                	jne    6604 <_Z8newBenchv+0xe64>
    65dc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    65e0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    65e7:	00 00 
    65e9:	0f 85 fe 00 00 00    	jne    66ed <_Z8newBenchv+0xf4d>
    65ef:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
    65f3:	5b                   	pop    %rbx
    65f4:	41 59                	pop    %r9
    65f6:	41 5c                	pop    %r12
    65f8:	41 5d                	pop    %r13
    65fa:	41 5e                	pop    %r14
    65fc:	41 5f                	pop    %r15
    65fe:	5d                   	pop    %rbp
    65ff:	49 8d 61 f8          	lea    -0x8(%r9),%rsp
    6603:	c3                   	retq   
    6604:	48 8d 0d b5 4e 00 00 	lea    0x4eb5(%rip),%rcx        # b4c0 <_ZZ8newBenchvE19__PRETTY_FUNCTION__>
    660b:	48 8d 35 05 48 00 00 	lea    0x4805(%rip),%rsi        # ae17 <_IO_stdin_used+0x97>
    6612:	48 8d 3d cf 49 00 00 	lea    0x49cf(%rip),%rdi        # afe8 <_IO_stdin_used+0x268>
    6619:	ba 2d 01 00 00       	mov    $0x12d,%edx
    661e:	e8 ad b3 ff ff       	callq  19d0 <__assert_fail@plt>
    6623:	4c 89 e7             	mov    %r12,%rdi
    6626:	e8 75 b4 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    662b:	49 8b 0c 24          	mov    (%r12),%rcx
    662f:	48 8d 3d da c5 ff ff 	lea    -0x3a26(%rip),%rdi        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    6636:	be 0a 00 00 00       	mov    $0xa,%esi
    663b:	48 8b 41 30          	mov    0x30(%rcx),%rax
    663f:	48 39 f8             	cmp    %rdi,%rax
    6642:	0f 84 ca fb ff ff    	je     6212 <_Z8newBenchv+0xa72>
    6648:	4c 89 e7             	mov    %r12,%rdi
    664b:	ff d0                	callq  *%rax
    664d:	0f be f0             	movsbl %al,%esi
    6650:	e9 bd fb ff ff       	jmpq   6212 <_Z8newBenchv+0xa72>
    6655:	0f 1f 00             	nopl   (%rax)
    6658:	48 8d 3d 61 6b 20 00 	lea    0x206b61(%rip),%rdi        # 20d1c0 <_ZGVZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    665f:	c5 fb 11 85 88 fd ff 	vmovsd %xmm0,-0x278(%rbp)
    6666:	ff 
    6667:	e8 f4 b3 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    666c:	85 c0                	test   %eax,%eax
    666e:	c5 fb 10 85 88 fd ff 	vmovsd -0x278(%rbp),%xmm0
    6675:	ff 
    6676:	0f 84 ff f7 ff ff    	je     5e7b <_Z8newBenchv+0x6db>
    667c:	62 f1 fd 48 6f 85 90 	vmovdqa64 -0x270(%rbp),%zmm0
    6683:	fd ff ff 
    6686:	48 8d 3d 33 6b 20 00 	lea    0x206b33(%rip),%rdi        # 20d1c0 <_ZGVZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    668d:	62 71 fd 48 6f a5 d0 	vmovdqa64 -0x230(%rbp),%zmm12
    6694:	fd ff ff 
    6697:	62 f1 fd 48 6f 9d 10 	vmovdqa64 -0x1f0(%rbp),%zmm3
    669e:	fe ff ff 
    66a1:	62 f1 fd 48 6f 8d 50 	vmovdqa64 -0x1b0(%rbp),%zmm1
    66a8:	fe ff ff 
    66ab:	62 f1 fd 48 7f 05 4b 	vmovdqa64 %zmm0,0x206b4b(%rip)        # 20d200 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    66b2:	6b 20 00 
    66b5:	62 71 fd 48 7f 25 81 	vmovdqa64 %zmm12,0x206b81(%rip)        # 20d240 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    66bc:	6b 20 00 
    66bf:	62 f1 fd 48 7f 1d b7 	vmovdqa64 %zmm3,0x206bb7(%rip)        # 20d280 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x80>
    66c6:	6b 20 00 
    66c9:	62 f1 fd 48 7f 0d ed 	vmovdqa64 %zmm1,0x206bed(%rip)        # 20d2c0 <_ZZ12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0xc0>
    66d0:	6b 20 00 
    66d3:	c5 f8 77             	vzeroupper 
    66d6:	e8 25 b4 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    66db:	c5 fb 10 85 88 fd ff 	vmovsd -0x278(%rbp),%xmm0
    66e2:	ff 
    66e3:	e9 93 f7 ff ff       	jmpq   5e7b <_Z8newBenchv+0x6db>
    66e8:	e8 53 b3 ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>
    66ed:	e8 1e b3 ff ff       	callq  1a10 <__stack_chk_fail@plt>
    66f2:	0f 1f 40 00          	nopl   0x0(%rax)
    66f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    66fd:	00 00 00 

0000000000006700 <_Z17int16MatrixToArmaP13Complex_int16ii>:
    6700:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    6705:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    6709:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    670e:	41 ff 72 f8          	pushq  -0x8(%r10)
    6712:	55                   	push   %rbp
    6713:	48 89 e5             	mov    %rsp,%rbp
    6716:	41 57                	push   %r15
    6718:	41 56                	push   %r14
    671a:	41 55                	push   %r13
    671c:	41 54                	push   %r12
    671e:	41 52                	push   %r10
    6720:	53                   	push   %rbx
    6721:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
    6728:	48 89 bd 40 fe ff ff 	mov    %rdi,-0x1c0(%rbp)
    672f:	48 63 f9             	movslq %ecx,%rdi
    6732:	64 48 8b 1c 25 28 00 	mov    %fs:0x28,%rbx
    6739:	00 00 
    673b:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
    673f:	31 db                	xor    %ebx,%ebx
    6741:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
    6748:	48 89 fb             	mov    %rdi,%rbx
    674b:	48 63 f2             	movslq %edx,%rsi
    674e:	48 0f af de          	imul   %rsi,%rbx
    6752:	48 39 c7             	cmp    %rax,%rdi
    6755:	49 89 f5             	mov    %rsi,%r13
    6758:	41 0f 97 c6          	seta   %r14b
    675c:	48 39 c6             	cmp    %rax,%rsi
    675f:	89 bd 8c fe ff ff    	mov    %edi,-0x174(%rbp)
    6765:	0f 97 c2             	seta   %dl
    6768:	48 89 bd 50 fe ff ff 	mov    %rdi,-0x1b0(%rbp)
    676f:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
    6776:	41 08 d6             	or     %dl,%r14b
    6779:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
    6780:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
    6787:	48 89 9d f0 fe ff ff 	mov    %rbx,-0x110(%rbp)
    678e:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    6795:	00 00 00 00 
    6799:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    67a0:	00 00 00 00 
    67a4:	74 3f                	je     67e5 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe5>
    67a6:	48 85 f6             	test   %rsi,%rsi
    67a9:	0f 88 1e 0f 00 00    	js     76cd <_Z17int16MatrixToArmaP13Complex_int16ii+0xfcd>
    67af:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    67b6:	00 
    67b7:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    67bb:	c4 e1 eb 2a d6       	vcvtsi2sd %rsi,%xmm2,%xmm2
    67c0:	0f 88 31 0f 00 00    	js     76f7 <_Z17int16MatrixToArmaP13Complex_int16ii+0xff7>
    67c6:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    67ca:	c4 e1 e3 2a 9d 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm3,%xmm3
    67d1:	ff ff 
    67d3:	c5 eb 59 e3          	vmulsd %xmm3,%xmm2,%xmm4
    67d7:	c5 f9 2e 25 f1 54 00 	vucomisd 0x54f1(%rip),%xmm4        # bcd0 <_ZL5temp0+0x730>
    67de:	00 
    67df:	0f 87 ce 14 00 00    	ja     7cb3 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15b3>
    67e5:	48 83 fb 10          	cmp    $0x10,%rbx
    67e9:	0f 87 aa 0d 00 00    	ja     7599 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe99>
    67ef:	48 85 db             	test   %rbx,%rbx
    67f2:	0f 85 9d 0c 00 00    	jne    7495 <_Z17int16MatrixToArmaP13Complex_int16ii+0xd95>
    67f8:	c5 fa 7e 9d 80 fe ff 	vmovq  -0x180(%rbp),%xmm3
    67ff:	ff 
    6800:	45 84 f6             	test   %r14b,%r14b
    6803:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    680a:	00 00 00 00 
    680e:	c4 e3 e1 22 a5 50 fe 	vpinsrq $0x1,-0x1b0(%rbp),%xmm3,%xmm4
    6815:	ff ff 01 
    6818:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    681f:	00 00 00 00 
    6823:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    682a:	00 00 00 00 
    682e:	c5 f8 29 a5 50 ff ff 	vmovaps %xmm4,-0xb0(%rbp)
    6835:	ff 
    6836:	74 4a                	je     6882 <_Z17int16MatrixToArmaP13Complex_int16ii+0x182>
    6838:	48 83 bd 80 fe ff ff 	cmpq   $0x0,-0x180(%rbp)
    683f:	00 
    6840:	0f 88 12 10 00 00    	js     7858 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1158>
    6846:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    684a:	c4 e1 d3 2a ad 80 fe 	vcvtsi2sdq -0x180(%rbp),%xmm5,%xmm5
    6851:	ff ff 
    6853:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    685a:	00 
    685b:	0f 88 d2 0f 00 00    	js     7833 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1133>
    6861:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    6866:	c4 61 bb 2a 85 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm8,%xmm8
    686d:	ff ff 
    686f:	c4 41 53 59 c8       	vmulsd %xmm8,%xmm5,%xmm9
    6874:	c5 79 2e 0d 54 54 00 	vucomisd 0x5454(%rip),%xmm9        # bcd0 <_ZL5temp0+0x730>
    687b:	00 
    687c:	0f 87 67 13 00 00    	ja     7be9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14e9>
    6882:	4c 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%r9
    6889:	4c 8d 9d 50 ff ff ff 	lea    -0xb0(%rbp),%r11
    6890:	48 c7 85 58 fe ff ff 	movq   $0x0,-0x1a8(%rbp)
    6897:	00 00 00 00 
    689b:	4c 89 8d 48 fe ff ff 	mov    %r9,-0x1b8(%rbp)
    68a2:	4c 89 9d 38 fe ff ff 	mov    %r11,-0x1c8(%rbp)
    68a9:	4c 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%r10
    68b0:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    68b7:	45 85 ed             	test   %r13d,%r13d
    68ba:	4c 89 95 78 fe ff ff 	mov    %r10,-0x188(%rbp)
    68c1:	48 89 b5 70 fe ff ff 	mov    %rsi,-0x190(%rbp)
    68c8:	0f 8e fb 02 00 00    	jle    6bc9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4c9>
    68ce:	8b 95 8c fe ff ff    	mov    -0x174(%rbp),%edx
    68d4:	48 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%rdi
    68db:	45 8d 6d ff          	lea    -0x1(%r13),%r13d
    68df:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    68e6:	4c 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%r15
    68ed:	45 31 db             	xor    %r11d,%r11d
    68f0:	4c 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%r14
    68f7:	4c 8b a5 00 ff ff ff 	mov    -0x100(%rbp),%r12
    68fe:	49 83 c5 01          	add    $0x1,%r13
    6902:	8d 72 ff             	lea    -0x1(%rdx),%esi
    6905:	48 8b 9d 58 fe ff ff 	mov    -0x1a8(%rbp),%rbx
    690c:	4c 8d 0c bd 00 00 00 	lea    0x0(,%rdi,4),%r9
    6913:	00 
    6914:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
    691b:	00 
    691c:	4d 8d 57 01          	lea    0x1(%r15),%r10
    6920:	4c 89 ad 60 fe ff ff 	mov    %r13,-0x1a0(%rbp)
    6927:	49 8d 7e 01          	lea    0x1(%r14),%rdi
    692b:	4c 89 a5 30 fe ff ff 	mov    %r12,-0x1d0(%rbp)
    6932:	c7 85 88 fe ff ff 00 	movl   $0x0,-0x178(%rbp)
    6939:	00 00 00 
    693c:	48 83 c6 01          	add    $0x1,%rsi
    6940:	8b 8d 8c fe ff ff    	mov    -0x174(%rbp),%ecx
    6946:	85 c9                	test   %ecx,%ecx
    6948:	0f 8e 56 02 00 00    	jle    6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    694e:	4c 63 ad 88 fe ff ff 	movslq -0x178(%rbp),%r13
    6955:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    695c:	4c 39 9d 70 fe ff ff 	cmp    %r11,-0x190(%rbp)
    6963:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    6967:	4a 8d 0c a8          	lea    (%rax,%r13,4),%rcx
    696b:	44 0f bf 39          	movswl (%rcx),%r15d
    696f:	c4 c1 5a 2a e7       	vcvtsi2ss %r15d,%xmm4,%xmm4
    6974:	0f 86 05 0c 00 00    	jbe    757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    697a:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    6981:	00 
    6982:	0f 84 f7 0b 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6988:	4c 39 9d 80 fe ff ff 	cmp    %r11,-0x180(%rbp)
    698f:	0f 86 c3 0b 00 00    	jbe    7558 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe58>
    6995:	ba 01 00 00 00       	mov    $0x1,%edx
    699a:	4d 89 d6             	mov    %r10,%r14
    699d:	48 89 d8             	mov    %rbx,%rax
    69a0:	49 29 d6             	sub    %rdx,%r14
    69a3:	4d 89 e5             	mov    %r12,%r13
    69a6:	41 83 e6 03          	and    $0x3,%r14d
    69aa:	0f 84 c8 01 00 00    	je     6b78 <_Z17int16MatrixToArmaP13Complex_int16ii+0x478>
    69b0:	44 0f bf 69 02       	movswl 0x2(%rcx),%r13d
    69b5:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    69ba:	48 39 f2             	cmp    %rsi,%rdx
    69bd:	c4 c1 7a 11 24 24    	vmovss %xmm4,(%r12)
    69c3:	c4 41 2a 2a d5       	vcvtsi2ss %r13d,%xmm10,%xmm10
    69c8:	c5 7a 11 13          	vmovss %xmm10,(%rbx)
    69cc:	0f 84 d2 01 00 00    	je     6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    69d2:	0f bf 51 04          	movswl 0x4(%rcx),%edx
    69d6:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    69da:	4f 8d 2c 0c          	lea    (%r12,%r9,1),%r13
    69de:	4a 8d 04 03          	lea    (%rbx,%r8,1),%rax
    69e2:	c5 da 2a e2          	vcvtsi2ss %edx,%xmm4,%xmm4
    69e6:	ba 02 00 00 00       	mov    $0x2,%edx
    69eb:	48 39 fa             	cmp    %rdi,%rdx
    69ee:	0f 84 8b 0b 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    69f4:	49 83 fe 01          	cmp    $0x1,%r14
    69f8:	0f 84 7a 01 00 00    	je     6b78 <_Z17int16MatrixToArmaP13Complex_int16ii+0x478>
    69fe:	49 83 fe 02          	cmp    $0x2,%r14
    6a02:	74 43                	je     6a47 <_Z17int16MatrixToArmaP13Complex_int16ii+0x347>
    6a04:	44 0f bf 79 06       	movswl 0x6(%rcx),%r15d
    6a09:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    6a0e:	48 39 f2             	cmp    %rsi,%rdx
    6a11:	c4 c1 7a 11 65 00    	vmovss %xmm4,0x0(%r13)
    6a17:	c4 41 22 2a df       	vcvtsi2ss %r15d,%xmm11,%xmm11
    6a1c:	c5 7a 11 18          	vmovss %xmm11,(%rax)
    6a20:	0f 84 7e 01 00 00    	je     6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6a26:	44 0f bf 71 08       	movswl 0x8(%rcx),%r14d
    6a2b:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    6a2f:	48 83 c2 01          	add    $0x1,%rdx
    6a33:	4d 01 cd             	add    %r9,%r13
    6a36:	4c 01 c0             	add    %r8,%rax
    6a39:	48 39 fa             	cmp    %rdi,%rdx
    6a3c:	c4 c1 5a 2a e6       	vcvtsi2ss %r14d,%xmm4,%xmm4
    6a41:	0f 84 38 0b 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6a47:	44 0f bf 7c 91 fe    	movswl -0x2(%rcx,%rdx,4),%r15d
    6a4d:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    6a52:	48 39 f2             	cmp    %rsi,%rdx
    6a55:	c4 c1 7a 11 65 00    	vmovss %xmm4,0x0(%r13)
    6a5b:	c4 41 1a 2a e7       	vcvtsi2ss %r15d,%xmm12,%xmm12
    6a60:	c5 7a 11 20          	vmovss %xmm12,(%rax)
    6a64:	0f 84 3a 01 00 00    	je     6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6a6a:	44 0f bf 34 91       	movswl (%rcx,%rdx,4),%r14d
    6a6f:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    6a73:	48 83 c2 01          	add    $0x1,%rdx
    6a77:	4d 01 cd             	add    %r9,%r13
    6a7a:	4c 01 c0             	add    %r8,%rax
    6a7d:	48 39 fa             	cmp    %rdi,%rdx
    6a80:	c4 c1 5a 2a e6       	vcvtsi2ss %r14d,%xmm4,%xmm4
    6a85:	0f 85 ed 00 00 00    	jne    6b78 <_Z17int16MatrixToArmaP13Complex_int16ii+0x478>
    6a8b:	e9 ef 0a 00 00       	jmpq   757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6a90:	44 0f bf 34 91       	movswl (%rcx,%rdx,4),%r14d
    6a95:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
    6a9a:	4d 01 cd             	add    %r9,%r13
    6a9d:	4c 01 c0             	add    %r8,%rax
    6aa0:	c4 41 0a 2a f6       	vcvtsi2ss %r14d,%xmm14,%xmm14
    6aa5:	4c 8d 72 01          	lea    0x1(%rdx),%r14
    6aa9:	49 39 fe             	cmp    %rdi,%r14
    6aac:	0f 84 cd 0a 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6ab2:	46 0f bf 7c b1 fe    	movswl -0x2(%rcx,%r14,4),%r15d
    6ab8:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
    6abd:	49 39 f6             	cmp    %rsi,%r14
    6ac0:	c4 41 7a 11 75 00    	vmovss %xmm14,0x0(%r13)
    6ac6:	c4 41 02 2a ff       	vcvtsi2ss %r15d,%xmm15,%xmm15
    6acb:	c5 7a 11 38          	vmovss %xmm15,(%rax)
    6acf:	0f 84 cf 00 00 00    	je     6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6ad5:	46 0f bf 34 b1       	movswl (%rcx,%r14,4),%r14d
    6ada:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    6ade:	4d 01 cd             	add    %r9,%r13
    6ae1:	4c 01 c0             	add    %r8,%rax
    6ae4:	c4 c1 7a 2a c6       	vcvtsi2ss %r14d,%xmm0,%xmm0
    6ae9:	4c 8d 72 02          	lea    0x2(%rdx),%r14
    6aed:	49 39 fe             	cmp    %rdi,%r14
    6af0:	0f 84 89 0a 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6af6:	46 0f bf 7c b1 fe    	movswl -0x2(%rcx,%r14,4),%r15d
    6afc:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    6b00:	49 39 f6             	cmp    %rsi,%r14
    6b03:	c4 c1 7a 11 45 00    	vmovss %xmm0,0x0(%r13)
    6b09:	c4 c1 6a 2a d7       	vcvtsi2ss %r15d,%xmm2,%xmm2
    6b0e:	c5 fa 11 10          	vmovss %xmm2,(%rax)
    6b12:	0f 84 8c 00 00 00    	je     6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6b18:	46 0f bf 34 b1       	movswl (%rcx,%r14,4),%r14d
    6b1d:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    6b21:	4d 01 cd             	add    %r9,%r13
    6b24:	4c 01 c0             	add    %r8,%rax
    6b27:	c4 c1 72 2a ce       	vcvtsi2ss %r14d,%xmm1,%xmm1
    6b2c:	4c 8d 72 03          	lea    0x3(%rdx),%r14
    6b30:	49 39 fe             	cmp    %rdi,%r14
    6b33:	0f 84 46 0a 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6b39:	46 0f bf 7c b1 fe    	movswl -0x2(%rcx,%r14,4),%r15d
    6b3f:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    6b43:	49 39 f6             	cmp    %rsi,%r14
    6b46:	c4 c1 7a 11 4d 00    	vmovss %xmm1,0x0(%r13)
    6b4c:	c4 c1 62 2a df       	vcvtsi2ss %r15d,%xmm3,%xmm3
    6b51:	c5 fa 11 18          	vmovss %xmm3,(%rax)
    6b55:	74 4d                	je     6ba4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6b57:	46 0f bf 34 b1       	movswl (%rcx,%r14,4),%r14d
    6b5c:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    6b60:	48 83 c2 04          	add    $0x4,%rdx
    6b64:	4d 01 cd             	add    %r9,%r13
    6b67:	4c 01 c0             	add    %r8,%rax
    6b6a:	48 39 fa             	cmp    %rdi,%rdx
    6b6d:	c4 c1 5a 2a e6       	vcvtsi2ss %r14d,%xmm4,%xmm4
    6b72:	0f 84 07 0a 00 00    	je     757f <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6b78:	44 0f bf 7c 91 fe    	movswl -0x2(%rcx,%rdx,4),%r15d
    6b7e:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    6b83:	4c 39 d2             	cmp    %r10,%rdx
    6b86:	c4 c1 7a 11 65 00    	vmovss %xmm4,0x0(%r13)
    6b8c:	c4 41 12 2a ef       	vcvtsi2ss %r15d,%xmm13,%xmm13
    6b91:	0f 84 ce 09 00 00    	je     7565 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe65>
    6b97:	48 39 f2             	cmp    %rsi,%rdx
    6b9a:	c5 7a 11 28          	vmovss %xmm13,(%rax)
    6b9e:	0f 85 ec fe ff ff    	jne    6a90 <_Z17int16MatrixToArmaP13Complex_int16ii+0x390>
    6ba4:	49 83 c3 01          	add    $0x1,%r11
    6ba8:	49 83 c4 04          	add    $0x4,%r12
    6bac:	48 83 c3 04          	add    $0x4,%rbx
    6bb0:	8b 8d 8c fe ff ff    	mov    -0x174(%rbp),%ecx
    6bb6:	01 8d 88 fe ff ff    	add    %ecx,-0x178(%rbp)
    6bbc:	4c 3b 9d 60 fe ff ff 	cmp    -0x1a0(%rbp),%r11
    6bc3:	0f 85 77 fd ff ff    	jne    6940 <_Z17int16MatrixToArmaP13Complex_int16ii+0x240>
    6bc9:	4c 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%r8
    6bd0:	31 c0                	xor    %eax,%eax
    6bd2:	4c 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%r10
    6bd9:	4c 39 95 70 fe ff ff 	cmp    %r10,-0x190(%rbp)
    6be0:	62 f1 4d 28 ef f6    	vpxord %ymm6,%ymm6,%ymm6
    6be6:	b9 10 00 00 00       	mov    $0x10,%ecx
    6beb:	4d 8d 58 30          	lea    0x30(%r8),%r11
    6bef:	49 c7 40 10 00 00 00 	movq   $0x0,0x10(%r8)
    6bf6:	00 
    6bf7:	41 c7 40 18 00 00 00 	movl   $0x0,0x18(%r8)
    6bfe:	00 
    6bff:	c4 c1 78 29 30       	vmovaps %xmm6,(%r8)
    6c04:	4c 89 df             	mov    %r11,%rdi
    6c07:	41 c7 40 1c 00 00 00 	movl   $0x0,0x1c(%r8)
    6c0e:	00 
    6c0f:	49 c7 40 20 00 00 00 	movq   $0x0,0x20(%r8)
    6c16:	00 
    6c17:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    6c1a:	0f 85 17 10 00 00    	jne    7c37 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1537>
    6c20:	48 8b b5 50 fe ff ff 	mov    -0x1b0(%rbp),%rsi
    6c27:	48 39 b5 78 fe ff ff 	cmp    %rsi,-0x188(%rbp)
    6c2e:	0f 85 03 10 00 00    	jne    7c37 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1537>
    6c34:	48 83 bd 70 fe ff ff 	cmpq   $0x0,-0x190(%rbp)
    6c3b:	00 
    6c3c:	0f 84 83 0b 00 00    	je     77c5 <_Z17int16MatrixToArmaP13Complex_int16ii+0x10c5>
    6c42:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
    6c48:	4c 39 a5 70 fe ff ff 	cmp    %r12,-0x190(%rbp)
    6c4f:	0f 86 28 0c 00 00    	jbe    787d <_Z17int16MatrixToArmaP13Complex_int16ii+0x117d>
    6c55:	48 83 bd 70 fe ff ff 	cmpq   $0x0,-0x190(%rbp)
    6c5c:	00 
    6c5d:	0f 88 b9 0a 00 00    	js     771c <_Z17int16MatrixToArmaP13Complex_int16ii+0x101c>
    6c63:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    6c6a:	00 
    6c6b:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    6c6f:	c4 e1 c3 2a bd 70 fe 	vcvtsi2sdq -0x190(%rbp),%xmm7,%xmm7
    6c76:	ff ff 
    6c78:	0f 88 cc 0a 00 00    	js     774a <_Z17int16MatrixToArmaP13Complex_int16ii+0x104a>
    6c7e:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    6c83:	c4 61 b3 2a 8d 78 fe 	vcvtsi2sdq -0x188(%rbp),%xmm9,%xmm9
    6c8a:	ff ff 
    6c8c:	c4 41 43 59 d1       	vmulsd %xmm9,%xmm7,%xmm10
    6c91:	c5 79 2e 15 37 50 00 	vucomisd 0x5037(%rip),%xmm10        # bcd0 <_ZL5temp0+0x730>
    6c98:	00 
    6c99:	0f 87 9a 10 00 00    	ja     7d39 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1639>
    6c9f:	48 8b 9d 70 fe ff ff 	mov    -0x190(%rbp),%rbx
    6ca6:	48 0f af 9d 78 fe ff 	imul   -0x188(%rbp),%rbx
    6cad:	ff 
    6cae:	48 85 db             	test   %rbx,%rbx
    6cb1:	0f 84 5b 0b 00 00    	je     7812 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1112>
    6cb7:	48 83 fb 10          	cmp    $0x10,%rbx
    6cbb:	0f 87 5f 0e 00 00    	ja     7b20 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1420>
    6cc1:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
    6cc8:	4c 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%r10
    6ccf:	4c 89 d8             	mov    %r11,%rax
    6cd2:	4c 89 5f 20          	mov    %r11,0x20(%rdi)
    6cd6:	49 89 f8             	mov    %rdi,%r8
    6cd9:	4c 8d 2c 9d 00 00 00 	lea    0x0(,%rbx,4),%r13
    6ce0:	00 
    6ce1:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
    6ce8:	48 8d 14 d8          	lea    (%rax,%rbx,8),%rdx
    6cec:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
    6cf3:	4c 8b a5 78 fe ff ff 	mov    -0x188(%rbp),%r12
    6cfa:	4f 8d 3c 2a          	lea    (%r10,%r13,1),%r15
    6cfe:	41 c7 40 1c 00 00 00 	movl   $0x0,0x1c(%r8)
    6d05:	00 
    6d06:	49 89 58 10          	mov    %rbx,0x10(%r8)
    6d0a:	4c 39 f8             	cmp    %r15,%rax
    6d0d:	49 89 30             	mov    %rsi,(%r8)
    6d10:	4d 89 60 08          	mov    %r12,0x8(%r8)
    6d14:	41 0f 93 c6          	setae  %r14b
    6d18:	4c 39 d2             	cmp    %r10,%rdx
    6d1b:	41 0f 96 c1          	setbe  %r9b
    6d1f:	49 01 cd             	add    %rcx,%r13
    6d22:	45 09 ce             	or     %r9d,%r14d
    6d25:	4c 39 e8             	cmp    %r13,%rax
    6d28:	41 0f 93 c0          	setae  %r8b
    6d2c:	48 39 d1             	cmp    %rdx,%rcx
    6d2f:	41 0f 93 c3          	setae  %r11b
    6d33:	45 09 c3             	or     %r8d,%r11d
    6d36:	45 84 de             	test   %r11b,%r14b
    6d39:	0f 84 a8 0b 00 00    	je     78e7 <_Z17int16MatrixToArmaP13Complex_int16ii+0x11e7>
    6d3f:	48 83 fb 0f          	cmp    $0xf,%rbx
    6d43:	0f 86 9e 0b 00 00    	jbe    78e7 <_Z17int16MatrixToArmaP13Complex_int16ii+0x11e7>
    6d49:	62 71 fd 48 6f 1d 6d 	vmovdqa64 0x4b6d(%rip),%zmm11        # b8c0 <_ZL5temp0+0x320>
    6d50:	4b 00 00 
    6d53:	49 89 dc             	mov    %rbx,%r12
    6d56:	be 01 00 00 00       	mov    $0x1,%esi
    6d5b:	62 71 fd 48 6f 25 9b 	vmovdqa64 0x4b9b(%rip),%zmm12        # b900 <_ZL5temp0+0x360>
    6d62:	4b 00 00 
    6d65:	49 c1 ec 04          	shr    $0x4,%r12
    6d69:	41 bd 40 00 00 00    	mov    $0x40,%r13d
    6d6f:	62 51 7c 48 10 2a    	vmovups (%r10),%zmm13
    6d75:	62 51 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm15
    6d7b:	49 8d 7c 24 ff       	lea    -0x1(%r12),%rdi
    6d80:	62 71 7c 48 10 31    	vmovups (%rcx),%zmm14
    6d86:	62 c1 fd 48 6f c4    	vmovdqa64 %zmm12,%zmm16
    6d8c:	83 e7 07             	and    $0x7,%edi
    6d8f:	49 83 fc 01          	cmp    $0x1,%r12
    6d93:	62 52 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm15
    6d99:	62 c2 0d 48 77 c5    	vpermi2ps %zmm13,%zmm14,%zmm16
    6d9f:	62 71 7c 48 11 38    	vmovups %zmm15,(%rax)
    6da5:	62 e1 7c 48 11 40 01 	vmovups %zmm16,0x40(%rax)
    6dac:	0f 86 27 04 00 00    	jbe    71d9 <_Z17int16MatrixToArmaP13Complex_int16ii+0xad9>
    6db2:	48 85 ff             	test   %rdi,%rdi
    6db5:	0f 84 1f 02 00 00    	je     6fda <_Z17int16MatrixToArmaP13Complex_int16ii+0x8da>
    6dbb:	48 83 ff 01          	cmp    $0x1,%rdi
    6dbf:	0f 84 c8 01 00 00    	je     6f8d <_Z17int16MatrixToArmaP13Complex_int16ii+0x88d>
    6dc5:	48 83 ff 02          	cmp    $0x2,%rdi
    6dc9:	0f 84 7a 01 00 00    	je     6f49 <_Z17int16MatrixToArmaP13Complex_int16ii+0x849>
    6dcf:	48 83 ff 03          	cmp    $0x3,%rdi
    6dd3:	0f 84 2c 01 00 00    	je     6f05 <_Z17int16MatrixToArmaP13Complex_int16ii+0x805>
    6dd9:	48 83 ff 04          	cmp    $0x4,%rdi
    6ddd:	0f 84 de 00 00 00    	je     6ec1 <_Z17int16MatrixToArmaP13Complex_int16ii+0x7c1>
    6de3:	48 83 ff 05          	cmp    $0x5,%rdi
    6de7:	0f 84 90 00 00 00    	je     6e7d <_Z17int16MatrixToArmaP13Complex_int16ii+0x77d>
    6ded:	48 83 ff 06          	cmp    $0x6,%rdi
    6df1:	74 46                	je     6e39 <_Z17int16MatrixToArmaP13Complex_int16ii+0x739>
    6df3:	4c 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%r10
    6dfa:	62 f1 7c 48 10 51 01 	vmovups 0x40(%rcx),%zmm2
    6e01:	62 d1 fd 48 6f db    	vmovdqa64 %zmm11,%zmm3
    6e07:	62 41 fd 48 6f cc    	vmovdqa64 %zmm12,%zmm25
    6e0d:	be 02 00 00 00       	mov    $0x2,%esi
    6e12:	41 bd 80 00 00 00    	mov    $0x80,%r13d
    6e18:	62 d1 7c 48 10 4a 01 	vmovups 0x40(%r10),%zmm1
    6e1f:	62 f2 6d 48 77 d9    	vpermi2ps %zmm1,%zmm2,%zmm3
    6e25:	62 62 6d 48 77 c9    	vpermi2ps %zmm1,%zmm2,%zmm25
    6e2b:	62 f1 7c 48 11 58 02 	vmovups %zmm3,0x80(%rax)
    6e32:	62 61 7c 48 11 48 03 	vmovups %zmm25,0xc0(%rax)
    6e39:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    6e40:	62 d1 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm7
    6e46:	62 41 fd 48 6f d4    	vmovdqa64 %zmm12,%zmm26
    6e4c:	62 b1 7c 48 10 2c 29 	vmovups (%rcx,%r13,1),%zmm5
    6e53:	48 83 c6 01          	add    $0x1,%rsi
    6e57:	62 b1 7c 48 10 34 2a 	vmovups (%rdx,%r13,1),%zmm6
    6e5e:	62 f2 55 48 77 fe    	vpermi2ps %zmm6,%zmm5,%zmm7
    6e64:	62 62 55 48 77 d6    	vpermi2ps %zmm6,%zmm5,%zmm26
    6e6a:	62 b1 7c 48 11 3c 68 	vmovups %zmm7,(%rax,%r13,2)
    6e71:	62 21 7c 48 11 54 68 	vmovups %zmm26,0x40(%rax,%r13,2)
    6e78:	01 
    6e79:	49 83 c5 40          	add    $0x40,%r13
    6e7d:	4c 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%r15
    6e84:	62 51 fd 48 6f eb    	vmovdqa64 %zmm11,%zmm13
    6e8a:	62 41 fd 48 6f dc    	vmovdqa64 %zmm12,%zmm27
    6e90:	62 31 7c 48 10 14 29 	vmovups (%rcx,%r13,1),%zmm10
    6e97:	48 83 c6 01          	add    $0x1,%rsi
    6e9b:	62 11 7c 48 10 0c 2f 	vmovups (%r15,%r13,1),%zmm9
    6ea2:	62 52 2d 48 77 e9    	vpermi2ps %zmm9,%zmm10,%zmm13
    6ea8:	62 42 2d 48 77 d9    	vpermi2ps %zmm9,%zmm10,%zmm27
    6eae:	62 31 7c 48 11 2c 68 	vmovups %zmm13,(%rax,%r13,2)
    6eb5:	62 21 7c 48 11 5c 68 	vmovups %zmm27,0x40(%rax,%r13,2)
    6ebc:	01 
    6ebd:	49 83 c5 40          	add    $0x40,%r13
    6ec1:	4c 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%r14
    6ec8:	62 d1 fd 48 6f cb    	vmovdqa64 %zmm11,%zmm1
    6ece:	62 41 fd 48 6f e4    	vmovdqa64 %zmm12,%zmm28
    6ed4:	62 b1 7c 48 10 04 29 	vmovups (%rcx,%r13,1),%zmm0
    6edb:	48 83 c6 01          	add    $0x1,%rsi
    6edf:	62 11 7c 48 10 3c 2e 	vmovups (%r14,%r13,1),%zmm15
    6ee6:	62 d2 7d 48 77 cf    	vpermi2ps %zmm15,%zmm0,%zmm1
    6eec:	62 42 7d 48 77 e7    	vpermi2ps %zmm15,%zmm0,%zmm28
    6ef2:	62 b1 7c 48 11 0c 68 	vmovups %zmm1,(%rax,%r13,2)
    6ef9:	62 21 7c 48 11 64 68 	vmovups %zmm28,0x40(%rax,%r13,2)
    6f00:	01 
    6f01:	49 83 c5 40          	add    $0x40,%r13
    6f05:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    6f0c:	62 d1 fd 48 6f e3    	vmovdqa64 %zmm11,%zmm4
    6f12:	62 41 fd 48 6f ec    	vmovdqa64 %zmm12,%zmm29
    6f18:	62 b1 7c 48 10 34 29 	vmovups (%rcx,%r13,1),%zmm6
    6f1f:	48 83 c6 01          	add    $0x1,%rsi
    6f23:	62 91 7c 48 10 1c 29 	vmovups (%r9,%r13,1),%zmm3
    6f2a:	62 f2 4d 48 77 e3    	vpermi2ps %zmm3,%zmm6,%zmm4
    6f30:	62 62 4d 48 77 eb    	vpermi2ps %zmm3,%zmm6,%zmm29
    6f36:	62 b1 7c 48 11 24 68 	vmovups %zmm4,(%rax,%r13,2)
    6f3d:	62 21 7c 48 11 6c 68 	vmovups %zmm29,0x40(%rax,%r13,2)
    6f44:	01 
    6f45:	49 83 c5 40          	add    $0x40,%r13
    6f49:	4c 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%r8
    6f50:	62 51 fd 48 6f cb    	vmovdqa64 %zmm11,%zmm9
    6f56:	62 41 fd 48 6f f4    	vmovdqa64 %zmm12,%zmm30
    6f5c:	62 31 7c 48 10 04 29 	vmovups (%rcx,%r13,1),%zmm8
    6f63:	48 83 c6 01          	add    $0x1,%rsi
    6f67:	62 91 7c 48 10 3c 28 	vmovups (%r8,%r13,1),%zmm7
    6f6e:	62 72 3d 48 77 cf    	vpermi2ps %zmm7,%zmm8,%zmm9
    6f74:	62 62 3d 48 77 f7    	vpermi2ps %zmm7,%zmm8,%zmm30
    6f7a:	62 31 7c 48 11 0c 68 	vmovups %zmm9,(%rax,%r13,2)
    6f81:	62 21 7c 48 11 74 68 	vmovups %zmm30,0x40(%rax,%r13,2)
    6f88:	01 
    6f89:	49 83 c5 40          	add    $0x40,%r13
    6f8d:	4c 8b 9d 58 fe ff ff 	mov    -0x1a8(%rbp),%r11
    6f94:	62 51 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm15
    6f9a:	62 41 fd 48 6f fc    	vmovdqa64 %zmm12,%zmm31
    6fa0:	62 31 7c 48 10 34 29 	vmovups (%rcx,%r13,1),%zmm14
    6fa7:	48 83 c6 01          	add    $0x1,%rsi
    6fab:	62 11 7c 48 10 2c 2b 	vmovups (%r11,%r13,1),%zmm13
    6fb2:	62 52 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm15
    6fb8:	62 42 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm31
    6fbe:	62 31 7c 48 11 3c 68 	vmovups %zmm15,(%rax,%r13,2)
    6fc5:	62 21 7c 48 11 7c 68 	vmovups %zmm31,0x40(%rax,%r13,2)
    6fcc:	01 
    6fcd:	49 83 c5 40          	add    $0x40,%r13
    6fd1:	49 39 f4             	cmp    %rsi,%r12
    6fd4:	0f 86 ff 01 00 00    	jbe    71d9 <_Z17int16MatrixToArmaP13Complex_int16ii+0xad9>
    6fda:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
    6fe1:	62 b1 7c 48 10 0c 2f 	vmovups (%rdi,%r13,1),%zmm1
    6fe8:	62 d1 fd 48 6f db    	vmovdqa64 %zmm11,%zmm3
    6fee:	62 c1 fd 48 6f cc    	vmovdqa64 %zmm12,%zmm17
    6ff4:	62 b1 7c 48 10 14 29 	vmovups (%rcx,%r13,1),%zmm2
    6ffb:	62 d1 fd 48 6f e3    	vmovdqa64 %zmm11,%zmm4
    7001:	62 c1 fd 48 6f d4    	vmovdqa64 %zmm12,%zmm18
    7007:	4d 8d 55 40          	lea    0x40(%r13),%r10
    700b:	62 51 fd 48 6f eb    	vmovdqa64 %zmm11,%zmm13
    7011:	62 c1 fd 48 6f dc    	vmovdqa64 %zmm12,%zmm19
    7017:	62 f2 6d 48 77 d9    	vpermi2ps %zmm1,%zmm2,%zmm3
    701d:	49 8d 95 80 00 00 00 	lea    0x80(%r13),%rdx
    7024:	62 e2 6d 48 77 c9    	vpermi2ps %zmm1,%zmm2,%zmm17
    702a:	62 c1 fd 48 6f e4    	vmovdqa64 %zmm12,%zmm20
    7030:	62 d1 fd 48 6f cb    	vmovdqa64 %zmm11,%zmm1
    7036:	4d 8d bd c0 00 00 00 	lea    0xc0(%r13),%r15
    703d:	62 c1 fd 48 6f ec    	vmovdqa64 %zmm12,%zmm21
    7043:	62 b1 7c 48 11 1c 68 	vmovups %zmm3,(%rax,%r13,2)
    704a:	4d 8d b5 00 01 00 00 	lea    0x100(%r13),%r14
    7051:	62 c1 fd 48 6f f4    	vmovdqa64 %zmm12,%zmm22
    7057:	62 a1 7c 48 11 4c 68 	vmovups %zmm17,0x40(%rax,%r13,2)
    705e:	01 
    705f:	4d 8d 8d 40 01 00 00 	lea    0x140(%r13),%r9
    7066:	62 c1 fd 48 6f fc    	vmovdqa64 %zmm12,%zmm23
    706c:	4d 8d 85 80 01 00 00 	lea    0x180(%r13),%r8
    7073:	62 41 fd 48 6f c4    	vmovdqa64 %zmm12,%zmm24
    7079:	4d 8d 9d c0 01 00 00 	lea    0x1c0(%r13),%r11
    7080:	62 b1 7c 48 10 6c 2f 	vmovups 0x40(%rdi,%r13,1),%zmm5
    7087:	01 
    7088:	48 83 c6 08          	add    $0x8,%rsi
    708c:	62 b1 7c 48 10 7c 29 	vmovups 0x40(%rcx,%r13,1),%zmm7
    7093:	01 
    7094:	62 f2 45 48 77 e5    	vpermi2ps %zmm5,%zmm7,%zmm4
    709a:	62 e2 45 48 77 d5    	vpermi2ps %zmm5,%zmm7,%zmm18
    70a0:	62 d1 fd 48 6f eb    	vmovdqa64 %zmm11,%zmm5
    70a6:	62 b1 7c 48 11 24 50 	vmovups %zmm4,(%rax,%r10,2)
    70ad:	62 d1 fd 48 6f e3    	vmovdqa64 %zmm11,%zmm4
    70b3:	62 a1 7c 48 11 54 50 	vmovups %zmm18,0x40(%rax,%r10,2)
    70ba:	01 
    70bb:	62 31 7c 48 10 4c 2f 	vmovups 0x80(%rdi,%r13,1),%zmm9
    70c2:	02 
    70c3:	62 31 7c 48 10 54 29 	vmovups 0x80(%rcx,%r13,1),%zmm10
    70ca:	02 
    70cb:	62 52 2d 48 77 e9    	vpermi2ps %zmm9,%zmm10,%zmm13
    70d1:	62 c2 2d 48 77 d9    	vpermi2ps %zmm9,%zmm10,%zmm19
    70d7:	62 71 7c 48 11 2c 50 	vmovups %zmm13,(%rax,%rdx,2)
    70de:	62 e1 7c 48 11 5c 50 	vmovups %zmm19,0x40(%rax,%rdx,2)
    70e5:	01 
    70e6:	62 31 7c 48 10 7c 2f 	vmovups 0xc0(%rdi,%r13,1),%zmm15
    70ed:	03 
    70ee:	62 b1 7c 48 10 44 29 	vmovups 0xc0(%rcx,%r13,1),%zmm0
    70f5:	03 
    70f6:	62 d2 7d 48 77 cf    	vpermi2ps %zmm15,%zmm0,%zmm1
    70fc:	62 c2 7d 48 77 e7    	vpermi2ps %zmm15,%zmm0,%zmm20
    7102:	62 51 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm15
    7108:	62 b1 7c 48 11 0c 78 	vmovups %zmm1,(%rax,%r15,2)
    710f:	62 a1 7c 48 11 64 78 	vmovups %zmm20,0x40(%rax,%r15,2)
    7116:	01 
    7117:	62 b1 7c 48 10 5c 2f 	vmovups 0x100(%rdi,%r13,1),%zmm3
    711e:	04 
    711f:	62 b1 7c 48 10 74 29 	vmovups 0x100(%rcx,%r13,1),%zmm6
    7126:	04 
    7127:	62 f2 4d 48 77 eb    	vpermi2ps %zmm3,%zmm6,%zmm5
    712d:	62 e2 4d 48 77 eb    	vpermi2ps %zmm3,%zmm6,%zmm21
    7133:	62 d1 fd 48 6f db    	vmovdqa64 %zmm11,%zmm3
    7139:	62 b1 7c 48 11 2c 70 	vmovups %zmm5,(%rax,%r14,2)
    7140:	62 a1 7c 48 11 6c 70 	vmovups %zmm21,0x40(%rax,%r14,2)
    7147:	01 
    7148:	62 31 7c 48 10 44 2f 	vmovups 0x140(%rdi,%r13,1),%zmm8
    714f:	05 
    7150:	62 31 7c 48 10 4c 29 	vmovups 0x140(%rcx,%r13,1),%zmm9
    7157:	05 
    7158:	62 d2 35 48 77 e0    	vpermi2ps %zmm8,%zmm9,%zmm4
    715e:	62 c2 35 48 77 f0    	vpermi2ps %zmm8,%zmm9,%zmm22
    7164:	62 b1 7c 48 11 24 48 	vmovups %zmm4,(%rax,%r9,2)
    716b:	62 a1 7c 48 11 74 48 	vmovups %zmm22,0x40(%rax,%r9,2)
    7172:	01 
    7173:	62 31 7c 48 10 6c 2f 	vmovups 0x180(%rdi,%r13,1),%zmm13
    717a:	06 
    717b:	62 31 7c 48 10 74 29 	vmovups 0x180(%rcx,%r13,1),%zmm14
    7182:	06 
    7183:	62 52 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm15
    7189:	62 c2 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm23
    718f:	62 31 7c 48 11 3c 40 	vmovups %zmm15,(%rax,%r8,2)
    7196:	62 a1 7c 48 11 7c 40 	vmovups %zmm23,0x40(%rax,%r8,2)
    719d:	01 
    719e:	62 b1 7c 48 10 4c 2f 	vmovups 0x1c0(%rdi,%r13,1),%zmm1
    71a5:	07 
    71a6:	62 b1 7c 48 10 54 29 	vmovups 0x1c0(%rcx,%r13,1),%zmm2
    71ad:	07 
    71ae:	49 81 c5 00 02 00 00 	add    $0x200,%r13
    71b5:	49 39 f4             	cmp    %rsi,%r12
    71b8:	62 f2 6d 48 77 d9    	vpermi2ps %zmm1,%zmm2,%zmm3
    71be:	62 62 6d 48 77 c1    	vpermi2ps %zmm1,%zmm2,%zmm24
    71c4:	62 b1 7c 48 11 1c 58 	vmovups %zmm3,(%rax,%r11,2)
    71cb:	62 21 7c 48 11 44 58 	vmovups %zmm24,0x40(%rax,%r11,2)
    71d2:	01 
    71d3:	0f 87 08 fe ff ff    	ja     6fe1 <_Z17int16MatrixToArmaP13Complex_int16ii+0x8e1>
    71d9:	49 89 dc             	mov    %rbx,%r12
    71dc:	49 83 e4 f0          	and    $0xfffffffffffffff0,%r12
    71e0:	49 39 dc             	cmp    %rbx,%r12
    71e3:	0f 84 d4 05 00 00    	je     77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    71e9:	4c 8b ad 58 fe ff ff 	mov    -0x1a8(%rbp),%r13
    71f0:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    71f5:	4a 8d 34 e0          	lea    (%rax,%r12,8),%rsi
    71f9:	c4 21 7a 10 24 a1    	vmovss (%rcx,%r12,4),%xmm12
    71ff:	48 39 fb             	cmp    %rdi,%rbx
    7202:	c4 01 7a 10 5c a5 00 	vmovss 0x0(%r13,%r12,4),%xmm11
    7209:	c5 7a 11 5e 04       	vmovss %xmm11,0x4(%rsi)
    720e:	c5 7a 11 26          	vmovss %xmm12,(%rsi)
    7212:	0f 86 a5 05 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7218:	49 8d 54 24 02       	lea    0x2(%r12),%rdx
    721d:	4c 8d 14 f8          	lea    (%rax,%rdi,8),%r10
    7221:	c4 c1 7a 10 6c bd 00 	vmovss 0x0(%r13,%rdi,4),%xmm5
    7228:	c5 fa 10 3c b9       	vmovss (%rcx,%rdi,4),%xmm7
    722d:	48 39 da             	cmp    %rbx,%rdx
    7230:	c4 c1 7a 11 3a       	vmovss %xmm7,(%r10)
    7235:	c4 c1 7a 11 6a 04    	vmovss %xmm5,0x4(%r10)
    723b:	0f 83 7c 05 00 00    	jae    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7241:	4d 8d 74 24 03       	lea    0x3(%r12),%r14
    7246:	4c 8d 3c d0          	lea    (%rax,%rdx,8),%r15
    724a:	c4 41 7a 10 44 95 00 	vmovss 0x0(%r13,%rdx,4),%xmm8
    7251:	c5 7a 10 0c 91       	vmovss (%rcx,%rdx,4),%xmm9
    7256:	4c 39 f3             	cmp    %r14,%rbx
    7259:	c4 41 7a 11 0f       	vmovss %xmm9,(%r15)
    725e:	c4 41 7a 11 47 04    	vmovss %xmm8,0x4(%r15)
    7264:	0f 86 53 05 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    726a:	4d 8d 44 24 04       	lea    0x4(%r12),%r8
    726f:	4e 8d 0c f0          	lea    (%rax,%r14,8),%r9
    7273:	c4 81 7a 10 64 b5 00 	vmovss 0x0(%r13,%r14,4),%xmm4
    727a:	c4 21 7a 10 14 b1    	vmovss (%rcx,%r14,4),%xmm10
    7280:	4c 39 c3             	cmp    %r8,%rbx
    7283:	c4 41 7a 11 11       	vmovss %xmm10,(%r9)
    7288:	c4 c1 7a 11 61 04    	vmovss %xmm4,0x4(%r9)
    728e:	0f 86 29 05 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7294:	49 8d 74 24 05       	lea    0x5(%r12),%rsi
    7299:	4e 8d 1c c0          	lea    (%rax,%r8,8),%r11
    729d:	c4 01 7a 10 6c 85 00 	vmovss 0x0(%r13,%r8,4),%xmm13
    72a4:	c4 21 7a 10 34 81    	vmovss (%rcx,%r8,4),%xmm14
    72aa:	48 39 f3             	cmp    %rsi,%rbx
    72ad:	c4 41 7a 11 33       	vmovss %xmm14,(%r11)
    72b2:	c4 41 7a 11 6b 04    	vmovss %xmm13,0x4(%r11)
    72b8:	0f 86 ff 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    72be:	4d 8d 54 24 06       	lea    0x6(%r12),%r10
    72c3:	48 8d 3c f0          	lea    (%rax,%rsi,8),%rdi
    72c7:	c4 41 7a 10 7c b5 00 	vmovss 0x0(%r13,%rsi,4),%xmm15
    72ce:	c5 fa 10 04 b1       	vmovss (%rcx,%rsi,4),%xmm0
    72d3:	4c 39 d3             	cmp    %r10,%rbx
    72d6:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
    72da:	c5 7a 11 7f 04       	vmovss %xmm15,0x4(%rdi)
    72df:	0f 86 d8 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    72e5:	4d 8d 7c 24 07       	lea    0x7(%r12),%r15
    72ea:	4a 8d 14 d0          	lea    (%rax,%r10,8),%rdx
    72ee:	c4 81 7a 10 54 95 00 	vmovss 0x0(%r13,%r10,4),%xmm2
    72f5:	c4 a1 7a 10 0c 91    	vmovss (%rcx,%r10,4),%xmm1
    72fb:	4c 39 fb             	cmp    %r15,%rbx
    72fe:	c5 fa 11 0a          	vmovss %xmm1,(%rdx)
    7302:	c5 fa 11 52 04       	vmovss %xmm2,0x4(%rdx)
    7307:	0f 86 b0 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    730d:	4d 8d 4c 24 08       	lea    0x8(%r12),%r9
    7312:	4e 8d 34 f8          	lea    (%rax,%r15,8),%r14
    7316:	c4 81 7a 10 5c bd 00 	vmovss 0x0(%r13,%r15,4),%xmm3
    731d:	c4 a1 7a 10 34 b9    	vmovss (%rcx,%r15,4),%xmm6
    7323:	4c 39 cb             	cmp    %r9,%rbx
    7326:	c4 c1 7a 11 36       	vmovss %xmm6,(%r14)
    732b:	c4 c1 7a 11 5e 04    	vmovss %xmm3,0x4(%r14)
    7331:	0f 86 86 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7337:	4d 8d 5c 24 09       	lea    0x9(%r12),%r11
    733c:	4e 8d 04 c8          	lea    (%rax,%r9,8),%r8
    7340:	c4 01 7a 10 5c 8d 00 	vmovss 0x0(%r13,%r9,4),%xmm11
    7347:	c4 21 7a 10 24 89    	vmovss (%rcx,%r9,4),%xmm12
    734d:	4c 39 db             	cmp    %r11,%rbx
    7350:	c4 41 7a 11 20       	vmovss %xmm12,(%r8)
    7355:	c4 41 7a 11 58 04    	vmovss %xmm11,0x4(%r8)
    735b:	0f 86 5c 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7361:	49 8d 7c 24 0a       	lea    0xa(%r12),%rdi
    7366:	4a 8d 34 d8          	lea    (%rax,%r11,8),%rsi
    736a:	c4 81 7a 10 6c 9d 00 	vmovss 0x0(%r13,%r11,4),%xmm5
    7371:	c4 a1 7a 10 3c 99    	vmovss (%rcx,%r11,4),%xmm7
    7377:	48 39 fb             	cmp    %rdi,%rbx
    737a:	c5 fa 11 3e          	vmovss %xmm7,(%rsi)
    737e:	c5 fa 11 6e 04       	vmovss %xmm5,0x4(%rsi)
    7383:	0f 86 34 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7389:	49 8d 54 24 0b       	lea    0xb(%r12),%rdx
    738e:	4c 8d 14 f8          	lea    (%rax,%rdi,8),%r10
    7392:	c4 41 7a 10 44 bd 00 	vmovss 0x0(%r13,%rdi,4),%xmm8
    7399:	c5 7a 10 0c b9       	vmovss (%rcx,%rdi,4),%xmm9
    739e:	48 39 d3             	cmp    %rdx,%rbx
    73a1:	c4 41 7a 11 0a       	vmovss %xmm9,(%r10)
    73a6:	c4 41 7a 11 42 04    	vmovss %xmm8,0x4(%r10)
    73ac:	0f 86 0b 04 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    73b2:	4d 8d 74 24 0c       	lea    0xc(%r12),%r14
    73b7:	4c 8d 3c d0          	lea    (%rax,%rdx,8),%r15
    73bb:	c4 c1 7a 10 64 95 00 	vmovss 0x0(%r13,%rdx,4),%xmm4
    73c2:	c5 7a 10 14 91       	vmovss (%rcx,%rdx,4),%xmm10
    73c7:	4c 39 f3             	cmp    %r14,%rbx
    73ca:	c4 41 7a 11 17       	vmovss %xmm10,(%r15)
    73cf:	c4 c1 7a 11 67 04    	vmovss %xmm4,0x4(%r15)
    73d5:	0f 86 e2 03 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    73db:	4d 8d 44 24 0d       	lea    0xd(%r12),%r8
    73e0:	4e 8d 0c f0          	lea    (%rax,%r14,8),%r9
    73e4:	c4 01 7a 10 6c b5 00 	vmovss 0x0(%r13,%r14,4),%xmm13
    73eb:	c4 21 7a 10 34 b1    	vmovss (%rcx,%r14,4),%xmm14
    73f1:	4c 39 c3             	cmp    %r8,%rbx
    73f4:	c4 41 7a 11 31       	vmovss %xmm14,(%r9)
    73f9:	c4 41 7a 11 69 04    	vmovss %xmm13,0x4(%r9)
    73ff:	0f 86 b8 03 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7405:	4e 8d 1c c0          	lea    (%rax,%r8,8),%r11
    7409:	49 83 c4 0e          	add    $0xe,%r12
    740d:	c4 01 7a 10 7c 85 00 	vmovss 0x0(%r13,%r8,4),%xmm15
    7414:	4c 39 e3             	cmp    %r12,%rbx
    7417:	c4 a1 7a 10 04 81    	vmovss (%rcx,%r8,4),%xmm0
    741d:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    7422:	c4 41 7a 11 7b 04    	vmovss %xmm15,0x4(%r11)
    7428:	0f 86 8f 03 00 00    	jbe    77bd <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    742e:	4a 8d 04 e0          	lea    (%rax,%r12,8),%rax
    7432:	c4 81 7a 10 54 a5 00 	vmovss 0x0(%r13,%r12,4),%xmm2
    7439:	c4 a1 7a 10 0c a1    	vmovss (%rcx,%r12,4),%xmm1
    743f:	c5 fa 11 08          	vmovss %xmm1,(%rax)
    7443:	c5 fa 11 50 04       	vmovss %xmm2,0x4(%rax)
    7448:	c5 f8 77             	vzeroupper 
    744b:	48 8b bd 38 fe ff ff 	mov    -0x1c8(%rbp),%rdi
    7452:	e8 29 2b 00 00       	callq  9f80 <_ZN4arma3MatIfED1Ev>
    7457:	48 8b bd 48 fe ff ff 	mov    -0x1b8(%rbp),%rdi
    745e:	e8 1d 2b 00 00       	callq  9f80 <_ZN4arma3MatIfED1Ev>
    7463:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    7467:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    746e:	00 00 
    7470:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    7477:	0f 85 b7 08 00 00    	jne    7d34 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1634>
    747d:	48 81 c4 c0 01 00 00 	add    $0x1c0,%rsp
    7484:	5b                   	pop    %rbx
    7485:	41 5b                	pop    %r11
    7487:	41 5c                	pop    %r12
    7489:	41 5d                	pop    %r13
    748b:	41 5e                	pop    %r14
    748d:	41 5f                	pop    %r15
    748f:	5d                   	pop    %rbp
    7490:	49 8d 63 f8          	lea    -0x8(%r11),%rsp
    7494:	c3                   	retq   
    7495:	c5 7a 7e a5 80 fe ff 	vmovq  -0x180(%rbp),%xmm12
    749c:	ff 
    749d:	4c 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%r10
    74a4:	c4 63 99 22 ad 50 fe 	vpinsrq $0x1,-0x1b0(%rbp),%xmm12,%xmm13
    74ab:	ff ff 01 
    74ae:	4c 89 95 48 fe ff ff 	mov    %r10,-0x1b8(%rbp)
    74b5:	49 83 c2 30          	add    $0x30,%r10
    74b9:	45 84 f6             	test   %r14b,%r14b
    74bc:	4c 89 95 00 ff ff ff 	mov    %r10,-0x100(%rbp)
    74c3:	48 89 9d 60 ff ff ff 	mov    %rbx,-0xa0(%rbp)
    74ca:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    74d1:	00 00 00 00 
    74d5:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    74dc:	00 00 00 00 
    74e0:	c5 78 29 ad 50 ff ff 	vmovaps %xmm13,-0xb0(%rbp)
    74e7:	ff 
    74e8:	74 49                	je     7533 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe33>
    74ea:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    74f1:	00 
    74f2:	0f 88 9e 02 00 00    	js     7796 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1096>
    74f8:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    74fd:	c4 61 83 2a bd 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm15,%xmm15
    7504:	ff ff 
    7506:	48 83 bd 80 fe ff ff 	cmpq   $0x0,-0x180(%rbp)
    750d:	00 
    750e:	0f 88 5d 02 00 00    	js     7771 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1071>
    7514:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7518:	c4 e1 eb 2a 95 80 fe 	vcvtsi2sdq -0x180(%rbp),%xmm2,%xmm2
    751f:	ff ff 
    7521:	c5 83 59 ca          	vmulsd %xmm2,%xmm15,%xmm1
    7525:	c5 f9 2e 0d a3 47 00 	vucomisd 0x47a3(%rip),%xmm1        # bcd0 <_ZL5temp0+0x730>
    752c:	00 
    752d:	0f 87 c4 06 00 00    	ja     7bf7 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14f7>
    7533:	4c 8d bd 50 ff ff ff 	lea    -0xb0(%rbp),%r15
    753a:	4c 89 bd 38 fe ff ff 	mov    %r15,-0x1c8(%rbp)
    7541:	49 83 c7 30          	add    $0x30,%r15
    7545:	4c 89 bd 70 ff ff ff 	mov    %r15,-0x90(%rbp)
    754c:	4c 89 bd 58 fe ff ff 	mov    %r15,-0x1a8(%rbp)
    7553:	e9 51 f3 ff ff       	jmpq   68a9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1a9>
    7558:	4c 8b a5 30 fe ff ff 	mov    -0x1d0(%rbp),%r12
    755f:	c4 81 7a 11 24 9c    	vmovss %xmm4,(%r12,%r11,4)
    7565:	48 8d 1d 6c 3b 00 00 	lea    0x3b6c(%rip),%rbx        # b0d8 <_IO_stdin_used+0x358>
    756c:	48 8d bd a0 fe ff ff 	lea    -0x160(%rbp),%rdi
    7573:	48 89 9d a0 fe ff ff 	mov    %rbx,-0x160(%rbp)
    757a:	e8 a5 a9 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    757f:	4c 8d 0d 52 3b 00 00 	lea    0x3b52(%rip),%r9        # b0d8 <_IO_stdin_used+0x358>
    7586:	48 8d bd 98 fe ff ff 	lea    -0x168(%rbp),%rdi
    758d:	4c 89 8d 98 fe ff ff 	mov    %r9,-0x168(%rbp)
    7594:	e8 8b a9 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7599:	49 bc ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r12
    75a0:	ff ff 3f 
    75a3:	4c 39 e3             	cmp    %r12,%rbx
    75a6:	0f 87 c5 06 00 00    	ja     7c71 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1571>
    75ac:	4c 8d 3c 9d 00 00 00 	lea    0x0(,%rbx,4),%r15
    75b3:	00 
    75b4:	4c 8d a5 b8 fe ff ff 	lea    -0x148(%rbp),%r12
    75bb:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
    75c2:	00 00 00 00 
    75c6:	49 81 ff 00 04 00 00 	cmp    $0x400,%r15
    75cd:	4c 89 fa             	mov    %r15,%rdx
    75d0:	4c 89 e7             	mov    %r12,%rdi
    75d3:	48 19 f6             	sbb    %rsi,%rsi
    75d6:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    75da:	48 83 c6 20          	add    $0x20,%rsi
    75de:	e8 0d a6 ff ff       	callq  1bf0 <posix_memalign@plt>
    75e3:	85 c0                	test   %eax,%eax
    75e5:	0f 85 c3 06 00 00    	jne    7cae <_Z17int16MatrixToArmaP13Complex_int16ii+0x15ae>
    75eb:	4c 8b 95 b8 fe ff ff 	mov    -0x148(%rbp),%r10
    75f2:	4d 85 d2             	test   %r10,%r10
    75f5:	0f 84 b3 06 00 00    	je     7cae <_Z17int16MatrixToArmaP13Complex_int16ii+0x15ae>
    75fb:	c5 fa 7e b5 80 fe ff 	vmovq  -0x180(%rbp),%xmm6
    7602:	ff 
    7603:	45 84 f6             	test   %r14b,%r14b
    7606:	4c 89 95 00 ff ff ff 	mov    %r10,-0x100(%rbp)
    760d:	c4 e3 c9 22 ad 50 fe 	vpinsrq $0x1,-0x1b0(%rbp),%xmm6,%xmm5
    7614:	ff ff 01 
    7617:	48 89 9d 60 ff ff ff 	mov    %rbx,-0xa0(%rbp)
    761e:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    7625:	00 00 00 00 
    7629:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    7630:	00 00 00 00 
    7634:	c5 f8 29 ad 50 ff ff 	vmovaps %xmm5,-0xb0(%rbp)
    763b:	ff 
    763c:	0f 85 4d 02 00 00    	jne    788f <_Z17int16MatrixToArmaP13Complex_int16ii+0x118f>
    7642:	49 81 ff 00 04 00 00 	cmp    $0x400,%r15
    7649:	4c 89 fa             	mov    %r15,%rdx
    764c:	4c 89 e7             	mov    %r12,%rdi
    764f:	48 19 f6             	sbb    %rsi,%rsi
    7652:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    7656:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
    765d:	00 00 00 00 
    7661:	48 83 c6 20          	add    $0x20,%rsi
    7665:	e8 86 a5 ff ff       	callq  1bf0 <posix_memalign@plt>
    766a:	85 c0                	test   %eax,%eax
    766c:	0f 85 60 06 00 00    	jne    7cd2 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15d2>
    7672:	48 8b 9d b8 fe ff ff 	mov    -0x148(%rbp),%rbx
    7679:	48 85 db             	test   %rbx,%rbx
    767c:	48 89 9d 58 fe ff ff 	mov    %rbx,-0x1a8(%rbp)
    7683:	0f 84 49 06 00 00    	je     7cd2 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15d2>
    7689:	4c 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%r14
    7690:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
    7697:	4c 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%r8
    769e:	4c 8d 8d 50 ff ff ff 	lea    -0xb0(%rbp),%r9
    76a5:	48 89 9d 70 ff ff ff 	mov    %rbx,-0x90(%rbp)
    76ac:	4c 89 85 48 fe ff ff 	mov    %r8,-0x1b8(%rbp)
    76b3:	4c 89 b5 80 fe ff ff 	mov    %r14,-0x180(%rbp)
    76ba:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    76c1:	4c 89 8d 38 fe ff ff 	mov    %r9,-0x1c8(%rbp)
    76c8:	e9 dc f1 ff ff       	jmpq   68a9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1a9>
    76cd:	48 89 f2             	mov    %rsi,%rdx
    76d0:	48 89 f1             	mov    %rsi,%rcx
    76d3:	48 d1 e9             	shr    %rcx
    76d6:	83 e2 01             	and    $0x1,%edx
    76d9:	48 09 d1             	or     %rdx,%rcx
    76dc:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    76e3:	00 
    76e4:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    76e8:	c4 e1 fb 2a c1       	vcvtsi2sd %rcx,%xmm0,%xmm0
    76ed:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    76f1:	0f 89 cf f0 ff ff    	jns    67c6 <_Z17int16MatrixToArmaP13Complex_int16ii+0xc6>
    76f7:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    76fe:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    7702:	49 89 d1             	mov    %rdx,%r9
    7705:	83 e2 01             	and    $0x1,%edx
    7708:	49 d1 e9             	shr    %r9
    770b:	49 09 d1             	or     %rdx,%r9
    770e:	c4 c1 f3 2a c9       	vcvtsi2sd %r9,%xmm1,%xmm1
    7713:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    7717:	e9 b7 f0 ff ff       	jmpq   67d3 <_Z17int16MatrixToArmaP13Complex_int16ii+0xd3>
    771c:	48 8b 8d 70 fe ff ff 	mov    -0x190(%rbp),%rcx
    7723:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    7727:	48 89 ca             	mov    %rcx,%rdx
    772a:	83 e1 01             	and    $0x1,%ecx
    772d:	48 d1 ea             	shr    %rdx
    7730:	48 09 ca             	or     %rcx,%rdx
    7733:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    773a:	00 
    773b:	c4 e1 d3 2a ea       	vcvtsi2sd %rdx,%xmm5,%xmm5
    7740:	c5 d3 58 fd          	vaddsd %xmm5,%xmm5,%xmm7
    7744:	0f 89 34 f5 ff ff    	jns    6c7e <_Z17int16MatrixToArmaP13Complex_int16ii+0x57e>
    774a:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
    7751:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    7756:	49 89 cf             	mov    %rcx,%r15
    7759:	83 e1 01             	and    $0x1,%ecx
    775c:	49 d1 ef             	shr    %r15
    775f:	49 09 cf             	or     %rcx,%r15
    7762:	c4 41 bb 2a c7       	vcvtsi2sd %r15,%xmm8,%xmm8
    7767:	c4 41 3b 58 c8       	vaddsd %xmm8,%xmm8,%xmm9
    776c:	e9 1b f5 ff ff       	jmpq   6c8c <_Z17int16MatrixToArmaP13Complex_int16ii+0x58c>
    7771:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    7778:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    777c:	48 89 d0             	mov    %rdx,%rax
    777f:	83 e2 01             	and    $0x1,%edx
    7782:	48 d1 e8             	shr    %rax
    7785:	48 09 d0             	or     %rdx,%rax
    7788:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    778d:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    7791:	e9 8b fd ff ff       	jmpq   7521 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe21>
    7796:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    779d:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    77a2:	48 89 d6             	mov    %rdx,%rsi
    77a5:	83 e2 01             	and    $0x1,%edx
    77a8:	48 d1 ee             	shr    %rsi
    77ab:	48 09 d6             	or     %rdx,%rsi
    77ae:	c4 61 8b 2a f6       	vcvtsi2sd %rsi,%xmm14,%xmm14
    77b3:	c4 41 0b 58 fe       	vaddsd %xmm14,%xmm14,%xmm15
    77b8:	e9 49 fd ff ff       	jmpq   7506 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe06>
    77bd:	c5 f8 77             	vzeroupper 
    77c0:	e9 86 fc ff ff       	jmpq   744b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    77c5:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    77cc:	00 
    77cd:	0f 84 78 fc ff ff    	je     744b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    77d3:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    77d8:	48 39 8d 78 fe ff ff 	cmp    %rcx,-0x188(%rbp)
    77df:	76 31                	jbe    7812 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1112>
    77e1:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    77e8:	00 
    77e9:	0f 88 20 05 00 00    	js     7d0f <_Z17int16MatrixToArmaP13Complex_int16ii+0x160f>
    77ef:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    77f3:	c4 e1 f3 2a 8d 78 fe 	vcvtsi2sdq -0x188(%rbp),%xmm1,%xmm1
    77fa:	ff ff 
    77fc:	c5 f3 59 1d d4 44 00 	vmulsd 0x44d4(%rip),%xmm1,%xmm3        # bcd8 <_ZL5temp0+0x738>
    7803:	00 
    7804:	c5 f9 2e 1d c4 44 00 	vucomisd 0x44c4(%rip),%xmm3        # bcd0 <_ZL5temp0+0x730>
    780b:	00 
    780c:	0f 87 27 05 00 00    	ja     7d39 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1639>
    7812:	4c 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%r10
    7819:	4c 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%r14
    7820:	4c 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%r9
    7827:	4d 89 32             	mov    %r14,(%r10)
    782a:	4d 89 4a 08          	mov    %r9,0x8(%r10)
    782e:	e9 18 fc ff ff       	jmpq   744b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7833:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    783a:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    783e:	48 89 d1             	mov    %rdx,%rcx
    7841:	83 e2 01             	and    $0x1,%edx
    7844:	48 d1 e9             	shr    %rcx
    7847:	48 09 d1             	or     %rdx,%rcx
    784a:	c4 e1 c3 2a f9       	vcvtsi2sd %rcx,%xmm7,%xmm7
    784f:	c5 43 58 c7          	vaddsd %xmm7,%xmm7,%xmm8
    7853:	e9 17 f0 ff ff       	jmpq   686f <_Z17int16MatrixToArmaP13Complex_int16ii+0x16f>
    7858:	c4 e1 f9 7e da       	vmovq  %xmm3,%rdx
    785d:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
    7862:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    7866:	48 d1 eb             	shr    %rbx
    7869:	83 e2 01             	and    $0x1,%edx
    786c:	48 09 d3             	or     %rdx,%rbx
    786f:	c4 e1 cb 2a f3       	vcvtsi2sd %rbx,%xmm6,%xmm6
    7874:	c5 cb 58 ee          	vaddsd %xmm6,%xmm6,%xmm5
    7878:	e9 d6 ef ff ff       	jmpq   6853 <_Z17int16MatrixToArmaP13Complex_int16ii+0x153>
    787d:	4c 39 a5 78 fe ff ff 	cmp    %r12,-0x188(%rbp)
    7884:	0f 87 cb f3 ff ff    	ja     6c55 <_Z17int16MatrixToArmaP13Complex_int16ii+0x555>
    788a:	e9 10 f4 ff ff       	jmpq   6c9f <_Z17int16MatrixToArmaP13Complex_int16ii+0x59f>
    788f:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    7896:	00 
    7897:	0f 88 27 03 00 00    	js     7bc4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14c4>
    789d:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    78a2:	c4 61 bb 2a 85 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm8,%xmm8
    78a9:	ff ff 
    78ab:	48 83 bd 80 fe ff ff 	cmpq   $0x0,-0x180(%rbp)
    78b2:	00 
    78b3:	0f 88 e4 02 00 00    	js     7b9d <_Z17int16MatrixToArmaP13Complex_int16ii+0x149d>
    78b9:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    78be:	c4 61 ab 2a 95 80 fe 	vcvtsi2sdq -0x180(%rbp),%xmm10,%xmm10
    78c5:	ff ff 
    78c7:	c4 41 3b 59 da       	vmulsd %xmm10,%xmm8,%xmm11
    78cc:	c5 79 2e 1d fc 43 00 	vucomisd 0x43fc(%rip),%xmm11        # bcd0 <_ZL5temp0+0x730>
    78d3:	00 
    78d4:	0f 87 0f 03 00 00    	ja     7be9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14e9>
    78da:	4c 8d 3c 9d 00 00 00 	lea    0x0(,%rbx,4),%r15
    78e1:	00 
    78e2:	e9 5b fd ff ff       	jmpq   7642 <_Z17int16MatrixToArmaP13Complex_int16ii+0xf42>
    78e7:	49 89 dc             	mov    %rbx,%r12
    78ea:	45 31 d2             	xor    %r10d,%r10d
    78ed:	41 83 e4 07          	and    $0x7,%r12d
    78f1:	0f 84 31 01 00 00    	je     7a28 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1328>
    78f7:	49 83 fc 01          	cmp    $0x1,%r12
    78fb:	0f 84 fa 00 00 00    	je     79fb <_Z17int16MatrixToArmaP13Complex_int16ii+0x12fb>
    7901:	49 83 fc 02          	cmp    $0x2,%r12
    7905:	0f 84 cc 00 00 00    	je     79d7 <_Z17int16MatrixToArmaP13Complex_int16ii+0x12d7>
    790b:	49 83 fc 03          	cmp    $0x3,%r12
    790f:	0f 84 9e 00 00 00    	je     79b3 <_Z17int16MatrixToArmaP13Complex_int16ii+0x12b3>
    7915:	49 83 fc 04          	cmp    $0x4,%r12
    7919:	74 74                	je     798f <_Z17int16MatrixToArmaP13Complex_int16ii+0x128f>
    791b:	49 83 fc 05          	cmp    $0x5,%r12
    791f:	74 4a                	je     796b <_Z17int16MatrixToArmaP13Complex_int16ii+0x126b>
    7921:	49 83 fc 06          	cmp    $0x6,%r12
    7925:	74 20                	je     7947 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1247>
    7927:	4c 8b ad 58 fe ff ff 	mov    -0x1a8(%rbp),%r13
    792e:	c5 fa 10 31          	vmovss (%rcx),%xmm6
    7932:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    7938:	c4 c1 7a 10 5d 00    	vmovss 0x0(%r13),%xmm3
    793e:	c5 fa 11 58 04       	vmovss %xmm3,0x4(%rax)
    7943:	c5 fa 11 30          	vmovss %xmm6,(%rax)
    7947:	48 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%rsi
    794e:	c4 21 7a 10 24 91    	vmovss (%rcx,%r10,4),%xmm12
    7954:	c4 21 7a 10 1c 96    	vmovss (%rsi,%r10,4),%xmm11
    795a:	c4 21 7a 11 5c d0 04 	vmovss %xmm11,0x4(%rax,%r10,8)
    7961:	c4 21 7a 11 24 d0    	vmovss %xmm12,(%rax,%r10,8)
    7967:	49 83 c2 01          	add    $0x1,%r10
    796b:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
    7972:	c4 a1 7a 10 3c 91    	vmovss (%rcx,%r10,4),%xmm7
    7978:	c4 a1 7a 10 2c 97    	vmovss (%rdi,%r10,4),%xmm5
    797e:	c4 a1 7a 11 6c d0 04 	vmovss %xmm5,0x4(%rax,%r10,8)
    7985:	c4 a1 7a 11 3c d0    	vmovss %xmm7,(%rax,%r10,8)
    798b:	49 83 c2 01          	add    $0x1,%r10
    798f:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    7996:	c4 21 7a 10 0c 91    	vmovss (%rcx,%r10,4),%xmm9
    799c:	c4 21 7a 10 04 92    	vmovss (%rdx,%r10,4),%xmm8
    79a2:	c4 21 7a 11 44 d0 04 	vmovss %xmm8,0x4(%rax,%r10,8)
    79a9:	c4 21 7a 11 0c d0    	vmovss %xmm9,(%rax,%r10,8)
    79af:	49 83 c2 01          	add    $0x1,%r10
    79b3:	4c 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%r15
    79ba:	c4 21 7a 10 14 91    	vmovss (%rcx,%r10,4),%xmm10
    79c0:	c4 81 7a 10 24 97    	vmovss (%r15,%r10,4),%xmm4
    79c6:	c4 a1 7a 11 64 d0 04 	vmovss %xmm4,0x4(%rax,%r10,8)
    79cd:	c4 21 7a 11 14 d0    	vmovss %xmm10,(%rax,%r10,8)
    79d3:	49 83 c2 01          	add    $0x1,%r10
    79d7:	4c 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%r14
    79de:	c4 21 7a 10 34 91    	vmovss (%rcx,%r10,4),%xmm14
    79e4:	c4 01 7a 10 2c 96    	vmovss (%r14,%r10,4),%xmm13
    79ea:	c4 21 7a 11 6c d0 04 	vmovss %xmm13,0x4(%rax,%r10,8)
    79f1:	c4 21 7a 11 34 d0    	vmovss %xmm14,(%rax,%r10,8)
    79f7:	49 83 c2 01          	add    $0x1,%r10
    79fb:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    7a02:	c4 a1 7a 10 04 91    	vmovss (%rcx,%r10,4),%xmm0
    7a08:	c4 01 7a 10 3c 91    	vmovss (%r9,%r10,4),%xmm15
    7a0e:	c4 21 7a 11 7c d0 04 	vmovss %xmm15,0x4(%rax,%r10,8)
    7a15:	c4 a1 7a 11 04 d0    	vmovss %xmm0,(%rax,%r10,8)
    7a1b:	49 83 c2 01          	add    $0x1,%r10
    7a1f:	4c 39 d3             	cmp    %r10,%rbx
    7a22:	0f 84 23 fa ff ff    	je     744b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7a28:	4c 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%r8
    7a2f:	c4 81 7a 10 14 90    	vmovss (%r8,%r10,4),%xmm2
    7a35:	4d 8d 5a 01          	lea    0x1(%r10),%r11
    7a39:	4d 8d 62 02          	lea    0x2(%r10),%r12
    7a3d:	c4 a1 7a 10 0c 91    	vmovss (%rcx,%r10,4),%xmm1
    7a43:	4d 8d 6a 03          	lea    0x3(%r10),%r13
    7a47:	c4 a1 7a 11 0c d0    	vmovss %xmm1,(%rax,%r10,8)
    7a4d:	49 8d 72 04          	lea    0x4(%r10),%rsi
    7a51:	49 8d 7a 05          	lea    0x5(%r10),%rdi
    7a55:	c4 a1 7a 11 54 d0 04 	vmovss %xmm2,0x4(%rax,%r10,8)
    7a5c:	49 8d 52 06          	lea    0x6(%r10),%rdx
    7a60:	4d 8d 7a 07          	lea    0x7(%r10),%r15
    7a64:	49 83 c2 08          	add    $0x8,%r10
    7a68:	c4 81 7a 10 1c 98    	vmovss (%r8,%r11,4),%xmm3
    7a6e:	4c 39 d3             	cmp    %r10,%rbx
    7a71:	c4 a1 7a 10 34 99    	vmovss (%rcx,%r11,4),%xmm6
    7a77:	c4 a1 7a 11 34 d8    	vmovss %xmm6,(%rax,%r11,8)
    7a7d:	c4 a1 7a 11 5c d8 04 	vmovss %xmm3,0x4(%rax,%r11,8)
    7a84:	c4 01 7a 10 1c a0    	vmovss (%r8,%r12,4),%xmm11
    7a8a:	c4 21 7a 10 24 a1    	vmovss (%rcx,%r12,4),%xmm12
    7a90:	c4 21 7a 11 24 e0    	vmovss %xmm12,(%rax,%r12,8)
    7a96:	c4 21 7a 11 5c e0 04 	vmovss %xmm11,0x4(%rax,%r12,8)
    7a9d:	c4 81 7a 10 2c a8    	vmovss (%r8,%r13,4),%xmm5
    7aa3:	c4 a1 7a 10 3c a9    	vmovss (%rcx,%r13,4),%xmm7
    7aa9:	c4 a1 7a 11 3c e8    	vmovss %xmm7,(%rax,%r13,8)
    7aaf:	c4 a1 7a 11 6c e8 04 	vmovss %xmm5,0x4(%rax,%r13,8)
    7ab6:	c4 41 7a 10 04 b0    	vmovss (%r8,%rsi,4),%xmm8
    7abc:	c5 7a 10 0c b1       	vmovss (%rcx,%rsi,4),%xmm9
    7ac1:	c5 7a 11 0c f0       	vmovss %xmm9,(%rax,%rsi,8)
    7ac6:	c5 7a 11 44 f0 04    	vmovss %xmm8,0x4(%rax,%rsi,8)
    7acc:	c4 c1 7a 10 24 b8    	vmovss (%r8,%rdi,4),%xmm4
    7ad2:	c5 7a 10 14 b9       	vmovss (%rcx,%rdi,4),%xmm10
    7ad7:	c5 7a 11 14 f8       	vmovss %xmm10,(%rax,%rdi,8)
    7adc:	c5 fa 11 64 f8 04    	vmovss %xmm4,0x4(%rax,%rdi,8)
    7ae2:	c4 41 7a 10 2c 90    	vmovss (%r8,%rdx,4),%xmm13
    7ae8:	c5 7a 10 34 91       	vmovss (%rcx,%rdx,4),%xmm14
    7aed:	c5 7a 11 34 d0       	vmovss %xmm14,(%rax,%rdx,8)
    7af2:	c5 7a 11 6c d0 04    	vmovss %xmm13,0x4(%rax,%rdx,8)
    7af8:	c4 01 7a 10 3c b8    	vmovss (%r8,%r15,4),%xmm15
    7afe:	c4 a1 7a 10 04 b9    	vmovss (%rcx,%r15,4),%xmm0
    7b04:	c4 a1 7a 11 04 f8    	vmovss %xmm0,(%rax,%r15,8)
    7b0a:	c4 21 7a 11 7c f8 04 	vmovss %xmm15,0x4(%rax,%r15,8)
    7b11:	0f 85 18 ff ff ff    	jne    7a2f <_Z17int16MatrixToArmaP13Complex_int16ii+0x132f>
    7b17:	e9 2f f9 ff ff       	jmpq   744b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7b1c:	0f 1f 40 00          	nopl   0x0(%rax)
    7b20:	49 b9 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%r9
    7b27:	ff ff 1f 
    7b2a:	4c 39 cb             	cmp    %r9,%rbx
    7b2d:	0f 87 c2 01 00 00    	ja     7cf5 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15f5>
    7b33:	48 8d 14 dd 00 00 00 	lea    0x0(,%rbx,8),%rdx
    7b3a:	00 
    7b3b:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7b42:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
    7b49:	00 00 00 00 
    7b4d:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    7b54:	48 19 f6             	sbb    %rsi,%rsi
    7b57:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    7b5b:	48 83 c6 20          	add    $0x20,%rsi
    7b5f:	e8 8c a0 ff ff       	callq  1bf0 <posix_memalign@plt>
    7b64:	85 c0                	test   %eax,%eax
    7b66:	0f 85 84 01 00 00    	jne    7cf0 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15f0>
    7b6c:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    7b73:	48 85 c0             	test   %rax,%rax
    7b76:	0f 84 74 01 00 00    	je     7cf0 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15f0>
    7b7c:	4c 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11
    7b83:	4c 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%r8
    7b8a:	4c 89 9d 58 fe ff ff 	mov    %r11,-0x1a8(%rbp)
    7b91:	49 89 40 20          	mov    %rax,0x20(%r8)
    7b95:	4d 89 da             	mov    %r11,%r10
    7b98:	e9 3c f1 ff ff       	jmpq   6cd9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x5d9>
    7b9d:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    7ba4:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    7ba9:	48 89 d7             	mov    %rdx,%rdi
    7bac:	83 e2 01             	and    $0x1,%edx
    7baf:	48 d1 ef             	shr    %rdi
    7bb2:	48 09 d7             	or     %rdx,%rdi
    7bb5:	c4 61 b3 2a cf       	vcvtsi2sd %rdi,%xmm9,%xmm9
    7bba:	c4 41 33 58 d1       	vaddsd %xmm9,%xmm9,%xmm10
    7bbf:	e9 03 fd ff ff       	jmpq   78c7 <_Z17int16MatrixToArmaP13Complex_int16ii+0x11c7>
    7bc4:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    7bcb:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    7bcf:	49 89 d7             	mov    %rdx,%r15
    7bd2:	83 e2 01             	and    $0x1,%edx
    7bd5:	49 d1 ef             	shr    %r15
    7bd8:	49 09 d7             	or     %rdx,%r15
    7bdb:	c4 c1 c3 2a ff       	vcvtsi2sd %r15,%xmm7,%xmm7
    7be0:	c5 43 58 c7          	vaddsd %xmm7,%xmm7,%xmm8
    7be4:	e9 c2 fc ff ff       	jmpq   78ab <_Z17int16MatrixToArmaP13Complex_int16ii+0x11ab>
    7be9:	4c 8d ad e0 fe ff ff 	lea    -0x120(%rbp),%r13
    7bf0:	4c 89 ad 48 fe ff ff 	mov    %r13,-0x1b8(%rbp)
    7bf7:	48 8d 35 72 34 00 00 	lea    0x3472(%rip),%rsi        # b070 <_IO_stdin_used+0x2f0>
    7bfe:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    7c05:	48 89 b5 a8 fe ff ff 	mov    %rsi,-0x158(%rbp)
    7c0c:	e8 13 a3 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7c11:	49 89 c7             	mov    %rax,%r15
    7c14:	c5 f8 77             	vzeroupper 
    7c17:	48 8b bd 38 fe ff ff 	mov    -0x1c8(%rbp),%rdi
    7c1e:	e8 5d 23 00 00       	callq  9f80 <_ZN4arma3MatIfED1Ev>
    7c23:	48 8b bd 48 fe ff ff 	mov    -0x1b8(%rbp),%rdi
    7c2a:	e8 51 23 00 00       	callq  9f80 <_ZN4arma3MatIfED1Ev>
    7c2f:	4c 89 ff             	mov    %r15,%rdi
    7c32:	e8 09 9f ff ff       	callq  1b40 <_Unwind_Resume@plt>
    7c37:	48 8d 9d c0 fe ff ff 	lea    -0x140(%rbp),%rbx
    7c3e:	4c 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%r8
    7c45:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
    7c4c:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    7c53:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
    7c5a:	4c 8d 0d cb 31 00 00 	lea    0x31cb(%rip),%r9        # ae2c <_IO_stdin_used+0xac>
    7c61:	48 89 df             	mov    %rbx,%rdi
    7c64:	e8 0a a1 ff ff       	callq  1d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>
    7c69:	48 89 df             	mov    %rbx,%rdi
    7c6c:	e8 af 9f ff ff       	callq  1c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>
    7c71:	4c 8d 1d 28 34 00 00 	lea    0x3428(%rip),%r11        # b0a0 <_IO_stdin_used+0x320>
    7c78:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7c7f:	4c 89 9d b8 fe ff ff 	mov    %r11,-0x148(%rbp)
    7c86:	e8 99 a2 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7c8b:	48 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%rdi
    7c92:	48 83 c3 10          	add    $0x10,%rbx
    7c96:	49 89 c4             	mov    %rax,%r12
    7c99:	48 39 df             	cmp    %rbx,%rdi
    7c9c:	74 2f                	je     7ccd <_Z17int16MatrixToArmaP13Complex_int16ii+0x15cd>
    7c9e:	c5 f8 77             	vzeroupper 
    7ca1:	e8 3a 9e ff ff       	callq  1ae0 <_ZdlPv@plt>
    7ca6:	4d 89 e7             	mov    %r12,%r15
    7ca9:	e9 69 ff ff ff       	jmpq   7c17 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1517>
    7cae:	e8 0a a2 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    7cb3:	48 8d 3d b6 33 00 00 	lea    0x33b6(%rip),%rdi        # b070 <_IO_stdin_used+0x2f0>
    7cba:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
    7cc1:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7cc8:	e8 57 a2 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7ccd:	c5 f8 77             	vzeroupper 
    7cd0:	eb d4                	jmp    7ca6 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15a6>
    7cd2:	4c 8d ad e0 fe ff ff 	lea    -0x120(%rbp),%r13
    7cd9:	4c 89 ad 48 fe ff ff 	mov    %r13,-0x1b8(%rbp)
    7ce0:	e8 d8 a1 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    7ce5:	49 89 c7             	mov    %rax,%r15
    7ce8:	c5 f8 77             	vzeroupper 
    7ceb:	e9 33 ff ff ff       	jmpq   7c23 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1523>
    7cf0:	e8 c8 a1 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    7cf5:	48 8d 1d a4 33 00 00 	lea    0x33a4(%rip),%rbx        # b0a0 <_IO_stdin_used+0x320>
    7cfc:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7d03:	48 89 9d b8 fe ff ff 	mov    %rbx,-0x148(%rbp)
    7d0a:	e8 15 a2 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7d0f:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    7d16:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7d1a:	48 89 d3             	mov    %rdx,%rbx
    7d1d:	83 e2 01             	and    $0x1,%edx
    7d20:	48 d1 eb             	shr    %rbx
    7d23:	48 09 d3             	or     %rdx,%rbx
    7d26:	c4 e1 eb 2a d3       	vcvtsi2sd %rbx,%xmm2,%xmm2
    7d2b:	c5 eb 58 ca          	vaddsd %xmm2,%xmm2,%xmm1
    7d2f:	e9 c8 fa ff ff       	jmpq   77fc <_Z17int16MatrixToArmaP13Complex_int16ii+0x10fc>
    7d34:	e8 d7 9c ff ff       	callq  1a10 <__stack_chk_fail@plt>
    7d39:	4c 8d 05 30 33 00 00 	lea    0x3330(%rip),%r8        # b070 <_IO_stdin_used+0x2f0>
    7d40:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
    7d47:	4c 89 85 b0 fe ff ff 	mov    %r8,-0x150(%rbp)
    7d4e:	e8 d1 a1 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7d53:	0f 1f 00             	nopl   (%rax)
    7d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    7d5d:	00 00 00 

0000000000007d60 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i>:
    7d60:	55                   	push   %rbp
    7d61:	48 89 e5             	mov    %rsp,%rbp
    7d64:	41 57                	push   %r15
    7d66:	41 56                	push   %r14
    7d68:	41 55                	push   %r13
    7d6a:	41 54                	push   %r12
    7d6c:	41 89 cf             	mov    %ecx,%r15d
    7d6f:	53                   	push   %rbx
    7d70:	49 89 fd             	mov    %rdi,%r13
    7d73:	49 89 f6             	mov    %rsi,%r14
    7d76:	48 89 d3             	mov    %rdx,%rbx
    7d79:	48 81 ec 98 01 00 00 	sub    $0x198,%rsp
    7d80:	48 89 95 78 fe ff ff 	mov    %rdx,-0x188(%rbp)
    7d87:	89 8d 64 fe ff ff    	mov    %ecx,-0x19c(%rbp)
    7d8d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7d94:	00 00 
    7d96:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    7d9a:	31 c0                	xor    %eax,%eax
    7d9c:	e8 7f ae ff ff       	callq  2c20 <_Z7getTimev>
    7da1:	45 85 ff             	test   %r15d,%r15d
    7da4:	c5 fb 11 85 48 fe ff 	vmovsd %xmm0,-0x1b8(%rbp)
    7dab:	ff 
    7dac:	0f 8e c9 03 00 00    	jle    817b <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x41b>
    7db2:	49 39 de             	cmp    %rbx,%r14
    7db5:	48 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%rcx
    7dbc:	c7 85 74 fe ff ff 00 	movl   $0x0,-0x18c(%rbp)
    7dc3:	00 00 00 
    7dc6:	0f 94 c2             	sete   %dl
    7dc9:	49 39 dd             	cmp    %rbx,%r13
    7dcc:	0f 94 c0             	sete   %al
    7dcf:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
    7dd6:	48 83 c1 30          	add    $0x30,%rcx
    7dda:	09 c2                	or     %eax,%edx
    7ddc:	48 89 8d 40 fe ff ff 	mov    %rcx,-0x1c0(%rbp)
    7de3:	88 95 73 fe ff ff    	mov    %dl,-0x18d(%rbp)
    7de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7df0:	80 bd 73 fe ff ff 00 	cmpb   $0x0,-0x18d(%rbp)
    7df7:	4d 8b 46 08          	mov    0x8(%r14),%r8
    7dfb:	49 8b 36             	mov    (%r14),%rsi
    7dfe:	49 8b 55 08          	mov    0x8(%r13),%rdx
    7e02:	49 8b 5d 00          	mov    0x0(%r13),%rbx
    7e06:	4d 89 c4             	mov    %r8,%r12
    7e09:	0f 84 71 01 00 00    	je     7f80 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x220>
    7e0f:	62 51 15 28 ef ed    	vpxord %ymm13,%ymm13,%ymm13
    7e15:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
    7e1c:	31 c0                	xor    %eax,%eax
    7e1e:	b9 10 00 00 00       	mov    $0x10,%ecx
    7e23:	48 39 f2             	cmp    %rsi,%rdx
    7e26:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    7e2d:	00 00 00 00 
    7e31:	c7 85 28 ff ff ff 00 	movl   $0x0,-0xd8(%rbp)
    7e38:	00 00 00 
    7e3b:	c7 85 2c ff ff ff 00 	movl   $0x0,-0xd4(%rbp)
    7e42:	00 00 00 
    7e45:	c5 78 29 ad 10 ff ff 	vmovaps %xmm13,-0xf0(%rbp)
    7e4c:	ff 
    7e4d:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    7e54:	00 00 00 00 
    7e58:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    7e5b:	0f 85 d9 0e 00 00    	jne    8d3a <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfda>
    7e61:	48 85 db             	test   %rbx,%rbx
    7e64:	0f 84 3e 03 00 00    	je     81a8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x448>
    7e6a:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7e6f:	48 39 d3             	cmp    %rdx,%rbx
    7e72:	0f 86 38 07 00 00    	jbe    85b0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x850>
    7e78:	48 85 db             	test   %rbx,%rbx
    7e7b:	0f 88 7f 07 00 00    	js     8600 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8a0>
    7e81:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    7e86:	c4 61 8b 2a f3       	vcvtsi2sd %rbx,%xmm14,%xmm14
    7e8b:	4d 85 c0             	test   %r8,%r8
    7e8e:	0f 88 2c 07 00 00    	js     85c0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x860>
    7e94:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7e98:	c4 c1 eb 2a d0       	vcvtsi2sd %r8,%xmm2,%xmm2
    7e9d:	c4 c1 6b 59 ce       	vmulsd %xmm14,%xmm2,%xmm1
    7ea2:	c5 f9 2e 0d 26 3e 00 	vucomisd 0x3e26(%rip),%xmm1        # bcd0 <_ZL5temp0+0x730>
    7ea9:	00 
    7eaa:	0f 87 b8 07 00 00    	ja     8668 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x908>
    7eb0:	49 89 df             	mov    %rbx,%r15
    7eb3:	4d 0f af f8          	imul   %r8,%r15
    7eb7:	4d 85 ff             	test   %r15,%r15
    7eba:	0f 84 00 03 00 00    	je     81c0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x460>
    7ec0:	49 83 ff 10          	cmp    $0x10,%r15
    7ec4:	0f 87 46 0b 00 00    	ja     8a10 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xcb0>
    7eca:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
    7ed1:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    7ed8:	48 89 bd 50 fe ff ff 	mov    %rdi,-0x1b0(%rbp)
    7edf:	48 89 95 30 ff ff ff 	mov    %rdx,-0xd0(%rbp)
    7ee6:	48 89 9d 58 fe ff ff 	mov    %rbx,-0x1a8(%rbp)
    7eed:	49 83 7d 10 00       	cmpq   $0x0,0x10(%r13)
    7ef2:	c5 fa 7e 9d 58 fe ff 	vmovq  -0x1a8(%rbp),%xmm3
    7ef9:	ff 
    7efa:	c7 85 2c ff ff ff 00 	movl   $0x0,-0xd4(%rbp)
    7f01:	00 00 00 
    7f04:	c4 c3 e1 22 e0 01    	vpinsrq $0x1,%r8,%xmm3,%xmm4
    7f0a:	4c 89 bd 20 ff ff ff 	mov    %r15,-0xe0(%rbp)
    7f11:	c5 f8 29 a5 10 ff ff 	vmovaps %xmm4,-0xf0(%rbp)
    7f18:	ff 
    7f19:	0f 84 49 0d 00 00    	je     8c68 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf08>
    7f1f:	49 83 7e 10 00       	cmpq   $0x0,0x10(%r14)
    7f24:	0f 84 3e 0d 00 00    	je     8c68 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf08>
    7f2a:	4d 8b 46 08          	mov    0x8(%r14),%r8
    7f2e:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    7f32:	49 8b 45 08          	mov    0x8(%r13),%rax
    7f36:	48 81 ff ff ff ff 7f 	cmp    $0x7fffffff,%rdi
    7f3d:	41 0f 97 c2          	seta   %r10b
    7f41:	48 3d ff ff ff 7f    	cmp    $0x7fffffff,%rax
    7f47:	41 0f 97 c3          	seta   %r11b
    7f4b:	49 83 f8 01          	cmp    $0x1,%r8
    7f4f:	0f 84 ab 09 00 00    	je     8900 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xba0>
    7f55:	49 81 3e ff ff ff 7f 	cmpq   $0x7fffffff,(%r14)
    7f5c:	0f 97 c2             	seta   %dl
    7f5f:	49 81 f8 ff ff ff 7f 	cmp    $0x7fffffff,%r8
    7f66:	41 0f 97 c0          	seta   %r8b
    7f6a:	44 09 c2             	or     %r8d,%edx
    7f6d:	44 08 d2             	or     %r10b,%dl
    7f70:	75 09                	jne    7f7b <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x21b>
    7f72:	45 84 db             	test   %r11b,%r11b
    7f75:	0f 84 a5 07 00 00    	je     8720 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x9c0>
    7f7b:	e8 85 a0 ff ff       	callq  2005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>
    7f80:	48 39 f2             	cmp    %rsi,%rdx
    7f83:	0f 85 4c 0e 00 00    	jne    8dd5 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1075>
    7f89:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    7f90:	48 39 1f             	cmp    %rbx,(%rdi)
    7f93:	0f 84 af 05 00 00    	je     8548 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x7e8>
    7f99:	4c 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%r9
    7fa0:	4c 8d 3d a9 33 00 00 	lea    0x33a9(%rip),%r15        # b350 <_IO_stdin_used+0x5d0>
    7fa7:	be 00 00 00 00       	mov    $0x0,%esi
    7fac:	45 8b 59 1c          	mov    0x1c(%r9),%r11d
    7fb0:	45 8b 51 18          	mov    0x18(%r9),%r10d
    7fb4:	41 83 fb 03          	cmp    $0x3,%r11d
    7fb8:	0f 94 c1             	sete   %cl
    7fbb:	49 0f 44 f7          	cmove  %r15,%rsi
    7fbf:	45 85 d2             	test   %r10d,%r10d
    7fc2:	74 3c                	je     8000 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2a0>
    7fc4:	48 89 da             	mov    %rbx,%rdx
    7fc7:	4c 09 c2             	or     %r8,%rdx
    7fca:	0f 84 50 0c 00 00    	je     8c20 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xec0>
    7fd0:	41 83 fa 01          	cmp    $0x1,%r10d
    7fd4:	0f 84 26 0c 00 00    	je     8c00 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xea0>
    7fda:	41 83 fa 02          	cmp    $0x2,%r10d
    7fde:	75 20                	jne    8000 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2a0>
    7fe0:	48 83 fb 01          	cmp    $0x1,%rbx
    7fe4:	0f 84 fe 04 00 00    	je     84e8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x788>
    7fea:	48 8d 35 df 33 00 00 	lea    0x33df(%rip),%rsi        # b3d0 <_IO_stdin_used+0x650>
    7ff1:	b9 01 00 00 00       	mov    $0x1,%ecx
    7ff6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    7ffd:	00 00 00 
    8000:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    8005:	48 39 fb             	cmp    %rdi,%rbx
    8008:	0f 86 da 04 00 00    	jbe    84e8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x788>
    800e:	48 85 db             	test   %rbx,%rbx
    8011:	0f 88 e9 04 00 00    	js     8500 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x7a0>
    8017:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    801b:	4d 85 c0             	test   %r8,%r8
    801e:	c4 e1 eb 2a d3       	vcvtsi2sd %rbx,%xmm2,%xmm2
    8023:	0f 88 fd 04 00 00    	js     8526 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x7c6>
    8029:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    802d:	c4 c1 e3 2a d8       	vcvtsi2sd %r8,%xmm3,%xmm3
    8032:	c5 eb 59 e3          	vmulsd %xmm3,%xmm2,%xmm4
    8036:	c5 f9 2e 25 92 3c 00 	vucomisd 0x3c92(%rip),%xmm4        # bcd0 <_ZL5temp0+0x730>
    803d:	00 
    803e:	0f 87 dc 0c 00 00    	ja     8d20 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfc0>
    8044:	84 c9                	test   %cl,%cl
    8046:	0f 85 db 0c 00 00    	jne    8d27 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfc7>
    804c:	4c 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%r8
    8053:	49 89 df             	mov    %rbx,%r15
    8056:	4d 0f af fc          	imul   %r12,%r15
    805a:	49 8b 40 10          	mov    0x10(%r8),%rax
    805e:	4c 39 f8             	cmp    %r15,%rax
    8061:	0f 84 81 05 00 00    	je     85e8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x888>
    8067:	41 83 fb 02          	cmp    $0x2,%r11d
    806b:	0f 84 4a 0d 00 00    	je     8dbb <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x105b>
    8071:	45 85 db             	test   %r11d,%r11d
    8074:	41 0f 94 c3          	sete   %r11b
    8078:	4c 39 f8             	cmp    %r15,%rax
    807b:	0f 86 df 04 00 00    	jbe    8560 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x800>
    8081:	49 83 ff 10          	cmp    $0x10,%r15
    8085:	77 3b                	ja     80c2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x362>
    8087:	45 84 db             	test   %r11b,%r11b
    808a:	74 36                	je     80c2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x362>
    808c:	48 83 f8 10          	cmp    $0x10,%rax
    8090:	76 15                	jbe    80a7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x347>
    8092:	4c 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%r8
    8099:	49 8b 78 20          	mov    0x20(%r8),%rdi
    809d:	48 85 ff             	test   %rdi,%rdi
    80a0:	74 05                	je     80a7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x347>
    80a2:	e8 39 99 ff ff       	callq  19e0 <free@plt>
    80a7:	4c 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11
    80ae:	4d 85 ff             	test   %r15,%r15
    80b1:	bf 00 00 00 00       	mov    $0x0,%edi
    80b6:	49 8d 4b 30          	lea    0x30(%r11),%rcx
    80ba:	48 0f 44 cf          	cmove  %rdi,%rcx
    80be:	49 89 4b 20          	mov    %rcx,0x20(%r11)
    80c2:	4c 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%r9
    80c9:	49 89 19             	mov    %rbx,(%r9)
    80cc:	4d 89 61 08          	mov    %r12,0x8(%r9)
    80d0:	4d 89 79 10          	mov    %r15,0x10(%r9)
    80d4:	49 83 7d 10 00       	cmpq   $0x0,0x10(%r13)
    80d9:	74 65                	je     8140 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3e0>
    80db:	49 83 7e 10 00       	cmpq   $0x0,0x10(%r14)
    80e0:	74 5e                	je     8140 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3e0>
    80e2:	49 8b 45 08          	mov    0x8(%r13),%rax
    80e6:	49 8b 55 00          	mov    0x0(%r13),%rdx
    80ea:	4d 8b 56 08          	mov    0x8(%r14),%r10
    80ee:	48 3d ff ff ff 7f    	cmp    $0x7fffffff,%rax
    80f4:	40 0f 97 c6          	seta   %sil
    80f8:	48 81 fa ff ff ff 7f 	cmp    $0x7fffffff,%rdx
    80ff:	41 0f 97 c3          	seta   %r11b
    8103:	49 83 fa 01          	cmp    $0x1,%r10
    8107:	0f 84 2b 0a 00 00    	je     8b38 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xdd8>
    810d:	49 81 3e ff ff ff 7f 	cmpq   $0x7fffffff,(%r14)
    8114:	41 0f 97 c0          	seta   %r8b
    8118:	49 81 fa ff ff ff 7f 	cmp    $0x7fffffff,%r10
    811f:	0f 97 c1             	seta   %cl
    8122:	41 09 c8             	or     %ecx,%r8d
    8125:	41 08 f0             	or     %sil,%r8b
    8128:	75 09                	jne    8133 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3d3>
    812a:	45 84 db             	test   %r11b,%r11b
    812d:	0f 84 ed 06 00 00    	je     8820 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xac0>
    8133:	e8 cd 9e ff ff       	callq  2005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>
    8138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    813f:	00 
    8140:	48 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%rsi
    8147:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    814b:	48 85 d2             	test   %rdx,%rdx
    814e:	0f 85 84 0b 00 00    	jne    8cd8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf78>
    8154:	0f 1f 40 00          	nopl   0x0(%rax)
    8158:	83 85 74 fe ff ff 01 	addl   $0x1,-0x18c(%rbp)
    815f:	44 8b bd 74 fe ff ff 	mov    -0x18c(%rbp),%r15d
    8166:	44 39 bd 64 fe ff ff 	cmp    %r15d,-0x19c(%rbp)
    816d:	0f 85 7d fc ff ff    	jne    7df0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x90>
    8173:	c5 fb 10 85 48 fe ff 	vmovsd -0x1b8(%rbp),%xmm0
    817a:	ff 
    817b:	e8 00 ab ff ff       	callq  2c80 <_Z9timeSinced>
    8180:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8184:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    818b:	00 00 
    818d:	0f 85 0f 0d 00 00    	jne    8ea2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1142>
    8193:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    8197:	5b                   	pop    %rbx
    8198:	41 5c                	pop    %r12
    819a:	41 5d                	pop    %r13
    819c:	41 5e                	pop    %r14
    819e:	41 5f                	pop    %r15
    81a0:	5d                   	pop    %rbp
    81a1:	c3                   	retq   
    81a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    81a8:	4d 85 c0             	test   %r8,%r8
    81ab:	0f 84 57 08 00 00    	je     8a08 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xca8>
    81b1:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
    81b7:	4d 39 c8             	cmp    %r9,%r8
    81ba:	0f 87 80 04 00 00    	ja     8640 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8e0>
    81c0:	48 89 9d 58 fe ff ff 	mov    %rbx,-0x1a8(%rbp)
    81c7:	c5 7a 7e 85 58 fe ff 	vmovq  -0x1a8(%rbp),%xmm8
    81ce:	ff 
    81cf:	c4 43 b9 22 c8 01    	vpinsrq $0x1,%r8,%xmm8,%xmm9
    81d5:	c5 78 29 8d 10 ff ff 	vmovaps %xmm9,-0xf0(%rbp)
    81dc:	ff 
    81dd:	4d 8b 7d 10          	mov    0x10(%r13),%r15
    81e1:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
    81e8:	4d 85 ff             	test   %r15,%r15
    81eb:	c7 85 58 fe ff ff 00 	movl   $0x0,-0x1a8(%rbp)
    81f2:	00 00 00 
    81f5:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
    81fc:	0f 85 16 09 00 00    	jne    8b18 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xdb8>
    8202:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8209:	0f b6 95 73 fe ff ff 	movzbl -0x18d(%rbp),%edx
    8210:	8b 4f 18             	mov    0x18(%rdi),%ecx
    8213:	39 8d 28 ff ff ff    	cmp    %ecx,-0xd8(%rbp)
    8219:	44 8b 5f 1c          	mov    0x1c(%rdi),%r11d
    821d:	74 24                	je     8243 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4e3>
    821f:	83 f9 01             	cmp    $0x1,%ecx
    8222:	0f 94 c2             	sete   %dl
    8225:	49 83 fc 01          	cmp    $0x1,%r12
    8229:	41 0f 94 c1          	sete   %r9b
    822d:	44 20 ca             	and    %r9b,%dl
    8230:	75 11                	jne    8243 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4e3>
    8232:	83 f9 02             	cmp    $0x2,%ecx
    8235:	0f 94 c2             	sete   %dl
    8238:	48 83 fb 01          	cmp    $0x1,%rbx
    823c:	41 0f 94 c0          	sete   %r8b
    8240:	44 21 c2             	and    %r8d,%edx
    8243:	41 83 fb 01          	cmp    $0x1,%r11d
    8247:	77 26                	ja     826f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x50f>
    8249:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
    824f:	85 c0                	test   %eax,%eax
    8251:	41 0f 94 c2          	sete   %r10b
    8255:	49 83 ff 10          	cmp    $0x10,%r15
    8259:	40 0f 97 c6          	seta   %sil
    825d:	41 84 f2             	test   %sil,%r10b
    8260:	75 05                	jne    8267 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x507>
    8262:	83 f8 01             	cmp    $0x1,%eax
    8265:	75 08                	jne    826f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x50f>
    8267:	84 d2                	test   %dl,%dl
    8269:	0f 85 b1 0b 00 00    	jne    8e20 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x10c0>
    826f:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8276:	48 39 1f             	cmp    %rbx,(%rdi)
    8279:	0f 84 a9 01 00 00    	je     8428 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x6c8>
    827f:	0f b6 95 73 fe ff ff 	movzbl -0x18d(%rbp),%edx
    8286:	4c 8d 0d c3 30 00 00 	lea    0x30c3(%rip),%r9        # b350 <_IO_stdin_used+0x5d0>
    828d:	41 83 fb 03          	cmp    $0x3,%r11d
    8291:	bf 00 00 00 00       	mov    $0x0,%edi
    8296:	b8 00 00 00 00       	mov    $0x0,%eax
    829b:	49 0f 44 f9          	cmove  %r9,%rdi
    829f:	0f 44 c2             	cmove  %edx,%eax
    82a2:	85 c9                	test   %ecx,%ecx
    82a4:	74 3a                	je     82e0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x580>
    82a6:	49 89 d8             	mov    %rbx,%r8
    82a9:	4d 09 e0             	or     %r12,%r8
    82ac:	0f 84 36 07 00 00    	je     89e8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xc88>
    82b2:	83 f9 01             	cmp    $0x1,%ecx
    82b5:	0f 84 0d 07 00 00    	je     89c8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xc68>
    82bb:	83 f9 02             	cmp    $0x2,%ecx
    82be:	75 20                	jne    82e0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x580>
    82c0:	48 83 fb 01          	cmp    $0x1,%rbx
    82c4:	0f 84 fe 00 00 00    	je     83c8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x668>
    82ca:	0f b6 85 73 fe ff ff 	movzbl -0x18d(%rbp),%eax
    82d1:	48 8d 3d f8 30 00 00 	lea    0x30f8(%rip),%rdi        # b3d0 <_IO_stdin_used+0x650>
    82d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    82df:	00 
    82e0:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
    82e6:	4c 39 d3             	cmp    %r10,%rbx
    82e9:	0f 86 d9 00 00 00    	jbe    83c8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x668>
    82ef:	48 85 db             	test   %rbx,%rbx
    82f2:	0f 88 e7 00 00 00    	js     83df <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x67f>
    82f8:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    82fc:	4d 85 e4             	test   %r12,%r12
    82ff:	c4 e1 e3 2a db       	vcvtsi2sd %rbx,%xmm3,%xmm3
    8304:	0f 88 fa 00 00 00    	js     8404 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x6a4>
    830a:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    830e:	c4 c1 d3 2a ec       	vcvtsi2sd %r12,%xmm5,%xmm5
    8313:	c5 e3 59 f5          	vmulsd %xmm5,%xmm3,%xmm6
    8317:	c5 f9 2e 35 b1 39 00 	vucomisd 0x39b1(%rip),%xmm6        # bcd0 <_ZL5temp0+0x730>
    831e:	00 
    831f:	0f 87 e1 09 00 00    	ja     8d06 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfa6>
    8325:	84 c0                	test   %al,%al
    8327:	0f 85 e0 09 00 00    	jne    8d0d <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfad>
    832d:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    8334:	4d 89 e1             	mov    %r12,%r9
    8337:	4c 0f af cb          	imul   %rbx,%r9
    833b:	4c 8b 50 10          	mov    0x10(%rax),%r10
    833f:	4d 39 ca             	cmp    %r9,%r10
    8342:	0f 84 88 01 00 00    	je     84d0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x770>
    8348:	41 83 fb 02          	cmp    $0x2,%r11d
    834c:	0f 84 4f 0a 00 00    	je     8da1 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1041>
    8352:	45 85 db             	test   %r11d,%r11d
    8355:	41 0f 94 c3          	sete   %r11b
    8359:	4d 39 ca             	cmp    %r9,%r10
    835c:	0f 86 de 00 00 00    	jbe    8440 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x6e0>
    8362:	49 83 f9 10          	cmp    $0x10,%r9
    8366:	0f 87 bc 02 00 00    	ja     8628 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8c8>
    836c:	45 84 db             	test   %r11b,%r11b
    836f:	0f 84 b3 02 00 00    	je     8628 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8c8>
    8375:	49 83 fa 10          	cmp    $0x10,%r10
    8379:	76 23                	jbe    839e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x63e>
    837b:	4c 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%r8
    8382:	49 8b 78 20          	mov    0x20(%r8),%rdi
    8386:	48 85 ff             	test   %rdi,%rdi
    8389:	74 13                	je     839e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x63e>
    838b:	4c 89 8d 58 fe ff ff 	mov    %r9,-0x1a8(%rbp)
    8392:	e8 49 96 ff ff       	callq  19e0 <free@plt>
    8397:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    839e:	4d 85 c9             	test   %r9,%r9
    83a1:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    83a8:	0f 85 e2 02 00 00    	jne    8690 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x930>
    83ae:	48 c7 42 20 00 00 00 	movq   $0x0,0x20(%rdx)
    83b5:	00 
    83b6:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    83bd:	31 ff                	xor    %edi,%edi
    83bf:	e9 d1 00 00 00       	jmpq   8495 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x735>
    83c4:	0f 1f 40 00          	nopl   0x0(%rax)
    83c8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    83cd:	49 39 f4             	cmp    %rsi,%r12
    83d0:	0f 86 4f ff ff ff    	jbe    8325 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    83d6:	48 85 db             	test   %rbx,%rbx
    83d9:	0f 89 19 ff ff ff    	jns    82f8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x598>
    83df:	49 89 d9             	mov    %rbx,%r9
    83e2:	48 89 da             	mov    %rbx,%rdx
    83e5:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    83e9:	49 d1 e9             	shr    %r9
    83ec:	83 e2 01             	and    $0x1,%edx
    83ef:	49 09 d1             	or     %rdx,%r9
    83f2:	4d 85 e4             	test   %r12,%r12
    83f5:	c4 c1 f3 2a c9       	vcvtsi2sd %r9,%xmm1,%xmm1
    83fa:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    83fe:	0f 89 06 ff ff ff    	jns    830a <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5aa>
    8404:	4d 89 e0             	mov    %r12,%r8
    8407:	4c 89 e1             	mov    %r12,%rcx
    840a:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    840e:	49 d1 e8             	shr    %r8
    8411:	83 e1 01             	and    $0x1,%ecx
    8414:	49 09 c8             	or     %rcx,%r8
    8417:	c4 c1 db 2a e0       	vcvtsi2sd %r8,%xmm4,%xmm4
    841c:	c5 db 58 ec          	vaddsd %xmm4,%xmm4,%xmm5
    8420:	e9 ee fe ff ff       	jmpq   8313 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5b3>
    8425:	0f 1f 00             	nopl   (%rax)
    8428:	4c 39 67 08          	cmp    %r12,0x8(%rdi)
    842c:	0f 85 4d fe ff ff    	jne    827f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x51f>
    8432:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    8436:	eb 68                	jmp    84a0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x740>
    8438:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    843f:	00 
    8440:	49 83 fa 10          	cmp    $0x10,%r10
    8444:	76 28                	jbe    846e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x70e>
    8446:	45 84 db             	test   %r11b,%r11b
    8449:	74 23                	je     846e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x70e>
    844b:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
    8452:	49 8b 7f 20          	mov    0x20(%r15),%rdi
    8456:	48 85 ff             	test   %rdi,%rdi
    8459:	74 13                	je     846e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x70e>
    845b:	4c 89 8d 58 fe ff ff 	mov    %r9,-0x1a8(%rbp)
    8462:	e8 79 95 ff ff       	callq  19e0 <free@plt>
    8467:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    846e:	49 83 f9 10          	cmp    $0x10,%r9
    8472:	0f 87 20 06 00 00    	ja     8a98 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xd38>
    8478:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    847f:	48 8d 7a 30          	lea    0x30(%rdx),%rdi
    8483:	48 89 7a 20          	mov    %rdi,0x20(%rdx)
    8487:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    848e:	c7 42 1c 00 00 00 00 	movl   $0x0,0x1c(%rdx)
    8495:	48 89 1a             	mov    %rbx,(%rdx)
    8498:	4c 89 62 08          	mov    %r12,0x8(%rdx)
    849c:	4c 89 4a 10          	mov    %r9,0x10(%rdx)
    84a0:	4d 85 ff             	test   %r15,%r15
    84a3:	74 14                	je     84b9 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x759>
    84a5:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
    84ac:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    84b3:	00 
    84b4:	e8 a7 94 ff ff       	callq  1960 <memcpy@plt>
    84b9:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
    84c0:	e8 8b 1a 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    84c5:	e9 8e fc ff ff       	jmpq   8158 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    84ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    84d0:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
    84d7:	48 89 19             	mov    %rbx,(%rcx)
    84da:	4c 89 61 08          	mov    %r12,0x8(%rcx)
    84de:	48 8b 79 20          	mov    0x20(%rcx),%rdi
    84e2:	eb bc                	jmp    84a0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x740>
    84e4:	0f 1f 40 00          	nopl   0x0(%rax)
    84e8:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
    84ee:	4d 39 c8             	cmp    %r9,%r8
    84f1:	0f 86 4d fb ff ff    	jbe    8044 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    84f7:	48 85 db             	test   %rbx,%rbx
    84fa:	0f 89 17 fb ff ff    	jns    8017 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2b7>
    8500:	49 89 da             	mov    %rbx,%r10
    8503:	49 89 df             	mov    %rbx,%r15
    8506:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    850a:	49 d1 ea             	shr    %r10
    850d:	41 83 e7 01          	and    $0x1,%r15d
    8511:	4d 09 fa             	or     %r15,%r10
    8514:	4d 85 c0             	test   %r8,%r8
    8517:	c4 c1 fb 2a c2       	vcvtsi2sd %r10,%xmm0,%xmm0
    851c:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    8520:	0f 89 03 fb ff ff    	jns    8029 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2c9>
    8526:	4c 89 c2             	mov    %r8,%rdx
    8529:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    852d:	48 d1 ea             	shr    %rdx
    8530:	41 83 e0 01          	and    $0x1,%r8d
    8534:	49 09 d0             	or     %rdx,%r8
    8537:	c4 c1 f3 2a c8       	vcvtsi2sd %r8,%xmm1,%xmm1
    853c:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    8540:	e9 ed fa ff ff       	jmpq   8032 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2d2>
    8545:	0f 1f 00             	nopl   (%rax)
    8548:	4c 39 47 08          	cmp    %r8,0x8(%rdi)
    854c:	0f 85 47 fa ff ff    	jne    7f99 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x239>
    8552:	e9 7d fb ff ff       	jmpq   80d4 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x374>
    8557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    855e:	00 00 
    8560:	48 83 f8 10          	cmp    $0x10,%rax
    8564:	76 1a                	jbe    8580 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x820>
    8566:	45 84 db             	test   %r11b,%r11b
    8569:	74 15                	je     8580 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x820>
    856b:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
    8572:	48 8b 79 20          	mov    0x20(%rcx),%rdi
    8576:	48 85 ff             	test   %rdi,%rdi
    8579:	74 05                	je     8580 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x820>
    857b:	e8 60 94 ff ff       	callq  19e0 <free@plt>
    8580:	49 83 ff 10          	cmp    $0x10,%r15
    8584:	0f 87 1e 01 00 00    	ja     86a8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x948>
    858a:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    8591:	48 8d 72 30          	lea    0x30(%rdx),%rsi
    8595:	49 89 d2             	mov    %rdx,%r10
    8598:	48 89 72 20          	mov    %rsi,0x20(%rdx)
    859c:	41 c7 42 1c 00 00 00 	movl   $0x0,0x1c(%r10)
    85a3:	00 
    85a4:	e9 19 fb ff ff       	jmpq   80c2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x362>
    85a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    85b0:	49 39 d0             	cmp    %rdx,%r8
    85b3:	0f 86 f7 f8 ff ff    	jbe    7eb0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x150>
    85b9:	e9 c3 f8 ff ff       	jmpq   7e81 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x121>
    85be:	66 90                	xchg   %ax,%ax
    85c0:	4d 89 c2             	mov    %r8,%r10
    85c3:	4d 89 c3             	mov    %r8,%r11
    85c6:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    85ca:	49 d1 ea             	shr    %r10
    85cd:	41 83 e3 01          	and    $0x1,%r11d
    85d1:	4d 09 da             	or     %r11,%r10
    85d4:	c4 c1 fb 2a c2       	vcvtsi2sd %r10,%xmm0,%xmm0
    85d9:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    85dd:	e9 bb f8 ff ff       	jmpq   7e9d <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x13d>
    85e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    85e8:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
    85ef:	49 89 1f             	mov    %rbx,(%r15)
    85f2:	4d 89 67 08          	mov    %r12,0x8(%r15)
    85f6:	e9 d9 fa ff ff       	jmpq   80d4 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x374>
    85fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8600:	49 89 d9             	mov    %rbx,%r9
    8603:	49 89 df             	mov    %rbx,%r15
    8606:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    860b:	49 d1 e9             	shr    %r9
    860e:	41 83 e7 01          	and    $0x1,%r15d
    8612:	4d 09 f9             	or     %r15,%r9
    8615:	c4 41 83 2a f9       	vcvtsi2sd %r9,%xmm15,%xmm15
    861a:	c4 41 03 58 f7       	vaddsd %xmm15,%xmm15,%xmm14
    861f:	e9 67 f8 ff ff       	jmpq   7e8b <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x12b>
    8624:	0f 1f 40 00          	nopl   0x0(%rax)
    8628:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    862f:	48 8b 7a 20          	mov    0x20(%rdx),%rdi
    8633:	e9 5d fe ff ff       	jmpq   8495 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x735>
    8638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    863f:	00 
    8640:	4d 85 c0             	test   %r8,%r8
    8643:	0f 88 3f 06 00 00    	js     8c88 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf28>
    8649:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    864d:	c4 c1 cb 2a f0       	vcvtsi2sd %r8,%xmm6,%xmm6
    8652:	c5 cb 59 3d 7e 36 00 	vmulsd 0x367e(%rip),%xmm6,%xmm7        # bcd8 <_ZL5temp0+0x738>
    8659:	00 
    865a:	c5 f9 2e 3d 6e 36 00 	vucomisd 0x366e(%rip),%xmm7        # bcd0 <_ZL5temp0+0x730>
    8661:	00 
    8662:	0f 86 58 fb ff ff    	jbe    81c0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x460>
    8668:	48 8d 1d 01 2a 00 00 	lea    0x2a01(%rip),%rbx        # b070 <_IO_stdin_used+0x2f0>
    866f:	4c 8d b5 10 ff ff ff 	lea    -0xf0(%rbp),%r14
    8676:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    867d:	48 89 9d a8 fe ff ff 	mov    %rbx,-0x158(%rbp)
    8684:	4c 89 b5 50 fe ff ff 	mov    %r14,-0x1b0(%rbp)
    868b:	e8 94 98 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8690:	48 8d 7a 30          	lea    0x30(%rdx),%rdi
    8694:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    869b:	48 89 7a 20          	mov    %rdi,0x20(%rdx)
    869f:	e9 f1 fd ff ff       	jmpq   8495 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x735>
    86a4:	0f 1f 40 00          	nopl   0x0(%rax)
    86a8:	48 bf ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rdi
    86af:	ff ff 1f 
    86b2:	49 39 ff             	cmp    %rdi,%r15
    86b5:	0f 87 21 08 00 00    	ja     8edc <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x117c>
    86bb:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    86c2:	00 
    86c3:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    86ca:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    86d1:	00 00 00 00 
    86d5:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    86dc:	48 19 f6             	sbb    %rsi,%rsi
    86df:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    86e3:	48 83 c6 20          	add    $0x20,%rsi
    86e7:	e8 04 95 ff ff       	callq  1bf0 <posix_memalign@plt>
    86ec:	85 c0                	test   %eax,%eax
    86ee:	0f 85 1d 08 00 00    	jne    8f11 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b1>
    86f4:	4c 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%r9
    86fb:	4d 85 c9             	test   %r9,%r9
    86fe:	0f 84 0d 08 00 00    	je     8f11 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b1>
    8704:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    870b:	4c 89 48 20          	mov    %r9,0x20(%rax)
    870f:	49 89 c2             	mov    %rax,%r10
    8712:	e9 85 fe ff ff       	jmpq   859c <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x83c>
    8717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    871e:	00 00 
    8720:	4c 8d 8d a4 fe ff ff 	lea    -0x15c(%rbp),%r9
    8727:	89 9d 94 fe ff ff    	mov    %ebx,-0x16c(%rbp)
    872d:	44 89 a5 98 fe ff ff 	mov    %r12d,-0x168(%rbp)
    8734:	89 9d a0 fe ff ff    	mov    %ebx,-0x160(%rbp)
    873a:	48 8d 95 94 fe ff ff 	lea    -0x16c(%rbp),%rdx
    8741:	4c 8d a5 e8 fe ff ff 	lea    -0x118(%rbp),%r12
    8748:	48 8d 9d a0 fe ff ff 	lea    -0x160(%rbp),%rbx
    874f:	48 83 ec 08          	sub    $0x8,%rsp
    8753:	48 8d 8d 98 fe ff ff 	lea    -0x168(%rbp),%rcx
    875a:	6a 01                	pushq  $0x1
    875c:	48 8d b5 87 fe ff ff 	lea    -0x179(%rbp),%rsi
    8763:	6a 01                	pushq  $0x1
    8765:	48 8d bd 86 fe ff ff 	lea    -0x17a(%rbp),%rdi
    876c:	52                   	push   %rdx
    876d:	4c 8d 85 9c fe ff ff 	lea    -0x164(%rbp),%r8
    8774:	ff b5 30 ff ff ff    	pushq  -0xd0(%rbp)
    877a:	41 54                	push   %r12
    877c:	41 51                	push   %r9
    877e:	4c 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%r9
    8785:	41 ff 76 20          	pushq  0x20(%r14)
    8789:	53                   	push   %rbx
    878a:	41 ff 75 20          	pushq  0x20(%r13)
    878e:	c5 7a 10 15 ea 2c 00 	vmovss 0x2cea(%rip),%xmm10        # b480 <_IO_stdin_used+0x700>
    8795:	00 
    8796:	c6 85 86 fe ff ff 4e 	movb   $0x4e,-0x17a(%rbp)
    879d:	c5 7a 10 1d df 2c 00 	vmovss 0x2cdf(%rip),%xmm11        # b484 <_IO_stdin_used+0x704>
    87a4:	00 
    87a5:	c6 85 87 fe ff ff 4e 	movb   $0x4e,-0x179(%rbp)
    87ac:	c5 7a 10 25 d4 2c 00 	vmovss 0x2cd4(%rip),%xmm12        # b488 <_IO_stdin_used+0x708>
    87b3:	00 
    87b4:	89 85 9c fe ff ff    	mov    %eax,-0x164(%rbp)
    87ba:	c5 7a 10 2d ca 2c 00 	vmovss 0x2cca(%rip),%xmm13        # b48c <_IO_stdin_used+0x70c>
    87c1:	00 
    87c2:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%rbp)
    87c8:	c5 7a 11 95 e0 fe ff 	vmovss %xmm10,-0x120(%rbp)
    87cf:	ff 
    87d0:	c5 7a 11 9d e4 fe ff 	vmovss %xmm11,-0x11c(%rbp)
    87d7:	ff 
    87d8:	c5 7a 11 a5 e8 fe ff 	vmovss %xmm12,-0x118(%rbp)
    87df:	ff 
    87e0:	c5 7a 11 ad ec fe ff 	vmovss %xmm13,-0x114(%rbp)
    87e7:	ff 
    87e8:	e8 33 92 ff ff       	callq  1a20 <wrapper2_cgemm_@plt>
    87ed:	48 83 c4 50          	add    $0x50,%rsp
    87f1:	8b b5 2c ff ff ff    	mov    -0xd4(%rbp),%esi
    87f7:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    87fe:	48 8b 9d 10 ff ff ff 	mov    -0xf0(%rbp),%rbx
    8805:	4c 8b a5 18 ff ff ff 	mov    -0xe8(%rbp),%r12
    880c:	89 b5 58 fe ff ff    	mov    %esi,-0x1a8(%rbp)
    8812:	e9 eb f9 ff ff       	jmpq   8202 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4a2>
    8817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    881e:	00 00 
    8820:	89 9d b8 fe ff ff    	mov    %ebx,-0x148(%rbp)
    8826:	89 9d d0 fe ff ff    	mov    %ebx,-0x130(%rbp)
    882c:	48 8d 95 b8 fe ff ff 	lea    -0x148(%rbp),%rdx
    8833:	48 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%rbx
    883a:	44 89 a5 c0 fe ff ff 	mov    %r12d,-0x140(%rbp)
    8841:	4c 8d 8d d8 fe ff ff 	lea    -0x128(%rbp),%r9
    8848:	4c 8d a5 e8 fe ff ff 	lea    -0x118(%rbp),%r12
    884f:	4c 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%r15
    8856:	48 83 ec 08          	sub    $0x8,%rsp
    885a:	6a 01                	pushq  $0x1
    885c:	48 8d 8d c0 fe ff ff 	lea    -0x140(%rbp),%rcx
    8863:	6a 01                	pushq  $0x1
    8865:	48 8d b5 b0 fe ff ff 	lea    -0x150(%rbp),%rsi
    886c:	52                   	push   %rdx
    886d:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    8874:	ff 73 20             	pushq  0x20(%rbx)
    8877:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
    887e:	41 54                	push   %r12
    8880:	41 51                	push   %r9
    8882:	4c 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%r9
    8889:	41 ff 76 20          	pushq  0x20(%r14)
    888d:	41 57                	push   %r15
    888f:	41 ff 75 20          	pushq  0x20(%r13)
    8893:	c5 fa 10 2d e5 2b 00 	vmovss 0x2be5(%rip),%xmm5        # b480 <_IO_stdin_used+0x700>
    889a:	00 
    889b:	c6 85 a8 fe ff ff 4e 	movb   $0x4e,-0x158(%rbp)
    88a2:	c5 fa 10 35 da 2b 00 	vmovss 0x2bda(%rip),%xmm6        # b484 <_IO_stdin_used+0x704>
    88a9:	00 
    88aa:	c6 85 b0 fe ff ff 4e 	movb   $0x4e,-0x150(%rbp)
    88b1:	c5 fa 10 3d cf 2b 00 	vmovss 0x2bcf(%rip),%xmm7        # b488 <_IO_stdin_used+0x708>
    88b8:	00 
    88b9:	89 85 c8 fe ff ff    	mov    %eax,-0x138(%rbp)
    88bf:	c5 7a 10 05 c5 2b 00 	vmovss 0x2bc5(%rip),%xmm8        # b48c <_IO_stdin_used+0x70c>
    88c6:	00 
    88c7:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%rbp)
    88cd:	c5 fa 11 ad e0 fe ff 	vmovss %xmm5,-0x120(%rbp)
    88d4:	ff 
    88d5:	c5 fa 11 b5 e4 fe ff 	vmovss %xmm6,-0x11c(%rbp)
    88dc:	ff 
    88dd:	c5 fa 11 bd e8 fe ff 	vmovss %xmm7,-0x118(%rbp)
    88e4:	ff 
    88e5:	c5 7a 11 85 ec fe ff 	vmovss %xmm8,-0x114(%rbp)
    88ec:	ff 
    88ed:	e8 2e 91 ff ff       	callq  1a20 <wrapper2_cgemm_@plt>
    88f2:	48 83 c4 50          	add    $0x50,%rsp
    88f6:	e9 5d f8 ff ff       	jmpq   8158 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    88fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8900:	45 84 d2             	test   %r10b,%r10b
    8903:	4d 8b 7e 20          	mov    0x20(%r14),%r15
    8907:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
    890e:	0f 85 02 06 00 00    	jne    8f16 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b6>
    8914:	45 84 db             	test   %r11b,%r11b
    8917:	0f 85 f9 05 00 00    	jne    8f16 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b6>
    891d:	89 85 8c fe ff ff    	mov    %eax,-0x174(%rbp)
    8923:	4c 8d 95 d8 fe ff ff 	lea    -0x128(%rbp),%r10
    892a:	48 8d 85 90 fe ff ff 	lea    -0x170(%rbp),%rax
    8931:	6a 01                	pushq  $0x1
    8933:	48 8d b5 88 fe ff ff 	lea    -0x178(%rbp),%rsi
    893a:	89 bd 88 fe ff ff    	mov    %edi,-0x178(%rbp)
    8940:	50                   	push   %rax
    8941:	41 50                	push   %r8
    8943:	48 8d 8d d0 fe ff ff 	lea    -0x130(%rbp),%rcx
    894a:	41 52                	push   %r10
    894c:	50                   	push   %rax
    894d:	48 8d 95 8c fe ff ff 	lea    -0x174(%rbp),%rdx
    8954:	41 57                	push   %r15
    8956:	4d 8b 45 20          	mov    0x20(%r13),%r8
    895a:	48 8d bd 85 fe ff ff 	lea    -0x17b(%rbp),%rdi
    8961:	c5 7a 10 35 17 2b 00 	vmovss 0x2b17(%rip),%xmm14        # b480 <_IO_stdin_used+0x700>
    8968:	00 
    8969:	49 89 f1             	mov    %rsi,%r9
    896c:	c5 7a 10 3d 10 2b 00 	vmovss 0x2b10(%rip),%xmm15        # b484 <_IO_stdin_used+0x704>
    8973:	00 
    8974:	c6 85 85 fe ff ff 4e 	movb   $0x4e,-0x17b(%rbp)
    897b:	c5 fa 10 05 05 2b 00 	vmovss 0x2b05(%rip),%xmm0        # b488 <_IO_stdin_used+0x708>
    8982:	00 
    8983:	c7 85 90 fe ff ff 01 	movl   $0x1,-0x170(%rbp)
    898a:	00 00 00 
    898d:	c5 fa 10 15 f7 2a 00 	vmovss 0x2af7(%rip),%xmm2        # b48c <_IO_stdin_used+0x70c>
    8994:	00 
    8995:	c5 7a 11 b5 d0 fe ff 	vmovss %xmm14,-0x130(%rbp)
    899c:	ff 
    899d:	c5 7a 11 bd d4 fe ff 	vmovss %xmm15,-0x12c(%rbp)
    89a4:	ff 
    89a5:	c5 fa 11 85 d8 fe ff 	vmovss %xmm0,-0x128(%rbp)
    89ac:	ff 
    89ad:	c5 fa 11 95 dc fe ff 	vmovss %xmm2,-0x124(%rbp)
    89b4:	ff 
    89b5:	e8 d6 8f ff ff       	callq  1990 <wrapper2_cgemv_@plt>
    89ba:	48 83 c4 30          	add    $0x30,%rsp
    89be:	e9 2e fe ff ff       	jmpq   87f1 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xa91>
    89c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    89c8:	49 83 fc 01          	cmp    $0x1,%r12
    89cc:	0f 84 de 02 00 00    	je     8cb0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf50>
    89d2:	0f b6 85 73 fe ff ff 	movzbl -0x18d(%rbp),%eax
    89d9:	48 8d 3d a8 29 00 00 	lea    0x29a8(%rip),%rdi        # b388 <_IO_stdin_used+0x608>
    89e0:	e9 fb f8 ff ff       	jmpq   82e0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x580>
    89e5:	0f 1f 00             	nopl   (%rax)
    89e8:	83 f9 01             	cmp    $0x1,%ecx
    89eb:	0f 84 d7 02 00 00    	je     8cc8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf68>
    89f1:	31 db                	xor    %ebx,%ebx
    89f3:	83 f9 02             	cmp    $0x2,%ecx
    89f6:	0f 94 c3             	sete   %bl
    89f9:	45 31 e4             	xor    %r12d,%r12d
    89fc:	e9 24 f9 ff ff       	jmpq   8325 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8a08:	4c 89 c3             	mov    %r8,%rbx
    8a0b:	e9 cd f7 ff ff       	jmpq   81dd <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x47d>
    8a10:	48 be ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rsi
    8a17:	ff ff 1f 
    8a1a:	49 39 f7             	cmp    %rsi,%r15
    8a1d:	0f 87 f8 04 00 00    	ja     8f1b <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11bb>
    8a23:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    8a2a:	00 
    8a2b:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8a32:	4c 89 85 58 fe ff ff 	mov    %r8,-0x1a8(%rbp)
    8a39:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    8a40:	00 00 00 00 
    8a44:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    8a4b:	48 19 f6             	sbb    %rsi,%rsi
    8a4e:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    8a52:	48 83 c6 20          	add    $0x20,%rsi
    8a56:	e8 95 91 ff ff       	callq  1bf0 <posix_memalign@plt>
    8a5b:	85 c0                	test   %eax,%eax
    8a5d:	0f 85 e0 04 00 00    	jne    8f43 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11e3>
    8a63:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    8a6a:	4c 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%r8
    8a71:	48 85 c9             	test   %rcx,%rcx
    8a74:	0f 84 c9 04 00 00    	je     8f43 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11e3>
    8a7a:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    8a81:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
    8a88:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    8a8f:	e9 52 f4 ff ff       	jmpq   7ee6 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x186>
    8a94:	0f 1f 40 00          	nopl   0x0(%rax)
    8a98:	48 be ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rsi
    8a9f:	ff ff 1f 
    8aa2:	49 39 f1             	cmp    %rsi,%r9
    8aa5:	0f 87 ab 04 00 00    	ja     8f56 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11f6>
    8aab:	4a 8d 14 cd 00 00 00 	lea    0x0(,%r9,8),%rdx
    8ab2:	00 
    8ab3:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8aba:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    8ac1:	00 00 00 00 
    8ac5:	4c 89 8d 58 fe ff ff 	mov    %r9,-0x1a8(%rbp)
    8acc:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    8ad3:	48 19 f6             	sbb    %rsi,%rsi
    8ad6:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    8ada:	48 83 c6 20          	add    $0x20,%rsi
    8ade:	e8 0d 91 ff ff       	callq  1bf0 <posix_memalign@plt>
    8ae3:	85 c0                	test   %eax,%eax
    8ae5:	0f 85 e4 03 00 00    	jne    8ecf <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x116f>
    8aeb:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
    8af2:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    8af9:	48 85 ff             	test   %rdi,%rdi
    8afc:	0f 84 cd 03 00 00    	je     8ecf <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x116f>
    8b02:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    8b09:	48 89 7a 20          	mov    %rdi,0x20(%rdx)
    8b0d:	e9 75 f9 ff ff       	jmpq   8487 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x727>
    8b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8b18:	4d 8b 7e 10          	mov    0x10(%r14),%r15
    8b1c:	4d 85 ff             	test   %r15,%r15
    8b1f:	0f 85 d9 03 00 00    	jne    8efe <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x119e>
    8b25:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
    8b2c:	e9 d1 f6 ff ff       	jmpq   8202 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4a2>
    8b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8b38:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8b3f:	40 84 f6             	test   %sil,%sil
    8b42:	4d 8b 56 20          	mov    0x20(%r14),%r10
    8b46:	4c 8b 47 20          	mov    0x20(%rdi),%r8
    8b4a:	0f 85 e3 f5 ff ff    	jne    8133 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3d3>
    8b50:	45 84 db             	test   %r11b,%r11b
    8b53:	0f 85 da f5 ff ff    	jne    8133 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3d3>
    8b59:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%rbp)
    8b5f:	4c 8d 9d e8 fe ff ff 	lea    -0x118(%rbp),%r11
    8b66:	48 8d 85 d8 fe ff ff 	lea    -0x128(%rbp),%rax
    8b6d:	6a 01                	pushq  $0x1
    8b6f:	48 8d b5 c8 fe ff ff 	lea    -0x138(%rbp),%rsi
    8b76:	89 95 c8 fe ff ff    	mov    %edx,-0x138(%rbp)
    8b7c:	50                   	push   %rax
    8b7d:	41 50                	push   %r8
    8b7f:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    8b86:	41 53                	push   %r11
    8b88:	50                   	push   %rax
    8b89:	48 8d 95 d0 fe ff ff 	lea    -0x130(%rbp),%rdx
    8b90:	41 52                	push   %r10
    8b92:	4d 8b 45 20          	mov    0x20(%r13),%r8
    8b96:	48 8d bd c0 fe ff ff 	lea    -0x140(%rbp),%rdi
    8b9d:	c5 7a 10 0d db 28 00 	vmovss 0x28db(%rip),%xmm9        # b480 <_IO_stdin_used+0x700>
    8ba4:	00 
    8ba5:	49 89 f1             	mov    %rsi,%r9
    8ba8:	c5 7a 10 15 d4 28 00 	vmovss 0x28d4(%rip),%xmm10        # b484 <_IO_stdin_used+0x704>
    8baf:	00 
    8bb0:	c6 85 c0 fe ff ff 4e 	movb   $0x4e,-0x140(%rbp)
    8bb7:	c5 7a 10 1d c9 28 00 	vmovss 0x28c9(%rip),%xmm11        # b488 <_IO_stdin_used+0x708>
    8bbe:	00 
    8bbf:	c7 85 d8 fe ff ff 01 	movl   $0x1,-0x128(%rbp)
    8bc6:	00 00 00 
    8bc9:	c5 7a 10 25 bb 28 00 	vmovss 0x28bb(%rip),%xmm12        # b48c <_IO_stdin_used+0x70c>
    8bd0:	00 
    8bd1:	c5 7a 11 8d e0 fe ff 	vmovss %xmm9,-0x120(%rbp)
    8bd8:	ff 
    8bd9:	c5 7a 11 95 e4 fe ff 	vmovss %xmm10,-0x11c(%rbp)
    8be0:	ff 
    8be1:	c5 7a 11 9d e8 fe ff 	vmovss %xmm11,-0x118(%rbp)
    8be8:	ff 
    8be9:	c5 7a 11 a5 ec fe ff 	vmovss %xmm12,-0x114(%rbp)
    8bf0:	ff 
    8bf1:	e8 9a 8d ff ff       	callq  1990 <wrapper2_cgemv_@plt>
    8bf6:	48 83 c4 30          	add    $0x30,%rsp
    8bfa:	e9 59 f5 ff ff       	jmpq   8158 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    8bff:	90                   	nop
    8c00:	49 83 f8 01          	cmp    $0x1,%r8
    8c04:	74 3a                	je     8c40 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xee0>
    8c06:	48 8d 35 7b 27 00 00 	lea    0x277b(%rip),%rsi        # b388 <_IO_stdin_used+0x608>
    8c0d:	b9 01 00 00 00       	mov    $0x1,%ecx
    8c12:	e9 e9 f3 ff ff       	jmpq   8000 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2a0>
    8c17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    8c1e:	00 00 
    8c20:	41 83 fa 01          	cmp    $0x1,%r10d
    8c24:	74 32                	je     8c58 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xef8>
    8c26:	31 db                	xor    %ebx,%ebx
    8c28:	41 83 fa 02          	cmp    $0x2,%r10d
    8c2c:	0f 94 c3             	sete   %bl
    8c2f:	45 31 e4             	xor    %r12d,%r12d
    8c32:	e9 0d f4 ff ff       	jmpq   8044 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8c37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    8c3e:	00 00 
    8c40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c45:	48 39 c3             	cmp    %rax,%rbx
    8c48:	0f 87 c0 f3 ff ff    	ja     800e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2ae>
    8c4e:	e9 f1 f3 ff ff       	jmpq   8044 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8c53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8c58:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    8c5e:	31 db                	xor    %ebx,%ebx
    8c60:	e9 df f3 ff ff       	jmpq   8044 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8c65:	0f 1f 00             	nopl   (%rax)
    8c68:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    8c6f:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    8c76:	00 
    8c77:	31 f6                	xor    %esi,%esi
    8c79:	e8 b2 8d ff ff       	callq  1a30 <memset@plt>
    8c7e:	e9 6e fb ff ff       	jmpq   87f1 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xa91>
    8c83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8c88:	4d 89 c2             	mov    %r8,%r10
    8c8b:	4d 89 c3             	mov    %r8,%r11
    8c8e:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    8c92:	49 d1 ea             	shr    %r10
    8c95:	41 83 e3 01          	and    $0x1,%r11d
    8c99:	4d 09 da             	or     %r11,%r10
    8c9c:	c4 c1 d3 2a ea       	vcvtsi2sd %r10,%xmm5,%xmm5
    8ca1:	c5 d3 58 f5          	vaddsd %xmm5,%xmm5,%xmm6
    8ca5:	e9 a8 f9 ff ff       	jmpq   8652 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8f2>
    8caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8cb0:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    8cb5:	48 39 cb             	cmp    %rcx,%rbx
    8cb8:	0f 87 31 f6 ff ff    	ja     82ef <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x58f>
    8cbe:	e9 62 f6 ff ff       	jmpq   8325 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8cc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8cc8:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    8cce:	31 db                	xor    %ebx,%ebx
    8cd0:	e9 50 f6 ff ff       	jmpq   8325 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8cd5:	0f 1f 00             	nopl   (%rax)
    8cd8:	48 8b 7e 20          	mov    0x20(%rsi),%rdi
    8cdc:	48 c1 e2 03          	shl    $0x3,%rdx
    8ce0:	31 f6                	xor    %esi,%esi
    8ce2:	e8 49 8d ff ff       	callq  1a30 <memset@plt>
    8ce7:	e9 6c f4 ff ff       	jmpq   8158 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    8cec:	48 89 c3             	mov    %rax,%rbx
    8cef:	c5 f8 77             	vzeroupper 
    8cf2:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
    8cf9:	e8 52 12 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    8cfe:	48 89 df             	mov    %rbx,%rdi
    8d01:	e8 3a 8e ff ff       	callq  1b40 <_Unwind_Resume@plt>
    8d06:	48 8d 3d 63 23 00 00 	lea    0x2363(%rip),%rdi        # b070 <_IO_stdin_used+0x2f0>
    8d0d:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
    8d14:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    8d1b:	e8 04 92 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8d20:	48 8d 35 49 23 00 00 	lea    0x2349(%rip),%rsi        # b070 <_IO_stdin_used+0x2f0>
    8d27:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8d2e:	48 89 b5 e8 fe ff ff 	mov    %rsi,-0x118(%rbp)
    8d35:	e8 ea 91 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8d3a:	4c 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%r9
    8d41:	4c 8d ad f0 fe ff ff 	lea    -0x110(%rbp),%r13
    8d48:	48 89 f1             	mov    %rsi,%rcx
    8d4b:	48 89 de             	mov    %rbx,%rsi
    8d4e:	4c 89 8d 50 fe ff ff 	mov    %r9,-0x1b0(%rbp)
    8d55:	4c 8d 0d d6 20 00 00 	lea    0x20d6(%rip),%r9        # ae32 <_IO_stdin_used+0xb2>
    8d5c:	4c 89 ef             	mov    %r13,%rdi
    8d5f:	4d 89 ee             	mov    %r13,%r14
    8d62:	e8 0c 90 ff ff       	callq  1d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>
    8d67:	4c 89 ef             	mov    %r13,%rdi
    8d6a:	e8 b1 8e ff ff       	callq  1c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>
    8d6f:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
    8d76:	49 83 c6 10          	add    $0x10,%r14
    8d7a:	48 89 c3             	mov    %rax,%rbx
    8d7d:	4c 39 f7             	cmp    %r14,%rdi
    8d80:	0f 84 70 01 00 00    	je     8ef6 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1196>
    8d86:	c5 f8 77             	vzeroupper 
    8d89:	e8 52 8d ff ff       	callq  1ae0 <_ZdlPv@plt>
    8d8e:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
    8d95:	48 89 95 50 fe ff ff 	mov    %rdx,-0x1b0(%rbp)
    8d9c:	e9 51 ff ff ff       	jmpq   8cf2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf92>
    8da1:	48 8d 1d 70 26 00 00 	lea    0x2670(%rip),%rbx        # b418 <_IO_stdin_used+0x698>
    8da8:	48 8d bd c0 fe ff ff 	lea    -0x140(%rbp),%rdi
    8daf:	48 89 9d c0 fe ff ff 	mov    %rbx,-0x140(%rbp)
    8db6:	e8 69 91 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8dbb:	4c 8d 35 56 26 00 00 	lea    0x2656(%rip),%r14        # b418 <_IO_stdin_used+0x698>
    8dc2:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8dc9:	4c 89 b5 e8 fe ff ff 	mov    %r14,-0x118(%rbp)
    8dd0:	e8 4f 91 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8dd5:	4c 8d ad 10 ff ff ff 	lea    -0xf0(%rbp),%r13
    8ddc:	4c 8d 0d 4f 20 00 00 	lea    0x204f(%rip),%r9        # ae32 <_IO_stdin_used+0xb2>
    8de3:	48 89 f1             	mov    %rsi,%rcx
    8de6:	48 89 de             	mov    %rbx,%rsi
    8de9:	4c 89 ef             	mov    %r13,%rdi
    8dec:	4d 89 ee             	mov    %r13,%r14
    8def:	e8 7f 8f ff ff       	callq  1d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>
    8df4:	4c 89 ef             	mov    %r13,%rdi
    8df7:	e8 24 8e ff ff       	callq  1c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>
    8dfc:	48 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%rdi
    8e03:	49 83 c6 10          	add    $0x10,%r14
    8e07:	48 89 c3             	mov    %rax,%rbx
    8e0a:	4c 39 f7             	cmp    %r14,%rdi
    8e0d:	0f 84 c1 00 00 00    	je     8ed4 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1174>
    8e13:	c5 f8 77             	vzeroupper 
    8e16:	e8 c5 8c ff ff       	callq  1ae0 <_ZdlPv@plt>
    8e1b:	e9 de fe ff ff       	jmpq   8cfe <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf9e>
    8e20:	83 f9 01             	cmp    $0x1,%ecx
    8e23:	0f 84 8e 00 00 00    	je     8eb7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1157>
    8e29:	31 d2                	xor    %edx,%edx
    8e2b:	83 f9 02             	cmp    $0x2,%ecx
    8e2e:	75 77                	jne    8ea7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1147>
    8e30:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8e37:	be 01 00 00 00       	mov    $0x1,%esi
    8e3c:	e8 8f 1b 00 00       	callq  a9d0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>
    8e41:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8e48:	4c 8b 9d 30 ff ff ff 	mov    -0xd0(%rbp),%r11
    8e4f:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
    8e55:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    8e5c:	00 00 00 00 
    8e60:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    8e67:	00 00 00 00 
    8e6b:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    8e72:	00 00 00 00 
    8e76:	48 89 1f             	mov    %rbx,(%rdi)
    8e79:	4c 89 67 08          	mov    %r12,0x8(%rdi)
    8e7d:	4c 89 7f 10          	mov    %r15,0x10(%rdi)
    8e81:	89 47 1c             	mov    %eax,0x1c(%rdi)
    8e84:	4c 89 5f 20          	mov    %r11,0x20(%rdi)
    8e88:	c7 85 2c ff ff ff 00 	movl   $0x0,-0xd4(%rbp)
    8e8f:	00 00 00 
    8e92:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    8e99:	00 00 00 00 
    8e9d:	e9 17 f6 ff ff       	jmpq   84b9 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x759>
    8ea2:	e8 69 8b ff ff       	callq  1a10 <__stack_chk_fail@plt>
    8ea7:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8eae:	31 f6                	xor    %esi,%esi
    8eb0:	e8 1b 1b 00 00       	callq  a9d0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>
    8eb5:	eb 8a                	jmp    8e41 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x10e1>
    8eb7:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8ebe:	ba 01 00 00 00       	mov    $0x1,%edx
    8ec3:	31 f6                	xor    %esi,%esi
    8ec5:	e8 06 1b 00 00       	callq  a9d0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>
    8eca:	e9 72 ff ff ff       	jmpq   8e41 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x10e1>
    8ecf:	e8 e9 8f ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    8ed4:	c5 f8 77             	vzeroupper 
    8ed7:	e9 22 fe ff ff       	jmpq   8cfe <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf9e>
    8edc:	4c 8d 2d bd 21 00 00 	lea    0x21bd(%rip),%r13        # b0a0 <_IO_stdin_used+0x320>
    8ee3:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8eea:	4c 89 ad e8 fe ff ff 	mov    %r13,-0x118(%rbp)
    8ef1:	e8 2e 90 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8ef6:	c5 f8 77             	vzeroupper 
    8ef9:	e9 90 fe ff ff       	jmpq   8d8e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x102e>
    8efe:	48 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%rcx
    8f05:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    8f0c:	e9 1d f0 ff ff       	jmpq   7f2e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1ce>
    8f11:	e8 a7 8f ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    8f16:	e8 ea 90 ff ff       	callq  2005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>
    8f1b:	4c 8d 05 7e 21 00 00 	lea    0x217e(%rip),%r8        # b0a0 <_IO_stdin_used+0x320>
    8f22:	4c 8d ad 10 ff ff ff 	lea    -0xf0(%rbp),%r13
    8f29:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
    8f30:	4c 89 85 b0 fe ff ff 	mov    %r8,-0x150(%rbp)
    8f37:	4c 89 ad 50 fe ff ff 	mov    %r13,-0x1b0(%rbp)
    8f3e:	e8 e1 8f ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8f43:	4c 8d a5 10 ff ff ff 	lea    -0xf0(%rbp),%r12
    8f4a:	4c 89 a5 50 fe ff ff 	mov    %r12,-0x1b0(%rbp)
    8f51:	e8 67 8f ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    8f56:	4c 8d 25 43 21 00 00 	lea    0x2143(%rip),%r12        # b0a0 <_IO_stdin_used+0x320>
    8f5d:	48 8d bd c8 fe ff ff 	lea    -0x138(%rbp),%rdi
    8f64:	4c 89 a5 c8 fe ff ff 	mov    %r12,-0x138(%rbp)
    8f6b:	e8 b4 8f ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>

0000000000008f70 <_ZL13runBenchmarksi>:
    8f70:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    8f75:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    8f79:	62 f1 7d 28 ef c0    	vpxord %ymm0,%ymm0,%ymm0
    8f7f:	41 ff 72 f8          	pushq  -0x8(%r10)
    8f83:	55                   	push   %rbp
    8f84:	48 89 e5             	mov    %rsp,%rbp
    8f87:	41 57                	push   %r15
    8f89:	41 56                	push   %r14
    8f8b:	41 55                	push   %r13
    8f8d:	41 54                	push   %r12
    8f8f:	41 52                	push   %r10
    8f91:	53                   	push   %rbx
    8f92:	48 81 ec 80 03 00 00 	sub    $0x380,%rsp
    8f99:	89 bd e0 fc ff ff    	mov    %edi,-0x320(%rbp)
    8f9f:	48 c7 85 20 fd ff ff 	movq   $0x0,-0x2e0(%rbp)
    8fa6:	00 00 00 00 
    8faa:	48 89 a5 a8 fc ff ff 	mov    %rsp,-0x358(%rbp)
    8fb1:	48 81 ec 40 10 00 00 	sub    $0x1040,%rsp
    8fb8:	62 71 fd 48 6f 2d 7e 	vmovdqa64 0x297e(%rip),%zmm13        # b940 <_ZL5temp0+0x3a0>
    8fbf:	29 00 00 
    8fc2:	4c 8d 6c 24 3f       	lea    0x3f(%rsp),%r13
    8fc7:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    8fce:	48 c7 85 40 fd ff ff 	movq   $0x0,-0x2c0(%rbp)
    8fd5:	00 00 00 00 
    8fd9:	4c 8d 64 24 3f       	lea    0x3f(%rsp),%r12
    8fde:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    8fe2:	48 c7 85 60 fd ff ff 	movq   $0x0,-0x2a0(%rbp)
    8fe9:	00 00 00 00 
    8fed:	49 83 e5 c0          	and    $0xffffffffffffffc0,%r13
    8ff1:	4c 8d 7c 24 3f       	lea    0x3f(%rsp),%r15
    8ff6:	48 c7 85 80 fd ff ff 	movq   $0x0,-0x280(%rbp)
    8ffd:	00 00 00 00 
    9001:	c5 f8 29 85 10 fd ff 	vmovaps %xmm0,-0x2f0(%rbp)
    9008:	ff 
    9009:	49 8d 95 00 10 00 00 	lea    0x1000(%r13),%rdx
    9010:	49 83 e4 c0          	and    $0xffffffffffffffc0,%r12
    9014:	49 83 e7 c0          	and    $0xffffffffffffffc0,%r15
    9018:	c5 f8 29 85 30 fd ff 	vmovaps %xmm0,-0x2d0(%rbp)
    901f:	ff 
    9020:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    9027:	00 00 
    9029:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    902d:	31 c0                	xor    %eax,%eax
    902f:	c5 f8 29 85 50 fd ff 	vmovaps %xmm0,-0x2b0(%rbp)
    9036:	ff 
    9037:	4c 89 e8             	mov    %r13,%rax
    903a:	c5 f8 29 85 70 fd ff 	vmovaps %xmm0,-0x290(%rbp)
    9041:	ff 
    9042:	62 d1 f5 48 73 d5 20 	vpsrlq $0x20,%zmm13,%zmm1
    9049:	62 f2 f5 48 28 35 ad 	vpmuldq 0x29ad(%rip),%zmm1,%zmm6        # ba00 <_ZL5temp0+0x460>
    9050:	29 00 00 
    9053:	62 f2 95 48 28 25 a3 	vpmuldq 0x29a3(%rip),%zmm13,%zmm4        # ba00 <_ZL5temp0+0x460>
    905a:	29 00 00 
    905d:	62 f1 15 48 fe 15 59 	vpaddd 0x2959(%rip),%zmm13,%zmm2        # b9c0 <_ZL5temp0+0x420>
    9064:	29 00 00 
    9067:	62 72 ed 48 28 15 8f 	vpmuldq 0x298f(%rip),%zmm2,%zmm10        # ba00 <_ZL5temp0+0x460>
    906e:	29 00 00 
    9071:	62 f1 a5 48 73 d2 20 	vpsrlq $0x20,%zmm2,%zmm11
    9078:	62 72 a5 48 28 25 7e 	vpmuldq 0x297e(%rip),%zmm11,%zmm12        # ba00 <_ZL5temp0+0x460>
    907f:	29 00 00 
    9082:	62 f1 15 48 fe 1d f4 	vpaddd 0x28f4(%rip),%zmm13,%zmm3        # b980 <_ZL5temp0+0x3e0>
    9089:	28 00 00 
    908c:	62 f1 a5 48 73 d3 20 	vpsrlq $0x20,%zmm3,%zmm11
    9093:	62 f1 fd 48 6f 0d a3 	vmovdqa64 0x29a3(%rip),%zmm1        # ba40 <_ZL5temp0+0x4a0>
    909a:	29 00 00 
    909d:	48 05 00 01 00 00    	add    $0x100,%rax
    90a3:	62 e1 fd 48 6f 0d 93 	vmovdqa64 0x2993(%rip),%zmm17        # ba40 <_ZL5temp0+0x4a0>
    90aa:	29 00 00 
    90ad:	62 f2 5d 48 76 ce    	vpermi2d %zmm6,%zmm4,%zmm1
    90b3:	62 e1 fd 48 6f 15 83 	vmovdqa64 0x2983(%rip),%zmm18        # ba40 <_ZL5temp0+0x4a0>
    90ba:	29 00 00 
    90bd:	62 e1 fd 48 6f 05 f9 	vmovdqa64 0x2af9(%rip),%zmm16        # bbc0 <_ZL5temp0+0x620>
    90c4:	2a 00 00 
    90c7:	62 e1 fd 48 6f 1d ef 	vmovdqa64 0x29ef(%rip),%zmm19        # bac0 <_ZL5temp0+0x520>
    90ce:	29 00 00 
    90d1:	62 f1 45 48 72 e1 01 	vpsrad $0x1,%zmm1,%zmm7
    90d8:	62 f1 fd 48 6f 0d 5e 	vmovdqa64 0x295e(%rip),%zmm1        # ba40 <_ZL5temp0+0x4a0>
    90df:	29 00 00 
    90e2:	62 72 45 48 40 05 94 	vpmulld 0x2994(%rip),%zmm7,%zmm8        # ba80 <_ZL5temp0+0x4e0>
    90e9:	29 00 00 
    90ec:	62 51 15 48 fa c8    	vpsubd %zmm8,%zmm13,%zmm9
    90f2:	62 f1 fd 48 6f 3d 84 	vmovdqa64 0x2a84(%rip),%zmm7        # bb80 <_ZL5temp0+0x5e0>
    90f9:	2a 00 00 
    90fc:	62 d2 2d 48 76 cc    	vpermi2d %zmm12,%zmm10,%zmm1
    9102:	62 72 a5 48 28 25 f4 	vpmuldq 0x28f4(%rip),%zmm11,%zmm12        # ba00 <_ZL5temp0+0x460>
    9109:	28 00 00 
    910c:	62 72 e5 48 28 15 ea 	vpmuldq 0x28ea(%rip),%zmm3,%zmm10        # ba00 <_ZL5temp0+0x460>
    9113:	28 00 00 
    9116:	62 c2 2d 48 76 cc    	vpermi2d %zmm12,%zmm10,%zmm17
    911c:	62 e1 fd 48 6f 25 9a 	vmovdqa64 0x2a9a(%rip),%zmm20        # bbc0 <_ZL5temp0+0x620>
    9123:	2a 00 00 
    9126:	62 71 fd 48 6f 25 50 	vmovdqa64 0x2a50(%rip),%zmm12        # bb80 <_ZL5temp0+0x5e0>
    912d:	2a 00 00 
    9130:	62 f1 0d 48 72 e1 01 	vpsrad $0x1,%zmm1,%zmm14
    9137:	62 72 0d 48 40 3d 3f 	vpmulld 0x293f(%rip),%zmm14,%zmm15        # ba80 <_ZL5temp0+0x4e0>
    913e:	29 00 00 
    9141:	62 d1 6d 48 fa c7    	vpsubd %zmm15,%zmm2,%zmm0
    9147:	62 f1 fd 48 6f 15 6f 	vmovdqa64 0x296f(%rip),%zmm2        # bac0 <_ZL5temp0+0x520>
    914e:	29 00 00 
    9151:	62 b1 15 48 72 e1 01 	vpsrad $0x1,%zmm17,%zmm13
    9158:	62 72 15 48 40 35 1e 	vpmulld 0x291e(%rip),%zmm13,%zmm14        # ba80 <_ZL5temp0+0x4e0>
    915f:	29 00 00 
    9162:	62 51 65 48 fa fe    	vpsubd %zmm14,%zmm3,%zmm15
    9168:	62 f2 b5 48 75 d0    	vpermi2w %zmm0,%zmm9,%zmm2
    916e:	62 71 65 48 fe 0d 48 	vpaddd 0x2848(%rip),%zmm3,%zmm9        # b9c0 <_ZL5temp0+0x420>
    9175:	28 00 00 
    9178:	62 f2 b5 48 28 05 7e 	vpmuldq 0x287e(%rip),%zmm9,%zmm0        # ba00 <_ZL5temp0+0x460>
    917f:	28 00 00 
    9182:	62 f1 6d 48 fd 2d b4 	vpaddw 0x29b4(%rip),%zmm2,%zmm5        # bb40 <_ZL5temp0+0x5a0>
    9189:	29 00 00 
    918c:	62 f1 6d 48 fd 35 6a 	vpaddw 0x296a(%rip),%zmm2,%zmm6        # bb00 <_ZL5temp0+0x560>
    9193:	29 00 00 
    9196:	62 d1 ed 48 73 d1 20 	vpsrlq $0x20,%zmm9,%zmm2
    919d:	62 f2 d5 48 75 fe    	vpermi2w %zmm6,%zmm5,%zmm7
    91a3:	62 f2 ed 48 28 25 53 	vpmuldq 0x2853(%rip),%zmm2,%zmm4        # ba00 <_ZL5temp0+0x460>
    91aa:	28 00 00 
    91ad:	62 e2 7d 48 76 d4    	vpermi2d %zmm4,%zmm0,%zmm18
    91b3:	62 e2 d5 48 75 c6    	vpermi2w %zmm6,%zmm5,%zmm16
    91b9:	62 f1 fd 48 7f 78 fc 	vmovdqa64 %zmm7,-0x100(%rax)
    91c0:	62 b1 55 48 72 e2 01 	vpsrad $0x1,%zmm18,%zmm5
    91c7:	62 f2 55 48 40 3d af 	vpmulld 0x28af(%rip),%zmm5,%zmm7        # ba80 <_ZL5temp0+0x4e0>
    91ce:	28 00 00 
    91d1:	62 71 35 48 fa c7    	vpsubd %zmm7,%zmm9,%zmm8
    91d7:	62 c2 85 48 75 d8    	vpermi2w %zmm8,%zmm15,%zmm19
    91dd:	62 e1 fd 48 7f 40 fd 	vmovdqa64 %zmm16,-0xc0(%rax)
    91e4:	62 71 65 40 fd 15 12 	vpaddw 0x2912(%rip),%zmm19,%zmm10        # bb00 <_ZL5temp0+0x560>
    91eb:	29 00 00 
    91ee:	62 71 65 40 fd 1d 48 	vpaddw 0x2948(%rip),%zmm19,%zmm11        # bb40 <_ZL5temp0+0x5a0>
    91f5:	29 00 00 
    91f8:	62 52 a5 48 75 e2    	vpermi2w %zmm10,%zmm11,%zmm12
    91fe:	62 c2 a5 48 75 e2    	vpermi2w %zmm10,%zmm11,%zmm20
    9204:	62 71 fd 48 7f 60 fe 	vmovdqa64 %zmm12,-0x80(%rax)
    920b:	62 e1 fd 48 7f 60 ff 	vmovdqa64 %zmm20,-0x40(%rax)
    9212:	48 39 c2             	cmp    %rax,%rdx
    9215:	62 71 65 48 fe 2d 61 	vpaddd 0x2761(%rip),%zmm3,%zmm13        # b980 <_ZL5temp0+0x3e0>
    921c:	27 00 00 
    921f:	0f 85 1d fe ff ff    	jne    9042 <_ZL13runBenchmarksi+0xd2>
    9225:	62 f1 65 48 ef db    	vpxord %zmm3,%zmm3,%zmm3
    922b:	62 e1 fd 48 6f 2d cb 	vmovdqa64 0x23cb(%rip),%zmm21        # b600 <_ZL5temp0+0x60>
    9232:	23 00 00 
    9235:	48 8d bd b0 fd ff ff 	lea    -0x250(%rbp),%rdi
    923c:	62 e1 fd 48 6f 35 fa 	vmovdqa64 0x23fa(%rip),%zmm22        # b640 <_ZL5temp0+0xa0>
    9243:	23 00 00 
    9246:	b9 40 00 00 00       	mov    $0x40,%ecx
    924b:	ba 10 00 00 00       	mov    $0x10,%edx
    9250:	62 e1 fd 48 6f 3d 26 	vmovdqa64 0x2426(%rip),%zmm23        # b680 <_ZL5temp0+0xe0>
    9257:	24 00 00 
    925a:	4c 89 ee             	mov    %r13,%rsi
    925d:	48 89 bd c0 fc ff ff 	mov    %rdi,-0x340(%rbp)
    9264:	62 61 fd 48 6f 05 52 	vmovdqa64 0x2452(%rip),%zmm24        # b6c0 <_ZL5temp0+0x120>
    926b:	24 00 00 
    926e:	62 c1 fd 48 7f 2c 24 	vmovdqa64 %zmm21,(%r12)
    9275:	62 c1 fd 48 7f 74 24 	vmovdqa64 %zmm22,0x40(%r12)
    927c:	01 
    927d:	62 c1 fd 48 7f 7c 24 	vmovdqa64 %zmm23,0x80(%r12)
    9284:	02 
    9285:	62 41 fd 48 7f 44 24 	vmovdqa64 %zmm24,0xc0(%r12)
    928c:	03 
    928d:	62 d1 fd 48 7f 1f    	vmovdqa64 %zmm3,(%r15)
    9293:	c5 f8 77             	vzeroupper 
    9296:	e8 65 d4 ff ff       	callq  6700 <_Z17int16MatrixToArmaP13Complex_int16ii>
    929b:	48 8d bd 60 fe ff ff 	lea    -0x1a0(%rbp),%rdi
    92a2:	b9 01 00 00 00       	mov    $0x1,%ecx
    92a7:	ba 40 00 00 00       	mov    $0x40,%edx
    92ac:	4c 89 e6             	mov    %r12,%rsi
    92af:	48 89 bd c8 fc ff ff 	mov    %rdi,-0x338(%rbp)
    92b6:	e8 45 d4 ff ff       	callq  6700 <_Z17int16MatrixToArmaP13Complex_int16ii>
    92bb:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    92c2:	b9 01 00 00 00       	mov    $0x1,%ecx
    92c7:	ba 10 00 00 00       	mov    $0x10,%edx
    92cc:	4c 89 fe             	mov    %r15,%rsi
    92cf:	48 89 bd e8 fc ff ff 	mov    %rdi,-0x318(%rbp)
    92d6:	e8 25 d4 ff ff       	callq  6700 <_Z17int16MatrixToArmaP13Complex_int16ii>
    92db:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
    92e2:	31 f6                	xor    %esi,%esi
    92e4:	48 8d 5c 24 3f       	lea    0x3f(%rsp),%rbx
    92e9:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
    92f0:	4c 8d 74 24 3f       	lea    0x3f(%rsp),%r14
    92f5:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    92fc:	48 8d 4c 24 3f       	lea    0x3f(%rsp),%rcx
    9301:	48 83 e3 c0          	and    $0xffffffffffffffc0,%rbx
    9305:	49 83 e6 c0          	and    $0xffffffffffffffc0,%r14
    9309:	48 83 e1 c0          	and    $0xffffffffffffffc0,%rcx
    930d:	48 89 8d d0 fc ff ff 	mov    %rcx,-0x330(%rbp)
    9314:	62 51 fd 48 6f 74 35 	vmovdqa64 0x0(%r13,%rsi,1),%zmm14
    931b:	00 
    931c:	4c 8d 46 40          	lea    0x40(%rsi),%r8
    9320:	4c 8d 8e 80 00 00 00 	lea    0x80(%rsi),%r9
    9327:	62 d1 fd 48 6f 6c 35 	vmovdqa64 0x40(%r13,%rsi,1),%zmm5
    932e:	01 
    932f:	4c 8d 9e c0 00 00 00 	lea    0xc0(%rsi),%r11
    9336:	4c 8d 96 00 01 00 00 	lea    0x100(%rsi),%r10
    933d:	62 73 fd 48 3b f2 01 	vextracti64x4 $0x1,%zmm14,%ymm2
    9344:	62 52 7d 48 23 fe    	vpmovsxwd %ymm14,%zmm15
    934a:	62 d3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm9
    9351:	62 51 fd 48 6f 64 35 	vmovdqa64 0x80(%r13,%rsi,1),%zmm12
    9358:	02 
    9359:	62 d1 7c 48 5b c7    	vcvtdq2ps %zmm15,%zmm0
    935f:	62 f2 7d 48 23 fd    	vpmovsxwd %ymm5,%zmm7
    9365:	62 f1 7c 48 29 04 73 	vmovaps %zmm0,(%rbx,%rsi,2)
    936c:	62 f2 7d 48 23 e2    	vpmovsxwd %ymm2,%zmm4
    9372:	62 d1 fd 48 6f 44 35 	vmovdqa64 0xc0(%r13,%rsi,1),%zmm0
    9379:	03 
    937a:	62 d2 7d 48 23 cc    	vpmovsxwd %ymm12,%zmm1
    9380:	62 71 7c 48 5b c7    	vcvtdq2ps %zmm7,%zmm8
    9386:	62 52 7d 48 23 d1    	vpmovsxwd %ymm9,%zmm10
    938c:	62 73 fd 48 3b e3 01 	vextracti64x4 $0x1,%zmm12,%ymm3
    9393:	62 f1 7c 48 5b f4    	vcvtdq2ps %zmm4,%zmm6
    9399:	62 f1 7c 48 29 74 73 	vmovaps %zmm6,0x40(%rbx,%rsi,2)
    93a0:	01 
    93a1:	62 f3 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm0,%ymm6
    93a8:	62 31 7c 48 29 04 43 	vmovaps %zmm8,(%rbx,%r8,2)
    93af:	62 51 7c 48 5b da    	vcvtdq2ps %zmm10,%zmm11
    93b5:	62 f2 7d 48 23 d0    	vpmovsxwd %ymm0,%zmm2
    93bb:	62 51 fd 48 6f 44 35 	vmovdqa64 0x100(%r13,%rsi,1),%zmm8
    93c2:	04 
    93c3:	62 72 7d 48 23 f3    	vpmovsxwd %ymm3,%zmm14
    93c9:	62 71 7c 48 5b e9    	vcvtdq2ps %zmm1,%zmm13
    93cf:	62 31 7c 48 29 5c 43 	vmovaps %zmm11,0x40(%rbx,%r8,2)
    93d6:	01 
    93d7:	62 f2 7d 48 23 ee    	vpmovsxwd %ymm6,%zmm5
    93dd:	62 f1 7c 48 5b e2    	vcvtdq2ps %zmm2,%zmm4
    93e3:	62 53 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm11
    93ea:	62 52 7d 48 23 c8    	vpmovsxwd %ymm8,%zmm9
    93f0:	62 31 7c 48 29 2c 4b 	vmovaps %zmm13,(%rbx,%r9,2)
    93f7:	62 51 7c 48 5b fe    	vcvtdq2ps %zmm14,%zmm15
    93fd:	62 51 fd 48 6f 6c 35 	vmovdqa64 0x140(%r13,%rsi,1),%zmm13
    9404:	05 
    9405:	62 f1 7c 48 5b fd    	vcvtdq2ps %zmm5,%zmm7
    940b:	62 31 7c 48 29 7c 4b 	vmovaps %zmm15,0x40(%rbx,%r9,2)
    9412:	01 
    9413:	62 51 7c 48 5b d1    	vcvtdq2ps %zmm9,%zmm10
    9419:	48 8d 86 40 01 00 00 	lea    0x140(%rsi),%rax
    9420:	62 b1 7c 48 29 24 5b 	vmovaps %zmm4,(%rbx,%r11,2)
    9427:	62 52 7d 48 23 e3    	vpmovsxwd %ymm11,%zmm12
    942d:	62 d2 7d 48 23 dd    	vpmovsxwd %ymm13,%zmm3
    9433:	62 b1 7c 48 29 7c 5b 	vmovaps %zmm7,0x40(%rbx,%r11,2)
    943a:	01 
    943b:	62 53 fd 48 3b ef 01 	vextracti64x4 $0x1,%zmm13,%ymm15
    9442:	62 31 7c 48 29 14 53 	vmovaps %zmm10,(%rbx,%r10,2)
    9449:	62 d1 7c 48 5b cc    	vcvtdq2ps %zmm12,%zmm1
    944f:	48 8d 96 80 01 00 00 	lea    0x180(%rsi),%rdx
    9456:	62 d1 fd 48 6f 64 35 	vmovdqa64 0x180(%r13,%rsi,1),%zmm4
    945d:	06 
    945e:	48 8d be c0 01 00 00 	lea    0x1c0(%rsi),%rdi
    9465:	62 71 7c 48 5b f3    	vcvtdq2ps %zmm3,%zmm14
    946b:	62 51 fd 48 6f 54 35 	vmovdqa64 0x1c0(%r13,%rsi,1),%zmm10
    9472:	07 
    9473:	62 d2 7d 48 23 c7    	vpmovsxwd %ymm15,%zmm0
    9479:	48 81 c6 00 02 00 00 	add    $0x200,%rsi
    9480:	62 b1 7c 48 29 4c 53 	vmovaps %zmm1,0x40(%rbx,%r10,2)
    9487:	01 
    9488:	62 f3 fd 48 3b e7 01 	vextracti64x4 $0x1,%zmm4,%ymm7
    948f:	62 73 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm10,%ymm1
    9496:	62 f2 7d 48 23 f4    	vpmovsxwd %ymm4,%zmm6
    949c:	62 f1 7c 48 5b d0    	vcvtdq2ps %zmm0,%zmm2
    94a2:	62 52 7d 48 23 da    	vpmovsxwd %ymm10,%zmm11
    94a8:	48 81 fe 00 10 00 00 	cmp    $0x1000,%rsi
    94af:	62 71 7c 48 29 34 43 	vmovaps %zmm14,(%rbx,%rax,2)
    94b6:	62 72 7d 48 23 c7    	vpmovsxwd %ymm7,%zmm8
    94bc:	62 f1 7c 48 29 54 43 	vmovaps %zmm2,0x40(%rbx,%rax,2)
    94c3:	01 
    94c4:	62 f1 7c 48 5b ee    	vcvtdq2ps %zmm6,%zmm5
    94ca:	62 72 7d 48 23 e9    	vpmovsxwd %ymm1,%zmm13
    94d0:	62 f1 7c 48 29 2c 53 	vmovaps %zmm5,(%rbx,%rdx,2)
    94d7:	62 51 7c 48 5b e3    	vcvtdq2ps %zmm11,%zmm12
    94dd:	62 51 7c 48 5b c8    	vcvtdq2ps %zmm8,%zmm9
    94e3:	62 71 7c 48 29 4c 53 	vmovaps %zmm9,0x40(%rbx,%rdx,2)
    94ea:	01 
    94eb:	62 d1 7c 48 5b dd    	vcvtdq2ps %zmm13,%zmm3
    94f1:	62 71 7c 48 29 24 7b 	vmovaps %zmm12,(%rbx,%rdi,2)
    94f8:	62 f1 7c 48 29 5c 7b 	vmovaps %zmm3,0x40(%rbx,%rdi,2)
    94ff:	01 
    9500:	0f 85 0e fe ff ff    	jne    9314 <_ZL13runBenchmarksi+0x3a4>
    9506:	62 d1 fd 48 6f 6c 24 	vmovdqa64 0x40(%r12),%zmm5
    950d:	01 
    950e:	48 81 ec 40 10 00 00 	sub    $0x1040,%rsp
    9515:	62 51 fd 48 6f 34 24 	vmovdqa64 (%r12),%zmm14
    951c:	48 8d 7c 24 3f       	lea    0x3f(%rsp),%rdi
    9521:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    9528:	62 d3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm9
    952f:	62 f2 7d 48 23 fd    	vpmovsxwd %ymm5,%zmm7
    9535:	62 73 fd 48 3b f2 01 	vextracti64x4 $0x1,%zmm14,%ymm2
    953c:	62 52 7d 48 23 fe    	vpmovsxwd %ymm14,%zmm15
    9542:	62 71 7c 48 5b c7    	vcvtdq2ps %zmm7,%zmm8
    9548:	62 51 7c 48 29 46 02 	vmovaps %zmm8,0x80(%r14)
    954f:	48 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%rcx
    9556:	62 52 7d 48 23 d1    	vpmovsxwd %ymm9,%zmm10
    955c:	62 51 fd 48 6f 07    	vmovdqa64 (%r15),%zmm8
    9562:	62 d1 7c 48 5b c7    	vcvtdq2ps %zmm15,%zmm0
    9568:	62 f2 7d 48 23 e2    	vpmovsxwd %ymm2,%zmm4
    956e:	62 51 fd 48 6f 64 24 	vmovdqa64 0x80(%r12),%zmm12
    9575:	02 
    9576:	48 83 e7 c0          	and    $0xffffffffffffffc0,%rdi
    957a:	62 51 7c 48 5b da    	vcvtdq2ps %zmm10,%zmm11
    9580:	62 51 7c 48 29 5e 03 	vmovaps %zmm11,0xc0(%r14)
    9587:	62 53 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm11
    958e:	62 d1 7c 48 29 06    	vmovaps %zmm0,(%r14)
    9594:	62 f1 7c 48 5b f4    	vcvtdq2ps %zmm4,%zmm6
    959a:	62 d2 7d 48 23 cc    	vpmovsxwd %ymm12,%zmm1
    95a0:	62 d1 fd 48 6f 44 24 	vmovdqa64 0xc0(%r12),%zmm0
    95a7:	03 
    95a8:	62 73 fd 48 3b e3 01 	vextracti64x4 $0x1,%zmm12,%ymm3
    95af:	62 52 7d 48 23 c8    	vpmovsxwd %ymm8,%zmm9
    95b5:	62 d1 7c 48 29 76 01 	vmovaps %zmm6,0x40(%r14)
    95bc:	62 52 7d 48 23 e3    	vpmovsxwd %ymm11,%zmm12
    95c2:	62 f3 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm0,%ymm6
    95c9:	62 71 7c 48 5b e9    	vcvtdq2ps %zmm1,%zmm13
    95cf:	62 f2 7d 48 23 d0    	vpmovsxwd %ymm0,%zmm2
    95d5:	62 51 7c 48 5b d1    	vcvtdq2ps %zmm9,%zmm10
    95db:	62 d1 7c 48 5b cc    	vcvtdq2ps %zmm12,%zmm1
    95e1:	62 71 7c 48 29 11    	vmovaps %zmm10,(%rcx)
    95e7:	62 f1 7c 48 29 49 01 	vmovaps %zmm1,0x40(%rcx)
    95ee:	48 8d 4c 24 3f       	lea    0x3f(%rsp),%rcx
    95f3:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    95f7:	62 72 7d 48 23 f3    	vpmovsxwd %ymm3,%zmm14
    95fd:	62 f2 7d 48 23 ee    	vpmovsxwd %ymm6,%zmm5
    9603:	48 8d 74 24 3f       	lea    0x3f(%rsp),%rsi
    9608:	62 f1 7c 48 5b e2    	vcvtdq2ps %zmm2,%zmm4
    960e:	62 51 7c 48 29 6e 04 	vmovaps %zmm13,0x100(%r14)
    9615:	4c 8d 8f 00 10 00 00 	lea    0x1000(%rdi),%r9
    961c:	62 51 7c 48 5b fe    	vcvtdq2ps %zmm14,%zmm15
    9622:	62 f1 7c 48 5b fd    	vcvtdq2ps %zmm5,%zmm7
    9628:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
    962c:	62 51 7c 48 29 7e 05 	vmovaps %zmm15,0x140(%r14)
    9633:	48 83 e1 c0          	and    $0xffffffffffffffc0,%rcx
    9637:	48 89 b5 b8 fc ff ff 	mov    %rsi,-0x348(%rbp)
    963e:	62 d1 7c 48 29 66 06 	vmovaps %zmm4,0x180(%r14)
    9645:	49 89 f8             	mov    %rdi,%r8
    9648:	62 d1 7c 48 29 7e 07 	vmovaps %zmm7,0x1c0(%r14)
    964f:	62 71 fd 48 6f 0d e7 	vmovdqa64 0x22e7(%rip),%zmm9        # b940 <_ZL5temp0+0x3a0>
    9656:	22 00 00 
    9659:	62 61 fd 48 6f 0d dd 	vmovdqa64 0x23dd(%rip),%zmm25        # ba40 <_ZL5temp0+0x4a0>
    9660:	23 00 00 
    9663:	62 72 b5 48 28 35 93 	vpmuldq 0x2393(%rip),%zmm9,%zmm14        # ba00 <_ZL5temp0+0x460>
    966a:	23 00 00 
    966d:	62 d1 85 48 73 d1 20 	vpsrlq $0x20,%zmm9,%zmm15
    9674:	62 f2 85 48 28 15 82 	vpmuldq 0x2382(%rip),%zmm15,%zmm2        # ba00 <_ZL5temp0+0x460>
    967b:	23 00 00 
    967e:	62 61 fd 48 6f 15 b8 	vmovdqa64 0x23b8(%rip),%zmm26        # ba40 <_ZL5temp0+0x4a0>
    9685:	23 00 00 
    9688:	62 71 35 48 fe 2d ee 	vpaddd 0x22ee(%rip),%zmm9,%zmm13        # b980 <_ZL5temp0+0x3e0>
    968f:	22 00 00 
    9692:	62 62 0d 48 76 ca    	vpermi2d %zmm2,%zmm14,%zmm25
    9698:	62 f1 35 48 fe 1d 1e 	vpaddd 0x231e(%rip),%zmm9,%zmm3        # b9c0 <_ZL5temp0+0x420>
    969f:	23 00 00 
    96a2:	62 f2 e5 48 28 3d 54 	vpmuldq 0x2354(%rip),%zmm3,%zmm7        # ba00 <_ZL5temp0+0x460>
    96a9:	23 00 00 
    96ac:	62 f1 bd 48 73 d3 20 	vpsrlq $0x20,%zmm3,%zmm8
    96b3:	62 61 fd 48 6f 1d 03 	vmovdqa64 0x2403(%rip),%zmm27        # bac0 <_ZL5temp0+0x520>
    96ba:	24 00 00 
    96bd:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    96c4:	62 f1 fd 48 6f 15 b2 	vmovdqa64 0x24b2(%rip),%zmm2        # bb80 <_ZL5temp0+0x5e0>
    96cb:	24 00 00 
    96ce:	62 91 4d 48 72 e1 01 	vpsrad $0x1,%zmm25,%zmm6
    96d5:	62 f2 4d 48 40 2d a1 	vpmulld 0x23a1(%rip),%zmm6,%zmm5        # ba80 <_ZL5temp0+0x4e0>
    96dc:	23 00 00 
    96df:	62 f1 35 48 fa c5    	vpsubd %zmm5,%zmm9,%zmm0
    96e5:	62 72 bd 48 28 0d 11 	vpmuldq 0x2311(%rip),%zmm8,%zmm9        # ba00 <_ZL5temp0+0x460>
    96ec:	23 00 00 
    96ef:	62 42 45 48 76 d1    	vpermi2d %zmm9,%zmm7,%zmm26
    96f5:	62 61 fd 48 6f 2d 41 	vmovdqa64 0x2341(%rip),%zmm29        # ba40 <_ZL5temp0+0x4a0>
    96fc:	23 00 00 
    96ff:	62 61 fd 48 6f 35 37 	vmovdqa64 0x2337(%rip),%zmm30        # ba40 <_ZL5temp0+0x4a0>
    9706:	23 00 00 
    9709:	62 f1 15 48 fe 35 ad 	vpaddd 0x22ad(%rip),%zmm13,%zmm6        # b9c0 <_ZL5temp0+0x420>
    9710:	22 00 00 
    9713:	62 f2 95 48 28 2d e3 	vpmuldq 0x22e3(%rip),%zmm13,%zmm5        # ba00 <_ZL5temp0+0x460>
    971a:	22 00 00 
    971d:	62 61 fd 48 6f 25 99 	vmovdqa64 0x2499(%rip),%zmm28        # bbc0 <_ZL5temp0+0x620>
    9724:	24 00 00 
    9727:	62 91 25 48 72 e2 01 	vpsrad $0x1,%zmm26,%zmm11
    972e:	62 72 25 48 40 25 48 	vpmulld 0x2348(%rip),%zmm11,%zmm12        # ba80 <_ZL5temp0+0x4e0>
    9735:	23 00 00 
    9738:	62 d1 65 48 fa cc    	vpsubd %zmm12,%zmm3,%zmm1
    973e:	62 62 fd 48 75 d9    	vpermi2w %zmm1,%zmm0,%zmm27
    9744:	62 72 cd 48 28 25 b2 	vpmuldq 0x22b2(%rip),%zmm6,%zmm12        # ba00 <_ZL5temp0+0x460>
    974b:	22 00 00 
    974e:	62 d1 fd 48 73 d5 20 	vpsrlq $0x20,%zmm13,%zmm0
    9755:	62 f1 f5 48 73 d6 20 	vpsrlq $0x20,%zmm6,%zmm1
    975c:	62 f2 fd 48 28 3d 9a 	vpmuldq 0x229a(%rip),%zmm0,%zmm7        # ba00 <_ZL5temp0+0x460>
    9763:	22 00 00 
    9766:	62 f2 f5 48 28 1d 90 	vpmuldq 0x2290(%rip),%zmm1,%zmm3        # ba00 <_ZL5temp0+0x460>
    976d:	22 00 00 
    9770:	62 62 55 48 76 ef    	vpermi2d %zmm7,%zmm5,%zmm29
    9776:	62 61 fd 48 6f 3d 40 	vmovdqa64 0x2340(%rip),%zmm31        # bac0 <_ZL5temp0+0x520>
    977d:	23 00 00 
    9780:	62 71 25 40 fd 3d b6 	vpaddw 0x23b6(%rip),%zmm27,%zmm15        # bb40 <_ZL5temp0+0x5a0>
    9787:	23 00 00 
    978a:	62 71 25 40 fd 35 6c 	vpaddw 0x236c(%rip),%zmm27,%zmm14        # bb00 <_ZL5temp0+0x560>
    9791:	23 00 00 
    9794:	62 62 1d 48 76 f3    	vpermi2d %zmm3,%zmm12,%zmm30
    979a:	62 d2 85 48 75 d6    	vpermi2w %zmm14,%zmm15,%zmm2
    97a0:	62 f1 fd 48 6f 3d d6 	vmovdqa64 0x23d6(%rip),%zmm7        # bb80 <_ZL5temp0+0x5e0>
    97a7:	23 00 00 
    97aa:	62 42 85 48 75 e6    	vpermi2w %zmm14,%zmm15,%zmm28
    97b0:	62 91 35 48 72 e5 01 	vpsrad $0x1,%zmm29,%zmm9
    97b7:	62 72 35 48 40 15 bf 	vpmulld 0x22bf(%rip),%zmm9,%zmm10        # ba80 <_ZL5temp0+0x4e0>
    97be:	22 00 00 
    97c1:	62 91 05 48 72 e6 01 	vpsrad $0x1,%zmm30,%zmm15
    97c8:	62 51 15 48 fa da    	vpsubd %zmm10,%zmm13,%zmm11
    97ce:	62 e1 fd 48 6f 05 e8 	vmovdqa64 0x23e8(%rip),%zmm16        # bbc0 <_ZL5temp0+0x620>
    97d5:	23 00 00 
    97d8:	62 d1 fd 48 7f 50 fc 	vmovdqa64 %zmm2,-0x100(%r8)
    97df:	62 f2 05 48 40 15 97 	vpmulld 0x2297(%rip),%zmm15,%zmm2        # ba80 <_ZL5temp0+0x4e0>
    97e6:	22 00 00 
    97e9:	62 f1 4d 48 fa e2    	vpsubd %zmm2,%zmm6,%zmm4
    97ef:	62 62 a5 48 75 fc    	vpermi2w %zmm4,%zmm11,%zmm31
    97f5:	62 41 fd 48 7f 60 fd 	vmovdqa64 %zmm28,-0xc0(%r8)
    97fc:	62 f1 05 40 fd 2d fa 	vpaddw 0x22fa(%rip),%zmm31,%zmm5        # bb00 <_ZL5temp0+0x560>
    9803:	22 00 00 
    9806:	62 f1 05 40 fd 05 30 	vpaddw 0x2330(%rip),%zmm31,%zmm0        # bb40 <_ZL5temp0+0x5a0>
    980d:	23 00 00 
    9810:	62 f2 fd 48 75 fd    	vpermi2w %zmm5,%zmm0,%zmm7
    9816:	62 e2 fd 48 75 c5    	vpermi2w %zmm5,%zmm0,%zmm16
    981c:	62 d1 fd 48 7f 78 fe 	vmovdqa64 %zmm7,-0x80(%r8)
    9823:	62 c1 fd 48 7f 40 ff 	vmovdqa64 %zmm16,-0x40(%r8)
    982a:	4d 39 c1             	cmp    %r8,%r9
    982d:	62 71 15 48 fe 0d 49 	vpaddd 0x2149(%rip),%zmm13,%zmm9        # b980 <_ZL5temp0+0x3e0>
    9834:	21 00 00 
    9837:	0f 85 1c fe ff ff    	jne    9659 <_ZL13runBenchmarksi+0x6e9>
    983d:	62 51 15 48 ef ed    	vpxord %zmm13,%zmm13,%zmm13
    9843:	4c 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%r8
    984a:	ba 40 00 00 00       	mov    $0x40,%edx
    984f:	44 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9d
    9856:	62 e1 fd 48 6f 0d a0 	vmovdqa64 0x1da0(%rip),%zmm17        # b600 <_ZL5temp0+0x60>
    985d:	1d 00 00 
    9860:	be 10 00 00 00       	mov    $0x10,%esi
    9865:	62 e1 fd 48 6f 15 d1 	vmovdqa64 0x1dd1(%rip),%zmm18        # b640 <_ZL5temp0+0xa0>
    986c:	1d 00 00 
    986f:	62 e1 fd 48 6f 1d 07 	vmovdqa64 0x1e07(%rip),%zmm19        # b680 <_ZL5temp0+0xe0>
    9876:	1e 00 00 
    9879:	62 e1 fd 48 6f 25 3d 	vmovdqa64 0x1e3d(%rip),%zmm20        # b6c0 <_ZL5temp0+0x120>
    9880:	1e 00 00 
    9883:	62 e1 fd 48 7f 09    	vmovdqa64 %zmm17,(%rcx)
    9889:	62 e1 fd 48 7f 51 01 	vmovdqa64 %zmm18,0x40(%rcx)
    9890:	62 e1 fd 48 7f 59 02 	vmovdqa64 %zmm19,0x80(%rcx)
    9897:	62 e1 fd 48 7f 61 03 	vmovdqa64 %zmm20,0xc0(%rcx)
    989e:	62 51 fd 48 7f 28    	vmovdqa64 %zmm13,(%r8)
    98a4:	c5 f8 77             	vzeroupper 
    98a7:	e8 f4 a8 ff ff       	callq  41a0 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i>
    98ac:	44 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9d
    98b3:	4d 89 f8             	mov    %r15,%r8
    98b6:	4c 89 e1             	mov    %r12,%rcx
    98b9:	ba 40 00 00 00       	mov    $0x40,%edx
    98be:	be 10 00 00 00       	mov    $0x10,%esi
    98c3:	4c 89 ef             	mov    %r13,%rdi
    98c6:	c5 fb 11 85 f8 fc ff 	vmovsd %xmm0,-0x308(%rbp)
    98cd:	ff 
    98ce:	e8 dd a6 ff ff       	callq  3fb0 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i>
    98d3:	44 8b ad e0 fc ff ff 	mov    -0x320(%rbp),%r13d
    98da:	4c 89 f1             	mov    %r14,%rcx
    98dd:	ba 40 00 00 00       	mov    $0x40,%edx
    98e2:	4c 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%r8
    98e9:	be 10 00 00 00       	mov    $0x10,%esi
    98ee:	48 89 df             	mov    %rbx,%rdi
    98f1:	c5 fb 11 85 00 fd ff 	vmovsd %xmm0,-0x300(%rbp)
    98f8:	ff 
    98f9:	45 89 e9             	mov    %r13d,%r9d
    98fc:	e8 8f aa ff ff       	callq  4390 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i>
    9901:	48 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%rdx
    9908:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
    990f:	44 89 e9             	mov    %r13d,%ecx
    9912:	48 8b bd c0 fc ff ff 	mov    -0x340(%rbp),%rdi
    9919:	c5 fb 11 85 08 fd ff 	vmovsd %xmm0,-0x2f8(%rbp)
    9920:	ff 
    9921:	e8 3a e4 ff ff       	callq  7d60 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i>
    9926:	48 8d 9d 90 fd ff ff 	lea    -0x270(%rbp),%rbx
    992d:	48 8d bd 10 fd ff ff 	lea    -0x2f0(%rbp),%rdi
    9934:	c5 fb 11 85 90 fd ff 	vmovsd %xmm0,-0x270(%rbp)
    993b:	ff 
    993c:	48 89 de             	mov    %rbx,%rsi
    993f:	48 89 bd 70 fc ff ff 	mov    %rdi,-0x390(%rbp)
    9946:	e8 65 06 00 00       	callq  9fb0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    994b:	4c 8d ad 50 fd ff ff 	lea    -0x2b0(%rbp),%r13
    9952:	48 8d b5 08 fd ff ff 	lea    -0x2f8(%rbp),%rsi
    9959:	4c 89 ef             	mov    %r13,%rdi
    995c:	e8 4f 06 00 00       	callq  9fb0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    9961:	4c 8d b5 30 fd ff ff 	lea    -0x2d0(%rbp),%r14
    9968:	48 8d b5 00 fd ff ff 	lea    -0x300(%rbp),%rsi
    996f:	4c 89 f7             	mov    %r14,%rdi
    9972:	e8 39 06 00 00       	callq  9fb0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    9977:	4c 8d a5 70 fd ff ff 	lea    -0x290(%rbp),%r12
    997e:	48 8d b5 f8 fc ff ff 	lea    -0x308(%rbp),%rsi
    9985:	4c 89 e7             	mov    %r12,%rdi
    9988:	e8 23 06 00 00       	callq  9fb0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    998d:	62 51 2d 48 ef d2    	vpxord %zmm10,%zmm10,%zmm10
    9993:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
    999a:	62 e1 ff 08 10 6d b2 	vmovsd -0x270(%rbp),%xmm21
    99a1:	4c 89 ff             	mov    %r15,%rdi
    99a4:	62 e1 ff 08 10 7d a1 	vmovsd -0x2f8(%rbp),%xmm23
    99ab:	62 61 ff 08 10 4d a0 	vmovsd -0x300(%rbp),%xmm25
    99b2:	62 a1 af 08 58 f5    	vaddsd %xmm21,%xmm10,%xmm22
    99b8:	62 61 ff 08 10 5d 9f 	vmovsd -0x308(%rbp),%xmm27
    99bf:	62 21 af 08 58 c7    	vaddsd %xmm23,%xmm10,%xmm24
    99c5:	62 01 af 08 58 d1    	vaddsd %xmm25,%xmm10,%xmm26
    99cb:	62 e1 ff 08 11 6d 96 	vmovsd %xmm21,-0x350(%rbp)
    99d2:	62 01 af 08 58 e3    	vaddsd %xmm27,%xmm10,%xmm28
    99d8:	62 e1 ff 08 11 7d 94 	vmovsd %xmm23,-0x360(%rbp)
    99df:	62 e1 ff 08 11 75 9b 	vmovsd %xmm22,-0x328(%rbp)
    99e6:	62 61 ff 08 11 45 91 	vmovsd %xmm24,-0x378(%rbp)
    99ed:	62 61 ff 08 11 4d 93 	vmovsd %xmm25,-0x368(%rbp)
    99f4:	62 61 ff 08 11 55 90 	vmovsd %xmm26,-0x380(%rbp)
    99fb:	62 61 ff 08 11 5d 92 	vmovsd %xmm27,-0x370(%rbp)
    9a02:	62 61 ff 08 11 65 8f 	vmovsd %xmm28,-0x388(%rbp)
    9a09:	e8 e2 06 00 00       	callq  a0f0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE>
    9a0e:	84 c0                	test   %al,%al
    9a10:	0f 84 25 04 00 00    	je     9e3b <_ZL13runBenchmarksi+0xecb>
    9a16:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
    9a1d:	48 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%rdi
    9a24:	e8 a7 0b 00 00       	callq  a5d0 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE>
    9a29:	84 c0                	test   %al,%al
    9a2b:	0f 84 eb 03 00 00    	je     9e1c <_ZL13runBenchmarksi+0xeac>
    9a31:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
    9a38:	48 8b bd b8 fc ff ff 	mov    -0x348(%rbp),%rdi
    9a3f:	e8 ac 06 00 00       	callq  a0f0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE>
    9a44:	84 c0                	test   %al,%al
    9a46:	0f 84 b1 03 00 00    	je     9dfd <_ZL13runBenchmarksi+0xe8d>
    9a4c:	44 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15d
    9a53:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    9a58:	62 61 ff 08 10 75 96 	vmovsd -0x350(%rbp),%xmm30
    9a5f:	48 8d 35 9a 16 00 00 	lea    0x169a(%rip),%rsi        # b100 <_IO_stdin_used+0x380>
    9a66:	62 61 ff 08 10 6d 94 	vmovsd -0x360(%rbp),%xmm29
    9a6d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
    9a73:	62 e1 ff 08 10 45 93 	vmovsd -0x368(%rbp),%xmm16
    9a7a:	c4 41 23 2a df       	vcvtsi2sd %r15d,%xmm11,%xmm11
    9a7f:	b9 40 00 00 00       	mov    $0x40,%ecx
    9a84:	62 e1 ff 08 10 4d 92 	vmovsd -0x370(%rbp),%xmm17
    9a8b:	ba 10 00 00 00       	mov    $0x10,%edx
    9a90:	62 51 97 00 5e e3    	vdivsd %xmm11,%xmm29,%xmm12
    9a96:	bf 01 00 00 00       	mov    $0x1,%edi
    9a9b:	31 c0                	xor    %eax,%eax
    9a9d:	62 41 8f 00 5e fb    	vdivsd %xmm11,%xmm30,%xmm31
    9aa3:	c5 7b 11 a5 d0 fc ff 	vmovsd %xmm12,-0x330(%rbp)
    9aaa:	ff 
    9aab:	62 d1 ff 00 5e cb    	vdivsd %xmm11,%xmm16,%xmm1
    9ab1:	62 61 ff 08 11 7d 9c 	vmovsd %xmm31,-0x320(%rbp)
    9ab8:	62 d1 f7 00 5e db    	vdivsd %xmm11,%xmm17,%xmm3
    9abe:	c5 fb 11 8d b8 fc ff 	vmovsd %xmm1,-0x348(%rbp)
    9ac5:	ff 
    9ac6:	c5 fb 11 9d b0 fc ff 	vmovsd %xmm3,-0x350(%rbp)
    9acd:	ff 
    9ace:	e8 0d 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9ad3:	48 8d 35 56 16 00 00 	lea    0x1656(%rip),%rsi        # b130 <_IO_stdin_used+0x3b0>
    9ada:	44 89 fa             	mov    %r15d,%edx
    9add:	bf 01 00 00 00       	mov    $0x1,%edi
    9ae2:	31 c0                	xor    %eax,%eax
    9ae4:	e8 f7 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9ae9:	c5 fb 10 85 e0 fc ff 	vmovsd -0x320(%rbp),%xmm0
    9af0:	ff 
    9af1:	48 8d 35 70 16 00 00 	lea    0x1670(%rip),%rsi        # b168 <_IO_stdin_used+0x3e8>
    9af8:	bf 01 00 00 00       	mov    $0x1,%edi
    9afd:	b8 01 00 00 00       	mov    $0x1,%eax
    9b02:	e8 d9 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9b07:	c5 fb 10 85 b8 fc ff 	vmovsd -0x348(%rbp),%xmm0
    9b0e:	ff 
    9b0f:	48 8d 35 82 16 00 00 	lea    0x1682(%rip),%rsi        # b198 <_IO_stdin_used+0x418>
    9b16:	bf 01 00 00 00       	mov    $0x1,%edi
    9b1b:	b8 01 00 00 00       	mov    $0x1,%eax
    9b20:	e8 bb 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9b25:	62 e1 ff 08 10 55 9c 	vmovsd -0x320(%rbp),%xmm18
    9b2c:	48 8d 35 95 16 00 00 	lea    0x1695(%rip),%rsi        # b1c8 <_IO_stdin_used+0x448>
    9b33:	bf 01 00 00 00       	mov    $0x1,%edi
    9b38:	b8 01 00 00 00       	mov    $0x1,%eax
    9b3d:	62 f1 ef 00 5e 45 97 	vdivsd -0x348(%rbp),%xmm18,%xmm0
    9b44:	e8 97 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9b49:	c5 fb 10 85 b0 fc ff 	vmovsd -0x350(%rbp),%xmm0
    9b50:	ff 
    9b51:	48 8d 35 a0 16 00 00 	lea    0x16a0(%rip),%rsi        # b1f8 <_IO_stdin_used+0x478>
    9b58:	bf 01 00 00 00       	mov    $0x1,%edi
    9b5d:	b8 01 00 00 00       	mov    $0x1,%eax
    9b62:	e8 79 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9b67:	62 e1 ff 08 10 5d 9c 	vmovsd -0x320(%rbp),%xmm19
    9b6e:	48 8d 35 53 16 00 00 	lea    0x1653(%rip),%rsi        # b1c8 <_IO_stdin_used+0x448>
    9b75:	bf 01 00 00 00       	mov    $0x1,%edi
    9b7a:	b8 01 00 00 00       	mov    $0x1,%eax
    9b7f:	62 f1 e7 00 5e 45 96 	vdivsd -0x350(%rbp),%xmm19,%xmm0
    9b86:	e8 55 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9b8b:	c5 fb 10 85 d0 fc ff 	vmovsd -0x330(%rbp),%xmm0
    9b92:	ff 
    9b93:	48 8d 35 8e 16 00 00 	lea    0x168e(%rip),%rsi        # b228 <_IO_stdin_used+0x4a8>
    9b9a:	bf 01 00 00 00       	mov    $0x1,%edi
    9b9f:	b8 01 00 00 00       	mov    $0x1,%eax
    9ba4:	e8 37 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9ba9:	62 e1 ff 08 10 65 9c 	vmovsd -0x320(%rbp),%xmm20
    9bb0:	48 8d 35 a1 16 00 00 	lea    0x16a1(%rip),%rsi        # b258 <_IO_stdin_used+0x4d8>
    9bb7:	bf 01 00 00 00       	mov    $0x1,%edi
    9bbc:	b8 01 00 00 00       	mov    $0x1,%eax
    9bc1:	62 f1 df 00 5e 45 9a 	vdivsd -0x330(%rbp),%xmm20,%xmm0
    9bc8:	e8 13 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9bcd:	48 8d 35 b4 16 00 00 	lea    0x16b4(%rip),%rsi        # b288 <_IO_stdin_used+0x508>
    9bd4:	bf 01 00 00 00       	mov    $0x1,%edi
    9bd9:	31 c0                	xor    %eax,%eax
    9bdb:	e8 00 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9be0:	48 8b bd e8 fc ff ff 	mov    -0x318(%rbp),%rdi
    9be7:	e8 64 03 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    9bec:	48 8b bd c8 fc ff ff 	mov    -0x338(%rbp),%rdi
    9bf3:	e8 58 03 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    9bf8:	48 8b bd c0 fc ff ff 	mov    -0x340(%rbp),%rdi
    9bff:	e8 4c 03 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    9c04:	48 8b a5 a8 fc ff ff 	mov    -0x358(%rbp),%rsp
    9c0b:	48 8b b5 70 fc ff ff 	mov    -0x390(%rbp),%rsi
    9c12:	48 89 df             	mov    %rbx,%rdi
    9c15:	e8 16 0d 00 00       	callq  a930 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9c1a:	48 89 df             	mov    %rbx,%rdi
    9c1d:	e8 ae ba ff ff       	callq  56d0 <_Z11printVectorSt6vectorIdSaIdEE>
    9c22:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9c29:	48 85 ff             	test   %rdi,%rdi
    9c2c:	74 05                	je     9c33 <_ZL13runBenchmarksi+0xcc3>
    9c2e:	e8 ad 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c33:	4c 89 f6             	mov    %r14,%rsi
    9c36:	48 89 df             	mov    %rbx,%rdi
    9c39:	e8 f2 0c 00 00       	callq  a930 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9c3e:	48 89 df             	mov    %rbx,%rdi
    9c41:	e8 8a ba ff ff       	callq  56d0 <_Z11printVectorSt6vectorIdSaIdEE>
    9c46:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9c4d:	48 85 ff             	test   %rdi,%rdi
    9c50:	74 05                	je     9c57 <_ZL13runBenchmarksi+0xce7>
    9c52:	e8 89 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c57:	4c 89 ee             	mov    %r13,%rsi
    9c5a:	48 89 df             	mov    %rbx,%rdi
    9c5d:	e8 ce 0c 00 00       	callq  a930 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9c62:	48 89 df             	mov    %rbx,%rdi
    9c65:	e8 66 ba ff ff       	callq  56d0 <_Z11printVectorSt6vectorIdSaIdEE>
    9c6a:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9c71:	48 85 ff             	test   %rdi,%rdi
    9c74:	74 05                	je     9c7b <_ZL13runBenchmarksi+0xd0b>
    9c76:	e8 65 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c7b:	4c 89 e6             	mov    %r12,%rsi
    9c7e:	48 89 df             	mov    %rbx,%rdi
    9c81:	e8 aa 0c 00 00       	callq  a930 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9c86:	48 89 df             	mov    %rbx,%rdi
    9c89:	e8 42 ba ff ff       	callq  56d0 <_Z11printVectorSt6vectorIdSaIdEE>
    9c8e:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9c95:	48 85 ff             	test   %rdi,%rdi
    9c98:	74 05                	je     9c9f <_ZL13runBenchmarksi+0xd2f>
    9c9a:	e8 41 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c9f:	62 e1 ff 08 10 6d 9b 	vmovsd -0x328(%rbp),%xmm21
    9ca6:	48 8d 35 03 16 00 00 	lea    0x1603(%rip),%rsi        # b2b0 <_IO_stdin_used+0x530>
    9cad:	bf 01 00 00 00       	mov    $0x1,%edi
    9cb2:	b8 01 00 00 00       	mov    $0x1,%eax
    9cb7:	62 f1 d7 00 5e 45 90 	vdivsd -0x380(%rbp),%xmm21,%xmm0
    9cbe:	e8 1d 7f ff ff       	callq  1be0 <__printf_chk@plt>
    9cc3:	62 e1 ff 08 10 75 9b 	vmovsd -0x328(%rbp),%xmm22
    9cca:	48 8d 35 17 16 00 00 	lea    0x1617(%rip),%rsi        # b2e8 <_IO_stdin_used+0x568>
    9cd1:	bf 01 00 00 00       	mov    $0x1,%edi
    9cd6:	b8 01 00 00 00       	mov    $0x1,%eax
    9cdb:	62 f1 cf 00 5e 45 91 	vdivsd -0x378(%rbp),%xmm22,%xmm0
    9ce2:	e8 f9 7e ff ff       	callq  1be0 <__printf_chk@plt>
    9ce7:	62 e1 ff 08 10 7d 9b 	vmovsd -0x328(%rbp),%xmm23
    9cee:	48 8d 35 2b 16 00 00 	lea    0x162b(%rip),%rsi        # b320 <_IO_stdin_used+0x5a0>
    9cf5:	bf 01 00 00 00       	mov    $0x1,%edi
    9cfa:	b8 01 00 00 00       	mov    $0x1,%eax
    9cff:	62 f1 c7 00 5e 45 8f 	vdivsd -0x388(%rbp),%xmm23,%xmm0
    9d06:	e8 d5 7e ff ff       	callq  1be0 <__printf_chk@plt>
    9d0b:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
    9d12:	48 85 ff             	test   %rdi,%rdi
    9d15:	74 05                	je     9d1c <_ZL13runBenchmarksi+0xdac>
    9d17:	e8 c4 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9d1c:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
    9d23:	48 85 ff             	test   %rdi,%rdi
    9d26:	74 05                	je     9d2d <_ZL13runBenchmarksi+0xdbd>
    9d28:	e8 b3 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9d2d:	48 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%rdi
    9d34:	48 85 ff             	test   %rdi,%rdi
    9d37:	74 05                	je     9d3e <_ZL13runBenchmarksi+0xdce>
    9d39:	e8 a2 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9d3e:	48 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%rdi
    9d45:	48 85 ff             	test   %rdi,%rdi
    9d48:	74 05                	je     9d4f <_ZL13runBenchmarksi+0xddf>
    9d4a:	e8 91 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9d4f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    9d53:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    9d5a:	00 00 
    9d5c:	75 6e                	jne    9dcc <_ZL13runBenchmarksi+0xe5c>
    9d5e:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
    9d62:	5b                   	pop    %rbx
    9d63:	41 5b                	pop    %r11
    9d65:	41 5c                	pop    %r12
    9d67:	41 5d                	pop    %r13
    9d69:	41 5e                	pop    %r14
    9d6b:	41 5f                	pop    %r15
    9d6d:	5d                   	pop    %rbp
    9d6e:	49 8d 63 f8          	lea    -0x8(%r11),%rsp
    9d72:	c3                   	retq   
    9d73:	48 89 c3             	mov    %rax,%rbx
    9d76:	c5 f8 77             	vzeroupper 
    9d79:	48 8b a5 a8 fc ff ff 	mov    -0x358(%rbp),%rsp
    9d80:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
    9d87:	48 85 ff             	test   %rdi,%rdi
    9d8a:	74 05                	je     9d91 <_ZL13runBenchmarksi+0xe21>
    9d8c:	e8 4f 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9d91:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
    9d98:	48 85 ff             	test   %rdi,%rdi
    9d9b:	74 05                	je     9da2 <_ZL13runBenchmarksi+0xe32>
    9d9d:	e8 3e 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9da2:	48 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%rdi
    9da9:	48 85 ff             	test   %rdi,%rdi
    9dac:	74 05                	je     9db3 <_ZL13runBenchmarksi+0xe43>
    9dae:	e8 2d 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9db3:	48 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%rdi
    9dba:	48 85 ff             	test   %rdi,%rdi
    9dbd:	74 05                	je     9dc4 <_ZL13runBenchmarksi+0xe54>
    9dbf:	e8 1c 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9dc4:	48 89 df             	mov    %rbx,%rdi
    9dc7:	e8 74 7d ff ff       	callq  1b40 <_Unwind_Resume@plt>
    9dcc:	e8 3f 7c ff ff       	callq  1a10 <__stack_chk_fail@plt>
    9dd1:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9dd8:	48 89 c3             	mov    %rax,%rbx
    9ddb:	48 85 ff             	test   %rdi,%rdi
    9dde:	74 0e                	je     9dee <_ZL13runBenchmarksi+0xe7e>
    9de0:	c5 f8 77             	vzeroupper 
    9de3:	e8 f8 7c ff ff       	callq  1ae0 <_ZdlPv@plt>
    9de8:	eb 96                	jmp    9d80 <_ZL13runBenchmarksi+0xe10>
    9dea:	eb e5                	jmp    9dd1 <_ZL13runBenchmarksi+0xe61>
    9dec:	eb e3                	jmp    9dd1 <_ZL13runBenchmarksi+0xe61>
    9dee:	c5 f8 77             	vzeroupper 
    9df1:	eb 8d                	jmp    9d80 <_ZL13runBenchmarksi+0xe10>
    9df3:	eb dc                	jmp    9dd1 <_ZL13runBenchmarksi+0xe61>
    9df5:	48 89 c3             	mov    %rax,%rbx
    9df8:	c5 f8 77             	vzeroupper 
    9dfb:	eb 83                	jmp    9d80 <_ZL13runBenchmarksi+0xe10>
    9dfd:	48 8d 0d 9c 16 00 00 	lea    0x169c(%rip),%rcx        # b4a0 <_ZZL13runBenchmarksiE19__PRETTY_FUNCTION__>
    9e04:	48 8d 35 0c 10 00 00 	lea    0x100c(%rip),%rsi        # ae17 <_IO_stdin_used+0x97>
    9e0b:	48 8d 3d 6b 10 00 00 	lea    0x106b(%rip),%rdi        # ae7d <_IO_stdin_used+0xfd>
    9e12:	ba f8 00 00 00       	mov    $0xf8,%edx
    9e17:	e8 b4 7b ff ff       	callq  19d0 <__assert_fail@plt>
    9e1c:	48 8d 0d 7d 16 00 00 	lea    0x167d(%rip),%rcx        # b4a0 <_ZZL13runBenchmarksiE19__PRETTY_FUNCTION__>
    9e23:	48 8d 35 ed 0f 00 00 	lea    0xfed(%rip),%rsi        # ae17 <_IO_stdin_used+0x97>
    9e2a:	48 8d 3d 2f 10 00 00 	lea    0x102f(%rip),%rdi        # ae60 <_IO_stdin_used+0xe0>
    9e31:	ba f7 00 00 00       	mov    $0xf7,%edx
    9e36:	e8 95 7b ff ff       	callq  19d0 <__assert_fail@plt>
    9e3b:	48 8d 0d 5e 16 00 00 	lea    0x165e(%rip),%rcx        # b4a0 <_ZZL13runBenchmarksiE19__PRETTY_FUNCTION__>
    9e42:	48 8d 35 ce 0f 00 00 	lea    0xfce(%rip),%rsi        # ae17 <_IO_stdin_used+0x97>
    9e49:	48 8d 3d f8 0f 00 00 	lea    0xff8(%rip),%rdi        # ae48 <_IO_stdin_used+0xc8>
    9e50:	ba f6 00 00 00       	mov    $0xf6,%edx
    9e55:	e8 76 7b ff ff       	callq  19d0 <__assert_fail@plt>
    9e5a:	48 8b bd e8 fc ff ff 	mov    -0x318(%rbp),%rdi
    9e61:	48 89 c3             	mov    %rax,%rbx
    9e64:	c5 f8 77             	vzeroupper 
    9e67:	e8 e4 00 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    9e6c:	48 8b bd c8 fc ff ff 	mov    -0x338(%rbp),%rdi
    9e73:	e8 d8 00 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    9e78:	48 8b bd c0 fc ff ff 	mov    -0x340(%rbp),%rdi
    9e7f:	e8 cc 00 00 00       	callq  9f50 <_ZN4arma3MatISt7complexIfEED1Ev>
    9e84:	e9 f0 fe ff ff       	jmpq   9d79 <_ZL13runBenchmarksi+0xe09>
    9e89:	48 89 c3             	mov    %rax,%rbx
    9e8c:	c5 f8 77             	vzeroupper 
    9e8f:	eb db                	jmp    9e6c <_ZL13runBenchmarksi+0xefc>
    9e91:	48 89 c3             	mov    %rax,%rbx
    9e94:	c5 f8 77             	vzeroupper 
    9e97:	eb df                	jmp    9e78 <_ZL13runBenchmarksi+0xf08>
    9e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000009ea0 <_ZNSt11char_traitsIcE6lengthEPKc>:
    9ea0:	e9 eb 7b ff ff       	jmpq   1a90 <strlen@plt>
    9ea5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9eac:	00 00 00 
    9eaf:	90                   	nop

0000000000009eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_>:
    9eb0:	41 55                	push   %r13
    9eb2:	41 54                	push   %r12
    9eb4:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    9eb8:	55                   	push   %rbp
    9eb9:	53                   	push   %rbx
    9eba:	48 83 ec 08          	sub    $0x8,%rsp
    9ebe:	48 85 f6             	test   %rsi,%rsi
    9ec1:	4c 89 27             	mov    %r12,(%rdi)
    9ec4:	74 72                	je     9f38 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x88>
    9ec6:	48 89 fd             	mov    %rdi,%rbp
    9ec9:	48 89 f7             	mov    %rsi,%rdi
    9ecc:	49 89 f5             	mov    %rsi,%r13
    9ecf:	e8 bc 7b ff ff       	callq  1a90 <strlen@plt>
    9ed4:	48 83 f8 0f          	cmp    $0xf,%rax
    9ed8:	48 89 c3             	mov    %rax,%rbx
    9edb:	77 33                	ja     9f10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x60>
    9edd:	48 83 f8 01          	cmp    $0x1,%rax
    9ee1:	74 1d                	je     9f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x50>
    9ee3:	48 85 c0             	test   %rax,%rax
    9ee6:	75 3c                	jne    9f24 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x74>
    9ee8:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
    9eec:	41 c6 04 1c 00       	movb   $0x0,(%r12,%rbx,1)
    9ef1:	48 83 c4 08          	add    $0x8,%rsp
    9ef5:	5b                   	pop    %rbx
    9ef6:	5d                   	pop    %rbp
    9ef7:	41 5c                	pop    %r12
    9ef9:	41 5d                	pop    %r13
    9efb:	c3                   	retq   
    9efc:	0f 1f 40 00          	nopl   0x0(%rax)
    9f00:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    9f05:	88 45 10             	mov    %al,0x10(%rbp)
    9f08:	eb de                	jmp    9ee8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x38>
    9f0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    9f10:	48 8d 78 01          	lea    0x1(%rax),%rdi
    9f14:	e8 97 7a ff ff       	callq  19b0 <_Znwm@plt>
    9f19:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
    9f1d:	49 89 c4             	mov    %rax,%r12
    9f20:	48 89 45 00          	mov    %rax,0x0(%rbp)
    9f24:	4c 89 e7             	mov    %r12,%rdi
    9f27:	48 89 da             	mov    %rbx,%rdx
    9f2a:	4c 89 ee             	mov    %r13,%rsi
    9f2d:	e8 2e 7a ff ff       	callq  1960 <memcpy@plt>
    9f32:	4c 8b 65 00          	mov    0x0(%rbp),%r12
    9f36:	eb b0                	jmp    9ee8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x38>
    9f38:	48 8d 3d 29 10 00 00 	lea    0x1029(%rip),%rdi        # af68 <_IO_stdin_used+0x1e8>
    9f3f:	e8 0c 7a ff ff       	callq  1950 <_ZSt19__throw_logic_errorPKc@plt>
    9f44:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9f4b:	00 00 00 
    9f4e:	66 90                	xchg   %ax,%ax

0000000000009f50 <_ZN4arma3MatISt7complexIfEED1Ev>:
    9f50:	8b 47 1c             	mov    0x1c(%rdi),%eax
    9f53:	85 c0                	test   %eax,%eax
    9f55:	75 19                	jne    9f70 <_ZN4arma3MatISt7complexIfEED1Ev+0x20>
    9f57:	48 83 7f 10 10       	cmpq   $0x10,0x10(%rdi)
    9f5c:	76 12                	jbe    9f70 <_ZN4arma3MatISt7complexIfEED1Ev+0x20>
    9f5e:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    9f62:	48 85 ff             	test   %rdi,%rdi
    9f65:	74 09                	je     9f70 <_ZN4arma3MatISt7complexIfEED1Ev+0x20>
    9f67:	e9 74 7a ff ff       	jmpq   19e0 <free@plt>
    9f6c:	0f 1f 40 00          	nopl   0x0(%rax)
    9f70:	f3 c3                	repz retq 
    9f72:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9f79:	00 00 00 
    9f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000009f80 <_ZN4arma3MatIfED1Ev>:
    9f80:	8b 47 1c             	mov    0x1c(%rdi),%eax
    9f83:	85 c0                	test   %eax,%eax
    9f85:	75 19                	jne    9fa0 <_ZN4arma3MatIfED1Ev+0x20>
    9f87:	48 83 7f 10 10       	cmpq   $0x10,0x10(%rdi)
    9f8c:	76 12                	jbe    9fa0 <_ZN4arma3MatIfED1Ev+0x20>
    9f8e:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    9f92:	48 85 ff             	test   %rdi,%rdi
    9f95:	74 09                	je     9fa0 <_ZN4arma3MatIfED1Ev+0x20>
    9f97:	e9 44 7a ff ff       	jmpq   19e0 <free@plt>
    9f9c:	0f 1f 40 00          	nopl   0x0(%rax)
    9fa0:	f3 c3                	repz retq 
    9fa2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9fa9:	00 00 00 
    9fac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000009fb0 <_ZNSt6vectorIdSaIdEE9push_backERKd>:
    9fb0:	41 57                	push   %r15
    9fb2:	41 56                	push   %r14
    9fb4:	41 55                	push   %r13
    9fb6:	41 54                	push   %r12
    9fb8:	55                   	push   %rbp
    9fb9:	53                   	push   %rbx
    9fba:	48 83 ec 08          	sub    $0x8,%rsp
    9fbe:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
    9fc2:	48 3b 5f 10          	cmp    0x10(%rdi),%rbx
    9fc6:	74 28                	je     9ff0 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x40>
    9fc8:	c5 fb 10 0e          	vmovsd (%rsi),%xmm1
    9fcc:	48 83 c3 08          	add    $0x8,%rbx
    9fd0:	c5 fb 11 4b f8       	vmovsd %xmm1,-0x8(%rbx)
    9fd5:	48 89 5f 08          	mov    %rbx,0x8(%rdi)
    9fd9:	48 83 c4 08          	add    $0x8,%rsp
    9fdd:	5b                   	pop    %rbx
    9fde:	5d                   	pop    %rbp
    9fdf:	41 5c                	pop    %r12
    9fe1:	41 5d                	pop    %r13
    9fe3:	41 5e                	pop    %r14
    9fe5:	41 5f                	pop    %r15
    9fe7:	c3                   	retq   
    9fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    9fef:	00 
    9ff0:	49 89 df             	mov    %rbx,%r15
    9ff3:	4c 2b 3f             	sub    (%rdi),%r15
    9ff6:	49 89 f4             	mov    %rsi,%r12
    9ff9:	48 89 fd             	mov    %rdi,%rbp
    9ffc:	4c 89 f8             	mov    %r15,%rax
    9fff:	48 c1 f8 03          	sar    $0x3,%rax
    a003:	48 85 c0             	test   %rax,%rax
    a006:	0f 84 9c 00 00 00    	je     a0a8 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xf8>
    a00c:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    a010:	49 c7 c6 f8 ff ff ff 	mov    $0xfffffffffffffff8,%r14
    a017:	48 39 d0             	cmp    %rdx,%rax
    a01a:	0f 86 98 00 00 00    	jbe    a0b8 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x108>
    a020:	4c 89 f7             	mov    %r14,%rdi
    a023:	e8 88 79 ff ff       	callq  19b0 <_Znwm@plt>
    a028:	49 89 c5             	mov    %rax,%r13
    a02b:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
    a031:	4c 8b 65 00          	mov    0x0(%rbp),%r12
    a035:	c4 81 7b 11 44 3d 00 	vmovsd %xmm0,0x0(%r13,%r15,1)
    a03c:	49 89 df             	mov    %rbx,%r15
    a03f:	4d 29 e7             	sub    %r12,%r15
    a042:	49 39 dc             	cmp    %rbx,%r12
    a045:	74 0e                	je     a055 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xa5>
    a047:	4c 89 fa             	mov    %r15,%rdx
    a04a:	4c 89 e6             	mov    %r12,%rsi
    a04d:	4c 89 ef             	mov    %r13,%rdi
    a050:	e8 6b 79 ff ff       	callq  19c0 <memmove@plt>
    a055:	48 8b 75 08          	mov    0x8(%rbp),%rsi
    a059:	4b 8d 7c 3d 08       	lea    0x8(%r13,%r15,1),%rdi
    a05e:	49 89 f7             	mov    %rsi,%r15
    a061:	49 29 df             	sub    %rbx,%r15
    a064:	48 39 de             	cmp    %rbx,%rsi
    a067:	74 0e                	je     a077 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xc7>
    a069:	4c 89 fa             	mov    %r15,%rdx
    a06c:	48 89 de             	mov    %rbx,%rsi
    a06f:	e8 4c 79 ff ff       	callq  19c0 <memmove@plt>
    a074:	48 89 c7             	mov    %rax,%rdi
    a077:	49 01 ff             	add    %rdi,%r15
    a07a:	4d 85 e4             	test   %r12,%r12
    a07d:	74 08                	je     a087 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xd7>
    a07f:	4c 89 e7             	mov    %r12,%rdi
    a082:	e8 59 7a ff ff       	callq  1ae0 <_ZdlPv@plt>
    a087:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    a08b:	4d 01 f5             	add    %r14,%r13
    a08e:	4c 89 7d 08          	mov    %r15,0x8(%rbp)
    a092:	4c 89 6d 10          	mov    %r13,0x10(%rbp)
    a096:	48 83 c4 08          	add    $0x8,%rsp
    a09a:	5b                   	pop    %rbx
    a09b:	5d                   	pop    %rbp
    a09c:	41 5c                	pop    %r12
    a09e:	41 5d                	pop    %r13
    a0a0:	41 5e                	pop    %r14
    a0a2:	41 5f                	pop    %r15
    a0a4:	c3                   	retq   
    a0a5:	0f 1f 00             	nopl   (%rax)
    a0a8:	41 be 08 00 00 00    	mov    $0x8,%r14d
    a0ae:	e9 6d ff ff ff       	jmpq   a020 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x70>
    a0b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    a0b8:	48 b9 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rcx
    a0bf:	ff ff 1f 
    a0c2:	48 39 ca             	cmp    %rcx,%rdx
    a0c5:	0f 87 55 ff ff ff    	ja     a020 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x70>
    a0cb:	45 31 f6             	xor    %r14d,%r14d
    a0ce:	45 31 ed             	xor    %r13d,%r13d
    a0d1:	48 85 d2             	test   %rdx,%rdx
    a0d4:	0f 84 51 ff ff ff    	je     a02b <_ZNSt6vectorIdSaIdEE9push_backERKd+0x7b>
    a0da:	48 c1 e0 04          	shl    $0x4,%rax
    a0de:	49 89 c6             	mov    %rax,%r14
    a0e1:	e9 3a ff ff ff       	jmpq   a020 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x70>
    a0e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a0ed:	00 00 00 

000000000000a0f0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE>:
    a0f0:	55                   	push   %rbp
    a0f1:	53                   	push   %rbx
    a0f2:	48 89 fd             	mov    %rdi,%rbp
    a0f5:	48 89 f3             	mov    %rsi,%rbx
    a0f8:	48 83 ec 08          	sub    $0x8,%rsp
    a0fc:	48 8b 3d b5 2a 20 00 	mov    0x202ab5(%rip),%rdi        # 20cbb8 <_ZTIs@@CXXABI_1.3+0x8>
    a103:	48 8b 35 6e 2a 20 00 	mov    0x202a6e(%rip),%rsi        # 20cb78 <_ZTIf@@CXXABI_1.3+0x8>
    a10a:	48 39 f7             	cmp    %rsi,%rdi
    a10d:	0f 84 cd 02 00 00    	je     a3e0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2f0>
    a113:	80 3f 2a             	cmpb   $0x2a,(%rdi)
    a116:	0f 84 a4 02 00 00    	je     a3c0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2d0>
    a11c:	e8 3f 7a ff ff       	callq  1b60 <strcmp@plt>
    a121:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    a125:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    a129:	4c 8d 14 ca          	lea    (%rdx,%rcx,8),%r10
    a12d:	49 39 d2             	cmp    %rdx,%r10
    a130:	0f 84 79 02 00 00    	je     a3af <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a136:	85 c0                	test   %eax,%eax
    a138:	0f 84 b3 02 00 00    	je     a3f1 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x301>
    a13e:	4c 89 d6             	mov    %r10,%rsi
    a141:	48 89 ef             	mov    %rbp,%rdi
    a144:	48 29 d6             	sub    %rdx,%rsi
    a147:	48 83 ee 08          	sub    $0x8,%rsi
    a14b:	48 c1 ee 03          	shr    $0x3,%rsi
    a14f:	48 83 c6 01          	add    $0x1,%rsi
    a153:	83 e6 07             	and    $0x7,%esi
    a156:	0f 84 3c 01 00 00    	je     a298 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x1a8>
    a15c:	48 83 fe 01          	cmp    $0x1,%rsi
    a160:	0f 84 05 01 00 00    	je     a26b <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x17b>
    a166:	48 83 fe 02          	cmp    $0x2,%rsi
    a16a:	0f 84 d6 00 00 00    	je     a246 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x156>
    a170:	48 83 fe 03          	cmp    $0x3,%rsi
    a174:	0f 84 a6 00 00 00    	je     a220 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x130>
    a17a:	48 83 fe 04          	cmp    $0x4,%rsi
    a17e:	74 7c                	je     a1fc <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x10c>
    a180:	48 83 fe 05          	cmp    $0x5,%rsi
    a184:	74 52                	je     a1d8 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0xe8>
    a186:	48 83 fe 06          	cmp    $0x6,%rsi
    a18a:	74 27                	je     a1b3 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0xc3>
    a18c:	c5 7a 2c 02          	vcvttss2si (%rdx),%r8d
    a190:	66 44 3b 45 00       	cmp    0x0(%rbp),%r8w
    a195:	0f 85 da 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a19b:	c5 7a 2c 4a 04       	vcvttss2si 0x4(%rdx),%r9d
    a1a0:	66 44 39 4d 02       	cmp    %r9w,0x2(%rbp)
    a1a5:	0f 85 ca 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1ab:	48 83 c2 08          	add    $0x8,%rdx
    a1af:	48 83 c7 04          	add    $0x4,%rdi
    a1b3:	c5 7a 2c 1a          	vcvttss2si (%rdx),%r11d
    a1b7:	66 44 3b 1f          	cmp    (%rdi),%r11w
    a1bb:	0f 85 b4 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1c1:	c5 fa 2c 6a 04       	vcvttss2si 0x4(%rdx),%ebp
    a1c6:	66 39 6f 02          	cmp    %bp,0x2(%rdi)
    a1ca:	0f 85 a5 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1d0:	48 83 c2 08          	add    $0x8,%rdx
    a1d4:	48 83 c7 04          	add    $0x4,%rdi
    a1d8:	c5 fa 2c 1a          	vcvttss2si (%rdx),%ebx
    a1dc:	66 3b 1f             	cmp    (%rdi),%bx
    a1df:	0f 85 90 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1e5:	c5 fa 2c 42 04       	vcvttss2si 0x4(%rdx),%eax
    a1ea:	66 39 47 02          	cmp    %ax,0x2(%rdi)
    a1ee:	0f 85 81 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1f4:	48 83 c2 08          	add    $0x8,%rdx
    a1f8:	48 83 c7 04          	add    $0x4,%rdi
    a1fc:	c5 fa 2c 0a          	vcvttss2si (%rdx),%ecx
    a200:	66 3b 0f             	cmp    (%rdi),%cx
    a203:	0f 85 6c 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a209:	c5 fa 2c 72 04       	vcvttss2si 0x4(%rdx),%esi
    a20e:	66 39 77 02          	cmp    %si,0x2(%rdi)
    a212:	0f 85 5d 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a218:	48 83 c2 08          	add    $0x8,%rdx
    a21c:	48 83 c7 04          	add    $0x4,%rdi
    a220:	c5 7a 2c 02          	vcvttss2si (%rdx),%r8d
    a224:	66 44 3b 07          	cmp    (%rdi),%r8w
    a228:	0f 85 47 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a22e:	c5 7a 2c 4a 04       	vcvttss2si 0x4(%rdx),%r9d
    a233:	66 44 39 4f 02       	cmp    %r9w,0x2(%rdi)
    a238:	0f 85 37 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a23e:	48 83 c2 08          	add    $0x8,%rdx
    a242:	48 83 c7 04          	add    $0x4,%rdi
    a246:	c5 7a 2c 1a          	vcvttss2si (%rdx),%r11d
    a24a:	66 44 3b 1f          	cmp    (%rdi),%r11w
    a24e:	0f 85 21 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a254:	c5 fa 2c 6a 04       	vcvttss2si 0x4(%rdx),%ebp
    a259:	66 39 6f 02          	cmp    %bp,0x2(%rdi)
    a25d:	0f 85 12 02 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a263:	48 83 c2 08          	add    $0x8,%rdx
    a267:	48 83 c7 04          	add    $0x4,%rdi
    a26b:	c5 fa 2c 1a          	vcvttss2si (%rdx),%ebx
    a26f:	66 3b 1f             	cmp    (%rdi),%bx
    a272:	0f 85 fd 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a278:	c5 fa 2c 42 04       	vcvttss2si 0x4(%rdx),%eax
    a27d:	66 39 47 02          	cmp    %ax,0x2(%rdi)
    a281:	0f 85 ee 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a287:	48 83 c2 08          	add    $0x8,%rdx
    a28b:	48 83 c7 04          	add    $0x4,%rdi
    a28f:	49 39 d2             	cmp    %rdx,%r10
    a292:	0f 84 17 01 00 00    	je     a3af <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a298:	c5 fa 2c 0a          	vcvttss2si (%rdx),%ecx
    a29c:	66 3b 0f             	cmp    (%rdi),%cx
    a29f:	0f 85 d0 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2a5:	c5 fa 2c 72 04       	vcvttss2si 0x4(%rdx),%esi
    a2aa:	66 39 77 02          	cmp    %si,0x2(%rdi)
    a2ae:	0f 85 c1 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2b4:	c5 7a 2c 42 08       	vcvttss2si 0x8(%rdx),%r8d
    a2b9:	66 44 3b 47 04       	cmp    0x4(%rdi),%r8w
    a2be:	4c 8d 5a 08          	lea    0x8(%rdx),%r11
    a2c2:	48 8d 6f 04          	lea    0x4(%rdi),%rbp
    a2c6:	0f 85 a9 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2cc:	c4 41 7a 2c 4b 04    	vcvttss2si 0x4(%r11),%r9d
    a2d2:	66 44 39 4d 02       	cmp    %r9w,0x2(%rbp)
    a2d7:	0f 85 98 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2dd:	c5 fa 2c 5a 10       	vcvttss2si 0x10(%rdx),%ebx
    a2e2:	66 3b 5f 08          	cmp    0x8(%rdi),%bx
    a2e6:	0f 85 89 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2ec:	c5 fa 2c 42 14       	vcvttss2si 0x14(%rdx),%eax
    a2f1:	66 39 47 0a          	cmp    %ax,0xa(%rdi)
    a2f5:	0f 85 7a 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2fb:	c5 fa 2c 4a 18       	vcvttss2si 0x18(%rdx),%ecx
    a300:	66 3b 4f 0c          	cmp    0xc(%rdi),%cx
    a304:	0f 85 6b 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a30a:	c5 fa 2c 72 1c       	vcvttss2si 0x1c(%rdx),%esi
    a30f:	66 39 77 0e          	cmp    %si,0xe(%rdi)
    a313:	0f 85 5c 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a319:	4c 8d 42 20          	lea    0x20(%rdx),%r8
    a31d:	c5 fa 2c 52 20       	vcvttss2si 0x20(%rdx),%edx
    a322:	66 3b 57 10          	cmp    0x10(%rdi),%dx
    a326:	0f 85 49 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a32c:	c4 41 7a 2c 48 04    	vcvttss2si 0x4(%r8),%r9d
    a332:	66 44 39 4f 12       	cmp    %r9w,0x12(%rdi)
    a337:	0f 85 38 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a33d:	c4 c1 7a 2c 7b 20    	vcvttss2si 0x20(%r11),%edi
    a343:	66 3b 7d 10          	cmp    0x10(%rbp),%di
    a347:	0f 85 28 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a34d:	c4 c1 7a 2c 5b 24    	vcvttss2si 0x24(%r11),%ebx
    a353:	66 39 5d 12          	cmp    %bx,0x12(%rbp)
    a357:	0f 85 18 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a35d:	c4 c1 7a 2c 43 28    	vcvttss2si 0x28(%r11),%eax
    a363:	66 3b 45 14          	cmp    0x14(%rbp),%ax
    a367:	0f 85 08 01 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a36d:	c4 c1 7a 2c 4b 2c    	vcvttss2si 0x2c(%r11),%ecx
    a373:	66 39 4d 16          	cmp    %cx,0x16(%rbp)
    a377:	0f 85 f8 00 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a37d:	c4 c1 7a 2c 73 30    	vcvttss2si 0x30(%r11),%esi
    a383:	66 3b 75 18          	cmp    0x18(%rbp),%si
    a387:	0f 85 e8 00 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a38d:	c4 41 7a 2c 43 34    	vcvttss2si 0x34(%r11),%r8d
    a393:	66 44 39 45 1a       	cmp    %r8w,0x1a(%rbp)
    a398:	0f 85 d7 00 00 00    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a39e:	49 8d 53 38          	lea    0x38(%r11),%rdx
    a3a2:	48 8d 7d 1c          	lea    0x1c(%rbp),%rdi
    a3a6:	49 39 d2             	cmp    %rdx,%r10
    a3a9:	0f 85 e9 fe ff ff    	jne    a298 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x1a8>
    a3af:	48 83 c4 08          	add    $0x8,%rsp
    a3b3:	b8 01 00 00 00       	mov    $0x1,%eax
    a3b8:	5b                   	pop    %rbx
    a3b9:	5d                   	pop    %rbp
    a3ba:	c3                   	retq   
    a3bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    a3c0:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    a3c4:	48 8b 43 10          	mov    0x10(%rbx),%rax
    a3c8:	4c 8d 14 c2          	lea    (%rdx,%rax,8),%r10
    a3cc:	49 39 d2             	cmp    %rdx,%r10
    a3cf:	0f 85 69 fd ff ff    	jne    a13e <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x4e>
    a3d5:	eb d8                	jmp    a3af <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a3d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    a3de:	00 00 
    a3e0:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    a3e4:	4c 8b 53 10          	mov    0x10(%rbx),%r10
    a3e8:	4e 8d 14 d2          	lea    (%rdx,%r10,8),%r10
    a3ec:	49 39 d2             	cmp    %rdx,%r10
    a3ef:	74 be                	je     a3af <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a3f1:	4d 89 d3             	mov    %r10,%r11
    a3f4:	48 89 ef             	mov    %rbp,%rdi
    a3f7:	49 29 d3             	sub    %rdx,%r11
    a3fa:	49 83 eb 08          	sub    $0x8,%r11
    a3fe:	49 c1 eb 03          	shr    $0x3,%r11
    a402:	49 83 c3 01          	add    $0x1,%r11
    a406:	41 83 e3 03          	and    $0x3,%r11d
    a40a:	0f 84 b3 00 00 00    	je     a4c3 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x3d3>
    a410:	49 83 fb 01          	cmp    $0x1,%r11
    a414:	74 74                	je     a48a <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x39a>
    a416:	49 83 fb 02          	cmp    $0x2,%r11
    a41a:	74 33                	je     a44f <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x35f>
    a41c:	0f bf 6d 00          	movswl 0x0(%rbp),%ebp
    a420:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    a424:	c5 fa 2a c5          	vcvtsi2ss %ebp,%xmm0,%xmm0
    a428:	c5 f8 2e 02          	vucomiss (%rdx),%xmm0
    a42c:	7a 47                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a42e:	75 45                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a430:	44 0f bf 4f 02       	movswl 0x2(%rdi),%r9d
    a435:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    a439:	c4 c1 72 2a c9       	vcvtsi2ss %r9d,%xmm1,%xmm1
    a43e:	c5 f8 2e 4a 04       	vucomiss 0x4(%rdx),%xmm1
    a443:	7a 30                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a445:	75 2e                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a447:	48 83 c2 08          	add    $0x8,%rdx
    a44b:	48 83 c7 04          	add    $0x4,%rdi
    a44f:	0f bf 1f             	movswl (%rdi),%ebx
    a452:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    a456:	c5 ea 2a d3          	vcvtsi2ss %ebx,%xmm2,%xmm2
    a45a:	c5 f8 2e 12          	vucomiss (%rdx),%xmm2
    a45e:	7a 15                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a460:	75 13                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a462:	0f bf 47 02          	movswl 0x2(%rdi),%eax
    a466:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    a46a:	c5 e2 2a d8          	vcvtsi2ss %eax,%xmm3,%xmm3
    a46e:	c5 f8 2e 5a 04       	vucomiss 0x4(%rdx),%xmm3
    a473:	7b 0b                	jnp    a480 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x390>
    a475:	48 83 c4 08          	add    $0x8,%rsp
    a479:	31 c0                	xor    %eax,%eax
    a47b:	5b                   	pop    %rbx
    a47c:	5d                   	pop    %rbp
    a47d:	c3                   	retq   
    a47e:	66 90                	xchg   %ax,%ax
    a480:	75 f3                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a482:	48 83 c2 08          	add    $0x8,%rdx
    a486:	48 83 c7 04          	add    $0x4,%rdi
    a48a:	0f bf 0f             	movswl (%rdi),%ecx
    a48d:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    a491:	c5 da 2a e1          	vcvtsi2ss %ecx,%xmm4,%xmm4
    a495:	c5 f8 2e 22          	vucomiss (%rdx),%xmm4
    a499:	7a da                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a49b:	75 d8                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a49d:	0f bf 77 02          	movswl 0x2(%rdi),%esi
    a4a1:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    a4a5:	c5 d2 2a ee          	vcvtsi2ss %esi,%xmm5,%xmm5
    a4a9:	c5 f8 2e 6a 04       	vucomiss 0x4(%rdx),%xmm5
    a4ae:	7a c5                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4b0:	75 c3                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4b2:	48 83 c2 08          	add    $0x8,%rdx
    a4b6:	48 83 c7 04          	add    $0x4,%rdi
    a4ba:	4c 39 d2             	cmp    %r10,%rdx
    a4bd:	0f 84 ec fe ff ff    	je     a3af <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a4c3:	44 0f bf 07          	movswl (%rdi),%r8d
    a4c7:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    a4cb:	c4 c1 4a 2a f0       	vcvtsi2ss %r8d,%xmm6,%xmm6
    a4d0:	c5 f8 2e 32          	vucomiss (%rdx),%xmm6
    a4d4:	7a 9f                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4d6:	75 9d                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4d8:	44 0f bf 5f 02       	movswl 0x2(%rdi),%r11d
    a4dd:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
    a4e1:	c4 c1 42 2a fb       	vcvtsi2ss %r11d,%xmm7,%xmm7
    a4e6:	c5 f8 2e 7a 04       	vucomiss 0x4(%rdx),%xmm7
    a4eb:	7a 88                	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4ed:	75 86                	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4ef:	44 0f bf 4f 04       	movswl 0x4(%rdi),%r9d
    a4f4:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    a4f9:	48 8d 6a 08          	lea    0x8(%rdx),%rbp
    a4fd:	48 8d 5f 04          	lea    0x4(%rdi),%rbx
    a501:	c4 41 3a 2a c1       	vcvtsi2ss %r9d,%xmm8,%xmm8
    a506:	c5 78 2e 42 08       	vucomiss 0x8(%rdx),%xmm8
    a50b:	0f 8a 64 ff ff ff    	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a511:	0f 85 5e ff ff ff    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a517:	0f bf 43 02          	movswl 0x2(%rbx),%eax
    a51b:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    a520:	c5 32 2a c8          	vcvtsi2ss %eax,%xmm9,%xmm9
    a524:	c5 78 2e 4d 04       	vucomiss 0x4(%rbp),%xmm9
    a529:	0f 8a 46 ff ff ff    	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a52f:	0f 85 40 ff ff ff    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a535:	48 8d 77 08          	lea    0x8(%rdi),%rsi
    a539:	0f bf 7f 08          	movswl 0x8(%rdi),%edi
    a53d:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
    a541:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    a546:	c5 2a 2a d7          	vcvtsi2ss %edi,%xmm10,%xmm10
    a54a:	c5 78 2e 52 10       	vucomiss 0x10(%rdx),%xmm10
    a54f:	0f 8a 20 ff ff ff    	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a555:	0f 85 1a ff ff ff    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a55b:	0f bf 56 02          	movswl 0x2(%rsi),%edx
    a55f:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    a564:	c5 22 2a da          	vcvtsi2ss %edx,%xmm11,%xmm11
    a568:	c5 78 2e 59 04       	vucomiss 0x4(%rcx),%xmm11
    a56d:	0f 8a 02 ff ff ff    	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a573:	0f 85 fc fe ff ff    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a579:	44 0f bf 43 08       	movswl 0x8(%rbx),%r8d
    a57e:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    a583:	c4 41 1a 2a e0       	vcvtsi2ss %r8d,%xmm12,%xmm12
    a588:	c5 78 2e 65 10       	vucomiss 0x10(%rbp),%xmm12
    a58d:	0f 8a e2 fe ff ff    	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a593:	0f 85 dc fe ff ff    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a599:	44 0f bf 5b 0a       	movswl 0xa(%rbx),%r11d
    a59e:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    a5a3:	c4 41 12 2a eb       	vcvtsi2ss %r11d,%xmm13,%xmm13
    a5a8:	c5 78 2e 6d 14       	vucomiss 0x14(%rbp),%xmm13
    a5ad:	0f 8a c2 fe ff ff    	jp     a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a5b3:	0f 85 bc fe ff ff    	jne    a475 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a5b9:	48 8d 55 18          	lea    0x18(%rbp),%rdx
    a5bd:	48 8d 7b 0c          	lea    0xc(%rbx),%rdi
    a5c1:	4c 39 d2             	cmp    %r10,%rdx
    a5c4:	0f 85 f9 fe ff ff    	jne    a4c3 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x3d3>
    a5ca:	e9 e0 fd ff ff       	jmpq   a3af <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a5cf:	90                   	nop

000000000000a5d0 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE>:
    a5d0:	48 8b 46 20          	mov    0x20(%rsi),%rax
    a5d4:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    a5d8:	48 8d 0c d0          	lea    (%rax,%rdx,8),%rcx
    a5dc:	48 39 c1             	cmp    %rax,%rcx
    a5df:	0f 84 0b 03 00 00    	je     a8f0 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x320>
    a5e5:	c5 fa 10 07          	vmovss (%rdi),%xmm0
    a5e9:	c5 f8 2e 00          	vucomiss (%rax),%xmm0
    a5ed:	0f 8a f5 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a5f3:	0f 85 ef 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a5f9:	c5 fa 10 4f 04       	vmovss 0x4(%rdi),%xmm1
    a5fe:	c5 f8 2e 48 04       	vucomiss 0x4(%rax),%xmm1
    a603:	0f 8a df 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a609:	0f 85 d9 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a60f:	49 89 c9             	mov    %rcx,%r9
    a612:	48 8d 77 08          	lea    0x8(%rdi),%rsi
    a616:	49 29 c1             	sub    %rax,%r9
    a619:	49 83 e9 08          	sub    $0x8,%r9
    a61d:	49 c1 e9 03          	shr    $0x3,%r9
    a621:	41 83 e1 07          	and    $0x7,%r9d
    a625:	0f 84 77 01 00 00    	je     a7a2 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x1d2>
    a62b:	48 83 c0 08          	add    $0x8,%rax
    a62f:	c5 fa 10 16          	vmovss (%rsi),%xmm2
    a633:	c5 f8 2e 10          	vucomiss (%rax),%xmm2
    a637:	49 89 f0             	mov    %rsi,%r8
    a63a:	0f 8a a8 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a640:	0f 85 a2 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a646:	c4 c1 7a 10 58 04    	vmovss 0x4(%r8),%xmm3
    a64c:	48 8d 77 10          	lea    0x10(%rdi),%rsi
    a650:	c5 f8 2e 58 04       	vucomiss 0x4(%rax),%xmm3
    a655:	0f 8a 8d 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a65b:	0f 85 87 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a661:	49 83 f9 01          	cmp    $0x1,%r9
    a665:	0f 84 37 01 00 00    	je     a7a2 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x1d2>
    a66b:	49 83 f9 02          	cmp    $0x2,%r9
    a66f:	0f 84 f7 00 00 00    	je     a76c <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x19c>
    a675:	49 83 f9 03          	cmp    $0x3,%r9
    a679:	0f 84 b7 00 00 00    	je     a736 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x166>
    a67f:	49 83 f9 04          	cmp    $0x4,%r9
    a683:	74 7c                	je     a701 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x131>
    a685:	49 83 f9 05          	cmp    $0x5,%r9
    a689:	74 40                	je     a6cb <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0xfb>
    a68b:	49 83 f9 06          	cmp    $0x6,%r9
    a68f:	0f 85 6b 02 00 00    	jne    a900 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x330>
    a695:	48 83 c0 08          	add    $0x8,%rax
    a699:	c5 fa 10 36          	vmovss (%rsi),%xmm6
    a69d:	c5 f8 2e 30          	vucomiss (%rax),%xmm6
    a6a1:	49 89 f2             	mov    %rsi,%r10
    a6a4:	0f 8a 3e 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6aa:	0f 85 38 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6b0:	c4 c1 7a 10 7a 04    	vmovss 0x4(%r10),%xmm7
    a6b6:	48 83 c6 08          	add    $0x8,%rsi
    a6ba:	c5 f8 2e 78 04       	vucomiss 0x4(%rax),%xmm7
    a6bf:	0f 8a 23 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6c5:	0f 85 1d 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6cb:	48 83 c0 08          	add    $0x8,%rax
    a6cf:	c5 7a 10 06          	vmovss (%rsi),%xmm8
    a6d3:	c5 78 2e 00          	vucomiss (%rax),%xmm8
    a6d7:	49 89 f3             	mov    %rsi,%r11
    a6da:	0f 8a 08 02 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6e0:	0f 85 02 02 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6e6:	c4 41 7a 10 4b 04    	vmovss 0x4(%r11),%xmm9
    a6ec:	48 83 c6 08          	add    $0x8,%rsi
    a6f0:	c5 78 2e 48 04       	vucomiss 0x4(%rax),%xmm9
    a6f5:	0f 8a ed 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6fb:	0f 85 e7 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a701:	48 83 c0 08          	add    $0x8,%rax
    a705:	c5 7a 10 16          	vmovss (%rsi),%xmm10
    a709:	c5 78 2e 10          	vucomiss (%rax),%xmm10
    a70d:	48 89 f2             	mov    %rsi,%rdx
    a710:	0f 8a d2 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a716:	0f 85 cc 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a71c:	c5 7a 10 5a 04       	vmovss 0x4(%rdx),%xmm11
    a721:	48 83 c6 08          	add    $0x8,%rsi
    a725:	c5 78 2e 58 04       	vucomiss 0x4(%rax),%xmm11
    a72a:	0f 8a b8 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a730:	0f 85 b2 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a736:	48 83 c0 08          	add    $0x8,%rax
    a73a:	c5 7a 10 26          	vmovss (%rsi),%xmm12
    a73e:	c5 78 2e 20          	vucomiss (%rax),%xmm12
    a742:	49 89 f1             	mov    %rsi,%r9
    a745:	0f 8a 9d 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a74b:	0f 85 97 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a751:	c4 41 7a 10 69 04    	vmovss 0x4(%r9),%xmm13
    a757:	48 83 c6 08          	add    $0x8,%rsi
    a75b:	c5 78 2e 68 04       	vucomiss 0x4(%rax),%xmm13
    a760:	0f 8a 82 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a766:	0f 85 7c 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a76c:	48 83 c0 08          	add    $0x8,%rax
    a770:	c5 7a 10 36          	vmovss (%rsi),%xmm14
    a774:	c5 78 2e 30          	vucomiss (%rax),%xmm14
    a778:	49 89 f0             	mov    %rsi,%r8
    a77b:	0f 8a 67 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a781:	0f 85 61 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a787:	c4 41 7a 10 78 04    	vmovss 0x4(%r8),%xmm15
    a78d:	48 83 c6 08          	add    $0x8,%rsi
    a791:	c5 78 2e 78 04       	vucomiss 0x4(%rax),%xmm15
    a796:	0f 8a 4c 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a79c:	0f 85 46 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7a2:	4c 8d 50 08          	lea    0x8(%rax),%r10
    a7a6:	4c 39 d1             	cmp    %r10,%rcx
    a7a9:	0f 84 41 01 00 00    	je     a8f0 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x320>
    a7af:	c5 fa 10 06          	vmovss (%rsi),%xmm0
    a7b3:	c5 f8 2e 40 08       	vucomiss 0x8(%rax),%xmm0
    a7b8:	0f 8a 2a 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7be:	0f 85 24 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7c4:	c5 fa 10 4e 04       	vmovss 0x4(%rsi),%xmm1
    a7c9:	48 8d 7e 08          	lea    0x8(%rsi),%rdi
    a7cd:	c4 c1 78 2e 4a 04    	vucomiss 0x4(%r10),%xmm1
    a7d3:	0f 8a 0f 01 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7d9:	0f 85 09 01 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7df:	c5 fa 10 17          	vmovss (%rdi),%xmm2
    a7e3:	c5 f8 2e 50 10       	vucomiss 0x10(%rax),%xmm2
    a7e8:	0f 8a fa 00 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7ee:	0f 85 f4 00 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7f4:	c5 fa 10 5f 04       	vmovss 0x4(%rdi),%xmm3
    a7f9:	48 83 c6 10          	add    $0x10,%rsi
    a7fd:	c5 f8 2e 58 14       	vucomiss 0x14(%rax),%xmm3
    a802:	0f 8a e0 00 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a808:	0f 85 da 00 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a80e:	c5 fa 10 26          	vmovss (%rsi),%xmm4
    a812:	c5 f8 2e 60 18       	vucomiss 0x18(%rax),%xmm4
    a817:	0f 8a cb 00 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a81d:	0f 85 c5 00 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a823:	c5 fa 10 6e 04       	vmovss 0x4(%rsi),%xmm5
    a828:	c5 f8 2e 68 1c       	vucomiss 0x1c(%rax),%xmm5
    a82d:	0f 8a b5 00 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a833:	0f 85 af 00 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a839:	c5 fa 10 77 10       	vmovss 0x10(%rdi),%xmm6
    a83e:	c4 c1 78 2e 72 18    	vucomiss 0x18(%r10),%xmm6
    a844:	0f 8a 9e 00 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a84a:	0f 85 98 00 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a850:	c5 fa 10 7f 14       	vmovss 0x14(%rdi),%xmm7
    a855:	c4 c1 78 2e 7a 1c    	vucomiss 0x1c(%r10),%xmm7
    a85b:	0f 8a 87 00 00 00    	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a861:	0f 85 81 00 00 00    	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a867:	c5 7a 10 47 18       	vmovss 0x18(%rdi),%xmm8
    a86c:	c4 41 78 2e 42 20    	vucomiss 0x20(%r10),%xmm8
    a872:	7a 74                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a874:	75 72                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a876:	c5 7a 10 4f 1c       	vmovss 0x1c(%rdi),%xmm9
    a87b:	c4 41 78 2e 4a 24    	vucomiss 0x24(%r10),%xmm9
    a881:	7a 65                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a883:	75 63                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a885:	c5 7a 10 57 20       	vmovss 0x20(%rdi),%xmm10
    a88a:	c4 41 78 2e 52 28    	vucomiss 0x28(%r10),%xmm10
    a890:	7a 56                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a892:	75 54                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a894:	c5 7a 10 5f 24       	vmovss 0x24(%rdi),%xmm11
    a899:	c4 41 78 2e 5a 2c    	vucomiss 0x2c(%r10),%xmm11
    a89f:	7a 47                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8a1:	75 45                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8a3:	c5 7a 10 67 28       	vmovss 0x28(%rdi),%xmm12
    a8a8:	c4 41 78 2e 62 30    	vucomiss 0x30(%r10),%xmm12
    a8ae:	7a 38                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8b0:	75 36                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8b2:	c5 7a 10 6f 2c       	vmovss 0x2c(%rdi),%xmm13
    a8b7:	c4 41 78 2e 6a 34    	vucomiss 0x34(%r10),%xmm13
    a8bd:	7a 29                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8bf:	75 27                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8c1:	c5 7a 10 77 30       	vmovss 0x30(%rdi),%xmm14
    a8c6:	49 8d 42 38          	lea    0x38(%r10),%rax
    a8ca:	c4 41 78 2e 72 38    	vucomiss 0x38(%r10),%xmm14
    a8d0:	7a 16                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8d2:	75 14                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a8d4:	c5 7a 10 7f 34       	vmovss 0x34(%rdi),%xmm15
    a8d9:	48 8d 77 38          	lea    0x38(%rdi),%rsi
    a8dd:	c5 78 2e 78 04       	vucomiss 0x4(%rax),%xmm15
    a8e2:	0f 8b b4 fe ff ff    	jnp    a79c <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x1cc>
    a8e8:	31 c0                	xor    %eax,%eax
    a8ea:	c3                   	retq   
    a8eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    a8f0:	b8 01 00 00 00       	mov    $0x1,%eax
    a8f5:	c3                   	retq   
    a8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a8fd:	00 00 00 
    a900:	48 83 c0 08          	add    $0x8,%rax
    a904:	c5 fa 10 26          	vmovss (%rsi),%xmm4
    a908:	c5 f8 2e 20          	vucomiss (%rax),%xmm4
    a90c:	48 89 f7             	mov    %rsi,%rdi
    a90f:	7a d7                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a911:	75 d5                	jne    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a913:	c5 fa 10 6f 04       	vmovss 0x4(%rdi),%xmm5
    a918:	48 83 c6 08          	add    $0x8,%rsi
    a91c:	c5 f8 2e 68 04       	vucomiss 0x4(%rax),%xmm5
    a921:	7a c5                	jp     a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a923:	0f 84 6c fd ff ff    	je     a695 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0xc5>
    a929:	eb bd                	jmp    a8e8 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a92b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000a930 <_ZNSt6vectorIdSaIdEEC1ERKS1_>:
    a930:	41 54                	push   %r12
    a932:	55                   	push   %rbp
    a933:	31 c9                	xor    %ecx,%ecx
    a935:	53                   	push   %rbx
    a936:	48 8b 6e 08          	mov    0x8(%rsi),%rbp
    a93a:	48 89 fb             	mov    %rdi,%rbx
    a93d:	48 2b 2e             	sub    (%rsi),%rbp
    a940:	49 89 f4             	mov    %rsi,%r12
    a943:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    a94a:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    a951:	00 
    a952:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    a959:	00 
    a95a:	48 89 e8             	mov    %rbp,%rax
    a95d:	48 c1 f8 03          	sar    $0x3,%rax
    a961:	48 85 c0             	test   %rax,%rax
    a964:	74 1a                	je     a980 <_ZNSt6vectorIdSaIdEEC1ERKS1_+0x50>
    a966:	48 ba ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rdx
    a96d:	ff ff 1f 
    a970:	48 39 d0             	cmp    %rdx,%rax
    a973:	77 47                	ja     a9bc <_ZNSt6vectorIdSaIdEEC1ERKS1_+0x8c>
    a975:	48 89 ef             	mov    %rbp,%rdi
    a978:	e8 33 70 ff ff       	callq  19b0 <_Znwm@plt>
    a97d:	48 89 c1             	mov    %rax,%rcx
    a980:	48 01 cd             	add    %rcx,%rbp
    a983:	48 89 0b             	mov    %rcx,(%rbx)
    a986:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    a98a:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
    a98e:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    a993:	49 8b 34 24          	mov    (%r12),%rsi
    a997:	49 89 fc             	mov    %rdi,%r12
    a99a:	49 29 f4             	sub    %rsi,%r12
    a99d:	48 39 f7             	cmp    %rsi,%rdi
    a9a0:	74 0e                	je     a9b0 <_ZNSt6vectorIdSaIdEEC1ERKS1_+0x80>
    a9a2:	48 89 cf             	mov    %rcx,%rdi
    a9a5:	4c 89 e2             	mov    %r12,%rdx
    a9a8:	e8 13 70 ff ff       	callq  19c0 <memmove@plt>
    a9ad:	48 89 c1             	mov    %rax,%rcx
    a9b0:	4c 01 e1             	add    %r12,%rcx
    a9b3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    a9b7:	5b                   	pop    %rbx
    a9b8:	5d                   	pop    %rbp
    a9b9:	41 5c                	pop    %r12
    a9bb:	c3                   	retq   
    a9bc:	e8 af 6f ff ff       	callq  1970 <_ZSt17__throw_bad_allocv@plt>
    a9c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a9c8:	00 00 00 
    a9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000a9d0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>:
    a9d0:	41 55                	push   %r13
    a9d2:	41 54                	push   %r12
    a9d4:	49 89 d4             	mov    %rdx,%r12
    a9d7:	55                   	push   %rbp
    a9d8:	53                   	push   %rbx
    a9d9:	48 89 f5             	mov    %rsi,%rbp
    a9dc:	48 89 fb             	mov    %rdi,%rbx
    a9df:	48 83 ec 18          	sub    $0x18,%rsp
    a9e3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    a9ea:	00 00 
    a9ec:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    a9f1:	31 c0                	xor    %eax,%eax
    a9f3:	48 39 37             	cmp    %rsi,(%rdi)
    a9f6:	0f 84 94 01 00 00    	je     ab90 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1c0>
    a9fc:	8b 53 1c             	mov    0x1c(%rbx),%edx
    a9ff:	8b 43 18             	mov    0x18(%rbx),%eax
    aa02:	48 8d 35 47 09 00 00 	lea    0x947(%rip),%rsi        # b350 <_IO_stdin_used+0x5d0>
    aa09:	b9 00 00 00 00       	mov    $0x0,%ecx
    aa0e:	83 fa 03             	cmp    $0x3,%edx
    aa11:	48 0f 44 ce          	cmove  %rsi,%rcx
    aa15:	41 0f 94 c1          	sete   %r9b
    aa19:	85 c0                	test   %eax,%eax
    aa1b:	74 33                	je     aa50 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x80>
    aa1d:	48 89 ef             	mov    %rbp,%rdi
    aa20:	4c 09 e7             	or     %r12,%rdi
    aa23:	0f 84 df 01 00 00    	je     ac08 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x238>
    aa29:	83 f8 01             	cmp    $0x1,%eax
    aa2c:	0f 84 b6 01 00 00    	je     abe8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x218>
    aa32:	83 f8 02             	cmp    $0x2,%eax
    aa35:	75 19                	jne    aa50 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x80>
    aa37:	48 83 fd 01          	cmp    $0x1,%rbp
    aa3b:	0f 84 e7 00 00 00    	je     ab28 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x158>
    aa41:	48 8d 0d 88 09 00 00 	lea    0x988(%rip),%rcx        # b3d0 <_IO_stdin_used+0x650>
    aa48:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    aa4e:	66 90                	xchg   %ax,%ax
    aa50:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
    aa56:	4c 39 d5             	cmp    %r10,%rbp
    aa59:	0f 86 c9 00 00 00    	jbe    ab28 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x158>
    aa5f:	48 85 ed             	test   %rbp,%rbp
    aa62:	0f 88 d8 00 00 00    	js     ab40 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x170>
    aa68:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    aa6c:	4d 85 e4             	test   %r12,%r12
    aa6f:	c4 e1 eb 2a d5       	vcvtsi2sd %rbp,%xmm2,%xmm2
    aa74:	0f 88 eb 00 00 00    	js     ab65 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x195>
    aa7a:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    aa7e:	c4 c1 e3 2a dc       	vcvtsi2sd %r12,%xmm3,%xmm3
    aa83:	c5 eb 59 e3          	vmulsd %xmm3,%xmm2,%xmm4
    aa87:	c5 f9 2e 25 41 12 00 	vucomisd 0x1241(%rip),%xmm4        # bcd0 <_ZL5temp0+0x730>
    aa8e:	00 
    aa8f:	0f 87 10 02 00 00    	ja     aca5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2d5>
    aa95:	45 84 c9             	test   %r9b,%r9b
    aa98:	0f 85 0e 02 00 00    	jne    acac <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2dc>
    aa9e:	49 89 ed             	mov    %rbp,%r13
    aaa1:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    aaa5:	4d 0f af ec          	imul   %r12,%r13
    aaa9:	4d 39 e8             	cmp    %r13,%r8
    aaac:	0f 84 26 01 00 00    	je     abd8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x208>
    aab2:	83 fa 02             	cmp    $0x2,%edx
    aab5:	0f 84 02 02 00 00    	je     acbd <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2ed>
    aabb:	85 d2                	test   %edx,%edx
    aabd:	0f 94 c2             	sete   %dl
    aac0:	4d 39 e8             	cmp    %r13,%r8
    aac3:	0f 86 d7 00 00 00    	jbe    aba0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1d0>
    aac9:	49 83 fd 10          	cmp    $0x10,%r13
    aacd:	77 2c                	ja     aafb <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x12b>
    aacf:	84 d2                	test   %dl,%dl
    aad1:	74 28                	je     aafb <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x12b>
    aad3:	49 83 f8 10          	cmp    $0x10,%r8
    aad7:	76 0e                	jbe    aae7 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x117>
    aad9:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    aadd:	48 85 ff             	test   %rdi,%rdi
    aae0:	74 05                	je     aae7 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x117>
    aae2:	e8 f9 6e ff ff       	callq  19e0 <free@plt>
    aae7:	48 8d 73 30          	lea    0x30(%rbx),%rsi
    aaeb:	4d 85 ed             	test   %r13,%r13
    aaee:	bf 00 00 00 00       	mov    $0x0,%edi
    aaf3:	48 0f 44 f7          	cmove  %rdi,%rsi
    aaf7:	48 89 73 20          	mov    %rsi,0x20(%rbx)
    aafb:	48 89 2b             	mov    %rbp,(%rbx)
    aafe:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    ab02:	4c 89 6b 10          	mov    %r13,0x10(%rbx)
    ab06:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    ab0b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    ab12:	00 00 
    ab14:	0f 85 9e 01 00 00    	jne    acb8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2e8>
    ab1a:	48 83 c4 18          	add    $0x18,%rsp
    ab1e:	5b                   	pop    %rbx
    ab1f:	5d                   	pop    %rbp
    ab20:	41 5c                	pop    %r12
    ab22:	41 5d                	pop    %r13
    ab24:	c3                   	retq   
    ab25:	0f 1f 00             	nopl   (%rax)
    ab28:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
    ab2e:	4d 39 dc             	cmp    %r11,%r12
    ab31:	0f 86 5e ff ff ff    	jbe    aa95 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    ab37:	48 85 ed             	test   %rbp,%rbp
    ab3a:	0f 89 28 ff ff ff    	jns    aa68 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x98>
    ab40:	49 89 ed             	mov    %rbp,%r13
    ab43:	48 89 e8             	mov    %rbp,%rax
    ab46:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    ab4a:	49 d1 ed             	shr    %r13
    ab4d:	83 e0 01             	and    $0x1,%eax
    ab50:	49 09 c5             	or     %rax,%r13
    ab53:	4d 85 e4             	test   %r12,%r12
    ab56:	c4 c1 fb 2a c5       	vcvtsi2sd %r13,%xmm0,%xmm0
    ab5b:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    ab5f:	0f 89 15 ff ff ff    	jns    aa7a <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xaa>
    ab65:	4c 89 e6             	mov    %r12,%rsi
    ab68:	4c 89 e7             	mov    %r12,%rdi
    ab6b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    ab6f:	48 d1 ee             	shr    %rsi
    ab72:	83 e7 01             	and    $0x1,%edi
    ab75:	48 09 fe             	or     %rdi,%rsi
    ab78:	c4 e1 f3 2a ce       	vcvtsi2sd %rsi,%xmm1,%xmm1
    ab7d:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    ab81:	e9 fd fe ff ff       	jmpq   aa83 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xb3>
    ab86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    ab8d:	00 00 00 
    ab90:	48 39 57 08          	cmp    %rdx,0x8(%rdi)
    ab94:	0f 85 62 fe ff ff    	jne    a9fc <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2c>
    ab9a:	e9 67 ff ff ff       	jmpq   ab06 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x136>
    ab9f:	90                   	nop
    aba0:	49 83 f8 10          	cmp    $0x10,%r8
    aba4:	76 12                	jbe    abb8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1e8>
    aba6:	84 d2                	test   %dl,%dl
    aba8:	74 0e                	je     abb8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1e8>
    abaa:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    abae:	48 85 ff             	test   %rdi,%rdi
    abb1:	74 05                	je     abb8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1e8>
    abb3:	e8 28 6e ff ff       	callq  19e0 <free@plt>
    abb8:	49 83 fd 10          	cmp    $0x10,%r13
    abbc:	77 6a                	ja     ac28 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x258>
    abbe:	48 8d 43 30          	lea    0x30(%rbx),%rax
    abc2:	48 89 43 20          	mov    %rax,0x20(%rbx)
    abc6:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%rbx)
    abcd:	e9 29 ff ff ff       	jmpq   aafb <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x12b>
    abd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    abd8:	48 89 2b             	mov    %rbp,(%rbx)
    abdb:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    abdf:	e9 22 ff ff ff       	jmpq   ab06 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x136>
    abe4:	0f 1f 40 00          	nopl   0x0(%rax)
    abe8:	49 83 fc 01          	cmp    $0x1,%r12
    abec:	0f 84 8e 00 00 00    	je     ac80 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2b0>
    abf2:	48 8d 0d 8f 07 00 00 	lea    0x78f(%rip),%rcx        # b388 <_IO_stdin_used+0x608>
    abf9:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    abff:	e9 4c fe ff ff       	jmpq   aa50 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x80>
    ac04:	0f 1f 40 00          	nopl   0x0(%rax)
    ac08:	83 f8 01             	cmp    $0x1,%eax
    ac0b:	0f 84 87 00 00 00    	je     ac98 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2c8>
    ac11:	31 ed                	xor    %ebp,%ebp
    ac13:	83 f8 02             	cmp    $0x2,%eax
    ac16:	40 0f 94 c5          	sete   %bpl
    ac1a:	45 31 e4             	xor    %r12d,%r12d
    ac1d:	e9 73 fe ff ff       	jmpq   aa95 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    ac22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    ac28:	49 b9 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%r9
    ac2f:	ff ff 1f 
    ac32:	4d 39 cd             	cmp    %r9,%r13
    ac35:	0f 87 9a 00 00 00    	ja     acd5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x305>
    ac3b:	4a 8d 14 ed 00 00 00 	lea    0x0(,%r13,8),%rdx
    ac42:	00 
    ac43:	48 89 e7             	mov    %rsp,%rdi
    ac46:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    ac4d:	00 
    ac4e:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    ac55:	48 19 f6             	sbb    %rsi,%rsi
    ac58:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    ac5c:	48 83 c6 20          	add    $0x20,%rsi
    ac60:	e8 8b 6f ff ff       	callq  1bf0 <posix_memalign@plt>
    ac65:	85 c0                	test   %eax,%eax
    ac67:	75 67                	jne    acd0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x300>
    ac69:	4c 8b 14 24          	mov    (%rsp),%r10
    ac6d:	4d 85 d2             	test   %r10,%r10
    ac70:	74 5e                	je     acd0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x300>
    ac72:	4c 89 53 20          	mov    %r10,0x20(%rbx)
    ac76:	e9 4b ff ff ff       	jmpq   abc6 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1f6>
    ac7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    ac80:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    ac86:	4c 39 c5             	cmp    %r8,%rbp
    ac89:	0f 87 d0 fd ff ff    	ja     aa5f <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x8f>
    ac8f:	e9 01 fe ff ff       	jmpq   aa95 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    ac94:	0f 1f 40 00          	nopl   0x0(%rax)
    ac98:	31 ed                	xor    %ebp,%ebp
    ac9a:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    aca0:	e9 f0 fd ff ff       	jmpq   aa95 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    aca5:	48 8d 0d c4 03 00 00 	lea    0x3c4(%rip),%rcx        # b070 <_IO_stdin_used+0x2f0>
    acac:	48 89 e7             	mov    %rsp,%rdi
    acaf:	48 89 0c 24          	mov    %rcx,(%rsp)
    acb3:	e8 6c 72 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    acb8:	e8 53 6d ff ff       	callq  1a10 <__stack_chk_fail@plt>
    acbd:	48 8d 0d 54 07 00 00 	lea    0x754(%rip),%rcx        # b418 <_IO_stdin_used+0x698>
    acc4:	48 89 e7             	mov    %rsp,%rdi
    acc7:	48 89 0c 24          	mov    %rcx,(%rsp)
    accb:	e8 54 72 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    acd0:	e8 e8 71 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    acd5:	4c 8d 1d c4 03 00 00 	lea    0x3c4(%rip),%r11        # b0a0 <_IO_stdin_used+0x320>
    acdc:	48 89 e7             	mov    %rsp,%rdi
    acdf:	4c 89 1c 24          	mov    %r11,(%rsp)
    ace3:	e8 3c 72 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    ace8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    acef:	00 

000000000000acf0 <__libc_csu_init>:
    acf0:	41 57                	push   %r15
    acf2:	41 56                	push   %r14
    acf4:	49 89 d7             	mov    %rdx,%r15
    acf7:	41 55                	push   %r13
    acf9:	41 54                	push   %r12
    acfb:	4c 8d 25 fe 1d 20 00 	lea    0x201dfe(%rip),%r12        # 20cb00 <__frame_dummy_init_array_entry>
    ad02:	55                   	push   %rbp
    ad03:	48 8d 2d 0e 1e 20 00 	lea    0x201e0e(%rip),%rbp        # 20cb18 <__init_array_end>
    ad0a:	53                   	push   %rbx
    ad0b:	41 89 fd             	mov    %edi,%r13d
    ad0e:	49 89 f6             	mov    %rsi,%r14
    ad11:	4c 29 e5             	sub    %r12,%rbp
    ad14:	48 83 ec 08          	sub    $0x8,%rsp
    ad18:	48 c1 fd 03          	sar    $0x3,%rbp
    ad1c:	e8 ff 6b ff ff       	callq  1920 <_init>
    ad21:	48 85 ed             	test   %rbp,%rbp
    ad24:	74 20                	je     ad46 <__libc_csu_init+0x56>
    ad26:	31 db                	xor    %ebx,%ebx
    ad28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ad2f:	00 
    ad30:	4c 89 fa             	mov    %r15,%rdx
    ad33:	4c 89 f6             	mov    %r14,%rsi
    ad36:	44 89 ef             	mov    %r13d,%edi
    ad39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    ad3d:	48 83 c3 01          	add    $0x1,%rbx
    ad41:	48 39 dd             	cmp    %rbx,%rbp
    ad44:	75 ea                	jne    ad30 <__libc_csu_init+0x40>
    ad46:	48 83 c4 08          	add    $0x8,%rsp
    ad4a:	5b                   	pop    %rbx
    ad4b:	5d                   	pop    %rbp
    ad4c:	41 5c                	pop    %r12
    ad4e:	41 5d                	pop    %r13
    ad50:	41 5e                	pop    %r14
    ad52:	41 5f                	pop    %r15
    ad54:	c3                   	retq   
    ad55:	90                   	nop
    ad56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    ad5d:	00 00 00 

000000000000ad60 <__libc_csu_fini>:
    ad60:	f3 c3                	repz retq 

Disassembly of section .fini:

000000000000ad64 <_fini>:
    ad64:	48 83 ec 08          	sub    $0x8,%rsp
    ad68:	48 83 c4 08          	add    $0x8,%rsp
    ad6c:	c3                   	retq   
