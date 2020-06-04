
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
    1c29:	48 8d 3d f5 90 00 00 	lea    0x90f5(%rip),%rdi        # ad25 <_IO_stdin_used+0x65>
    1c30:	48 83 ec 38          	sub    $0x38,%rsp
    1c34:	48 8b 2d 1d b4 20 00 	mov    0x20b41d(%rip),%rbp        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    1c3b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c42:	00 00 
    1c44:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1c49:	31 c0                	xor    %eax,%eax
    1c4b:	e8 80 81 00 00       	callq  9dd0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1c50:	48 8d 35 ce 90 00 00 	lea    0x90ce(%rip),%rsi        # ad25 <_IO_stdin_used+0x65>
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
    1ca5:	48 8d 3d fc 91 00 00 	lea    0x91fc(%rip),%rdi        # aea8 <_IO_stdin_used+0x1e8>
    1cac:	e8 9f fc ff ff       	callq  1950 <_ZSt19__throw_logic_errorPKc@plt>
    1cb1:	48 83 fb 0f          	cmp    $0xf,%rbx
    1cb5:	76 23                	jbe    1cda <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xba>
    1cb7:	48 85 db             	test   %rbx,%rbx
    1cba:	79 0c                	jns    1cc8 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_+0xa8>
    1cbc:	48 8d 3d 6b 90 00 00 	lea    0x906b(%rip),%rdi        # ad2e <_IO_stdin_used+0x6e>
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
    1dc8:	48 8d 3d 09 91 00 00 	lea    0x9109(%rip),%rdi        # aed8 <_IO_stdin_used+0x218>
    1dcf:	49 89 c4             	mov    %rax,%r12
    1dd2:	e8 f9 7f 00 00       	callq  9dd0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1dd7:	48 8d 35 fa 90 00 00 	lea    0x90fa(%rip),%rsi        # aed8 <_IO_stdin_used+0x218>
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
    1e16:	48 8d 3d 29 8f 00 00 	lea    0x8f29(%rip),%rdi        # ad46 <_IO_stdin_used+0x86>
    1e1d:	49 89 c7             	mov    %rax,%r15
    1e20:	e8 ab 7f 00 00       	callq  9dd0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1e25:	48 8d 35 1a 8f 00 00 	lea    0x8f1a(%rip),%rsi        # ad46 <_IO_stdin_used+0x86>
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
    1ebe:	48 8d 3d 60 8e 00 00 	lea    0x8e60(%rip),%rdi        # ad25 <_IO_stdin_used+0x65>
    1ec5:	48 8b 1d 8c b1 20 00 	mov    0x20b18c(%rip),%rbx        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    1ecc:	e8 ff 7e 00 00       	callq  9dd0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1ed1:	48 8d 35 4d 8e 00 00 	lea    0x8e4d(%rip),%rsi        # ad25 <_IO_stdin_used+0x65>
    1ed8:	48 89 c2             	mov    %rax,%rdx
    1edb:	48 89 df             	mov    %rbx,%rdi
    1ede:	e8 cd fc ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1ee3:	48 8d 35 16 90 00 00 	lea    0x9016(%rip),%rsi        # af00 <_IO_stdin_used+0x240>
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
    1f2b:	48 8d 3d f3 8d 00 00 	lea    0x8df3(%rip),%rdi        # ad25 <_IO_stdin_used+0x65>
    1f32:	48 83 ec 40          	sub    $0x40,%rsp
    1f36:	48 8b 1d 1b b1 20 00 	mov    0x20b11b(%rip),%rbx        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    1f3d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f44:	00 00 
    1f46:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1f4b:	31 c0                	xor    %eax,%eax
    1f4d:	e8 7e 7e 00 00       	callq  9dd0 <_ZNSt11char_traitsIcE6lengthEPKc>
    1f52:	48 8d 35 cc 8d 00 00 	lea    0x8dcc(%rip),%rsi        # ad25 <_IO_stdin_used+0x65>
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
    1f96:	e8 45 7e 00 00       	callq  9de0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_>
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
    2008:	48 8d 3d 16 8d 00 00 	lea    0x8d16(%rip),%rdi        # ad25 <_IO_stdin_used+0x65>
    200f:	53                   	push   %rbx
    2010:	48 83 ec 40          	sub    $0x40,%rsp
    2014:	48 8b 1d 3d b0 20 00 	mov    0x20b03d(%rip),%rbx        # 20d058 <_ZSt4cerr@GLIBCXX_3.4>
    201b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2022:	00 00 
    2024:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    2029:	31 c0                	xor    %eax,%eax
    202b:	e8 a0 7d 00 00       	callq  9dd0 <_ZNSt11char_traitsIcE6lengthEPKc>
    2030:	48 8d 35 ee 8c 00 00 	lea    0x8cee(%rip),%rsi        # ad25 <_IO_stdin_used+0x65>
    2037:	48 89 c2             	mov    %rax,%rdx
    203a:	48 89 df             	mov    %rbx,%rdi
    203d:	e8 6e fb ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2042:	48 8d 35 07 8f 00 00 	lea    0x8f07(%rip),%rsi        # af50 <_IO_stdin_used+0x290>
    2049:	48 89 df             	mov    %rbx,%rdi
    204c:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    2051:	e8 ba fa ff ff       	callq  1b10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2056:	48 89 c7             	mov    %rax,%rdi
    2059:	e8 62 fb ff ff       	callq  1bc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    205e:	bf 10 00 00 00       	mov    $0x10,%edi
    2063:	e8 08 fa ff ff       	callq  1a70 <__cxa_allocate_exception@plt>
    2068:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
    206d:	48 8d 35 dc 8e 00 00 	lea    0x8edc(%rip),%rsi        # af50 <_IO_stdin_used+0x290>
    2074:	48 89 df             	mov    %rbx,%rdi
    2077:	49 89 c4             	mov    %rax,%r12
    207a:	e8 61 7d 00 00       	callq  9de0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_>
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
    213b:	48 8d 35 97 8c 00 00 	lea    0x8c97(%rip),%rsi        # add9 <_IO_stdin_used+0x119>
    2142:	e8 19 fa ff ff       	callq  1b60 <strcmp@plt>
    2147:	85 c0                	test   %eax,%eax
    2149:	75 2e                	jne    2179 <main+0x59>
    214b:	48 8d 35 8a 8c 00 00 	lea    0x8c8a(%rip),%rsi        # addc <_IO_stdin_used+0x11c>
    2152:	48 8d 3d 85 8c 00 00 	lea    0x8c85(%rip),%rdi        # adde <_IO_stdin_used+0x11e>
    2159:	ba 01 00 00 00       	mov    $0x1,%edx
    215e:	e8 6d f9 ff ff       	callq  1ad0 <setenv@plt>
    2163:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    2167:	31 d2                	xor    %edx,%edx
    2169:	31 f6                	xor    %esi,%esi
    216b:	e8 00 fa ff ff       	callq  1b70 <strtoul@plt>
    2170:	89 c7                	mov    %eax,%edi
    2172:	e8 29 6d 00 00       	callq  8ea0 <_ZL13runBenchmarksi>
    2177:	eb 42                	jmp    21bb <main+0x9b>
    2179:	48 8b 3b             	mov    (%rbx),%rdi
    217c:	5b                   	pop    %rbx
    217d:	e9 7e 0b 00 00       	jmpq   2d00 <_ZL9showUsagePc>
    2182:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
    2186:	48 8d 35 4c 8c 00 00 	lea    0x8c4c(%rip),%rsi        # add9 <_IO_stdin_used+0x119>
    218d:	48 89 df             	mov    %rbx,%rdi
    2190:	e8 cb f9 ff ff       	callq  1b60 <strcmp@plt>
    2195:	85 c0                	test   %eax,%eax
    2197:	75 26                	jne    21bf <main+0x9f>
    2199:	48 8d 35 3c 8c 00 00 	lea    0x8c3c(%rip),%rsi        # addc <_IO_stdin_used+0x11c>
    21a0:	48 8d 3d 37 8c 00 00 	lea    0x8c37(%rip),%rdi        # adde <_IO_stdin_used+0x11e>
    21a7:	ba 01 00 00 00       	mov    $0x1,%edx
    21ac:	e8 1f f9 ff ff       	callq  1ad0 <setenv@plt>
    21b1:	bf 40 42 0f 00       	mov    $0xf4240,%edi
    21b6:	e8 e5 6c 00 00       	callq  8ea0 <_ZL13runBenchmarksi>
    21bb:	31 c0                	xor    %eax,%eax
    21bd:	5b                   	pop    %rbx
    21be:	c3                   	retq   
    21bf:	48 89 df             	mov    %rbx,%rdi
    21c2:	31 d2                	xor    %edx,%edx
    21c4:	31 f6                	xor    %esi,%esi
    21c6:	e8 a5 f9 ff ff       	callq  1b70 <strtoul@plt>
    21cb:	89 c7                	mov    %eax,%edi
    21cd:	e8 ce 6c 00 00       	callq  8ea0 <_ZL13runBenchmarksi>
    21d2:	eb e7                	jmp    21bb <main+0x9b>
    21d4:	66 90                	xchg   %ax,%ax
    21d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    21dd:	00 00 00 

00000000000021e0 <_GLOBAL__sub_I__Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>:
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
    2224:	62 f1 fe 48 6f 05 b2 	vmovdqu64 0x92b2(%rip),%zmm0        # b4e0 <_ZL5temp0>
    222b:	92 00 00 
    222e:	62 f1 fe 48 6f 0d 68 	vmovdqu64 0x9268(%rip),%zmm1        # b4a0 <_ZL5temp1>
    2235:	92 00 00 
    2238:	62 f1 fe 48 6f 15 1e 	vmovdqu64 0x921e(%rip),%zmm2        # b460 <_ZL5temp2>
    223f:	92 00 00 
    2242:	62 f1 fe 48 6f 1d d4 	vmovdqu64 0x91d4(%rip),%zmm3        # b420 <_ZL5temp3>
    2249:	91 00 00 
    224c:	62 f1 fd 48 7f 05 6a 	vmovdqa64 %zmm0,0x20b56a(%rip)        # 20d7c0 <_ZL4idx0>
    2253:	b5 20 00 
    2256:	62 f1 fd 48 7f 0d 20 	vmovdqa64 %zmm1,0x20b520(%rip)        # 20d780 <_ZL4idx1>
    225d:	b5 20 00 
    2260:	62 f1 fd 48 7f 15 d6 	vmovdqa64 %zmm2,0x20b4d6(%rip)        # 20d740 <_ZL4idx2>
    2267:	b4 20 00 
    226a:	62 f1 fd 48 7f 1d 8c 	vmovdqa64 %zmm3,0x20b48c(%rip)        # 20d700 <_ZL6addsub>
    2271:	b4 20 00 
    2274:	75 12                	jne    2288 <_GLOBAL__sub_I__Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0xa8>
    2276:	c6 05 9b b5 20 00 01 	movb   $0x1,0x20b59b(%rip)        # 20d818 <_ZGVN4arma5DatumIxE3nanE>
    227d:	48 c7 05 a8 b5 20 00 	movq   $0x0,0x20b5a8(%rip)        # 20d830 <_ZN4arma5DatumIxE3nanE>
    2284:	00 00 00 00 
    2288:	80 3d 81 b5 20 00 00 	cmpb   $0x0,0x20b581(%rip)        # 20d810 <_ZGVN4arma5DatumIdE3nanE>
    228f:	75 15                	jne    22a6 <_GLOBAL__sub_I__Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0xc6>
    2291:	48 8b 05 88 99 00 00 	mov    0x9988(%rip),%rax        # bc20 <_ZL5temp0+0x740>
    2298:	c6 05 71 b5 20 00 01 	movb   $0x1,0x20b571(%rip)        # 20d810 <_ZGVN4arma5DatumIdE3nanE>
    229f:	48 89 05 82 b5 20 00 	mov    %rax,0x20b582(%rip)        # 20d828 <_ZN4arma5DatumIdE3nanE>
    22a6:	80 3d 5b b5 20 00 00 	cmpb   $0x0,0x20b55b(%rip)        # 20d808 <_ZGVN4arma5DatumISt7complexIfEE3nanE>
    22ad:	75 27                	jne    22d6 <_GLOBAL__sub_I__Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0xf6>
    22af:	c5 fa 10 25 19 91 00 	vmovss 0x9119(%rip),%xmm4        # b3d0 <_IO_stdin_used+0x710>
    22b6:	00 
    22b7:	c6 05 4a b5 20 00 01 	movb   $0x1,0x20b54a(%rip)        # 20d808 <_ZGVN4arma5DatumISt7complexIfEE3nanE>
    22be:	c5 fa 10 2d 0e 91 00 	vmovss 0x910e(%rip),%xmm5        # b3d4 <_IO_stdin_used+0x714>
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
    22ff:	4c 8d 05 8a 89 00 00 	lea    0x898a(%rip),%r8        # ac90 <__libc_csu_fini>
    2306:	48 8d 0d 13 89 00 00 	lea    0x8913(%rip),%rcx        # ac20 <__libc_csu_init>
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
    2409:	48 8d 35 b4 88 00 00 	lea    0x88b4(%rip),%rsi        # acc4 <_IO_stdin_used+0x4>
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
    2460:	48 8d 35 67 88 00 00 	lea    0x8867(%rip),%rsi        # acce <_IO_stdin_used+0xe>
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
    2494:	48 8d 35 35 88 00 00 	lea    0x8835(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
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
    24c8:	48 8d 35 03 88 00 00 	lea    0x8803(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
    24cf:	ba 03 00 00 00       	mov    $0x3,%edx
    24d4:	48 89 c7             	mov    %rax,%rdi
    24d7:	e8 d4 f6 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    24dc:	48 8d 35 eb 87 00 00 	lea    0x87eb(%rip),%rsi        # acce <_IO_stdin_used+0xe>
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
    250c:	48 8d 35 bd 87 00 00 	lea    0x87bd(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
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
    253f:	48 8d 35 8c 87 00 00 	lea    0x878c(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
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
    25e9:	48 8d 35 e6 86 00 00 	lea    0x86e6(%rip),%rsi        # acd6 <_IO_stdin_used+0x16>
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
    2638:	4c 8d 25 94 86 00 00 	lea    0x8694(%rip),%r12        # acd3 <_IO_stdin_used+0x13>
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
    27e7:	48 8d 35 e0 84 00 00 	lea    0x84e0(%rip),%rsi        # acce <_IO_stdin_used+0xe>
    27ee:	ba 01 00 00 00       	mov    $0x1,%edx
    27f3:	4c 89 e7             	mov    %r12,%rdi
    27f6:	49 83 c7 10          	add    $0x10,%r15
    27fa:	e8 b1 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    27ff:	41 0f bf 77 f0       	movswl -0x10(%r15),%esi
    2804:	4c 89 e7             	mov    %r12,%rdi
    2807:	e8 b4 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    280c:	48 8d 35 bd 84 00 00 	lea    0x84bd(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
    2813:	ba 01 00 00 00       	mov    $0x1,%edx
    2818:	48 89 c7             	mov    %rax,%rdi
    281b:	49 89 c5             	mov    %rax,%r13
    281e:	e8 8d f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2823:	41 0f bf 77 f2       	movswl -0xe(%r15),%esi
    2828:	4c 89 ef             	mov    %r13,%rdi
    282b:	e8 90 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2830:	48 8d 35 9b 84 00 00 	lea    0x849b(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
    2837:	ba 03 00 00 00       	mov    $0x3,%edx
    283c:	48 89 c7             	mov    %rax,%rdi
    283f:	e8 6c f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2844:	48 8d 35 83 84 00 00 	lea    0x8483(%rip),%rsi        # acce <_IO_stdin_used+0xe>
    284b:	ba 01 00 00 00       	mov    $0x1,%edx
    2850:	4c 89 e7             	mov    %r12,%rdi
    2853:	e8 58 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2858:	41 0f bf 77 f4       	movswl -0xc(%r15),%esi
    285d:	4c 89 e7             	mov    %r12,%rdi
    2860:	e8 5b f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2865:	48 8d 35 64 84 00 00 	lea    0x8464(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
    286c:	ba 01 00 00 00       	mov    $0x1,%edx
    2871:	48 89 c7             	mov    %rax,%rdi
    2874:	48 89 c3             	mov    %rax,%rbx
    2877:	e8 34 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    287c:	41 0f bf 77 f6       	movswl -0xa(%r15),%esi
    2881:	48 89 df             	mov    %rbx,%rdi
    2884:	e8 37 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2889:	48 8d 35 42 84 00 00 	lea    0x8442(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
    2890:	ba 03 00 00 00       	mov    $0x3,%edx
    2895:	48 89 c7             	mov    %rax,%rdi
    2898:	e8 13 f3 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    289d:	48 8d 35 2a 84 00 00 	lea    0x842a(%rip),%rsi        # acce <_IO_stdin_used+0xe>
    28a4:	ba 01 00 00 00       	mov    $0x1,%edx
    28a9:	4c 89 e7             	mov    %r12,%rdi
    28ac:	e8 ff f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28b1:	41 0f bf 77 f8       	movswl -0x8(%r15),%esi
    28b6:	4c 89 e7             	mov    %r12,%rdi
    28b9:	e8 02 f2 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    28be:	48 8d 35 0b 84 00 00 	lea    0x840b(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
    28c5:	ba 01 00 00 00       	mov    $0x1,%edx
    28ca:	48 89 c7             	mov    %rax,%rdi
    28cd:	49 89 c5             	mov    %rax,%r13
    28d0:	e8 db f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28d5:	41 0f bf 77 fa       	movswl -0x6(%r15),%esi
    28da:	4c 89 ef             	mov    %r13,%rdi
    28dd:	e8 de f1 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    28e2:	48 8d 35 e9 83 00 00 	lea    0x83e9(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
    28e9:	ba 03 00 00 00       	mov    $0x3,%edx
    28ee:	48 89 c7             	mov    %rax,%rdi
    28f1:	e8 ba f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    28f6:	48 8d 35 d1 83 00 00 	lea    0x83d1(%rip),%rsi        # acce <_IO_stdin_used+0xe>
    28fd:	ba 01 00 00 00       	mov    $0x1,%edx
    2902:	4c 89 e7             	mov    %r12,%rdi
    2905:	e8 a6 f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    290a:	41 0f bf 77 fc       	movswl -0x4(%r15),%esi
    290f:	4c 89 e7             	mov    %r12,%rdi
    2912:	e8 a9 f1 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    2917:	48 8d 35 b2 83 00 00 	lea    0x83b2(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
    291e:	ba 01 00 00 00       	mov    $0x1,%edx
    2923:	48 89 c7             	mov    %rax,%rdi
    2926:	48 89 c3             	mov    %rax,%rbx
    2929:	e8 82 f2 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    292e:	41 0f bf 77 fe       	movswl -0x2(%r15),%esi
    2933:	48 89 df             	mov    %rbx,%rdi
    2936:	e8 85 f1 ff ff       	callq  1ac0 <_ZNSolsEs@plt>
    293b:	48 8d 35 90 83 00 00 	lea    0x8390(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
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
    2974:	48 8d 35 65 83 00 00 	lea    0x8365(%rip),%rsi        # ace0 <_IO_stdin_used+0x20>
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
    29ab:	48 8d 35 1c 83 00 00 	lea    0x831c(%rip),%rsi        # acce <_IO_stdin_used+0xe>
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
    29e0:	48 8d 35 e9 82 00 00 	lea    0x82e9(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
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
    2a14:	48 8d 35 b7 82 00 00 	lea    0x82b7(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
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
    2ab9:	48 8d 35 2a 82 00 00 	lea    0x822a(%rip),%rsi        # acea <_IO_stdin_used+0x2a>
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
    2b07:	48 8d 35 c0 81 00 00 	lea    0x81c0(%rip),%rsi        # acce <_IO_stdin_used+0xe>
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
    2b41:	48 8d 35 88 81 00 00 	lea    0x8188(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
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
    2b7a:	48 8d 35 51 81 00 00 	lea    0x8151(%rip),%rsi        # acd2 <_IO_stdin_used+0x12>
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
    2c5e:	c5 fb 5e 15 92 80 00 	vdivsd 0x8092(%rip),%xmm0,%xmm2        # acf8 <_IO_stdin_used+0x38>
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
    2cbe:	c5 f3 5e 05 32 80 00 	vdivsd 0x8032(%rip),%xmm1,%xmm0        # acf8 <_IO_stdin_used+0x38>
    2cc5:	00 
    2cc6:	c4 e1 eb 2a 54 24 10 	vcvtsi2sdq 0x10(%rsp),%xmm2,%xmm2
    2ccd:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    2cd2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2cd9:	00 00 
    2cdb:	c5 fb 58 da          	vaddsd %xmm2,%xmm0,%xmm3
    2cdf:	c5 e3 5c ec          	vsubsd %xmm4,%xmm3,%xmm5
    2ce3:	c5 d3 59 05 15 80 00 	vmulsd 0x8015(%rip),%xmm5,%xmm0        # ad00 <_IO_stdin_used+0x40>
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
    2d0e:	48 8d 15 f3 7f 00 00 	lea    0x7ff3(%rip),%rdx        # ad08 <_IO_stdin_used+0x48>
    2d15:	be 01 00 00 00       	mov    $0x1,%esi
    2d1a:	31 c0                	xor    %eax,%eax
    2d1c:	e8 cf ec ff ff       	callq  19f0 <__fprintf_chk@plt>
    2d21:	48 8b 3d 78 a4 20 00 	mov    0x20a478(%rip),%rdi        # 20d1a0 <stderr@@GLIBC_2.2.5>
    2d28:	48 8d 15 c1 80 00 00 	lea    0x80c1(%rip),%rdx        # adf0 <_IO_stdin_used+0x130>
    2d2f:	be 01 00 00 00       	mov    $0x1,%esi
    2d34:	31 c0                	xor    %eax,%eax
    2d36:	e8 b5 ec ff ff       	callq  19f0 <__fprintf_chk@plt>
    2d3b:	48 8b 3d 5e a4 20 00 	mov    0x20a45e(%rip),%rdi        # 20d1a0 <stderr@@GLIBC_2.2.5>
    2d42:	48 8d 15 17 81 00 00 	lea    0x8117(%rip),%rdx        # ae60 <_IO_stdin_used+0x1a0>
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

0000000000002d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>:
    2d70:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    2d75:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    2d79:	41 ff 72 f8          	pushq  -0x8(%r10)
    2d7d:	55                   	push   %rbp
    2d7e:	48 89 e5             	mov    %rsp,%rbp
    2d81:	41 57                	push   %r15
    2d83:	41 56                	push   %r14
    2d85:	41 55                	push   %r13
    2d87:	41 54                	push   %r12
    2d89:	41 52                	push   %r10
    2d8b:	53                   	push   %rbx
    2d8c:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    2d93:	48 89 bd 60 ff ff ff 	mov    %rdi,-0xa0(%rbp)
    2d9a:	89 95 14 ff ff ff    	mov    %edx,-0xec(%rbp)
    2da0:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
    2da7:	00 00 
    2da9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    2dad:	31 ff                	xor    %edi,%edi
    2daf:	85 f6                	test   %esi,%esi
    2db1:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    2db8:	0f 8e 87 06 00 00    	jle    3445 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x6d5>
    2dbe:	89 d0                	mov    %edx,%eax
    2dc0:	8d 0c 12             	lea    (%rdx,%rdx,1),%ecx
    2dc3:	8d 76 ff             	lea    -0x1(%rsi),%esi
    2dc6:	8d 3c 85 00 00 00 00 	lea    0x0(,%rax,4),%edi
    2dcd:	8d 1c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebx
    2dd4:	41 89 c2             	mov    %eax,%r10d
    2dd7:	8d 14 11             	lea    (%rcx,%rdx,1),%edx
    2dda:	c1 ee 04             	shr    $0x4,%esi
    2ddd:	4c 89 85 58 ff ff ff 	mov    %r8,-0xa8(%rbp)
    2de4:	44 8d 0c 07          	lea    (%rdi,%rax,1),%r9d
    2de8:	41 89 df             	mov    %ebx,%r15d
    2deb:	89 9d 08 ff ff ff    	mov    %ebx,-0xf8(%rbp)
    2df1:	44 8d 2c 95 00 00 00 	lea    0x0(,%rdx,4),%r13d
    2df8:	00 
    2df9:	01 c3                	add    %eax,%ebx
    2dfb:	41 29 c7             	sub    %eax,%r15d
    2dfe:	47 8d 24 09          	lea    (%r9,%r9,1),%r12d
    2e02:	89 9d 00 ff ff ff    	mov    %ebx,-0x100(%rbp)
    2e08:	49 63 da             	movslq %r10d,%rbx
    2e0b:	44 6b f0 0e          	imul   $0xe,%eax,%r14d
    2e0f:	44 89 ad f4 fe ff ff 	mov    %r13d,-0x10c(%rbp)
    2e16:	41 01 c5             	add    %eax,%r13d
    2e19:	44 89 a5 fc fe ff ff 	mov    %r12d,-0x104(%rbp)
    2e20:	41 01 c4             	add    %eax,%r12d
    2e23:	c1 e0 04             	shl    $0x4,%eax
    2e26:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%rbp)
    2e2c:	44 29 d0             	sub    %r10d,%eax
    2e2f:	44 8d 1c 12          	lea    (%rdx,%rdx,1),%r11d
    2e33:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
    2e39:	48 c1 e6 06          	shl    $0x6,%rsi
    2e3d:	48 89 d8             	mov    %rbx,%rax
    2e40:	4d 8d 44 30 40       	lea    0x40(%r8,%rsi,1),%r8
    2e45:	83 e8 01             	sub    $0x1,%eax
    2e48:	48 63 c9             	movslq %ecx,%rcx
    2e4b:	48 63 d2             	movslq %edx,%rdx
    2e4e:	48 63 ff             	movslq %edi,%rdi
    2e51:	4d 63 c9             	movslq %r9d,%r9
    2e54:	4d 63 db             	movslq %r11d,%r11
    2e57:	48 83 c0 01          	add    $0x1,%rax
    2e5b:	44 89 bd 04 ff ff ff 	mov    %r15d,-0xfc(%rbp)
    2e62:	44 89 a5 f8 fe ff ff 	mov    %r12d,-0x108(%rbp)
    2e69:	44 89 ad f0 fe ff ff 	mov    %r13d,-0x110(%rbp)
    2e70:	44 89 b5 0c ff ff ff 	mov    %r14d,-0xf4(%rbp)
    2e77:	4c 89 85 18 ff ff ff 	mov    %r8,-0xe8(%rbp)
    2e7e:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
    2e85:	00 00 00 
    2e88:	48 89 9d e0 fe ff ff 	mov    %rbx,-0x120(%rbp)
    2e8f:	48 89 8d d8 fe ff ff 	mov    %rcx,-0x128(%rbp)
    2e96:	48 89 95 d0 fe ff ff 	mov    %rdx,-0x130(%rbp)
    2e9d:	48 89 bd c8 fe ff ff 	mov    %rdi,-0x138(%rbp)
    2ea4:	4c 89 8d c0 fe ff ff 	mov    %r9,-0x140(%rbp)
    2eab:	4c 89 9d b8 fe ff ff 	mov    %r11,-0x148(%rbp)
    2eb2:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    2eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ec0:	44 8b bd 14 ff ff ff 	mov    -0xec(%rbp),%r15d
    2ec7:	45 85 ff             	test   %r15d,%r15d
    2eca:	0f 8e a0 05 00 00    	jle    3470 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x700>
    2ed0:	4c 63 b5 54 ff ff ff 	movslq -0xac(%rbp),%r14
    2ed7:	4c 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%r10
    2ede:	4c 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%r8
    2ee5:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    2eec:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    2ef3:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
    2efa:	4c 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%r9
    2f01:	48 63 b5 04 ff ff ff 	movslq -0xfc(%rbp),%rsi
    2f08:	4d 01 f2             	add    %r14,%r10
    2f0b:	4d 01 f0             	add    %r14,%r8
    2f0e:	4c 01 f0             	add    %r14,%rax
    2f11:	4a 8d 1c 92          	lea    (%rdx,%r10,4),%rbx
    2f15:	4e 8d 1c 82          	lea    (%rdx,%r8,4),%r11
    2f19:	4c 8d 14 82          	lea    (%rdx,%rax,4),%r10
    2f1d:	4c 63 85 08 ff ff ff 	movslq -0xf8(%rbp),%r8
    2f24:	48 63 85 00 ff ff ff 	movslq -0x100(%rbp),%rax
    2f2b:	4c 01 f1             	add    %r14,%rcx
    2f2e:	4d 01 f1             	add    %r14,%r9
    2f31:	48 8d 3c 8a          	lea    (%rdx,%rcx,4),%rdi
    2f35:	48 63 8d fc fe ff ff 	movslq -0x104(%rbp),%rcx
    2f3c:	4e 8d 3c 8a          	lea    (%rdx,%r9,4),%r15
    2f40:	4c 01 f6             	add    %r14,%rsi
    2f43:	4c 8b a5 e0 fe ff ff 	mov    -0x120(%rbp),%r12
    2f4a:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    2f4e:	4e 8d 2c b2          	lea    (%rdx,%r14,4),%r13
    2f52:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    2f59:	00 00 00 00 
    2f5d:	4d 01 f0             	add    %r14,%r8
    2f60:	4c 01 f0             	add    %r14,%rax
    2f63:	4c 89 7d 90          	mov    %r15,-0x70(%rbp)
    2f67:	4e 8d 0c 82          	lea    (%rdx,%r8,4),%r9
    2f6b:	4c 8d 04 82          	lea    (%rdx,%rax,4),%r8
    2f6f:	48 63 85 f4 fe ff ff 	movslq -0x10c(%rbp),%rax
    2f76:	4c 01 f1             	add    %r14,%rcx
    2f79:	4c 8d 3c b2          	lea    (%rdx,%rsi,4),%r15
    2f7d:	48 63 b5 f8 fe ff ff 	movslq -0x108(%rbp),%rsi
    2f84:	48 8d 3c 8a          	lea    (%rdx,%rcx,4),%rdi
    2f88:	4d 01 f4             	add    %r14,%r12
    2f8b:	4e 8d 24 a2          	lea    (%rdx,%r12,4),%r12
    2f8f:	62 f1 4d 08 ef f6    	vpxord %xmm6,%xmm6,%xmm6
    2f95:	4c 01 f0             	add    %r14,%rax
    2f98:	48 8d 0c 82          	lea    (%rdx,%rax,4),%rcx
    2f9c:	48 63 85 f0 fe ff ff 	movslq -0x110(%rbp),%rax
    2fa3:	4c 01 f6             	add    %r14,%rsi
    2fa6:	48 8d 34 b2          	lea    (%rdx,%rsi,4),%rsi
    2faa:	62 71 fd 28 6f d6    	vmovdqa64 %ymm6,%ymm10
    2fb0:	4c 01 f0             	add    %r14,%rax
    2fb3:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
    2fb7:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    2fbb:	48 63 85 0c ff ff ff 	movslq -0xf4(%rbp),%rax
    2fc2:	4c 01 f0             	add    %r14,%rax
    2fc5:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
    2fc9:	48 63 95 ec fe ff ff 	movslq -0x114(%rbp),%rdx
    2fd0:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    2fd4:	49 01 d6             	add    %rdx,%r14
    2fd7:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    2fde:	4e 8d 34 b2          	lea    (%rdx,%r14,4),%r14
    2fe2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2fe8:	41 0f b7 45 00       	movzwl 0x0(%r13),%eax
    2fed:	41 0f b7 14 24       	movzwl (%r12),%edx
    2ff2:	49 83 c5 04          	add    $0x4,%r13
    2ff6:	49 83 c4 04          	add    $0x4,%r12
    2ffa:	48 83 c3 04          	add    $0x4,%rbx
    2ffe:	49 83 c3 04          	add    $0x4,%r11
    3002:	49 83 c2 04          	add    $0x4,%r10
    3006:	49 83 c7 04          	add    $0x4,%r15
    300a:	49 83 c1 04          	add    $0x4,%r9
    300e:	49 83 c0 04          	add    $0x4,%r8
    3012:	48 83 c7 04          	add    $0x4,%rdi
    3016:	48 83 c6 04          	add    $0x4,%rsi
    301a:	66 89 45 a0          	mov    %ax,-0x60(%rbp)
    301e:	0f b7 43 fc          	movzwl -0x4(%rbx),%eax
    3022:	48 83 c1 04          	add    $0x4,%rcx
    3026:	66 89 55 a2          	mov    %dx,-0x5e(%rbp)
    302a:	41 0f b7 53 fc       	movzwl -0x4(%r11),%edx
    302f:	49 83 c6 04          	add    $0x4,%r14
    3033:	66 89 45 a4          	mov    %ax,-0x5c(%rbp)
    3037:	41 0f b7 42 fc       	movzwl -0x4(%r10),%eax
    303c:	66 89 55 a6          	mov    %dx,-0x5a(%rbp)
    3040:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    3044:	66 89 45 a8          	mov    %ax,-0x58(%rbp)
    3048:	0f b7 02             	movzwl (%rdx),%eax
    304b:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    304f:	66 89 45 aa          	mov    %ax,-0x56(%rbp)
    3053:	0f b7 02             	movzwl (%rdx),%eax
    3056:	41 0f b7 57 fc       	movzwl -0x4(%r15),%edx
    305b:	66 89 45 ac          	mov    %ax,-0x54(%rbp)
    305f:	41 0f b7 41 fc       	movzwl -0x4(%r9),%eax
    3064:	66 89 55 ae          	mov    %dx,-0x52(%rbp)
    3068:	41 0f b7 50 fc       	movzwl -0x4(%r8),%edx
    306d:	66 89 45 b0          	mov    %ax,-0x50(%rbp)
    3071:	0f b7 47 fc          	movzwl -0x4(%rdi),%eax
    3075:	66 89 55 b2          	mov    %dx,-0x4e(%rbp)
    3079:	0f b7 56 fc          	movzwl -0x4(%rsi),%edx
    307d:	66 89 45 b4          	mov    %ax,-0x4c(%rbp)
    3081:	0f b7 41 fc          	movzwl -0x4(%rcx),%eax
    3085:	66 89 55 b6          	mov    %dx,-0x4a(%rbp)
    3089:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    308d:	66 89 45 b8          	mov    %ax,-0x48(%rbp)
    3091:	0f b7 02             	movzwl (%rdx),%eax
    3094:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    3098:	66 89 45 ba          	mov    %ax,-0x46(%rbp)
    309c:	0f b7 02             	movzwl (%rdx),%eax
    309f:	41 0f b7 56 fc       	movzwl -0x4(%r14),%edx
    30a4:	62 f1 fd 08 6f 55 fa 	vmovdqa64 -0x60(%rbp),%xmm2
    30ab:	66 89 45 bc          	mov    %ax,-0x44(%rbp)
    30af:	41 0f b7 45 fe       	movzwl -0x2(%r13),%eax
    30b4:	66 89 55 be          	mov    %dx,-0x42(%rbp)
    30b8:	41 0f b7 54 24 fe    	movzwl -0x2(%r12),%edx
    30be:	c4 e3 6d 38 7d b0 01 	vinserti128 $0x1,-0x50(%rbp),%ymm2,%ymm7
    30c5:	66 89 45 a0          	mov    %ax,-0x60(%rbp)
    30c9:	0f b7 43 fe          	movzwl -0x2(%rbx),%eax
    30cd:	66 89 55 a2          	mov    %dx,-0x5e(%rbp)
    30d1:	41 0f b7 53 fe       	movzwl -0x2(%r11),%edx
    30d6:	66 89 45 a4          	mov    %ax,-0x5c(%rbp)
    30da:	41 0f b7 42 fe       	movzwl -0x2(%r10),%eax
    30df:	66 89 55 a6          	mov    %dx,-0x5a(%rbp)
    30e3:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    30e7:	66 89 45 a8          	mov    %ax,-0x58(%rbp)
    30eb:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    30ef:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    30f3:	66 89 45 aa          	mov    %ax,-0x56(%rbp)
    30f7:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    30fb:	41 0f b7 57 fe       	movzwl -0x2(%r15),%edx
    3100:	66 89 45 ac          	mov    %ax,-0x54(%rbp)
    3104:	41 0f b7 41 fe       	movzwl -0x2(%r9),%eax
    3109:	66 89 55 ae          	mov    %dx,-0x52(%rbp)
    310d:	41 0f b7 50 fe       	movzwl -0x2(%r8),%edx
    3112:	66 89 45 b0          	mov    %ax,-0x50(%rbp)
    3116:	0f b7 47 fe          	movzwl -0x2(%rdi),%eax
    311a:	66 89 55 b2          	mov    %dx,-0x4e(%rbp)
    311e:	0f b7 56 fe          	movzwl -0x2(%rsi),%edx
    3122:	66 89 45 b4          	mov    %ax,-0x4c(%rbp)
    3126:	66 89 55 b6          	mov    %dx,-0x4a(%rbp)
    312a:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
    312e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    3132:	48 83 45 88 04       	addq   $0x4,-0x78(%rbp)
    3137:	62 f1 fd 08 6f 45 fa 	vmovdqa64 -0x60(%rbp),%xmm0
    313e:	48 83 45 90 04       	addq   $0x4,-0x70(%rbp)
    3143:	48 83 45 98 04       	addq   $0x4,-0x68(%rbp)
    3148:	66 89 45 b8          	mov    %ax,-0x48(%rbp)
    314c:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    3150:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    3154:	48 83 45 80 04       	addq   $0x4,-0x80(%rbp)
    3159:	66 89 45 ba          	mov    %ax,-0x46(%rbp)
    315d:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
    3161:	41 0f b7 56 fe       	movzwl -0x2(%r14),%edx
    3166:	66 89 45 bc          	mov    %ax,-0x44(%rbp)
    316a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    3171:	66 89 55 be          	mov    %dx,-0x42(%rbp)
    3175:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    317c:	c4 63 7d 38 45 b0 01 	vinserti128 $0x1,-0x50(%rbp),%ymm0,%ymm8
    3183:	c4 e2 7d 79 0c 82    	vpbroadcastw (%rdx,%rax,4),%ymm1
    3189:	c4 e2 7d 79 5c 82 02 	vpbroadcastw 0x2(%rdx,%rax,4),%ymm3
    3190:	48 83 c0 01          	add    $0x1,%rax
    3194:	48 3b 85 68 ff ff ff 	cmp    -0x98(%rbp),%rax
    319b:	c5 f5 d5 ef          	vpmullw %ymm7,%ymm1,%ymm5
    319f:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    31a6:	c4 c1 55 fd e2       	vpaddw %ymm10,%ymm5,%ymm4
    31ab:	c4 41 65 d5 c8       	vpmullw %ymm8,%ymm3,%ymm9
    31b0:	c5 65 d5 df          	vpmullw %ymm7,%ymm3,%ymm11
    31b4:	c4 41 75 d5 e0       	vpmullw %ymm8,%ymm1,%ymm12
    31b9:	c4 41 5d f9 d1       	vpsubw %ymm9,%ymm4,%ymm10
    31be:	c4 41 25 fd ec       	vpaddw %ymm12,%ymm11,%ymm13
    31c3:	c5 95 fd f6          	vpaddw %ymm6,%ymm13,%ymm6
    31c7:	0f 85 1b fe ff ff    	jne    2fe8 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x278>
    31cd:	c4 63 7d 39 d2 01    	vextracti128 $0x1,%ymm10,%xmm2
    31d3:	c4 e3 7d 39 f7 01    	vextracti128 $0x1,%ymm6,%xmm7
    31d9:	c4 41 79 c5 ea 00    	vpextrw $0x0,%xmm10,%r13d
    31df:	c5 f9 c5 c2 01       	vpextrw $0x1,%xmm2,%eax
    31e4:	c4 41 79 c5 fa 03    	vpextrw $0x3,%xmm10,%r15d
    31ea:	c4 41 79 c5 e2 01    	vpextrw $0x1,%xmm10,%r12d
    31f0:	44 89 6d 98          	mov    %r13d,-0x68(%rbp)
    31f4:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
    31fa:	c5 f9 c5 c2 04       	vpextrw $0x4,%xmm2,%eax
    31ff:	c4 41 79 c5 d2 02    	vpextrw $0x2,%xmm10,%r10d
    3205:	44 89 7d 80          	mov    %r15d,-0x80(%rbp)
    3209:	c4 41 79 c5 c2 04    	vpextrw $0x4,%xmm10,%r8d
    320f:	44 89 65 90          	mov    %r12d,-0x70(%rbp)
    3213:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
    3219:	c5 f9 c5 c2 05       	vpextrw $0x5,%xmm2,%eax
    321e:	c4 c1 79 c5 fa 05    	vpextrw $0x5,%xmm10,%edi
    3224:	44 89 55 88          	mov    %r10d,-0x78(%rbp)
    3228:	c4 c1 79 c5 f2 06    	vpextrw $0x6,%xmm10,%esi
    322e:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
    3235:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%rbp)
    323b:	c5 f9 c5 c7 05       	vpextrw $0x5,%xmm7,%eax
    3240:	c4 c1 79 c5 ca 07    	vpextrw $0x7,%xmm10,%ecx
    3246:	89 bd 50 ff ff ff    	mov    %edi,-0xb0(%rbp)
    324c:	c5 79 c5 f2 00       	vpextrw $0x0,%xmm2,%r14d
    3251:	89 b5 4c ff ff ff    	mov    %esi,-0xb4(%rbp)
    3257:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
    325d:	c5 f9 c5 c2 06       	vpextrw $0x6,%xmm2,%eax
    3262:	c5 79 c5 ea 02       	vpextrw $0x2,%xmm2,%r13d
    3267:	89 8d 48 ff ff ff    	mov    %ecx,-0xb8(%rbp)
    326d:	c5 79 c5 fa 03       	vpextrw $0x3,%xmm2,%r15d
    3272:	44 89 b5 44 ff ff ff 	mov    %r14d,-0xbc(%rbp)
    3279:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%rbp)
    327f:	c5 f9 c5 c7 06       	vpextrw $0x6,%xmm7,%eax
    3284:	44 89 ad 3c ff ff ff 	mov    %r13d,-0xc4(%rbp)
    328b:	c5 f9 c5 de 00       	vpextrw $0x0,%xmm6,%ebx
    3290:	44 89 bd 38 ff ff ff 	mov    %r15d,-0xc8(%rbp)
    3297:	c5 79 c5 de 01       	vpextrw $0x1,%xmm6,%r11d
    329c:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%rbp)
    32a2:	c5 f9 c5 c2 07       	vpextrw $0x7,%xmm2,%eax
    32a7:	c5 79 c5 d6 02       	vpextrw $0x2,%xmm6,%r10d
    32ac:	c5 79 c5 ce 03       	vpextrw $0x3,%xmm6,%r9d
    32b1:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
    32b7:	c5 79 c5 c6 04       	vpextrw $0x4,%xmm6,%r8d
    32bc:	c5 f9 c5 fe 05       	vpextrw $0x5,%xmm6,%edi
    32c1:	c5 f9 c5 f6 06       	vpextrw $0x6,%xmm6,%esi
    32c6:	c5 f9 c5 d6 07       	vpextrw $0x7,%xmm6,%edx
    32cb:	c5 f9 c5 cf 00       	vpextrw $0x0,%xmm7,%ecx
    32d0:	c5 79 c5 e7 01       	vpextrw $0x1,%xmm7,%r12d
    32d5:	c5 79 c5 ef 02       	vpextrw $0x2,%xmm7,%r13d
    32da:	c5 79 c5 f7 03       	vpextrw $0x3,%xmm7,%r14d
    32df:	c5 79 c5 ff 04       	vpextrw $0x4,%xmm7,%r15d
    32e4:	c5 f9 c5 c7 07       	vpextrw $0x7,%xmm7,%eax
    32e9:	c5 f9 6e 45 98       	vmovd  -0x68(%rbp),%xmm0
    32ee:	c5 f9 6e 4d 90       	vmovd  -0x70(%rbp),%xmm1
    32f3:	c5 f9 6e 5d 88       	vmovd  -0x78(%rbp),%xmm3
    32f8:	c5 79 6e 4d 80       	vmovd  -0x80(%rbp),%xmm9
    32fd:	c5 79 c4 c3 01       	vpinsrw $0x1,%ebx,%xmm0,%xmm8
    3302:	c5 f9 6e b5 78 ff ff 	vmovd  -0x88(%rbp),%xmm6
    3309:	ff 
    330a:	c4 c1 71 c4 eb 01    	vpinsrw $0x1,%r11d,%xmm1,%xmm5
    3310:	c5 79 6e bd 50 ff ff 	vmovd  -0xb0(%rbp),%xmm15
    3317:	ff 
    3318:	c5 f9 6e bd 4c ff ff 	vmovd  -0xb4(%rbp),%xmm7
    331f:	ff 
    3320:	c5 f9 6e 85 48 ff ff 	vmovd  -0xb8(%rbp),%xmm0
    3327:	ff 
    3328:	c4 c1 61 c4 e2 01    	vpinsrw $0x1,%r10d,%xmm3,%xmm4
    332e:	c5 39 62 dd          	vpunpckldq %xmm5,%xmm8,%xmm11
    3332:	c5 f9 c4 ca 01       	vpinsrw $0x1,%edx,%xmm0,%xmm1
    3337:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    333e:	c5 f9 6e 85 34 ff ff 	vmovd  -0xcc(%rbp),%xmm0
    3345:	ff 
    3346:	c4 41 31 c4 d1 01    	vpinsrw $0x1,%r9d,%xmm9,%xmm10
    334c:	c4 41 49 c4 f0 01    	vpinsrw $0x1,%r8d,%xmm6,%xmm14
    3352:	c5 f9 6e b5 3c ff ff 	vmovd  -0xc4(%rbp),%xmm6
    3359:	ff 
    335a:	c5 81 c4 d7 01       	vpinsrw $0x1,%edi,%xmm15,%xmm2
    335f:	c5 79 6e bd 38 ff ff 	vmovd  -0xc8(%rbp),%xmm15
    3366:	ff 
    3367:	48 83 c2 40          	add    $0x40,%rdx
    336b:	c5 41 c4 c6 01       	vpinsrw $0x1,%esi,%xmm7,%xmm8
    3370:	c4 41 59 62 e2       	vpunpckldq %xmm10,%xmm4,%xmm12
    3375:	c5 79 6e 95 44 ff ff 	vmovd  -0xbc(%rbp),%xmm10
    337c:	ff 
    337d:	c5 89 62 ea          	vpunpckldq %xmm2,%xmm14,%xmm5
    3381:	c5 b9 62 d9          	vpunpckldq %xmm1,%xmm8,%xmm3
    3385:	c4 41 21 6c ec       	vpunpcklqdq %xmm12,%xmm11,%xmm13
    338a:	c5 79 6e a5 40 ff ff 	vmovd  -0xc0(%rbp),%xmm12
    3391:	ff 
    3392:	c5 29 c4 d9 01       	vpinsrw $0x1,%ecx,%xmm10,%xmm11
    3397:	c5 d1 6c e3          	vpunpcklqdq %xmm3,%xmm5,%xmm4
    339b:	c5 f9 6e 9d 30 ff ff 	vmovd  -0xd0(%rbp),%xmm3
    33a2:	ff 
    33a3:	c4 41 49 c4 f5 01    	vpinsrw $0x1,%r13d,%xmm6,%xmm14
    33a9:	c4 c1 01 c4 fe 01    	vpinsrw $0x1,%r14d,%xmm15,%xmm7
    33af:	c4 63 15 38 cc 01    	vinserti128 $0x1,%xmm4,%ymm13,%ymm9
    33b5:	c5 f9 6e a5 28 ff ff 	vmovd  -0xd8(%rbp),%xmm4
    33bc:	ff 
    33bd:	c4 41 19 c4 ec 01    	vpinsrw $0x1,%r12d,%xmm12,%xmm13
    33c3:	c5 59 c4 95 24 ff ff 	vpinsrw $0x1,-0xdc(%rbp),%xmm4,%xmm10
    33ca:	ff 01 
    33cc:	c5 78 11 4a c0       	vmovups %xmm9,-0x40(%rdx)
    33d1:	c4 63 7d 39 4a d0 01 	vextracti128 $0x1,%ymm9,-0x30(%rdx)
    33d8:	c4 c1 21 62 d5       	vpunpckldq %xmm13,%xmm11,%xmm2
    33dd:	c5 79 6e 9d 20 ff ff 	vmovd  -0xe0(%rbp),%xmm11
    33e4:	ff 
    33e5:	c4 c1 79 c4 ef 01    	vpinsrw $0x1,%r15d,%xmm0,%xmm5
    33eb:	c5 61 c4 8d 2c ff ff 	vpinsrw $0x1,-0xd4(%rbp),%xmm3,%xmm9
    33f2:	ff 01 
    33f4:	c5 21 c4 e0 01       	vpinsrw $0x1,%eax,%xmm11,%xmm12
    33f9:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
    33ff:	c5 09 62 c7          	vpunpckldq %xmm7,%xmm14,%xmm8
    3403:	01 85 54 ff ff ff    	add    %eax,-0xac(%rbp)
    3409:	c4 41 51 62 e9       	vpunpckldq %xmm9,%xmm5,%xmm13
    340e:	c4 c1 29 62 f4       	vpunpckldq %xmm12,%xmm10,%xmm6
    3413:	c4 c1 69 6c c8       	vpunpcklqdq %xmm8,%xmm2,%xmm1
    3418:	c5 11 6c f6          	vpunpcklqdq %xmm6,%xmm13,%xmm14
    341c:	c4 43 75 38 fe 01    	vinserti128 $0x1,%xmm14,%ymm1,%ymm15
    3422:	c5 78 11 7a e0       	vmovups %xmm15,-0x20(%rdx)
    3427:	c4 63 7d 39 7a f0 01 	vextracti128 $0x1,%ymm15,-0x10(%rdx)
    342e:	48 39 95 18 ff ff ff 	cmp    %rdx,-0xe8(%rbp)
    3435:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    343c:	0f 85 7e fa ff ff    	jne    2ec0 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x150>
    3442:	c5 f8 77             	vzeroupper 
    3445:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    3449:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3450:	00 00 
    3452:	0f 85 e9 00 00 00    	jne    3541 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x7d1>
    3458:	48 81 c4 20 01 00 00 	add    $0x120,%rsp
    345f:	5b                   	pop    %rbx
    3460:	59                   	pop    %rcx
    3461:	41 5c                	pop    %r12
    3463:	41 5d                	pop    %r13
    3465:	41 5e                	pop    %r14
    3467:	41 5f                	pop    %r15
    3469:	5d                   	pop    %rbp
    346a:	48 8d 61 f8          	lea    -0x8(%rcx),%rsp
    346e:	c3                   	retq   
    346f:	90                   	nop
    3470:	31 db                	xor    %ebx,%ebx
    3472:	45 31 db             	xor    %r11d,%r11d
    3475:	45 31 c9             	xor    %r9d,%r9d
    3478:	66 89 9d 20 ff ff ff 	mov    %bx,-0xe0(%rbp)
    347f:	31 db                	xor    %ebx,%ebx
    3481:	45 31 d2             	xor    %r10d,%r10d
    3484:	66 89 9d 44 ff ff ff 	mov    %bx,-0xbc(%rbp)
    348b:	31 db                	xor    %ebx,%ebx
    348d:	66 44 89 9d 24 ff ff 	mov    %r11w,-0xdc(%rbp)
    3494:	ff 
    3495:	66 89 9d 78 ff ff ff 	mov    %bx,-0x88(%rbp)
    349c:	45 31 db             	xor    %r11d,%r11d
    349f:	31 db                	xor    %ebx,%ebx
    34a1:	31 d2                	xor    %edx,%edx
    34a3:	45 31 e4             	xor    %r12d,%r12d
    34a6:	45 31 c0             	xor    %r8d,%r8d
    34a9:	31 ff                	xor    %edi,%edi
    34ab:	31 f6                	xor    %esi,%esi
    34ad:	66 44 89 8d 28 ff ff 	mov    %r9w,-0xd8(%rbp)
    34b4:	ff 
    34b5:	66 44 89 95 34 ff ff 	mov    %r10w,-0xcc(%rbp)
    34bc:	ff 
    34bd:	45 31 c9             	xor    %r9d,%r9d
    34c0:	45 31 d2             	xor    %r10d,%r10d
    34c3:	66 44 89 9d 48 ff ff 	mov    %r11w,-0xb8(%rbp)
    34ca:	ff 
    34cb:	66 89 5d 88          	mov    %bx,-0x78(%rbp)
    34cf:	45 31 db             	xor    %r11d,%r11d
    34d2:	31 db                	xor    %ebx,%ebx
    34d4:	66 89 95 2c ff ff ff 	mov    %dx,-0xd4(%rbp)
    34db:	66 44 89 a5 30 ff ff 	mov    %r12w,-0xd0(%rbp)
    34e2:	ff 
    34e3:	66 44 89 85 38 ff ff 	mov    %r8w,-0xc8(%rbp)
    34ea:	ff 
    34eb:	66 89 bd 3c ff ff ff 	mov    %di,-0xc4(%rbp)
    34f2:	31 c0                	xor    %eax,%eax
    34f4:	66 89 b5 40 ff ff ff 	mov    %si,-0xc0(%rbp)
    34fb:	66 44 89 8d 4c ff ff 	mov    %r9w,-0xb4(%rbp)
    3502:	ff 
    3503:	45 31 ff             	xor    %r15d,%r15d
    3506:	66 44 89 95 50 ff ff 	mov    %r10w,-0xb0(%rbp)
    350d:	ff 
    350e:	66 44 89 5d 80       	mov    %r11w,-0x80(%rbp)
    3513:	45 31 f6             	xor    %r14d,%r14d
    3516:	66 89 5d 90          	mov    %bx,-0x70(%rbp)
    351a:	45 31 ed             	xor    %r13d,%r13d
    351d:	45 31 e4             	xor    %r12d,%r12d
    3520:	31 c9                	xor    %ecx,%ecx
    3522:	31 d2                	xor    %edx,%edx
    3524:	31 f6                	xor    %esi,%esi
    3526:	31 ff                	xor    %edi,%edi
    3528:	45 31 c0             	xor    %r8d,%r8d
    352b:	45 31 c9             	xor    %r9d,%r9d
    352e:	45 31 d2             	xor    %r10d,%r10d
    3531:	45 31 db             	xor    %r11d,%r11d
    3534:	31 db                	xor    %ebx,%ebx
    3536:	66 c7 45 98 00 00    	movw   $0x0,-0x68(%rbp)
    353c:	e9 a8 fd ff ff       	jmpq   32e9 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_+0x579>
    3541:	e8 ca e4 ff ff       	callq  1a10 <__stack_chk_fail@plt>
    3546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    354d:	00 00 00 

0000000000003550 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i>:
    3550:	85 d2                	test   %edx,%edx
    3552:	0f 8e 68 01 00 00    	jle    36c0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x170>
    3558:	0f b7 06             	movzwl (%rsi),%eax
    355b:	44 0f b7 46 02       	movzwl 0x2(%rsi),%r8d
    3560:	66 39 07             	cmp    %ax,(%rdi)
    3563:	0f 94 c1             	sete   %cl
    3566:	66 44 39 47 02       	cmp    %r8w,0x2(%rdi)
    356b:	0f 94 c0             	sete   %al
    356e:	20 c8                	and    %cl,%al
    3570:	0f 84 3c 01 00 00    	je     36b2 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x162>
    3576:	48 8d 4f 06          	lea    0x6(%rdi),%rcx
    357a:	83 ea 01             	sub    $0x1,%edx
    357d:	4c 8d 46 06          	lea    0x6(%rsi),%r8
    3581:	4c 8d 14 91          	lea    (%rcx,%rdx,4),%r10
    3585:	83 e2 03             	and    $0x3,%edx
    3588:	0f 84 89 00 00 00    	je     3617 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0xc7>
    358e:	45 0f b7 58 fe       	movzwl -0x2(%r8),%r11d
    3593:	45 0f b7 08          	movzwl (%r8),%r9d
    3597:	4c 8d 46 0a          	lea    0xa(%rsi),%r8
    359b:	66 44 39 59 fe       	cmp    %r11w,-0x2(%rcx)
    35a0:	41 0f 94 c3          	sete   %r11b
    35a4:	66 44 39 09          	cmp    %r9w,(%rcx)
    35a8:	48 8d 4f 0a          	lea    0xa(%rdi),%rcx
    35ac:	41 0f 94 c1          	sete   %r9b
    35b0:	45 84 cb             	test   %r9b,%r11b
    35b3:	0f 84 f7 00 00 00    	je     36b0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    35b9:	48 83 fa 01          	cmp    $0x1,%rdx
    35bd:	74 58                	je     3617 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0xc7>
    35bf:	48 83 fa 02          	cmp    $0x2,%rdx
    35c3:	74 2a                	je     35ef <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x9f>
    35c5:	41 0f b7 50 fe       	movzwl -0x2(%r8),%edx
    35ca:	45 0f b7 00          	movzwl (%r8),%r8d
    35ce:	66 39 51 fe          	cmp    %dx,-0x2(%rcx)
    35d2:	41 0f 94 c3          	sete   %r11b
    35d6:	66 44 39 01          	cmp    %r8w,(%rcx)
    35da:	48 8d 4f 0e          	lea    0xe(%rdi),%rcx
    35de:	4c 8d 46 0e          	lea    0xe(%rsi),%r8
    35e2:	41 0f 94 c1          	sete   %r9b
    35e6:	45 84 cb             	test   %r9b,%r11b
    35e9:	0f 84 c1 00 00 00    	je     36b0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    35ef:	41 0f b7 70 fe       	movzwl -0x2(%r8),%esi
    35f4:	41 0f b7 38          	movzwl (%r8),%edi
    35f8:	66 39 71 fe          	cmp    %si,-0x2(%rcx)
    35fc:	41 0f 94 c3          	sete   %r11b
    3600:	66 39 39             	cmp    %di,(%rcx)
    3603:	0f 94 c2             	sete   %dl
    3606:	48 83 c1 04          	add    $0x4,%rcx
    360a:	49 83 c0 04          	add    $0x4,%r8
    360e:	41 84 d3             	test   %dl,%r11b
    3611:	0f 84 99 00 00 00    	je     36b0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3617:	4c 39 d1             	cmp    %r10,%rcx
    361a:	0f 84 98 00 00 00    	je     36b8 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x168>
    3620:	45 0f b7 48 fe       	movzwl -0x2(%r8),%r9d
    3625:	45 0f b7 18          	movzwl (%r8),%r11d
    3629:	49 8d 78 04          	lea    0x4(%r8),%rdi
    362d:	66 44 39 49 fe       	cmp    %r9w,-0x2(%rcx)
    3632:	4c 8d 49 04          	lea    0x4(%rcx),%r9
    3636:	40 0f 94 c6          	sete   %sil
    363a:	66 44 39 19          	cmp    %r11w,(%rcx)
    363e:	0f 94 c2             	sete   %dl
    3641:	40 84 d6             	test   %dl,%sil
    3644:	74 6a                	je     36b0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3646:	0f b7 77 fe          	movzwl -0x2(%rdi),%esi
    364a:	41 0f b7 50 04       	movzwl 0x4(%r8),%edx
    364f:	66 41 39 71 fe       	cmp    %si,-0x2(%r9)
    3654:	41 0f 94 c3          	sete   %r11b
    3658:	66 39 51 04          	cmp    %dx,0x4(%rcx)
    365c:	41 0f 94 c1          	sete   %r9b
    3660:	45 84 cb             	test   %r9b,%r11b
    3663:	74 4b                	je     36b0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3665:	41 0f b7 78 06       	movzwl 0x6(%r8),%edi
    366a:	45 0f b7 58 08       	movzwl 0x8(%r8),%r11d
    366f:	66 39 79 06          	cmp    %di,0x6(%rcx)
    3673:	40 0f 94 c6          	sete   %sil
    3677:	66 44 39 59 08       	cmp    %r11w,0x8(%rcx)
    367c:	0f 94 c2             	sete   %dl
    367f:	40 84 d6             	test   %dl,%sil
    3682:	74 2c                	je     36b0 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0x160>
    3684:	45 0f b7 48 0a       	movzwl 0xa(%r8),%r9d
    3689:	41 0f b7 70 0c       	movzwl 0xc(%r8),%esi
    368e:	66 44 39 49 0a       	cmp    %r9w,0xa(%rcx)
    3693:	40 0f 94 c7          	sete   %dil
    3697:	66 39 71 0c          	cmp    %si,0xc(%rcx)
    369b:	41 0f 94 c3          	sete   %r11b
    369f:	48 83 c1 10          	add    $0x10,%rcx
    36a3:	49 83 c0 10          	add    $0x10,%r8
    36a7:	44 84 df             	test   %r11b,%dil
    36aa:	0f 85 67 ff ff ff    	jne    3617 <_Z21sameTypeMatricesEqualPK13Complex_int16S1_i+0xc7>
    36b0:	31 c0                	xor    %eax,%eax
    36b2:	f3 c3                	repz retq 
    36b4:	0f 1f 40 00          	nopl   0x0(%rax)
    36b8:	f3 c3                	repz retq 
    36ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    36c0:	b8 01 00 00 00       	mov    $0x1,%eax
    36c5:	c3                   	retq   
    36c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    36cd:	00 00 00 

00000000000036d0 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i>:
    36d0:	41 55                	push   %r13
    36d2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    36d7:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    36db:	41 ff 75 f8          	pushq  -0x8(%r13)
    36df:	55                   	push   %rbp
    36e0:	48 89 e5             	mov    %rsp,%rbp
    36e3:	41 57                	push   %r15
    36e5:	41 56                	push   %r14
    36e7:	41 55                	push   %r13
    36e9:	41 54                	push   %r12
    36eb:	45 89 ce             	mov    %r9d,%r14d
    36ee:	53                   	push   %rbx
    36ef:	49 89 fc             	mov    %rdi,%r12
    36f2:	41 89 f7             	mov    %esi,%r15d
    36f5:	89 d3                	mov    %edx,%ebx
    36f7:	48 81 ec c8 01 00 00 	sub    $0x1c8,%rsp
    36fe:	89 b5 78 fe ff ff    	mov    %esi,-0x188(%rbp)
    3704:	48 89 8d 58 fe ff ff 	mov    %rcx,-0x1a8(%rbp)
    370b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3712:	00 00 
    3714:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    3718:	31 c0                	xor    %eax,%eax
    371a:	4c 89 85 70 fe ff ff 	mov    %r8,-0x190(%rbp)
    3721:	44 89 8d 7c fe ff ff 	mov    %r9d,-0x184(%rbp)
    3728:	e8 f3 f4 ff ff       	callq  2c20 <_Z7getTimev>
    372d:	45 85 f6             	test   %r14d,%r14d
    3730:	c5 fb 11 85 40 fe ff 	vmovsd %xmm0,-0x1c0(%rbp)
    3737:	ff 
    3738:	0f 8e 1d 01 00 00    	jle    385b <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x18b>
    373e:	44 89 f8             	mov    %r15d,%eax
    3741:	4c 8d ad 90 fe ff ff 	lea    -0x170(%rbp),%r13
    3748:	46 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%r10d
    374f:	00 
    3750:	c1 e0 06             	shl    $0x6,%eax
    3753:	44 89 f9             	mov    %r15d,%ecx
    3756:	44 89 ff             	mov    %r15d,%edi
    3759:	49 8d 55 04          	lea    0x4(%r13),%rdx
    375d:	89 85 38 fe ff ff    	mov    %eax,-0x1c8(%rbp)
    3763:	83 e8 01             	sub    $0x1,%eax
    3766:	c1 e1 05             	shl    $0x5,%ecx
    3769:	c1 e7 04             	shl    $0x4,%edi
    376c:	c1 e8 06             	shr    $0x6,%eax
    376f:	48 8d 34 82          	lea    (%rdx,%rax,4),%rsi
    3773:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
    3777:	44 8d 5f ff          	lea    -0x1(%rdi),%r11d
    377b:	41 8d 42 ff          	lea    -0x1(%r10),%eax
    377f:	45 8d 7f ff          	lea    -0x1(%r15),%r15d
    3783:	89 8d 3c fe ff ff    	mov    %ecx,-0x1c4(%rbp)
    3789:	41 c1 e8 05          	shr    $0x5,%r8d
    378d:	41 c1 eb 04          	shr    $0x4,%r11d
    3791:	89 bd 48 fe ff ff    	mov    %edi,-0x1b8(%rbp)
    3797:	c1 e8 03             	shr    $0x3,%eax
    379a:	41 c1 ef 04          	shr    $0x4,%r15d
    379e:	4e 8d 34 9a          	lea    (%rdx,%r11,4),%r14
    37a2:	4e 8d 0c 82          	lea    (%rdx,%r8,4),%r9
    37a6:	48 8d 0c 85 04 00 00 	lea    0x4(,%rax,4),%rcx
    37ad:	00 
    37ae:	49 83 c7 01          	add    $0x1,%r15
    37b2:	49 c1 e7 06          	shl    $0x6,%r15
    37b6:	4c 89 b5 50 fe ff ff 	mov    %r14,-0x1b0(%rbp)
    37bd:	44 89 95 4c fe ff ff 	mov    %r10d,-0x1b4(%rbp)
    37c4:	48 89 b5 28 fe ff ff 	mov    %rsi,-0x1d8(%rbp)
    37cb:	4c 89 8d 30 fe ff ff 	mov    %r9,-0x1d0(%rbp)
    37d2:	45 31 f6             	xor    %r14d,%r14d
    37d5:	48 89 8d 60 fe ff ff 	mov    %rcx,-0x1a0(%rbp)
    37dc:	4c 89 bd 68 fe ff ff 	mov    %r15,-0x198(%rbp)
    37e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    37e8:	0f b6 3d d1 99 20 00 	movzbl 0x2099d1(%rip),%edi        # 20d1c0 <_ZGVZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    37ef:	40 84 ff             	test   %dil,%dil
    37f2:	0f 84 28 02 00 00    	je     3a20 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x350>
    37f8:	31 c0                	xor    %eax,%eax
    37fa:	b9 20 00 00 00       	mov    $0x20,%ecx
    37ff:	4c 89 ef             	mov    %r13,%rdi
    3802:	83 fb 08             	cmp    $0x8,%ebx
    3805:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    3808:	0f 84 a2 00 00 00    	je     38b0 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x1e0>
    380e:	83 fb 10             	cmp    $0x10,%ebx
    3811:	0f 84 81 02 00 00    	je     3a98 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x3c8>
    3817:	83 fb 20             	cmp    $0x20,%ebx
    381a:	0f 84 50 04 00 00    	je     3c70 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x5a0>
    3820:	83 fb 40             	cmp    $0x40,%ebx
    3823:	0f 84 4f 06 00 00    	je     3e78 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x7a8>
    3829:	44 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11d
    3830:	45 85 db             	test   %r11d,%r11d
    3833:	7e 63                	jle    3898 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x1c8>
    3835:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    383c:	48 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%rdi
    3843:	4c 89 ee             	mov    %r13,%rsi
    3846:	c5 f8 77             	vzeroupper 
    3849:	e8 12 e1 ff ff       	callq  1960 <memcpy@plt>
    384e:	41 83 c6 01          	add    $0x1,%r14d
    3852:	44 39 b5 7c fe ff ff 	cmp    %r14d,-0x184(%rbp)
    3859:	75 8d                	jne    37e8 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x118>
    385b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    385f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3866:	00 00 
    3868:	0f 85 5d 08 00 00    	jne    40cb <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x9fb>
    386e:	c5 fb 10 85 40 fe ff 	vmovsd -0x1c0(%rbp),%xmm0
    3875:	ff 
    3876:	48 81 c4 c8 01 00 00 	add    $0x1c8,%rsp
    387d:	5b                   	pop    %rbx
    387e:	41 5c                	pop    %r12
    3880:	41 5d                	pop    %r13
    3882:	41 5e                	pop    %r14
    3884:	41 5f                	pop    %r15
    3886:	5d                   	pop    %rbp
    3887:	49 8d 65 f0          	lea    -0x10(%r13),%rsp
    388b:	41 5d                	pop    %r13
    388d:	e9 ee f3 ff ff       	jmpq   2c80 <_Z9timeSinced>
    3892:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3898:	41 83 c6 01          	add    $0x1,%r14d
    389c:	44 39 b5 7c fe ff ff 	cmp    %r14d,-0x184(%rbp)
    38a3:	0f 85 3f ff ff ff    	jne    37e8 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x118>
    38a9:	c5 f8 77             	vzeroupper 
    38ac:	eb ad                	jmp    385b <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x18b>
    38ae:	66 90                	xchg   %ax,%ax
    38b0:	44 8b 95 4c fe ff ff 	mov    -0x1b4(%rbp),%r10d
    38b7:	45 85 d2             	test   %r10d,%r10d
    38ba:	0f 8e 69 ff ff ff    	jle    3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    38c0:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
    38c7:	62 61 fd 28 6f 05 6f 	vmovdqa64 0x826f(%rip),%ymm24        # bb40 <_ZL5temp0+0x660>
    38ce:	82 00 00 
    38d1:	45 31 c0             	xor    %r8d,%r8d
    38d4:	4c 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%r15
    38db:	4d 8d 5d 02          	lea    0x2(%r13),%r11
    38df:	62 71 fd 08 6f 3d f7 	vmovdqa64 0x82f7(%rip),%xmm15        # bbe0 <_ZL5temp0+0x700>
    38e6:	82 00 00 
    38e9:	62 71 7f 08 6f 11    	vmovdqu8 (%rcx),%xmm10
    38ef:	41 f6 c7 04          	test   $0x4,%r15b
    38f3:	c4 63 2d 38 49 10 01 	vinserti128 $0x1,0x10(%rcx),%ymm10,%ymm9
    38fa:	62 d2 bd 20 8d e1    	vpermw %ymm9,%ymm24,%ymm4
    3900:	c5 5d d5 35 58 82 00 	vpmullw 0x8258(%rip),%ymm4,%ymm14        # bb60 <_ZL5temp0+0x680>
    3907:	00 
    3908:	0f 85 ca 04 00 00    	jne    3dd8 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x708>
    390e:	62 e1 fd 28 6f 0d 68 	vmovdqa64 0x8268(%rip),%ymm17        # bb80 <_ZL5temp0+0x6a0>
    3915:	82 00 00 
    3918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    391f:	00 
    3920:	62 91 7f 08 6f 24 c4 	vmovdqu8 (%r12,%r8,8),%xmm4
    3927:	49 8d 48 04          	lea    0x4(%r8),%rcx
    392b:	48 c7 85 88 fe ff ff 	movq   $0x0,-0x178(%rbp)
    3932:	00 00 00 00 
    3936:	c4 03 5d 38 5c c4 10 	vinserti128 $0x1,0x10(%r12,%r8,8),%ymm4,%ymm11
    393d:	01 
    393e:	62 51 7f 08 6f 14 cc 	vmovdqu8 (%r12,%rcx,8),%xmm10
    3945:	c4 c3 2d 38 64 cc 10 	vinserti128 $0x1,0x10(%r12,%rcx,8),%ymm10,%ymm4
    394c:	01 
    394d:	c4 c1 35 d5 eb       	vpmullw %ymm11,%ymm9,%ymm5
    3952:	c4 41 0d d5 c3       	vpmullw %ymm11,%ymm14,%ymm8
    3957:	c4 c2 55 05 c8       	vphsubw %ymm8,%ymm5,%ymm1
    395c:	62 f2 f5 20 8d c1    	vpermw %ymm1,%ymm17,%ymm0
    3962:	c5 35 d5 dc          	vpmullw %ymm4,%ymm9,%ymm11
    3966:	c5 8d d5 ec          	vpmullw %ymm4,%ymm14,%ymm5
    396a:	c4 62 25 05 c5       	vphsubw %ymm5,%ymm11,%ymm8
    396f:	62 f3 fd 28 39 c6 01 	vextracti64x2 $0x1,%ymm0,%xmm6
    3976:	c5 79 fd e6          	vpaddw %xmm6,%xmm0,%xmm12
    397a:	62 d2 f5 20 8d c0    	vpermw %ymm8,%ymm17,%ymm0
    3980:	62 d2 85 08 8d d4    	vpermw %xmm12,%xmm15,%xmm2
    3986:	62 f3 fd 28 39 c1 01 	vextracti64x2 $0x1,%ymm0,%xmm1
    398d:	c4 c1 69 fd dc       	vpaddw %xmm12,%xmm2,%xmm3
    3992:	c5 79 c5 cb 03       	vpextrw $0x3,%xmm3,%r9d
    3997:	c5 f9 c5 f3 02       	vpextrw $0x2,%xmm3,%esi
    399c:	c5 79 fd e9          	vpaddw %xmm1,%xmm0,%xmm13
    39a0:	62 52 85 08 8d e5    	vpermw %xmm13,%xmm15,%xmm12
    39a6:	49 c1 e1 10          	shl    $0x10,%r9
    39aa:	49 09 f1             	or     %rsi,%r9
    39ad:	c4 c1 19 fd d5       	vpaddw %xmm13,%xmm12,%xmm2
    39b2:	c5 f9 c5 d2 03       	vpextrw $0x3,%xmm2,%edx
    39b7:	4c 89 8d 80 fe ff ff 	mov    %r9,-0x180(%rbp)
    39be:	c5 f9 c5 fa 02       	vpextrw $0x2,%xmm2,%edi
    39c3:	c5 e1 fd bd 80 fe ff 	vpaddw -0x180(%rbp),%xmm3,%xmm7
    39ca:	ff 
    39cb:	c4 c1 79 7e fa       	vmovd  %xmm7,%r10d
    39d0:	48 c1 e2 10          	shl    $0x10,%rdx
    39d4:	66 47 89 54 05 00    	mov    %r10w,0x0(%r13,%r8,1)
    39da:	48 09 fa             	or     %rdi,%rdx
    39dd:	c4 83 79 15 3c 03 01 	vpextrw $0x1,%xmm7,(%r11,%r8,1)
    39e4:	48 89 95 80 fe ff ff 	mov    %rdx,-0x180(%rbp)
    39eb:	c5 e9 fd 9d 80 fe ff 	vpaddw -0x180(%rbp),%xmm2,%xmm3
    39f2:	ff 
    39f3:	c5 f9 7e d8          	vmovd  %xmm3,%eax
    39f7:	66 43 89 44 05 04    	mov    %ax,0x4(%r13,%r8,1)
    39fd:	c4 83 79 15 5c 03 04 	vpextrw $0x1,%xmm3,0x4(%r11,%r8,1)
    3a04:	01 
    3a05:	49 83 c0 08          	add    $0x8,%r8
    3a09:	4d 39 c7             	cmp    %r8,%r15
    3a0c:	0f 85 0e ff ff ff    	jne    3920 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x250>
    3a12:	e9 12 fe ff ff       	jmpq   3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3a17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3a1e:	00 00 
    3a20:	48 8d 3d 99 97 20 00 	lea    0x209799(%rip),%rdi        # 20d1c0 <_ZGVZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3a27:	c5 f8 77             	vzeroupper 
    3a2a:	e8 31 e0 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    3a2f:	85 c0                	test   %eax,%eax
    3a31:	0f 84 c1 fd ff ff    	je     37f8 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x128>
    3a37:	4c 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%r10
    3a3e:	48 8d 3d 7b 97 20 00 	lea    0x20977b(%rip),%rdi        # 20d1c0 <_ZGVZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3a45:	62 d1 fe 48 6f 02    	vmovdqu64 (%r10),%zmm0
    3a4b:	62 d1 fe 48 6f 4a 01 	vmovdqu64 0x40(%r10),%zmm1
    3a52:	62 d1 fe 48 6f 52 02 	vmovdqu64 0x80(%r10),%zmm2
    3a59:	62 d1 fe 48 6f 5a 03 	vmovdqu64 0xc0(%r10),%zmm3
    3a60:	62 f1 fd 48 7f 05 96 	vmovdqa64 %zmm0,0x209796(%rip)        # 20d200 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3a67:	97 20 00 
    3a6a:	62 f1 fd 48 7f 0d cc 	vmovdqa64 %zmm1,0x2097cc(%rip)        # 20d240 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    3a71:	97 20 00 
    3a74:	62 f1 fd 48 7f 15 02 	vmovdqa64 %zmm2,0x209802(%rip)        # 20d280 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x80>
    3a7b:	98 20 00 
    3a7e:	62 f1 fd 48 7f 1d 38 	vmovdqa64 %zmm3,0x209838(%rip)        # 20d2c0 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0xc0>
    3a85:	98 20 00 
    3a88:	c5 f8 77             	vzeroupper 
    3a8b:	e8 70 e0 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    3a90:	e9 63 fd ff ff       	jmpq   37f8 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x128>
    3a95:	0f 1f 00             	nopl   (%rax)
    3a98:	8b 95 48 fe ff ff    	mov    -0x1b8(%rbp),%edx
    3a9e:	85 d2                	test   %edx,%edx
    3aa0:	0f 8e 83 fd ff ff    	jle    3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3aa6:	4c 8b 9d 50 fe ff ff 	mov    -0x1b0(%rbp),%r11
    3aad:	62 71 fd 48 6f 15 49 	vmovdqa64 0x209749(%rip),%zmm10        # 20d200 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3ab4:	97 20 00 
    3ab7:	4d 89 e7             	mov    %r12,%r15
    3aba:	62 f1 fd 48 6f 35 fc 	vmovdqa64 0x209cfc(%rip),%zmm6        # 20d7c0 <_ZL4idx0>
    3ac1:	9c 20 00 
    3ac4:	4d 89 e8             	mov    %r13,%r8
    3ac7:	62 71 fd 48 6f 0d af 	vmovdqa64 0x209caf(%rip),%zmm9        # 20d780 <_ZL4idx1>
    3ace:	9c 20 00 
    3ad1:	41 f6 c3 04          	test   $0x4,%r11b
    3ad5:	62 71 fd 48 6f 3d 61 	vmovdqa64 0x209c61(%rip),%zmm15        # 20d740 <_ZL4idx2>
    3adc:	9c 20 00 
    3adf:	62 f1 fd 48 6f 25 17 	vmovdqa64 0x209c17(%rip),%zmm4        # 20d700 <_ZL6addsub>
    3ae6:	9c 20 00 
    3ae9:	62 52 cd 48 8d f2    	vpermw %zmm10,%zmm6,%zmm14
    3aef:	62 71 fd 08 6f 1d f7 	vmovdqa64 0x80f7(%rip),%xmm11        # bbf0 <_ZL5temp0+0x710>
    3af6:	80 00 00 
    3af9:	62 f1 fd 08 6f 2d fd 	vmovdqa64 0x80fd(%rip),%xmm5        # bc00 <_ZL5temp0+0x720>
    3b00:	80 00 00 
    3b03:	0f 84 7f 00 00 00    	je     3b88 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x4b8>
    3b09:	4d 8d 45 04          	lea    0x4(%r13),%r8
    3b0d:	4c 39 85 50 fe ff ff 	cmp    %r8,-0x1b0(%rbp)
    3b14:	4d 8d 7c 24 40       	lea    0x40(%r12),%r15
    3b19:	62 51 ff 48 6f 2c 24 	vmovdqu16 (%r12),%zmm13
    3b20:	62 52 85 48 8d e5    	vpermw %zmm13,%zmm15,%zmm12
    3b26:	62 d2 b5 48 8d d5    	vpermw %zmm13,%zmm9,%zmm2
    3b2c:	62 d1 1d 48 d5 c2    	vpmullw %zmm10,%zmm12,%zmm0
    3b32:	62 d1 6d 48 d5 de    	vpmullw %zmm14,%zmm2,%zmm3
    3b38:	62 f1 65 48 d5 fc    	vpmullw %zmm4,%zmm3,%zmm7
    3b3e:	62 71 45 48 fd c0    	vpaddw %zmm0,%zmm7,%zmm8
    3b44:	62 73 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm8,%ymm6
    3b4b:	c5 3d fd ee          	vpaddw %ymm6,%ymm8,%ymm13
    3b4f:	62 53 fd 28 39 ec 01 	vextracti64x2 $0x1,%ymm13,%xmm12
    3b56:	c4 c1 11 fd dc       	vpaddw %xmm12,%xmm13,%xmm3
    3b5b:	62 f2 a5 08 8d fb    	vpermw %xmm3,%xmm11,%xmm7
    3b61:	c5 c1 fd c3          	vpaddw %xmm3,%xmm7,%xmm0
    3b65:	62 72 d5 08 8d c0    	vpermw %xmm0,%xmm5,%xmm8
    3b6b:	c5 b9 fd c8          	vpaddw %xmm0,%xmm8,%xmm1
    3b6f:	c5 f9 7e c8          	vmovd  %xmm1,%eax
    3b73:	c4 c3 79 15 4d 02 01 	vpextrw $0x1,%xmm1,0x2(%r13)
    3b7a:	66 41 89 45 00       	mov    %ax,0x0(%r13)
    3b7f:	0f 84 a4 fc ff ff    	je     3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3b85:	0f 1f 00             	nopl   (%rax)
    3b88:	62 d1 ff 48 6f 37    	vmovdqu16 (%r15),%zmm6
    3b8e:	49 83 c0 08          	add    $0x8,%r8
    3b92:	49 83 ef 80          	sub    $0xffffffffffffff80,%r15
    3b96:	62 72 b5 48 8d ee    	vpermw %zmm6,%zmm9,%zmm13
    3b9c:	62 72 85 48 8d e6    	vpermw %zmm6,%zmm15,%zmm12
    3ba2:	62 d1 15 48 d5 d6    	vpmullw %zmm14,%zmm13,%zmm2
    3ba8:	62 f1 6d 48 d5 dc    	vpmullw %zmm4,%zmm2,%zmm3
    3bae:	62 d1 1d 48 d5 fa    	vpmullw %zmm10,%zmm12,%zmm7
    3bb4:	62 f1 65 48 fd c7    	vpaddw %zmm7,%zmm3,%zmm0
    3bba:	62 f3 fd 48 3b c1 01 	vextracti64x4 $0x1,%zmm0,%ymm1
    3bc1:	c5 fd fd f1          	vpaddw %ymm1,%ymm0,%ymm6
    3bc5:	62 d3 fd 28 39 f4 01 	vextracti64x2 $0x1,%ymm6,%xmm12
    3bcc:	62 d1 ff 48 6f 4f ff 	vmovdqu16 -0x40(%r15),%zmm1
    3bd3:	62 72 85 48 8d e9    	vpermw %zmm1,%zmm15,%zmm13
    3bd9:	c4 c1 49 fd d4       	vpaddw %xmm12,%xmm6,%xmm2
    3bde:	62 f2 a5 08 8d da    	vpermw %xmm2,%xmm11,%xmm3
    3be4:	62 f2 b5 48 8d f1    	vpermw %zmm1,%zmm9,%zmm6
    3bea:	c5 e1 fd fa          	vpaddw %xmm2,%xmm3,%xmm7
    3bee:	62 f2 d5 08 8d c7    	vpermw %xmm7,%xmm5,%xmm0
    3bf4:	62 d1 15 48 d5 da    	vpmullw %zmm10,%zmm13,%zmm3
    3bfa:	62 51 4d 48 d5 e6    	vpmullw %zmm14,%zmm6,%zmm12
    3c00:	62 f1 1d 48 d5 d4    	vpmullw %zmm4,%zmm12,%zmm2
    3c06:	c5 79 fd c7          	vpaddw %xmm7,%xmm0,%xmm8
    3c0a:	62 f1 6d 48 fd fb    	vpaddw %zmm3,%zmm2,%zmm7
    3c10:	c4 43 79 15 40 fa 01 	vpextrw $0x1,%xmm8,-0x6(%r8)
    3c17:	c4 41 79 7e c1       	vmovd  %xmm8,%r9d
    3c1c:	62 d3 fd 48 3b f8 01 	vextracti64x4 $0x1,%zmm7,%ymm8
    3c23:	66 45 89 48 f8       	mov    %r9w,-0x8(%r8)
    3c28:	c4 c1 45 fd c8       	vpaddw %ymm8,%ymm7,%ymm1
    3c2d:	62 d3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm13
    3c34:	c4 41 71 fd e5       	vpaddw %xmm13,%xmm1,%xmm12
    3c39:	62 d2 a5 08 8d d4    	vpermw %xmm12,%xmm11,%xmm2
    3c3f:	c4 c1 69 fd dc       	vpaddw %xmm12,%xmm2,%xmm3
    3c44:	62 f2 d5 08 8d fb    	vpermw %xmm3,%xmm5,%xmm7
    3c4a:	c5 c1 fd c3          	vpaddw %xmm3,%xmm7,%xmm0
    3c4e:	c5 f9 7e c6          	vmovd  %xmm0,%esi
    3c52:	c4 c3 79 15 40 fe 01 	vpextrw $0x1,%xmm0,-0x2(%r8)
    3c59:	66 41 89 70 fc       	mov    %si,-0x4(%r8)
    3c5e:	4d 39 c3             	cmp    %r8,%r11
    3c61:	0f 85 21 ff ff ff    	jne    3b88 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x4b8>
    3c67:	e9 bd fb ff ff       	jmpq   3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3c6c:	0f 1f 40 00          	nopl   0x0(%rax)
    3c70:	44 8b 9d 3c fe ff ff 	mov    -0x1c4(%rbp),%r11d
    3c77:	45 85 db             	test   %r11d,%r11d
    3c7a:	0f 8e a9 fb ff ff    	jle    3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3c80:	62 71 fd 48 6f 05 36 	vmovdqa64 0x209b36(%rip),%zmm8        # 20d7c0 <_ZL4idx0>
    3c87:	9b 20 00 
    3c8a:	4c 8b 8d 30 fe ff ff 	mov    -0x1d0(%rbp),%r9
    3c91:	4d 8d 7c 24 40       	lea    0x40(%r12),%r15
    3c96:	62 71 fd 48 6f 0d 60 	vmovdqa64 0x209560(%rip),%zmm9        # 20d200 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3c9d:	95 20 00 
    3ca0:	4d 89 e8             	mov    %r13,%r8
    3ca3:	62 71 fd 48 6f 15 93 	vmovdqa64 0x209593(%rip),%zmm10        # 20d240 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    3caa:	95 20 00 
    3cad:	62 52 bd 48 8d e9    	vpermw %zmm9,%zmm8,%zmm13
    3cb3:	62 71 fd 48 6f 3d c3 	vmovdqa64 0x209ac3(%rip),%zmm15        # 20d780 <_ZL4idx1>
    3cba:	9a 20 00 
    3cbd:	62 52 bd 48 8d da    	vpermw %zmm10,%zmm8,%zmm11
    3cc3:	62 f1 fd 48 6f 35 73 	vmovdqa64 0x209a73(%rip),%zmm6        # 20d740 <_ZL4idx2>
    3cca:	9a 20 00 
    3ccd:	62 f1 fd 48 6f 2d 29 	vmovdqa64 0x209a29(%rip),%zmm5        # 20d700 <_ZL6addsub>
    3cd4:	9a 20 00 
    3cd7:	62 f1 fd 08 6f 25 0f 	vmovdqa64 0x7f0f(%rip),%xmm4        # bbf0 <_ZL5temp0+0x710>
    3cde:	7f 00 00 
    3ce1:	62 71 fd 08 6f 35 15 	vmovdqa64 0x7f15(%rip),%xmm14        # bc00 <_ZL5temp0+0x720>
    3ce8:	7f 00 00 
    3ceb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3cf0:	49 83 c0 04          	add    $0x4,%r8
    3cf4:	49 83 ef 80          	sub    $0xffffffffffffff80,%r15
    3cf8:	62 51 ff 48 6f 67 fe 	vmovdqu16 -0x80(%r15),%zmm12
    3cff:	62 d2 85 48 8d dc    	vpermw %zmm12,%zmm15,%zmm3
    3d05:	62 d2 cd 48 8d c4    	vpermw %zmm12,%zmm6,%zmm0
    3d0b:	62 d1 65 48 d5 cb    	vpmullw %zmm11,%zmm3,%zmm1
    3d11:	62 f1 75 48 d5 fd    	vpmullw %zmm5,%zmm1,%zmm7
    3d17:	62 d1 7d 48 d5 d2    	vpmullw %zmm10,%zmm0,%zmm2
    3d1d:	62 71 45 48 fd c2    	vpaddw %zmm2,%zmm7,%zmm8
    3d23:	62 73 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm3
    3d2a:	62 d1 ff 48 6f 47 fd 	vmovdqu16 -0xc0(%r15),%zmm0
    3d31:	c5 bd fd cb          	vpaddw %ymm3,%ymm8,%ymm1
    3d35:	62 f3 fd 28 39 cf 01 	vextracti64x2 $0x1,%ymm1,%xmm7
    3d3c:	c5 f1 fd d7          	vpaddw %xmm7,%xmm1,%xmm2
    3d40:	62 72 dd 08 8d c2    	vpermw %xmm2,%xmm4,%xmm8
    3d46:	62 f2 85 48 8d f8    	vpermw %zmm0,%zmm15,%zmm7
    3d4c:	c5 39 fd e2          	vpaddw %xmm2,%xmm8,%xmm12
    3d50:	62 72 cd 48 8d c0    	vpermw %zmm0,%zmm6,%zmm8
    3d56:	62 d2 8d 08 8d dc    	vpermw %xmm12,%xmm14,%xmm3
    3d5c:	62 d1 45 48 d5 d5    	vpmullw %zmm13,%zmm7,%zmm2
    3d62:	c4 c1 61 fd cc       	vpaddw %xmm12,%xmm3,%xmm1
    3d67:	62 d1 3d 48 d5 d9    	vpmullw %zmm9,%zmm8,%zmm3
    3d6d:	62 71 6d 48 d5 e5    	vpmullw %zmm5,%zmm2,%zmm12
    3d73:	62 f1 1d 48 fd c3    	vpaddw %zmm3,%zmm12,%zmm0
    3d79:	62 f3 fd 48 3b c7 01 	vextracti64x4 $0x1,%zmm0,%ymm7
    3d80:	c5 f9 7e ce          	vmovd  %xmm1,%esi
    3d84:	c5 79 c5 d1 01       	vpextrw $0x1,%xmm1,%r10d
    3d89:	c5 7d fd c7          	vpaddw %ymm7,%ymm0,%ymm8
    3d8d:	62 53 fd 28 39 c4 01 	vextracti64x2 $0x1,%ymm8,%xmm12
    3d94:	c4 c1 39 fd dc       	vpaddw %xmm12,%xmm8,%xmm3
    3d99:	62 f2 dd 08 8d c3    	vpermw %xmm3,%xmm4,%xmm0
    3d9f:	c5 f9 fd fb          	vpaddw %xmm3,%xmm0,%xmm7
    3da3:	62 f2 8d 08 8d cf    	vpermw %xmm7,%xmm14,%xmm1
    3da9:	c5 71 fd c7          	vpaddw %xmm7,%xmm1,%xmm8
    3dad:	c4 c1 79 c5 f8 01    	vpextrw $0x1,%xmm8,%edi
    3db3:	c5 79 7e c1          	vmovd  %xmm8,%ecx
    3db7:	01 f1                	add    %esi,%ecx
    3db9:	44 01 d7             	add    %r10d,%edi
    3dbc:	66 41 89 48 fc       	mov    %cx,-0x4(%r8)
    3dc1:	66 41 89 78 fe       	mov    %di,-0x2(%r8)
    3dc6:	4d 39 c1             	cmp    %r8,%r9
    3dc9:	0f 85 21 ff ff ff    	jne    3cf0 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x620>
    3dcf:	e9 55 fa ff ff       	jmpq   3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3dd4:	0f 1f 40 00          	nopl   0x0(%rax)
    3dd8:	62 51 7f 08 6f 1c 24 	vmovdqu8 (%r12),%xmm11
    3ddf:	41 b8 04 00 00 00    	mov    $0x4,%r8d
    3de5:	48 c7 85 88 fe ff ff 	movq   $0x0,-0x178(%rbp)
    3dec:	00 00 00 00 
    3df0:	c4 c3 25 38 6c 24 10 	vinserti128 $0x1,0x10(%r12),%ymm11,%ymm5
    3df7:	01 
    3df8:	62 e1 fd 28 6f 05 7e 	vmovdqa64 0x7d7e(%rip),%ymm16        # bb80 <_ZL5temp0+0x6a0>
    3dff:	7d 00 00 
    3e02:	62 a1 fd 28 6f c8    	vmovdqa64 %ymm16,%ymm17
    3e08:	c5 35 d5 c5          	vpmullw %ymm5,%ymm9,%ymm8
    3e0c:	c5 8d d5 cd          	vpmullw %ymm5,%ymm14,%ymm1
    3e10:	c4 e2 3d 05 f1       	vphsubw %ymm1,%ymm8,%ymm6
    3e15:	62 f2 fd 20 8d c6    	vpermw %ymm6,%ymm16,%ymm0
    3e1b:	62 d3 fd 28 39 c5 01 	vextracti64x2 $0x1,%ymm0,%xmm13
    3e22:	c4 c1 79 fd d5       	vpaddw %xmm13,%xmm0,%xmm2
    3e27:	62 f2 85 08 8d da    	vpermw %xmm2,%xmm15,%xmm3
    3e2d:	c5 e1 fd fa          	vpaddw %xmm2,%xmm3,%xmm7
    3e31:	c5 f9 c5 ff 03       	vpextrw $0x3,%xmm7,%edi
    3e36:	c5 f9 c5 d7 02       	vpextrw $0x2,%xmm7,%edx
    3e3b:	48 c1 e7 10          	shl    $0x10,%rdi
    3e3f:	48 09 d7             	or     %rdx,%rdi
    3e42:	48 83 bd 60 fe ff ff 	cmpq   $0x4,-0x1a0(%rbp)
    3e49:	04 
    3e4a:	48 89 bd 80 fe ff ff 	mov    %rdi,-0x180(%rbp)
    3e51:	c5 41 fd 95 80 fe ff 	vpaddw -0x180(%rbp),%xmm7,%xmm10
    3e58:	ff 
    3e59:	c5 79 7e d0          	vmovd  %xmm10,%eax
    3e5d:	c4 43 79 15 55 02 01 	vpextrw $0x1,%xmm10,0x2(%r13)
    3e64:	66 41 89 45 00       	mov    %ax,0x0(%r13)
    3e69:	0f 85 b1 fa ff ff    	jne    3920 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x250>
    3e6f:	e9 b5 f9 ff ff       	jmpq   3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3e74:	0f 1f 40 00          	nopl   0x0(%rax)
    3e78:	8b 95 38 fe ff ff    	mov    -0x1c8(%rbp),%edx
    3e7e:	85 d2                	test   %edx,%edx
    3e80:	0f 8e a3 f9 ff ff    	jle    3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    3e86:	62 f1 fd 48 6f 3d 30 	vmovdqa64 0x209930(%rip),%zmm7        # 20d7c0 <_ZL4idx0>
    3e8d:	99 20 00 
    3e90:	89 9d 80 fe ff ff    	mov    %ebx,-0x180(%rbp)
    3e96:	4d 89 e3             	mov    %r12,%r11
    3e99:	62 71 fd 48 6f 05 5d 	vmovdqa64 0x20935d(%rip),%zmm8        # 20d200 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    3ea0:	93 20 00 
    3ea3:	48 8b 9d 28 fe ff ff 	mov    -0x1d8(%rbp),%rbx
    3eaa:	4d 89 ef             	mov    %r13,%r15
    3ead:	62 71 fd 48 6f 0d 89 	vmovdqa64 0x209389(%rip),%zmm9        # 20d240 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    3eb4:	93 20 00 
    3eb7:	62 71 fd 48 6f 15 bf 	vmovdqa64 0x2093bf(%rip),%zmm10        # 20d280 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x80>
    3ebe:	93 20 00 
    3ec1:	62 d2 c5 48 8d d8    	vpermw %zmm8,%zmm7,%zmm3
    3ec7:	62 71 fd 48 6f 1d ef 	vmovdqa64 0x2093ef(%rip),%zmm11        # 20d2c0 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0xc0>
    3ece:	93 20 00 
    3ed1:	62 52 c5 48 8d e1    	vpermw %zmm9,%zmm7,%zmm12
    3ed7:	62 52 c5 48 8d ea    	vpermw %zmm10,%zmm7,%zmm13
    3edd:	62 f1 fd 48 6f 35 99 	vmovdqa64 0x209899(%rip),%zmm6        # 20d780 <_ZL4idx1>
    3ee4:	98 20 00 
    3ee7:	62 52 c5 48 8d f3    	vpermw %zmm11,%zmm7,%zmm14
    3eed:	62 f1 fd 48 6f 2d 49 	vmovdqa64 0x209849(%rip),%zmm5        # 20d740 <_ZL4idx2>
    3ef4:	98 20 00 
    3ef7:	62 f1 fd 48 6f 25 ff 	vmovdqa64 0x2097ff(%rip),%zmm4        # 20d700 <_ZL6addsub>
    3efe:	97 20 00 
    3f01:	62 71 fd 08 6f 3d f5 	vmovdqa64 0x7cf5(%rip),%xmm15        # bc00 <_ZL5temp0+0x720>
    3f08:	7c 00 00 
    3f0b:	62 e1 fd 08 6f 25 db 	vmovdqa64 0x7cdb(%rip),%xmm20        # bbf0 <_ZL5temp0+0x710>
    3f12:	7c 00 00 
    3f15:	0f 1f 00             	nopl   (%rax)
    3f18:	49 83 c7 04          	add    $0x4,%r15
    3f1c:	49 81 c3 00 01 00 00 	add    $0x100,%r11
    3f23:	62 d1 ff 48 6f 43 ff 	vmovdqu16 -0x40(%r11),%zmm0
    3f2a:	62 f2 cd 48 8d c8    	vpermw %zmm0,%zmm6,%zmm1
    3f30:	62 f2 d5 48 8d f8    	vpermw %zmm0,%zmm5,%zmm7
    3f36:	62 d1 75 48 d5 d6    	vpmullw %zmm14,%zmm1,%zmm2
    3f3c:	62 f1 6d 48 d5 cc    	vpmullw %zmm4,%zmm2,%zmm1
    3f42:	62 d1 45 48 d5 c3    	vpmullw %zmm11,%zmm7,%zmm0
    3f48:	62 f1 75 48 fd f8    	vpaddw %zmm0,%zmm1,%zmm7
    3f4e:	62 f3 fd 48 3b fa 01 	vextracti64x4 $0x1,%zmm7,%ymm2
    3f55:	c5 c5 fd fa          	vpaddw %ymm2,%ymm7,%ymm7
    3f59:	62 f3 fd 28 39 f9 01 	vextracti64x2 $0x1,%ymm7,%xmm1
    3f60:	c5 c1 fd d1          	vpaddw %xmm1,%xmm7,%xmm2
    3f64:	62 f2 dd 00 8d fa    	vpermw %xmm2,%xmm20,%xmm7
    3f6a:	c5 c1 fd c2          	vpaddw %xmm2,%xmm7,%xmm0
    3f6e:	62 f2 85 08 8d c8    	vpermw %xmm0,%xmm15,%xmm1
    3f74:	62 d1 ff 48 6f 7b fe 	vmovdqu16 -0x80(%r11),%zmm7
    3f7b:	c5 f1 fd d0          	vpaddw %xmm0,%xmm1,%xmm2
    3f7f:	62 f2 cd 48 8d cf    	vpermw %zmm7,%zmm6,%zmm1
    3f85:	c4 c1 79 7e d0       	vmovd  %xmm2,%r8d
    3f8a:	62 f2 d5 48 8d c7    	vpermw %zmm7,%zmm5,%zmm0
    3f90:	c5 f9 c5 ca 01       	vpextrw $0x1,%xmm2,%ecx
    3f95:	62 d1 75 48 d5 d5    	vpmullw %zmm13,%zmm1,%zmm2
    3f9b:	62 f1 6d 48 d5 fc    	vpmullw %zmm4,%zmm2,%zmm7
    3fa1:	62 d1 7d 48 d5 ca    	vpmullw %zmm10,%zmm0,%zmm1
    3fa7:	62 f1 45 48 fd c1    	vpaddw %zmm1,%zmm7,%zmm0
    3fad:	62 f3 fd 48 3b c2 01 	vextracti64x4 $0x1,%zmm0,%ymm2
    3fb4:	c5 fd fd ca          	vpaddw %ymm2,%ymm0,%ymm1
    3fb8:	62 f3 fd 28 39 cf 01 	vextracti64x2 $0x1,%ymm1,%xmm7
    3fbf:	c5 f1 fd d7          	vpaddw %xmm7,%xmm1,%xmm2
    3fc3:	62 f2 dd 00 8d ca    	vpermw %xmm2,%xmm20,%xmm1
    3fc9:	c5 f1 fd c2          	vpaddw %xmm2,%xmm1,%xmm0
    3fcd:	62 f2 85 08 8d f8    	vpermw %xmm0,%xmm15,%xmm7
    3fd3:	62 d1 ff 48 6f 4b fd 	vmovdqu16 -0xc0(%r11),%zmm1
    3fda:	c5 c1 fd d0          	vpaddw %xmm0,%xmm7,%xmm2
    3fde:	62 f2 cd 48 8d f9    	vpermw %zmm1,%zmm6,%zmm7
    3fe4:	c4 c1 79 7e d1       	vmovd  %xmm2,%r9d
    3fe9:	62 f2 d5 48 8d c1    	vpermw %zmm1,%zmm5,%zmm0
    3fef:	c5 f9 c5 f2 01       	vpextrw $0x1,%xmm2,%esi
    3ff4:	62 d1 45 48 d5 d4    	vpmullw %zmm12,%zmm7,%zmm2
    3ffa:	62 f1 6d 48 d5 cc    	vpmullw %zmm4,%zmm2,%zmm1
    4000:	62 d1 7d 48 d5 f9    	vpmullw %zmm9,%zmm0,%zmm7
    4006:	62 f1 75 48 fd c7    	vpaddw %zmm7,%zmm1,%zmm0
    400c:	62 f3 fd 48 3b c2 01 	vextracti64x4 $0x1,%zmm0,%ymm2
    4013:	c5 fd fd fa          	vpaddw %ymm2,%ymm0,%ymm7
    4017:	62 f3 fd 28 39 f9 01 	vextracti64x2 $0x1,%ymm7,%xmm1
    401e:	c5 c1 fd d1          	vpaddw %xmm1,%xmm7,%xmm2
    4022:	62 f2 dd 00 8d fa    	vpermw %xmm2,%xmm20,%xmm7
    4028:	c5 c1 fd c2          	vpaddw %xmm2,%xmm7,%xmm0
    402c:	62 f2 85 08 8d c8    	vpermw %xmm0,%xmm15,%xmm1
    4032:	62 d1 ff 48 6f 7b fc 	vmovdqu16 -0x100(%r11),%zmm7
    4039:	c5 f1 fd d0          	vpaddw %xmm0,%xmm1,%xmm2
    403d:	62 f2 cd 48 8d cf    	vpermw %zmm7,%zmm6,%zmm1
    4043:	c4 c1 79 7e d2       	vmovd  %xmm2,%r10d
    4048:	62 f2 d5 48 8d c7    	vpermw %zmm7,%zmm5,%zmm0
    404e:	c5 f9 c5 fa 01       	vpextrw $0x1,%xmm2,%edi
    4053:	62 f1 75 48 d5 d3    	vpmullw %zmm3,%zmm1,%zmm2
    4059:	62 f1 6d 48 d5 fc    	vpmullw %zmm4,%zmm2,%zmm7
    405f:	62 d1 7d 48 d5 c8    	vpmullw %zmm8,%zmm0,%zmm1
    4065:	62 f1 45 48 fd c1    	vpaddw %zmm1,%zmm7,%zmm0
    406b:	62 f3 fd 48 3b c2 01 	vextracti64x4 $0x1,%zmm0,%ymm2
    4072:	c5 fd fd ca          	vpaddw %ymm2,%ymm0,%ymm1
    4076:	62 f3 fd 28 39 cf 01 	vextracti64x2 $0x1,%ymm1,%xmm7
    407d:	c5 f1 fd d7          	vpaddw %xmm7,%xmm1,%xmm2
    4081:	62 f2 dd 00 8d ca    	vpermw %xmm2,%xmm20,%xmm1
    4087:	c5 f1 fd c2          	vpaddw %xmm2,%xmm1,%xmm0
    408b:	62 f2 85 08 8d f8    	vpermw %xmm0,%xmm15,%xmm7
    4091:	c5 c1 fd d0          	vpaddw %xmm0,%xmm7,%xmm2
    4095:	c5 f9 c5 c2 01       	vpextrw $0x1,%xmm2,%eax
    409a:	c5 f9 7e d2          	vmovd  %xmm2,%edx
    409e:	44 01 d2             	add    %r10d,%edx
    40a1:	01 f8                	add    %edi,%eax
    40a3:	41 01 d1             	add    %edx,%r9d
    40a6:	01 c6                	add    %eax,%esi
    40a8:	45 01 c8             	add    %r9d,%r8d
    40ab:	01 f1                	add    %esi,%ecx
    40ad:	66 45 89 47 fc       	mov    %r8w,-0x4(%r15)
    40b2:	66 41 89 4f fe       	mov    %cx,-0x2(%r15)
    40b7:	4c 39 fb             	cmp    %r15,%rbx
    40ba:	0f 85 58 fe ff ff    	jne    3f18 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x848>
    40c0:	8b 9d 80 fe ff ff    	mov    -0x180(%rbp),%ebx
    40c6:	e9 5e f7 ff ff       	jmpq   3829 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i+0x159>
    40cb:	e8 40 d9 ff ff       	callq  1a10 <__stack_chk_fail@plt>

00000000000040d0 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i>:
    40d0:	41 57                	push   %r15
    40d2:	41 56                	push   %r14
    40d4:	45 89 cf             	mov    %r9d,%r15d
    40d7:	41 55                	push   %r13
    40d9:	41 54                	push   %r12
    40db:	49 89 cd             	mov    %rcx,%r13
    40de:	55                   	push   %rbp
    40df:	53                   	push   %rbx
    40e0:	89 f5                	mov    %esi,%ebp
    40e2:	48 89 fb             	mov    %rdi,%rbx
    40e5:	41 89 d4             	mov    %edx,%r12d
    40e8:	4d 89 c6             	mov    %r8,%r14
    40eb:	48 83 ec 18          	sub    $0x18,%rsp
    40ef:	44 89 4c 24 04       	mov    %r9d,0x4(%rsp)
    40f4:	e8 27 eb ff ff       	callq  2c20 <_Z7getTimev>
    40f9:	45 85 ff             	test   %r15d,%r15d
    40fc:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    4102:	0f 8e 71 01 00 00    	jle    4279 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x1a9>
    4108:	44 89 fa             	mov    %r15d,%edx
    410b:	45 31 ff             	xor    %r15d,%r15d
    410e:	83 e2 07             	and    $0x7,%edx
    4111:	0f 84 bb 00 00 00    	je     41d2 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x102>
    4117:	83 fa 01             	cmp    $0x1,%edx
    411a:	0f 84 90 00 00 00    	je     41b0 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0xe0>
    4120:	83 fa 02             	cmp    $0x2,%edx
    4123:	74 74                	je     4199 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0xc9>
    4125:	83 fa 03             	cmp    $0x3,%edx
    4128:	74 58                	je     4182 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0xb2>
    412a:	83 fa 04             	cmp    $0x4,%edx
    412d:	74 3c                	je     416b <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x9b>
    412f:	83 fa 05             	cmp    $0x5,%edx
    4132:	74 20                	je     4154 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x84>
    4134:	83 fa 06             	cmp    $0x6,%edx
    4137:	0f 85 5b 01 00 00    	jne    4298 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x1c8>
    413d:	4d 89 f0             	mov    %r14,%r8
    4140:	4c 89 e9             	mov    %r13,%rcx
    4143:	44 89 e2             	mov    %r12d,%edx
    4146:	89 ee                	mov    %ebp,%esi
    4148:	48 89 df             	mov    %rbx,%rdi
    414b:	41 83 c7 01          	add    $0x1,%r15d
    414f:	e8 1c ec ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4154:	4d 89 f0             	mov    %r14,%r8
    4157:	4c 89 e9             	mov    %r13,%rcx
    415a:	44 89 e2             	mov    %r12d,%edx
    415d:	89 ee                	mov    %ebp,%esi
    415f:	48 89 df             	mov    %rbx,%rdi
    4162:	41 83 c7 01          	add    $0x1,%r15d
    4166:	e8 05 ec ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    416b:	4d 89 f0             	mov    %r14,%r8
    416e:	4c 89 e9             	mov    %r13,%rcx
    4171:	44 89 e2             	mov    %r12d,%edx
    4174:	89 ee                	mov    %ebp,%esi
    4176:	48 89 df             	mov    %rbx,%rdi
    4179:	41 83 c7 01          	add    $0x1,%r15d
    417d:	e8 ee eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4182:	4d 89 f0             	mov    %r14,%r8
    4185:	4c 89 e9             	mov    %r13,%rcx
    4188:	44 89 e2             	mov    %r12d,%edx
    418b:	89 ee                	mov    %ebp,%esi
    418d:	48 89 df             	mov    %rbx,%rdi
    4190:	41 83 c7 01          	add    $0x1,%r15d
    4194:	e8 d7 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4199:	4d 89 f0             	mov    %r14,%r8
    419c:	4c 89 e9             	mov    %r13,%rcx
    419f:	44 89 e2             	mov    %r12d,%edx
    41a2:	89 ee                	mov    %ebp,%esi
    41a4:	48 89 df             	mov    %rbx,%rdi
    41a7:	41 83 c7 01          	add    $0x1,%r15d
    41ab:	e8 c0 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    41b0:	4d 89 f0             	mov    %r14,%r8
    41b3:	4c 89 e9             	mov    %r13,%rcx
    41b6:	44 89 e2             	mov    %r12d,%edx
    41b9:	89 ee                	mov    %ebp,%esi
    41bb:	48 89 df             	mov    %rbx,%rdi
    41be:	41 83 c7 01          	add    $0x1,%r15d
    41c2:	e8 a9 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    41c7:	44 39 7c 24 04       	cmp    %r15d,0x4(%rsp)
    41cc:	0f 84 a7 00 00 00    	je     4279 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x1a9>
    41d2:	4d 89 f0             	mov    %r14,%r8
    41d5:	4c 89 e9             	mov    %r13,%rcx
    41d8:	44 89 e2             	mov    %r12d,%edx
    41db:	89 ee                	mov    %ebp,%esi
    41dd:	48 89 df             	mov    %rbx,%rdi
    41e0:	41 83 c7 08          	add    $0x8,%r15d
    41e4:	e8 87 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    41e9:	4d 89 f0             	mov    %r14,%r8
    41ec:	4c 89 e9             	mov    %r13,%rcx
    41ef:	44 89 e2             	mov    %r12d,%edx
    41f2:	89 ee                	mov    %ebp,%esi
    41f4:	48 89 df             	mov    %rbx,%rdi
    41f7:	e8 74 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    41fc:	4d 89 f0             	mov    %r14,%r8
    41ff:	4c 89 e9             	mov    %r13,%rcx
    4202:	44 89 e2             	mov    %r12d,%edx
    4205:	89 ee                	mov    %ebp,%esi
    4207:	48 89 df             	mov    %rbx,%rdi
    420a:	e8 61 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    420f:	4d 89 f0             	mov    %r14,%r8
    4212:	4c 89 e9             	mov    %r13,%rcx
    4215:	44 89 e2             	mov    %r12d,%edx
    4218:	89 ee                	mov    %ebp,%esi
    421a:	48 89 df             	mov    %rbx,%rdi
    421d:	e8 4e eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4222:	4d 89 f0             	mov    %r14,%r8
    4225:	4c 89 e9             	mov    %r13,%rcx
    4228:	44 89 e2             	mov    %r12d,%edx
    422b:	89 ee                	mov    %ebp,%esi
    422d:	48 89 df             	mov    %rbx,%rdi
    4230:	e8 3b eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4235:	4d 89 f0             	mov    %r14,%r8
    4238:	4c 89 e9             	mov    %r13,%rcx
    423b:	44 89 e2             	mov    %r12d,%edx
    423e:	89 ee                	mov    %ebp,%esi
    4240:	48 89 df             	mov    %rbx,%rdi
    4243:	e8 28 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    4248:	4d 89 f0             	mov    %r14,%r8
    424b:	4c 89 e9             	mov    %r13,%rcx
    424e:	44 89 e2             	mov    %r12d,%edx
    4251:	89 ee                	mov    %ebp,%esi
    4253:	48 89 df             	mov    %rbx,%rdi
    4256:	e8 15 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    425b:	4d 89 f0             	mov    %r14,%r8
    425e:	4c 89 e9             	mov    %r13,%rcx
    4261:	44 89 e2             	mov    %r12d,%edx
    4264:	89 ee                	mov    %ebp,%esi
    4266:	48 89 df             	mov    %rbx,%rdi
    4269:	e8 02 eb ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    426e:	44 39 7c 24 04       	cmp    %r15d,0x4(%rsp)
    4273:	0f 85 59 ff ff ff    	jne    41d2 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x102>
    4279:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    427f:	48 83 c4 18          	add    $0x18,%rsp
    4283:	5b                   	pop    %rbx
    4284:	5d                   	pop    %rbp
    4285:	41 5c                	pop    %r12
    4287:	41 5d                	pop    %r13
    4289:	41 5e                	pop    %r14
    428b:	41 5f                	pop    %r15
    428d:	e9 ee e9 ff ff       	jmpq   2c80 <_Z9timeSinced>
    4292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4298:	4d 89 f0             	mov    %r14,%r8
    429b:	4c 89 e9             	mov    %r13,%rcx
    429e:	44 89 e2             	mov    %r12d,%edx
    42a1:	89 ee                	mov    %ebp,%esi
    42a3:	48 89 df             	mov    %rbx,%rdi
    42a6:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    42ac:	e8 bf ea ff ff       	callq  2d70 <_Z14v2matmulAVX512PK13Complex_int16iiS1_PS_>
    42b1:	e9 87 fe ff ff       	jmpq   413d <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i+0x6d>
    42b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    42bd:	00 00 00 

00000000000042c0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i>:
    42c0:	41 55                	push   %r13
    42c2:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    42c7:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    42cb:	41 ff 75 f8          	pushq  -0x8(%r13)
    42cf:	55                   	push   %rbp
    42d0:	48 89 e5             	mov    %rsp,%rbp
    42d3:	41 57                	push   %r15
    42d5:	41 56                	push   %r14
    42d7:	41 55                	push   %r13
    42d9:	41 54                	push   %r12
    42db:	49 89 fd             	mov    %rdi,%r13
    42de:	53                   	push   %rbx
    42df:	41 89 d4             	mov    %edx,%r12d
    42e2:	89 f3                	mov    %esi,%ebx
    42e4:	49 89 cf             	mov    %rcx,%r15
    42e7:	4d 89 c6             	mov    %r8,%r14
    42ea:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    42f1:	44 89 4d cc          	mov    %r9d,-0x34(%rbp)
    42f5:	e8 26 e9 ff ff       	callq  2c20 <_Z7getTimev>
    42fa:	8b 7d cc             	mov    -0x34(%rbp),%edi
    42fd:	c5 fb 11 45 98       	vmovsd %xmm0,-0x68(%rbp)
    4302:	85 ff                	test   %edi,%edi
    4304:	0f 8e 86 02 00 00    	jle    4590 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x2d0>
    430a:	89 de                	mov    %ebx,%esi
    430c:	89 d9                	mov    %ebx,%ecx
    430e:	8d 14 dd 00 00 00 00 	lea    0x0(,%rbx,8),%edx
    4315:	c1 e6 05             	shl    $0x5,%esi
    4318:	89 d8                	mov    %ebx,%eax
    431a:	c1 e1 04             	shl    $0x4,%ecx
    431d:	c1 e0 06             	shl    $0x6,%eax
    4320:	44 8d 4e ff          	lea    -0x1(%rsi),%r9d
    4324:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    4328:	89 45 8c             	mov    %eax,-0x74(%rbp)
    432b:	8d 7a ff             	lea    -0x1(%rdx),%edi
    432e:	83 e8 01             	sub    $0x1,%eax
    4331:	c1 e8 06             	shr    $0x6,%eax
    4334:	41 c1 e9 05          	shr    $0x5,%r9d
    4338:	41 c1 eb 04          	shr    $0x4,%r11d
    433c:	48 c1 e0 09          	shl    $0x9,%rax
    4340:	49 c1 e1 08          	shl    $0x8,%r9
    4344:	49 c1 e3 07          	shl    $0x7,%r11
    4348:	c1 ef 03             	shr    $0x3,%edi
    434b:	4d 8d 84 05 00 02 00 	lea    0x200(%r13,%rax,1),%r8
    4352:	00 
    4353:	4b 8d 9c 1d 80 00 00 	lea    0x80(%r13,%r11,1),%rbx
    435a:	00 
    435b:	4f 8d 94 0d 00 01 00 	lea    0x100(%r13,%r9,1),%r10
    4362:	00 
    4363:	48 8d 04 fd 08 00 00 	lea    0x8(,%rdi,8),%rax
    436a:	00 
    436b:	89 75 a0             	mov    %esi,-0x60(%rbp)
    436e:	4c 89 f6             	mov    %r14,%rsi
    4371:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
    4375:	4d 89 ee             	mov    %r13,%r14
    4378:	89 4d a4             	mov    %ecx,-0x5c(%rbp)
    437b:	89 55 c8             	mov    %edx,-0x38(%rbp)
    437e:	31 db                	xor    %ebx,%ebx
    4380:	4c 89 45 80          	mov    %r8,-0x80(%rbp)
    4384:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
    4388:	49 89 f5             	mov    %rsi,%r13
    438b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    438f:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    4393:	eb 2d                	jmp    43c2 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x102>
    4395:	0f 1f 00             	nopl   (%rax)
    4398:	41 83 fc 10          	cmp    $0x10,%r12d
    439c:	0f 84 4e 03 00 00    	je     46f0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x430>
    43a2:	41 83 fc 20          	cmp    $0x20,%r12d
    43a6:	0f 84 c4 05 00 00    	je     4970 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x6b0>
    43ac:	41 83 fc 40          	cmp    $0x40,%r12d
    43b0:	0f 84 7a 07 00 00    	je     4b30 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x870>
    43b6:	83 c3 01             	add    $0x1,%ebx
    43b9:	39 5d cc             	cmp    %ebx,-0x34(%rbp)
    43bc:	0f 84 c6 01 00 00    	je     4588 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x2c8>
    43c2:	0f b6 0d b7 92 20 00 	movzbl 0x2092b7(%rip),%ecx        # 20d680 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    43c9:	84 c9                	test   %cl,%cl
    43cb:	0f 84 cf 02 00 00    	je     46a0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x3e0>
    43d1:	0f b6 15 28 92 20 00 	movzbl 0x209228(%rip),%edx        # 20d600 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    43d8:	84 d2                	test   %dl,%dl
    43da:	0f 84 70 02 00 00    	je     4650 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x390>
    43e0:	44 0f b6 05 98 91 20 	movzbl 0x209198(%rip),%r8d        # 20d580 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    43e7:	00 
    43e8:	45 84 c0             	test   %r8b,%r8b
    43eb:	0f 84 0f 02 00 00    	je     4600 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x340>
    43f1:	44 0f b6 0d 07 91 20 	movzbl 0x209107(%rip),%r9d        # 20d500 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    43f8:	00 
    43f9:	45 84 c9             	test   %r9b,%r9b
    43fc:	0f 84 ae 01 00 00    	je     45b0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x2f0>
    4402:	41 83 fc 08          	cmp    $0x8,%r12d
    4406:	75 90                	jne    4398 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xd8>
    4408:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
    440c:	45 85 c0             	test   %r8d,%r8d
    440f:	7e a5                	jle    43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4411:	4c 8b 4d c0          	mov    -0x40(%rbp),%r9
    4415:	62 71 7c 48 28 35 a1 	vmovaps 0x2092a1(%rip),%zmm14        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    441c:	92 20 00 
    441f:	45 31 d2             	xor    %r10d,%r10d
    4422:	b9 03 00 00 00       	mov    $0x3,%ecx
    4427:	ba 02 00 00 00       	mov    $0x2,%edx
    442c:	62 51 0c 48 c6 ee b1 	vshufps $0xb1,%zmm14,%zmm14,%zmm13
    4433:	c5 f9 92 f9          	kmovb  %ecx,%k7
    4437:	c5 f9 92 ca          	kmovb  %edx,%k1
    443b:	41 f6 c1 08          	test   $0x8,%r9b
    443f:	74 6f                	je     44b0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x1f0>
    4441:	62 51 7c 48 28 1e    	vmovaps (%r14),%zmm11
    4447:	41 ba 08 00 00 00    	mov    $0x8,%r10d
    444d:	4c 3b 55 c0          	cmp    -0x40(%rbp),%r10
    4451:	62 51 24 48 c6 e3 f5 	vshufps $0xf5,%zmm11,%zmm11,%zmm12
    4458:	62 d1 24 48 c6 e3 a0 	vshufps $0xa0,%zmm11,%zmm11,%zmm4
    445f:	62 51 14 48 59 cc    	vmulps %zmm12,%zmm13,%zmm9
    4465:	62 d2 35 48 96 e6    	vfmaddsub132ps %zmm14,%zmm9,%zmm4
    446b:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
    4472:	c5 74 58 c4          	vaddps %ymm4,%ymm1,%ymm8
    4476:	c4 43 7d 19 c7 01    	vextractf128 $0x1,%ymm8,%xmm15
    447c:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4481:	c5 50 12 d6          	vmovhlps %xmm6,%xmm5,%xmm10
    4485:	62 f1 7c 8f 28 f6    	vmovaps %xmm6,%xmm6{%k7}{z}
    448b:	c5 a8 58 fe          	vaddps %xmm6,%xmm10,%xmm7
    448f:	62 f2 7d 89 8a fb    	vcompressps %xmm7,%xmm3{%k1}{z}
    4495:	c4 c1 7a 11 7d 00    	vmovss %xmm7,0x0(%r13)
    449b:	c4 c1 7a 11 5d 04    	vmovss %xmm3,0x4(%r13)
    44a1:	0f 84 0f ff ff ff    	je     43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    44a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    44ae:	00 00 
    44b0:	62 91 7c 48 28 04 d6 	vmovaps (%r14,%r10,8),%zmm0
    44b7:	4d 8d 5a 08          	lea    0x8(%r10),%r11
    44bb:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    44c2:	62 91 7c 48 28 3c de 	vmovaps (%r14,%r11,8),%zmm7
    44c9:	62 71 7c 48 c6 d8 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm11
    44d0:	62 f1 44 48 c6 df f5 	vshufps $0xf5,%zmm7,%zmm7,%zmm3
    44d7:	62 71 14 48 59 e2    	vmulps %zmm2,%zmm13,%zmm12
    44dd:	62 f1 14 48 59 d3    	vmulps %zmm3,%zmm13,%zmm2
    44e3:	62 f1 44 48 c6 c7 a0 	vshufps $0xa0,%zmm7,%zmm7,%zmm0
    44ea:	62 52 1d 48 96 de    	vfmaddsub132ps %zmm14,%zmm12,%zmm11
    44f0:	62 73 fd 48 1b dc 01 	vextractf64x4 $0x1,%zmm11,%ymm4
    44f7:	62 d2 6d 48 96 c6    	vfmaddsub132ps %zmm14,%zmm2,%zmm0
    44fd:	c4 41 5c 58 cb       	vaddps %ymm11,%ymm4,%ymm9
    4502:	62 d3 fd 48 1b c3 01 	vextractf64x4 $0x1,%zmm0,%ymm11
    4509:	c5 24 58 e0          	vaddps %ymm0,%ymm11,%ymm12
    450d:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
    4513:	c4 41 70 58 c1       	vaddps %xmm9,%xmm1,%xmm8
    4518:	c4 63 7d 19 e4 01    	vextractf128 $0x1,%ymm12,%xmm4
    451e:	c4 41 58 58 cc       	vaddps %xmm12,%xmm4,%xmm9
    4523:	c4 41 50 12 f8       	vmovhlps %xmm8,%xmm5,%xmm15
    4528:	62 51 7c 8f 28 c0    	vmovaps %xmm8,%xmm8{%k7}{z}
    452e:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4533:	c4 c1 50 12 c9       	vmovhlps %xmm9,%xmm5,%xmm1
    4538:	62 51 7c 8f 28 c9    	vmovaps %xmm9,%xmm9{%k7}{z}
    453e:	c4 41 70 58 c1       	vaddps %xmm9,%xmm1,%xmm8
    4543:	62 d2 7d 89 8a f2    	vcompressps %xmm6,%xmm10{%k1}{z}
    4549:	c4 81 7a 11 74 15 00 	vmovss %xmm6,0x0(%r13,%r10,1)
    4550:	c4 01 7a 11 54 15 04 	vmovss %xmm10,0x4(%r13,%r10,1)
    4557:	62 52 7d 89 8a c7    	vcompressps %xmm8,%xmm15{%k1}{z}
    455d:	c4 01 7a 11 44 15 08 	vmovss %xmm8,0x8(%r13,%r10,1)
    4564:	c4 01 7a 11 7c 15 0c 	vmovss %xmm15,0xc(%r13,%r10,1)
    456b:	49 83 c2 10          	add    $0x10,%r10
    456f:	4d 39 ca             	cmp    %r9,%r10
    4572:	0f 85 38 ff ff ff    	jne    44b0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x1f0>
    4578:	83 c3 01             	add    $0x1,%ebx
    457b:	39 5d cc             	cmp    %ebx,-0x34(%rbp)
    457e:	0f 85 3e fe ff ff    	jne    43c2 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x102>
    4584:	0f 1f 40 00          	nopl   0x0(%rax)
    4588:	c5 f8 77             	vzeroupper 
    458b:	c5 fb 10 45 98       	vmovsd -0x68(%rbp),%xmm0
    4590:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    4597:	5b                   	pop    %rbx
    4598:	41 5c                	pop    %r12
    459a:	41 5d                	pop    %r13
    459c:	41 5e                	pop    %r14
    459e:	41 5f                	pop    %r15
    45a0:	5d                   	pop    %rbp
    45a1:	49 8d 65 f0          	lea    -0x10(%r13),%rsp
    45a5:	41 5d                	pop    %r13
    45a7:	e9 d4 e6 ff ff       	jmpq   2c80 <_Z9timeSinced>
    45ac:	0f 1f 40 00          	nopl   0x0(%rax)
    45b0:	48 8d 3d 49 8f 20 00 	lea    0x208f49(%rip),%rdi        # 20d500 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    45b7:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    45bc:	c5 f8 77             	vzeroupper 
    45bf:	e8 9c d4 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    45c4:	85 c0                	test   %eax,%eax
    45c6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    45cb:	0f 84 31 fe ff ff    	je     4402 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x142>
    45d1:	48 8d 3d 28 8f 20 00 	lea    0x208f28(%rip),%rdi        # 20d500 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    45d8:	62 d1 7c 48 28 5f 03 	vmovaps 0xc0(%r15),%zmm3
    45df:	62 f1 7c 48 29 1d 57 	vmovaps %zmm3,0x208f57(%rip)        # 20d540 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    45e6:	8f 20 00 
    45e9:	c5 f8 77             	vzeroupper 
    45ec:	e8 0f d5 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    45f1:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    45f6:	e9 07 fe ff ff       	jmpq   4402 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x142>
    45fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4600:	48 8d 3d 79 8f 20 00 	lea    0x208f79(%rip),%rdi        # 20d580 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4607:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    460c:	c5 f8 77             	vzeroupper 
    460f:	e8 4c d4 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4614:	85 c0                	test   %eax,%eax
    4616:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    461b:	0f 84 d0 fd ff ff    	je     43f1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x131>
    4621:	48 8d 3d 58 8f 20 00 	lea    0x208f58(%rip),%rdi        # 20d580 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4628:	62 d1 7c 48 28 57 02 	vmovaps 0x80(%r15),%zmm2
    462f:	62 f1 7c 48 29 15 87 	vmovaps %zmm2,0x208f87(%rip)        # 20d5c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4636:	8f 20 00 
    4639:	c5 f8 77             	vzeroupper 
    463c:	e8 bf d4 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4641:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4646:	e9 a6 fd ff ff       	jmpq   43f1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x131>
    464b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4650:	48 8d 3d a9 8f 20 00 	lea    0x208fa9(%rip),%rdi        # 20d600 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4657:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    465c:	c5 f8 77             	vzeroupper 
    465f:	e8 fc d3 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4664:	85 c0                	test   %eax,%eax
    4666:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    466b:	0f 84 6f fd ff ff    	je     43e0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x120>
    4671:	48 8d 3d 88 8f 20 00 	lea    0x208f88(%rip),%rdi        # 20d600 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4678:	62 d1 7c 48 28 4f 01 	vmovaps 0x40(%r15),%zmm1
    467f:	62 f1 7c 48 29 0d b7 	vmovaps %zmm1,0x208fb7(%rip)        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4686:	8f 20 00 
    4689:	c5 f8 77             	vzeroupper 
    468c:	e8 6f d4 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4691:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4696:	e9 45 fd ff ff       	jmpq   43e0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x120>
    469b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    46a0:	48 8d 3d d9 8f 20 00 	lea    0x208fd9(%rip),%rdi        # 20d680 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    46a7:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    46ac:	c5 f8 77             	vzeroupper 
    46af:	e8 ac d3 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    46b4:	85 c0                	test   %eax,%eax
    46b6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    46bb:	0f 84 10 fd ff ff    	je     43d1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x111>
    46c1:	48 8d 3d b8 8f 20 00 	lea    0x208fb8(%rip),%rdi        # 20d680 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    46c8:	62 d1 7c 48 28 07    	vmovaps (%r15),%zmm0
    46ce:	62 f1 7c 48 29 05 e8 	vmovaps %zmm0,0x208fe8(%rip)        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    46d5:	8f 20 00 
    46d8:	c5 f8 77             	vzeroupper 
    46db:	e8 20 d4 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    46e0:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    46e5:	e9 e7 fc ff ff       	jmpq   43d1 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x111>
    46ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    46f0:	8b 55 a4             	mov    -0x5c(%rbp),%edx
    46f3:	85 d2                	test   %edx,%edx
    46f5:	0f 8e bb fc ff ff    	jle    43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    46fb:	4c 8b 5d a8          	mov    -0x58(%rbp),%r11
    46ff:	62 71 7c 48 28 35 37 	vmovaps 0x208f37(%rip),%zmm14        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4706:	8f 20 00 
    4709:	41 b9 03 00 00 00    	mov    $0x3,%r9d
    470f:	62 71 7c 48 28 2d a7 	vmovaps 0x208fa7(%rip),%zmm13        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4716:	8f 20 00 
    4719:	41 ba 02 00 00 00    	mov    $0x2,%r10d
    471f:	4c 89 f0             	mov    %r14,%rax
    4722:	4c 89 ee             	mov    %r13,%rsi
    4725:	62 51 0c 48 c6 de b1 	vshufps $0xb1,%zmm14,%zmm14,%zmm11
    472c:	c4 c1 79 92 e9       	kmovb  %r9d,%k5
    4731:	4c 89 df             	mov    %r11,%rdi
    4734:	62 51 14 48 c6 e5 b1 	vshufps $0xb1,%zmm13,%zmm13,%zmm12
    473b:	c4 c1 79 92 f2       	kmovb  %r10d,%k6
    4740:	4c 29 f7             	sub    %r14,%rdi
    4743:	81 e7 80 00 00 00    	and    $0x80,%edi
    4749:	0f 84 c1 00 00 00    	je     4810 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x550>
    474f:	62 d1 7c 48 28 76 01 	vmovaps 0x40(%r14),%zmm6
    4756:	49 8d 86 80 00 00 00 	lea    0x80(%r14),%rax
    475d:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
    4761:	62 d1 7c 48 28 06    	vmovaps (%r14),%zmm0
    4767:	49 8d 75 08          	lea    0x8(%r13),%rsi
    476b:	62 71 4c 48 c6 d6 f5 	vshufps $0xf5,%zmm6,%zmm6,%zmm10
    4772:	62 f1 4c 48 c6 e6 a0 	vshufps $0xa0,%zmm6,%zmm6,%zmm4
    4779:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    4780:	62 d1 24 48 59 ca    	vmulps %zmm10,%zmm11,%zmm1
    4786:	62 71 7c 48 c6 d0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm10
    478d:	62 d2 75 48 96 e6    	vfmaddsub132ps %zmm14,%zmm1,%zmm4
    4793:	62 f3 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm4,%ymm7
    479a:	c5 44 58 cc          	vaddps %ymm4,%ymm7,%ymm9
    479e:	62 f1 1c 48 59 e2    	vmulps %zmm2,%zmm12,%zmm4
    47a4:	c4 43 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm8
    47aa:	62 52 5d 48 96 d5    	vfmaddsub132ps %zmm13,%zmm4,%zmm10
    47b0:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
    47b7:	c4 41 38 58 f9       	vaddps %xmm9,%xmm8,%xmm15
    47bc:	c4 c1 74 58 fa       	vaddps %ymm10,%ymm1,%ymm7
    47c1:	62 d1 7c 8d 28 df    	vmovaps %xmm15,%xmm3{%k5}{z}
    47c7:	c4 c1 50 12 f7       	vmovhlps %xmm15,%xmm5,%xmm6
    47cc:	c4 c3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm9
    47d2:	c5 c8 58 f3          	vaddps %xmm3,%xmm6,%xmm6
    47d6:	c5 30 58 c7          	vaddps %xmm7,%xmm9,%xmm8
    47da:	c4 41 50 12 f8       	vmovhlps %xmm8,%xmm5,%xmm15
    47df:	62 51 7c 8d 28 c0    	vmovaps %xmm8,%xmm8{%k5}{z}
    47e5:	c4 c1 00 58 d8       	vaddps %xmm8,%xmm15,%xmm3
    47ea:	c5 c8 58 c3          	vaddps %xmm3,%xmm6,%xmm0
    47ee:	62 f2 7d 8e 8a c2    	vcompressps %xmm0,%xmm2{%k6}{z}
    47f4:	c4 c1 7a 11 45 00    	vmovss %xmm0,0x0(%r13)
    47fa:	c4 c1 7a 11 55 04    	vmovss %xmm2,0x4(%r13)
    4800:	0f 84 b0 fb ff ff    	je     43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    480d:	00 00 00 
    4810:	62 71 7c 48 28 50 01 	vmovaps 0x40(%rax),%zmm10
    4817:	48 05 00 01 00 00    	add    $0x100,%rax
    481d:	48 83 c6 10          	add    $0x10,%rsi
    4821:	62 f1 7c 48 28 40 fc 	vmovaps -0x100(%rax),%zmm0
    4828:	62 d1 2c 48 c6 e2 f5 	vshufps $0xf5,%zmm10,%zmm10,%zmm4
    482f:	62 d1 2c 48 c6 fa a0 	vshufps $0xa0,%zmm10,%zmm10,%zmm7
    4836:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    483d:	62 f1 24 48 59 cc    	vmulps %zmm4,%zmm11,%zmm1
    4843:	62 f1 7c 48 c6 e0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm4
    484a:	62 d2 75 48 96 fe    	vfmaddsub132ps %zmm14,%zmm1,%zmm7
    4850:	62 d3 fd 48 1b f9 01 	vextractf64x4 $0x1,%zmm7,%ymm9
    4857:	c5 34 58 c7          	vaddps %ymm7,%ymm9,%ymm8
    485b:	62 f1 1c 48 59 fa    	vmulps %zmm2,%zmm12,%zmm7
    4861:	c4 43 7d 19 c7 01    	vextractf128 $0x1,%ymm8,%xmm15
    4867:	62 d2 45 48 96 e5    	vfmaddsub132ps %zmm13,%zmm7,%zmm4
    486d:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
    4874:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4879:	c5 74 58 cc          	vaddps %ymm4,%ymm1,%ymm9
    487d:	62 f1 7c 48 28 60 ff 	vmovaps -0x40(%rax),%zmm4
    4884:	62 f1 5c 48 c6 fc f5 	vshufps $0xf5,%zmm4,%zmm4,%zmm7
    488b:	62 f1 7c 8d 28 de    	vmovaps %xmm6,%xmm3{%k5}{z}
    4891:	c5 50 12 d6          	vmovhlps %xmm6,%xmm5,%xmm10
    4895:	c4 43 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm8
    489b:	c5 28 58 d3          	vaddps %xmm3,%xmm10,%xmm10
    489f:	62 f1 24 48 59 cf    	vmulps %zmm7,%zmm11,%zmm1
    48a5:	c4 41 38 58 f9       	vaddps %xmm9,%xmm8,%xmm15
    48aa:	62 71 5c 48 c6 cc a0 	vshufps $0xa0,%zmm4,%zmm4,%zmm9
    48b1:	62 52 75 48 96 ce    	vfmaddsub132ps %zmm14,%zmm1,%zmm9
    48b7:	62 53 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm8
    48be:	c4 c1 50 12 f7       	vmovhlps %xmm15,%xmm5,%xmm6
    48c3:	62 51 7c 8d 28 ff    	vmovaps %xmm15,%xmm15{%k5}{z}
    48c9:	c4 c1 48 58 df       	vaddps %xmm15,%xmm6,%xmm3
    48ce:	c4 41 3c 58 f9       	vaddps %ymm9,%ymm8,%ymm15
    48d3:	c5 a8 58 c3          	vaddps %xmm3,%xmm10,%xmm0
    48d7:	c4 63 7d 19 fe 01    	vextractf128 $0x1,%ymm15,%xmm6
    48dd:	62 f2 7d 8e 8a c2    	vcompressps %xmm0,%xmm2{%k6}{z}
    48e3:	c5 fa 11 46 f0       	vmovss %xmm0,-0x10(%rsi)
    48e8:	62 f1 7c 48 28 40 fe 	vmovaps -0x80(%rax),%zmm0
    48ef:	c4 41 48 58 d7       	vaddps %xmm15,%xmm6,%xmm10
    48f4:	c5 fa 11 56 f4       	vmovss %xmm2,-0xc(%rsi)
    48f9:	62 f1 7c 48 c6 d0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm2
    4900:	62 f1 7c 48 c6 e0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm4
    4907:	62 71 1c 48 59 ca    	vmulps %zmm2,%zmm12,%zmm9
    490d:	62 d1 7c 8d 28 da    	vmovaps %xmm10,%xmm3{%k5}{z}
    4913:	c4 c1 50 12 fa       	vmovhlps %xmm10,%xmm5,%xmm7
    4918:	c5 c0 58 fb          	vaddps %xmm3,%xmm7,%xmm7
    491c:	62 d2 35 48 96 e5    	vfmaddsub132ps %zmm13,%zmm9,%zmm4
    4922:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
    4929:	c5 74 58 c4          	vaddps %ymm4,%ymm1,%ymm8
    492d:	c4 43 7d 19 c7 01    	vextractf128 $0x1,%ymm8,%xmm15
    4933:	c4 c1 00 58 f0       	vaddps %xmm8,%xmm15,%xmm6
    4938:	c5 50 12 d6          	vmovhlps %xmm6,%xmm5,%xmm10
    493c:	62 f1 7c 8d 28 f6    	vmovaps %xmm6,%xmm6{%k5}{z}
    4942:	c5 a8 58 de          	vaddps %xmm6,%xmm10,%xmm3
    4946:	c5 c0 58 c3          	vaddps %xmm3,%xmm7,%xmm0
    494a:	62 f2 7d 8e 8a c2    	vcompressps %xmm0,%xmm2{%k6}{z}
    4950:	c5 fa 11 46 f8       	vmovss %xmm0,-0x8(%rsi)
    4955:	c5 fa 11 56 fc       	vmovss %xmm2,-0x4(%rsi)
    495a:	49 39 c3             	cmp    %rax,%r11
    495d:	0f 85 ad fe ff ff    	jne    4810 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x550>
    4963:	e9 4e fa ff ff       	jmpq   43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    496f:	00 
    4970:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
    4974:	45 85 db             	test   %r11d,%r11d
    4977:	0f 8e 39 fa ff ff    	jle    43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    497d:	62 71 7c 48 28 1d b9 	vmovaps 0x208bb9(%rip),%zmm11        # 20d540 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    4984:	8b 20 00 
    4987:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    498b:	be 03 00 00 00       	mov    $0x3,%esi
    4990:	62 71 7c 48 28 35 26 	vmovaps 0x208c26(%rip),%zmm14        # 20d5c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4997:	8c 20 00 
    499a:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    49a0:	4c 89 f7             	mov    %r14,%rdi
    49a3:	62 71 7c 48 28 2d 93 	vmovaps 0x208c93(%rip),%zmm13        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    49aa:	8c 20 00 
    49ad:	62 41 24 48 c6 c3 b1 	vshufps $0xb1,%zmm11,%zmm11,%zmm24
    49b4:	c5 f9 92 de          	kmovb  %esi,%k3
    49b8:	62 71 7c 48 28 25 fe 	vmovaps 0x208cfe(%rip),%zmm12        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    49bf:	8c 20 00 
    49c2:	62 c1 0c 48 c6 fe b1 	vshufps $0xb1,%zmm14,%zmm14,%zmm23
    49c9:	c4 c1 79 92 e0       	kmovb  %r8d,%k4
    49ce:	62 c1 14 48 c6 f5 b1 	vshufps $0xb1,%zmm13,%zmm13,%zmm22
    49d5:	4c 89 e8             	mov    %r13,%rax
    49d8:	62 c1 1c 48 c6 ec b1 	vshufps $0xb1,%zmm12,%zmm12,%zmm21
    49df:	90                   	nop
    49e0:	62 f1 7c 48 28 5f 03 	vmovaps 0xc0(%rdi),%zmm3
    49e7:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    49ee:	48 83 c0 08          	add    $0x8,%rax
    49f2:	62 f1 7c 48 28 47 fe 	vmovaps -0x80(%rdi),%zmm0
    49f9:	62 f1 64 48 c6 cb f5 	vshufps $0xf5,%zmm3,%zmm3,%zmm1
    4a00:	62 71 64 48 c6 c3 a0 	vshufps $0xa0,%zmm3,%zmm3,%zmm8
    4a07:	62 f1 7c 48 c6 d8 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm3
    4a0e:	62 f1 3c 40 59 f9    	vmulps %zmm1,%zmm24,%zmm7
    4a14:	62 f1 44 40 59 cb    	vmulps %zmm3,%zmm23,%zmm1
    4a1a:	62 52 45 48 96 c3    	vfmaddsub132ps %zmm11,%zmm7,%zmm8
    4a20:	62 73 fd 48 1b c6 01 	vextractf64x4 $0x1,%zmm8,%ymm6
    4a27:	c4 c1 4c 58 e0       	vaddps %ymm8,%ymm6,%ymm4
    4a2c:	62 71 7c 48 c6 c0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm8
    4a33:	62 52 75 48 96 c6    	vfmaddsub132ps %zmm14,%zmm1,%zmm8
    4a39:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
    4a40:	c4 c3 7d 19 e2 01    	vextractf128 $0x1,%ymm4,%xmm10
    4a46:	c4 c1 44 58 f0       	vaddps %ymm8,%ymm7,%ymm6
    4a4b:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
    4a4f:	c4 e3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm4
    4a55:	62 d1 7c 8b 28 d1    	vmovaps %xmm9,%xmm2{%k3}{z}
    4a5b:	c4 41 50 12 f9       	vmovhlps %xmm9,%xmm5,%xmm15
    4a60:	62 71 7c 48 28 4f fd 	vmovaps -0xc0(%rdi),%zmm9
    4a67:	c5 58 58 d6          	vaddps %xmm6,%xmm4,%xmm10
    4a6b:	62 d1 34 48 c6 c9 f5 	vshufps $0xf5,%zmm9,%zmm9,%zmm1
    4a72:	62 d1 34 48 c6 c1 a0 	vshufps $0xa0,%zmm9,%zmm9,%zmm0
    4a79:	c5 00 58 fa          	vaddps %xmm2,%xmm15,%xmm15
    4a7d:	62 f1 4c 40 59 f9    	vmulps %zmm1,%zmm22,%zmm7
    4a83:	62 d1 7c 8b 28 da    	vmovaps %xmm10,%xmm3{%k3}{z}
    4a89:	c4 41 50 12 c2       	vmovhlps %xmm10,%xmm5,%xmm8
    4a8e:	c5 38 58 c3          	vaddps %xmm3,%xmm8,%xmm8
    4a92:	62 d2 45 48 96 c5    	vfmaddsub132ps %zmm13,%zmm7,%zmm0
    4a98:	62 f3 fd 48 1b c6 01 	vextractf64x4 $0x1,%zmm0,%ymm6
    4a9f:	c5 4c 58 d0          	vaddps %ymm0,%ymm6,%ymm10
    4aa3:	62 f1 7c 48 28 47 fc 	vmovaps -0x100(%rdi),%zmm0
    4aaa:	62 f1 7c 48 c6 f0 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm6
    4ab1:	c4 63 7d 19 d4 01    	vextractf128 $0x1,%ymm10,%xmm4
    4ab7:	c4 41 58 58 ca       	vaddps %xmm10,%xmm4,%xmm9
    4abc:	62 f1 54 40 59 e6    	vmulps %zmm6,%zmm21,%zmm4
    4ac2:	62 71 7c 48 c6 d0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm10
    4ac9:	62 d1 7c 8b 28 f9    	vmovaps %xmm9,%xmm7{%k3}{z}
    4acf:	62 52 5d 48 96 d4    	vfmaddsub132ps %zmm12,%zmm4,%zmm10
    4ad5:	c4 c1 50 12 c9       	vmovhlps %xmm9,%xmm5,%xmm1
    4ada:	62 53 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm9
    4ae1:	c5 f0 58 cf          	vaddps %xmm7,%xmm1,%xmm1
    4ae5:	c4 c1 34 58 c2       	vaddps %ymm10,%ymm9,%ymm0
    4aea:	c4 e3 7d 19 c6 01    	vextractf128 $0x1,%ymm0,%xmm6
    4af0:	c5 48 58 d0          	vaddps %xmm0,%xmm6,%xmm10
    4af4:	c4 c1 50 12 e2       	vmovhlps %xmm10,%xmm5,%xmm4
    4af9:	62 51 7c 8b 28 d2    	vmovaps %xmm10,%xmm10{%k3}{z}
    4aff:	c4 c1 58 58 fa       	vaddps %xmm10,%xmm4,%xmm7
    4b04:	c5 70 58 cf          	vaddps %xmm7,%xmm1,%xmm9
    4b08:	c4 c1 30 58 d8       	vaddps %xmm8,%xmm9,%xmm3
    4b0d:	c4 c1 60 58 d7       	vaddps %xmm15,%xmm3,%xmm2
    4b12:	62 f2 7d 8c 8a d0    	vcompressps %xmm2,%xmm0{%k4}{z}
    4b18:	c5 fa 11 50 f8       	vmovss %xmm2,-0x8(%rax)
    4b1d:	c5 fa 11 40 fc       	vmovss %xmm0,-0x4(%rax)
    4b22:	48 39 f9             	cmp    %rdi,%rcx
    4b25:	0f 85 b5 fe ff ff    	jne    49e0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x720>
    4b2b:	e9 86 f8 ff ff       	jmpq   43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4b30:	44 0f b6 15 48 89 20 	movzbl 0x208948(%rip),%r10d        # 20d480 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4b37:	00 
    4b38:	45 84 d2             	test   %r10b,%r10b
    4b3b:	0f 84 7f 03 00 00    	je     4ec0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xc00>
    4b41:	44 0f b6 1d b7 88 20 	movzbl 0x2088b7(%rip),%r11d        # 20d400 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4b48:	00 
    4b49:	45 84 db             	test   %r11b,%r11b
    4b4c:	0f 84 5e 04 00 00    	je     4fb0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xcf0>
    4b52:	0f b6 3d 27 88 20 00 	movzbl 0x208827(%rip),%edi        # 20d380 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4b59:	40 84 ff             	test   %dil,%dil
    4b5c:	0f 84 fe 03 00 00    	je     4f60 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xca0>
    4b62:	0f b6 05 97 87 20 00 	movzbl 0x208797(%rip),%eax        # 20d300 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4b69:	84 c0                	test   %al,%al
    4b6b:	0f 84 9f 03 00 00    	je     4f10 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xc50>
    4b71:	8b 75 8c             	mov    -0x74(%rbp),%esi
    4b74:	85 f6                	test   %esi,%esi
    4b76:	0f 8e 3a f8 ff ff    	jle    43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4b7c:	62 61 7c 48 28 05 ba 	vmovaps 0x2087ba(%rip),%zmm24        # 20d340 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4b83:	87 20 00 
    4b86:	4c 8b 55 80          	mov    -0x80(%rbp),%r10
    4b8a:	ba 03 00 00 00       	mov    $0x3,%edx
    4b8f:	62 e1 7c 48 28 3d 27 	vmovaps 0x208827(%rip),%zmm23        # 20d3c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4b96:	88 20 00 
    4b99:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    4b9f:	4d 89 f0             	mov    %r14,%r8
    4ba2:	62 e1 7c 48 28 35 94 	vmovaps 0x208894(%rip),%zmm22        # 20d440 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4ba9:	88 20 00 
    4bac:	62 01 3c 40 c6 f8 b1 	vshufps $0xb1,%zmm24,%zmm24,%zmm31
    4bb3:	c5 f9 92 ca          	kmovb  %edx,%k1
    4bb7:	62 e1 7c 48 28 2d ff 	vmovaps 0x2088ff(%rip),%zmm21        # 20d4c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4bbe:	88 20 00 
    4bc1:	62 21 44 40 c6 f7 b1 	vshufps $0xb1,%zmm23,%zmm23,%zmm30
    4bc8:	c4 c1 79 92 d1       	kmovb  %r9d,%k2
    4bcd:	62 e1 7c 48 28 25 69 	vmovaps 0x208969(%rip),%zmm20        # 20d540 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice4>
    4bd4:	89 20 00 
    4bd7:	62 21 4c 40 c6 ee b1 	vshufps $0xb1,%zmm22,%zmm22,%zmm29
    4bde:	62 e1 7c 48 28 1d d8 	vmovaps 0x2089d8(%rip),%zmm19        # 20d5c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice3>
    4be5:	89 20 00 
    4be8:	62 21 54 40 c6 e5 b1 	vshufps $0xb1,%zmm21,%zmm21,%zmm28
    4bef:	62 e1 7c 48 28 15 47 	vmovaps 0x208a47(%rip),%zmm18        # 20d640 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice2>
    4bf6:	8a 20 00 
    4bf9:	62 21 5c 40 c6 dc b1 	vshufps $0xb1,%zmm20,%zmm20,%zmm27
    4c00:	62 e1 7c 48 28 0d b6 	vmovaps 0x208ab6(%rip),%zmm17        # 20d6c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice1>
    4c07:	8a 20 00 
    4c0a:	62 21 64 40 c6 d3 b1 	vshufps $0xb1,%zmm19,%zmm19,%zmm26
    4c11:	62 21 6c 40 c6 ca b1 	vshufps $0xb1,%zmm18,%zmm18,%zmm25
    4c18:	4c 89 e9             	mov    %r13,%rcx
    4c1b:	62 b1 74 40 c6 d9 b1 	vshufps $0xb1,%zmm17,%zmm17,%zmm3
    4c22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4c28:	62 51 7c 48 28 40 07 	vmovaps 0x1c0(%r8),%zmm8
    4c2f:	62 a1 7c 00 57 c0    	vxorps %xmm16,%xmm16,%xmm16
    4c35:	62 d1 7c 48 28 40 06 	vmovaps 0x180(%r8),%zmm0
    4c3c:	49 81 c0 00 02 00 00 	add    $0x200,%r8
    4c43:	48 83 c1 08          	add    $0x8,%rcx
    4c47:	62 51 3c 48 c6 c8 f5 	vshufps $0xf5,%zmm8,%zmm8,%zmm9
    4c4e:	62 f1 7c 48 c6 c8 f5 	vshufps $0xf5,%zmm0,%zmm0,%zmm1
    4c55:	62 51 3c 48 c6 d0 a0 	vshufps $0xa0,%zmm8,%zmm8,%zmm10
    4c5c:	62 51 04 40 59 d9    	vmulps %zmm9,%zmm31,%zmm11
    4c62:	62 f1 0c 40 59 d1    	vmulps %zmm1,%zmm30,%zmm2
    4c68:	62 f1 7c 48 c6 e0 a0 	vshufps $0xa0,%zmm0,%zmm0,%zmm4
    4c6f:	62 12 25 48 96 d0    	vfmaddsub132ps %zmm24,%zmm11,%zmm10
    4c75:	62 53 fd 48 1b d4 01 	vextractf64x4 $0x1,%zmm10,%ymm12
    4c7c:	62 b2 6d 48 96 e7    	vfmaddsub132ps %zmm23,%zmm2,%zmm4
    4c82:	62 f3 fd 48 1b e6 01 	vextractf64x4 $0x1,%zmm4,%ymm6
    4c89:	c4 41 1c 58 ea       	vaddps %ymm10,%ymm12,%ymm13
    4c8e:	62 51 7c 48 28 60 fd 	vmovaps -0xc0(%r8),%zmm12
    4c95:	c5 cc 58 fc          	vaddps %ymm4,%ymm6,%ymm7
    4c99:	c4 43 7d 19 ee 01    	vextractf128 $0x1,%ymm13,%xmm14
    4c9f:	c4 c3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm8
    4ca5:	c4 41 08 58 fd       	vaddps %xmm13,%xmm14,%xmm15
    4caa:	62 51 1c 48 c6 ec f5 	vshufps $0xf5,%zmm12,%zmm12,%zmm13
    4cb1:	62 51 1c 48 c6 f4 a0 	vshufps $0xa0,%zmm12,%zmm12,%zmm14
    4cb8:	c5 38 58 df          	vaddps %xmm7,%xmm8,%xmm11
    4cbc:	62 d1 7c 48 28 78 fc 	vmovaps -0x100(%r8),%zmm7
    4cc3:	62 71 44 48 c6 c7 f5 	vshufps $0xf5,%zmm7,%zmm7,%zmm8
    4cca:	62 c1 7c 09 28 c7    	vmovaps %xmm15,%xmm16{%k1}
    4cd0:	c4 41 50 12 cf       	vmovhlps %xmm15,%xmm5,%xmm9
    4cd5:	62 51 14 40 59 fd    	vmulps %zmm13,%zmm29,%zmm15
    4cdb:	62 d1 7c 89 28 d3    	vmovaps %xmm11,%xmm2{%k1}{z}
    4ce1:	62 51 1c 40 59 e8    	vmulps %zmm8,%zmm28,%zmm13
    4ce7:	c4 41 50 12 d3       	vmovhlps %xmm11,%xmm5,%xmm10
    4cec:	62 e1 7c 08 29 45 fb 	vmovaps %xmm16,-0x50(%rbp)
    4cf3:	62 71 44 48 c6 e7 a0 	vshufps $0xa0,%zmm7,%zmm7,%zmm12
    4cfa:	62 32 05 48 96 f6    	vfmaddsub132ps %zmm22,%zmm15,%zmm14
    4d00:	62 73 fd 48 1b f0 01 	vextractf64x4 $0x1,%zmm14,%ymm0
    4d07:	c5 28 58 d2          	vaddps %xmm2,%xmm10,%xmm10
    4d0b:	62 32 15 48 96 e5    	vfmaddsub132ps %zmm21,%zmm13,%zmm12
    4d11:	62 d1 7c 48 28 78 fb 	vmovaps -0x140(%r8),%zmm7
    4d18:	c4 c1 7c 58 ce       	vaddps %ymm14,%ymm0,%ymm1
    4d1d:	62 53 fd 48 1b e6 01 	vextractf64x4 $0x1,%zmm12,%ymm14
    4d24:	62 71 44 48 c6 c7 f5 	vshufps $0xf5,%zmm7,%zmm7,%zmm8
    4d2b:	62 c1 7c 48 28 40 f8 	vmovaps -0x200(%r8),%zmm16
    4d32:	62 71 44 48 c6 ef a0 	vshufps $0xa0,%zmm7,%zmm7,%zmm13
    4d39:	c4 41 0c 58 fc       	vaddps %ymm12,%ymm14,%ymm15
    4d3e:	62 51 24 40 59 f0    	vmulps %zmm8,%zmm27,%zmm14
    4d44:	c5 30 58 4d b0       	vaddps -0x50(%rbp),%xmm9,%xmm9
    4d49:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
    4d4f:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
    4d55:	c5 d8 58 f1          	vaddps %xmm1,%xmm4,%xmm6
    4d59:	62 32 0d 48 96 ec    	vfmaddsub132ps %zmm20,%zmm14,%zmm13
    4d5f:	62 51 7c 48 28 70 fa 	vmovaps -0x180(%r8),%zmm14
    4d66:	c4 c1 78 58 cf       	vaddps %xmm15,%xmm0,%xmm1
    4d6b:	62 53 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm15
    4d72:	62 f1 7c 89 28 e6    	vmovaps %xmm6,%xmm4{%k1}{z}
    4d78:	c4 c1 04 58 c5       	vaddps %ymm13,%ymm15,%ymm0
    4d7d:	c5 50 12 de          	vmovhlps %xmm6,%xmm5,%xmm11
    4d81:	62 51 0c 48 c6 fe f5 	vshufps $0xf5,%zmm14,%zmm14,%zmm15
    4d88:	62 f1 7c 89 28 f1    	vmovaps %xmm1,%xmm6{%k1}{z}
    4d8e:	c5 50 12 e1          	vmovhlps %xmm1,%xmm5,%xmm12
    4d92:	c5 20 58 dc          	vaddps %xmm4,%xmm11,%xmm11
    4d96:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
    4d9c:	c5 18 58 e6          	vaddps %xmm6,%xmm12,%xmm12
    4da0:	c5 70 58 c0          	vaddps %xmm0,%xmm1,%xmm8
    4da4:	62 d1 2c 40 59 cf    	vmulps %zmm15,%zmm26,%zmm1
    4daa:	62 d1 0c 48 c6 c6 a0 	vshufps $0xa0,%zmm14,%zmm14,%zmm0
    4db1:	62 d1 7c 89 28 f8    	vmovaps %xmm8,%xmm7{%k1}{z}
    4db7:	62 b2 75 48 96 c3    	vfmaddsub132ps %zmm19,%zmm1,%zmm0
    4dbd:	c4 41 50 12 e8       	vmovhlps %xmm8,%xmm5,%xmm13
    4dc2:	62 d3 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm0,%ymm8
    4dc9:	c5 10 58 ef          	vaddps %xmm7,%xmm13,%xmm13
    4dcd:	c5 3c 58 f0          	vaddps %ymm0,%ymm8,%ymm14
    4dd1:	c4 43 7d 19 f7 01    	vextractf128 $0x1,%ymm14,%xmm15
    4dd7:	c4 c1 00 58 c6       	vaddps %xmm14,%xmm15,%xmm0
    4ddc:	62 51 7c 48 28 78 f9 	vmovaps -0x1c0(%r8),%zmm15
    4de3:	62 d1 04 48 c6 cf f5 	vshufps $0xf5,%zmm15,%zmm15,%zmm1
    4dea:	62 71 7c 89 28 c0    	vmovaps %xmm0,%xmm8{%k1}{z}
    4df0:	c5 50 12 f0          	vmovhlps %xmm0,%xmm5,%xmm14
    4df4:	62 d1 04 48 c6 c7 a0 	vshufps $0xa0,%zmm15,%zmm15,%zmm0
    4dfb:	62 71 34 40 59 f9    	vmulps %zmm1,%zmm25,%zmm15
    4e01:	c4 41 08 58 f0       	vaddps %xmm8,%xmm14,%xmm14
    4e06:	62 b2 05 48 96 c2    	vfmaddsub132ps %zmm18,%zmm15,%zmm0
    4e0c:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
    4e13:	c5 f4 58 c0          	vaddps %ymm0,%ymm1,%ymm0
    4e17:	62 b1 7c 40 c6 c8 f5 	vshufps $0xf5,%zmm16,%zmm16,%zmm1
    4e1e:	62 a1 7c 40 c6 c0 a0 	vshufps $0xa0,%zmm16,%zmm16,%zmm16
    4e25:	62 f1 64 48 59 c9    	vmulps %zmm1,%zmm3,%zmm1
    4e2b:	c4 c3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm15
    4e31:	62 b2 7d 40 b6 c9    	vfmaddsub231ps %zmm17,%zmm16,%zmm1
    4e37:	62 b3 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm1,%ymm16
    4e3e:	c5 80 58 c0          	vaddps %xmm0,%xmm15,%xmm0
    4e42:	62 f1 7c 20 58 c9    	vaddps %ymm1,%ymm16,%ymm1
    4e48:	c5 50 12 f8          	vmovhlps %xmm0,%xmm5,%xmm15
    4e4c:	62 f1 7c 89 28 c0    	vmovaps %xmm0,%xmm0{%k1}{z}
    4e52:	62 b3 7d 28 19 c8 01 	vextractf32x4 $0x1,%ymm1,%xmm16
    4e59:	c5 80 58 c0          	vaddps %xmm0,%xmm15,%xmm0
    4e5d:	62 f1 7c 00 58 c9    	vaddps %xmm1,%xmm16,%xmm1
    4e63:	62 e1 54 08 12 c1    	vmovhlps %xmm1,%xmm5,%xmm16
    4e69:	62 f1 7c 89 28 c9    	vmovaps %xmm1,%xmm1{%k1}{z}
    4e6f:	62 71 7c 00 58 f9    	vaddps %xmm1,%xmm16,%xmm15
    4e75:	c4 c1 78 58 cf       	vaddps %xmm15,%xmm0,%xmm1
    4e7a:	c4 41 70 58 c6       	vaddps %xmm14,%xmm1,%xmm8
    4e7f:	c4 c1 38 58 fd       	vaddps %xmm13,%xmm8,%xmm7
    4e84:	c4 c1 40 58 f4       	vaddps %xmm12,%xmm7,%xmm6
    4e89:	c4 c1 48 58 e3       	vaddps %xmm11,%xmm6,%xmm4
    4e8e:	c4 c1 58 58 d2       	vaddps %xmm10,%xmm4,%xmm2
    4e93:	c4 41 68 58 f9       	vaddps %xmm9,%xmm2,%xmm15
    4e98:	62 72 7d 8a 8a f8    	vcompressps %xmm15,%xmm0{%k2}{z}
    4e9e:	c5 7a 11 79 f8       	vmovss %xmm15,-0x8(%rcx)
    4ea3:	c5 fa 11 41 fc       	vmovss %xmm0,-0x4(%rcx)
    4ea8:	4d 39 c2             	cmp    %r8,%r10
    4eab:	0f 85 77 fd ff ff    	jne    4c28 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x968>
    4eb1:	e9 00 f5 ff ff       	jmpq   43b6 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0xf6>
    4eb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4ebd:	00 00 00 
    4ec0:	48 8d 3d b9 85 20 00 	lea    0x2085b9(%rip),%rdi        # 20d480 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4ec7:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    4ecc:	c5 f8 77             	vzeroupper 
    4ecf:	e8 8c cb ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4ed4:	85 c0                	test   %eax,%eax
    4ed6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4edb:	0f 84 60 fc ff ff    	je     4b41 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x881>
    4ee1:	48 8d 3d 98 85 20 00 	lea    0x208598(%rip),%rdi        # 20d480 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4ee8:	62 d1 7c 48 28 67 04 	vmovaps 0x100(%r15),%zmm4
    4eef:	62 f1 7c 48 29 25 c7 	vmovaps %zmm4,0x2085c7(%rip)        # 20d4c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice5>
    4ef6:	85 20 00 
    4ef9:	c5 f8 77             	vzeroupper 
    4efc:	e8 ff cb ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4f01:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4f06:	e9 36 fc ff ff       	jmpq   4b41 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x881>
    4f0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4f10:	48 8d 3d e9 83 20 00 	lea    0x2083e9(%rip),%rdi        # 20d300 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4f17:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    4f1c:	c5 f8 77             	vzeroupper 
    4f1f:	e8 3c cb ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4f24:	85 c0                	test   %eax,%eax
    4f26:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4f2b:	0f 84 40 fc ff ff    	je     4b71 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8b1>
    4f31:	48 8d 3d c8 83 20 00 	lea    0x2083c8(%rip),%rdi        # 20d300 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4f38:	62 d1 7c 48 28 7f 07 	vmovaps 0x1c0(%r15),%zmm7
    4f3f:	62 f1 7c 48 29 3d f7 	vmovaps %zmm7,0x2083f7(%rip)        # 20d340 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice8>
    4f46:	83 20 00 
    4f49:	c5 f8 77             	vzeroupper 
    4f4c:	e8 af cb ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4f51:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4f56:	e9 16 fc ff ff       	jmpq   4b71 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8b1>
    4f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4f60:	48 8d 3d 19 84 20 00 	lea    0x208419(%rip),%rdi        # 20d380 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4f67:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    4f6c:	c5 f8 77             	vzeroupper 
    4f6f:	e8 ec ca ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4f74:	85 c0                	test   %eax,%eax
    4f76:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4f7b:	0f 84 e1 fb ff ff    	je     4b62 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8a2>
    4f81:	48 8d 3d f8 83 20 00 	lea    0x2083f8(%rip),%rdi        # 20d380 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4f88:	62 d1 7c 48 28 77 06 	vmovaps 0x180(%r15),%zmm6
    4f8f:	62 f1 7c 48 29 35 27 	vmovaps %zmm6,0x208427(%rip)        # 20d3c0 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice7>
    4f96:	84 20 00 
    4f99:	c5 f8 77             	vzeroupper 
    4f9c:	e8 5f cb ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4fa1:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4fa6:	e9 b7 fb ff ff       	jmpq   4b62 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x8a2>
    4fab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4fb0:	48 8d 3d 49 84 20 00 	lea    0x208449(%rip),%rdi        # 20d400 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4fb7:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
    4fbc:	c5 f8 77             	vzeroupper 
    4fbf:	e8 9c ca ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    4fc4:	85 c0                	test   %eax,%eax
    4fc6:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4fcb:	0f 84 81 fb ff ff    	je     4b52 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x892>
    4fd1:	48 8d 3d 28 84 20 00 	lea    0x208428(%rip),%rdi        # 20d400 <_ZGVZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4fd8:	62 d1 7c 48 28 6f 05 	vmovaps 0x140(%r15),%zmm5
    4fdf:	62 f1 7c 48 29 2d 57 	vmovaps %zmm5,0x208457(%rip)        # 20d440 <_ZZL9matmulVCLPK13Complex_floatiiS1_PS_E7bSlice6>
    4fe6:	84 20 00 
    4fe9:	c5 f8 77             	vzeroupper 
    4fec:	e8 0f cb ff ff       	callq  1b00 <__cxa_guard_release@plt>
    4ff1:	c5 f8 28 6d b0       	vmovaps -0x50(%rbp),%xmm5
    4ff6:	e9 57 fb ff ff       	jmpq   4b52 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i+0x892>
    4ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000005000 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati>:
    5000:	85 d2                	test   %edx,%edx
    5002:	0f 8e 85 05 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5008:	8d 42 ff             	lea    -0x1(%rdx),%eax
    500b:	83 f8 0e             	cmp    $0xe,%eax
    500e:	0f 86 cc 05 00 00    	jbe    55e0 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x5e0>
    5014:	62 f1 ff 48 6f 07    	vmovdqu16 (%rdi),%zmm0
    501a:	41 89 d2             	mov    %edx,%r10d
    501d:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5023:	41 c1 ea 04          	shr    $0x4,%r10d
    5027:	48 8d 4f 40          	lea    0x40(%rdi),%rcx
    502b:	4c 8d 9e 80 00 00 00 	lea    0x80(%rsi),%r11
    5032:	62 f3 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm0,%ymm3
    5039:	45 8d 4a ff          	lea    -0x1(%r10),%r9d
    503d:	62 f2 7d 48 23 c8    	vpmovsxwd %ymm0,%zmm1
    5043:	41 83 e1 03          	and    $0x3,%r9d
    5047:	45 39 d0             	cmp    %r10d,%r8d
    504a:	62 f2 7d 48 23 e3    	vpmovsxwd %ymm3,%zmm4
    5050:	62 f1 7c 48 5b d1    	vcvtdq2ps %zmm1,%zmm2
    5056:	62 f1 7c 48 11 16    	vmovups %zmm2,(%rsi)
    505c:	62 f1 7c 48 5b ec    	vcvtdq2ps %zmm4,%zmm5
    5062:	62 f1 7c 48 11 6e 01 	vmovups %zmm5,0x40(%rsi)
    5069:	0f 83 8a 01 00 00    	jae    51f9 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x1f9>
    506f:	45 85 c9             	test   %r9d,%r9d
    5072:	0f 84 97 00 00 00    	je     510f <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x10f>
    5078:	41 83 f9 01          	cmp    $0x1,%r9d
    507c:	74 49                	je     50c7 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0xc7>
    507e:	41 83 f9 02          	cmp    $0x2,%r9d
    5082:	0f 85 08 05 00 00    	jne    5590 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x590>
    5088:	62 71 ff 48 6f 21    	vmovdqu16 (%rcx),%zmm12
    508e:	41 83 c0 01          	add    $0x1,%r8d
    5092:	48 83 c1 40          	add    $0x40,%rcx
    5096:	49 83 eb 80          	sub    $0xffffffffffffff80,%r11
    509a:	62 53 fd 48 3b e7 01 	vextracti64x4 $0x1,%zmm12,%ymm15
    50a1:	62 52 7d 48 23 ec    	vpmovsxwd %ymm12,%zmm13
    50a7:	62 51 7c 48 5b f5    	vcvtdq2ps %zmm13,%zmm14
    50ad:	62 51 7c 48 11 73 fe 	vmovups %zmm14,-0x80(%r11)
    50b4:	62 d2 7d 48 23 c7    	vpmovsxwd %ymm15,%zmm0
    50ba:	62 f1 7c 48 5b c8    	vcvtdq2ps %zmm0,%zmm1
    50c0:	62 d1 7c 48 11 4b ff 	vmovups %zmm1,-0x40(%r11)
    50c7:	62 f1 ff 48 6f 11    	vmovdqu16 (%rcx),%zmm2
    50cd:	41 83 c0 01          	add    $0x1,%r8d
    50d1:	48 83 c1 40          	add    $0x40,%rcx
    50d5:	49 83 eb 80          	sub    $0xffffffffffffff80,%r11
    50d9:	62 f3 fd 48 3b d5 01 	vextracti64x4 $0x1,%zmm2,%ymm5
    50e0:	62 f2 7d 48 23 da    	vpmovsxwd %ymm2,%zmm3
    50e6:	62 f1 7c 48 5b e3    	vcvtdq2ps %zmm3,%zmm4
    50ec:	62 d1 7c 48 11 63 fe 	vmovups %zmm4,-0x80(%r11)
    50f3:	62 f2 7d 48 23 f5    	vpmovsxwd %ymm5,%zmm6
    50f9:	62 f1 7c 48 5b fe    	vcvtdq2ps %zmm6,%zmm7
    50ff:	62 d1 7c 48 11 7b ff 	vmovups %zmm7,-0x40(%r11)
    5106:	45 39 d0             	cmp    %r10d,%r8d
    5109:	0f 83 ea 00 00 00    	jae    51f9 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x1f9>
    510f:	62 71 ff 48 6f 01    	vmovdqu16 (%rcx),%zmm8
    5115:	41 83 c0 04          	add    $0x4,%r8d
    5119:	48 81 c1 00 01 00 00 	add    $0x100,%rcx
    5120:	62 71 ff 48 6f 71 fd 	vmovdqu16 -0xc0(%rcx),%zmm14
    5127:	49 81 c3 00 02 00 00 	add    $0x200,%r11
    512e:	62 53 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm11
    5135:	62 52 7d 48 23 c8    	vpmovsxwd %ymm8,%zmm9
    513b:	62 f1 ff 48 6f 61 fe 	vmovdqu16 -0x80(%rcx),%zmm4
    5142:	62 73 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm14,%ymm1
    5149:	62 52 7d 48 23 fe    	vpmovsxwd %ymm14,%zmm15
    514f:	62 51 7c 48 5b d1    	vcvtdq2ps %zmm9,%zmm10
    5155:	62 51 7c 48 11 53 f8 	vmovups %zmm10,-0x200(%r11)
    515c:	62 f3 fd 48 3b e7 01 	vextracti64x4 $0x1,%zmm4,%ymm7
    5163:	62 71 ff 48 6f 51 ff 	vmovdqu16 -0x40(%rcx),%zmm10
    516a:	62 52 7d 48 23 e3    	vpmovsxwd %ymm11,%zmm12
    5170:	62 f2 7d 48 23 ec    	vpmovsxwd %ymm4,%zmm5
    5176:	62 f2 7d 48 23 d1    	vpmovsxwd %ymm1,%zmm2
    517c:	62 d1 7c 48 5b c7    	vcvtdq2ps %zmm15,%zmm0
    5182:	62 d1 7c 48 11 43 fa 	vmovups %zmm0,-0x180(%r11)
    5189:	62 51 7c 48 5b ec    	vcvtdq2ps %zmm12,%zmm13
    518f:	62 51 7c 48 11 6b f9 	vmovups %zmm13,-0x1c0(%r11)
    5196:	62 53 fd 48 3b d5 01 	vextracti64x4 $0x1,%zmm10,%ymm13
    519d:	62 72 7d 48 23 c7    	vpmovsxwd %ymm7,%zmm8
    51a3:	62 52 7d 48 23 da    	vpmovsxwd %ymm10,%zmm11
    51a9:	62 f1 7c 48 5b da    	vcvtdq2ps %zmm2,%zmm3
    51af:	62 f1 7c 48 5b f5    	vcvtdq2ps %zmm5,%zmm6
    51b5:	62 d1 7c 48 11 5b fb 	vmovups %zmm3,-0x140(%r11)
    51bc:	62 52 7d 48 23 f5    	vpmovsxwd %ymm13,%zmm14
    51c2:	62 d1 7c 48 11 73 fc 	vmovups %zmm6,-0x100(%r11)
    51c9:	62 51 7c 48 5b c8    	vcvtdq2ps %zmm8,%zmm9
    51cf:	62 51 7c 48 5b e3    	vcvtdq2ps %zmm11,%zmm12
    51d5:	62 51 7c 48 11 4b fd 	vmovups %zmm9,-0xc0(%r11)
    51dc:	62 51 7c 48 11 63 fe 	vmovups %zmm12,-0x80(%r11)
    51e3:	62 51 7c 48 5b fe    	vcvtdq2ps %zmm14,%zmm15
    51e9:	62 51 7c 48 11 7b ff 	vmovups %zmm15,-0x40(%r11)
    51f0:	45 39 d0             	cmp    %r10d,%r8d
    51f3:	0f 82 16 ff ff ff    	jb     510f <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x10f>
    51f9:	89 d0                	mov    %edx,%eax
    51fb:	83 e0 f0             	and    $0xfffffff0,%eax
    51fe:	39 c2                	cmp    %eax,%edx
    5200:	0f 84 ea 03 00 00    	je     55f0 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x5f0>
    5206:	c5 f8 77             	vzeroupper 
    5209:	4c 63 d0             	movslq %eax,%r10
    520c:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    5210:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    5214:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    5218:	44 8d 50 01          	lea    0x1(%rax),%r10d
    521c:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    5220:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5225:	41 0f bf 09          	movswl (%r9),%ecx
    5229:	44 39 d2             	cmp    %r10d,%edx
    522c:	c4 c1 7a 2a c0       	vcvtsi2ss %r8d,%xmm0,%xmm0
    5231:	c5 f2 2a c9          	vcvtsi2ss %ecx,%xmm1,%xmm1
    5235:	c4 c1 7a 11 43 04    	vmovss %xmm0,0x4(%r11)
    523b:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    5240:	0f 8e 47 03 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5246:	4d 63 da             	movslq %r10d,%r11
    5249:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    524d:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5251:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    5255:	44 8d 58 02          	lea    0x2(%rax),%r11d
    5259:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    525d:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5262:	41 0f bf 09          	movswl (%r9),%ecx
    5266:	44 39 da             	cmp    %r11d,%edx
    5269:	c4 c1 6a 2a d0       	vcvtsi2ss %r8d,%xmm2,%xmm2
    526e:	c5 e2 2a d9          	vcvtsi2ss %ecx,%xmm3,%xmm3
    5272:	c4 c1 7a 11 52 04    	vmovss %xmm2,0x4(%r10)
    5278:	c4 c1 7a 11 1a       	vmovss %xmm3,(%r10)
    527d:	0f 8e 0a 03 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5283:	4d 63 d3             	movslq %r11d,%r10
    5286:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    528a:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    528e:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    5292:	44 8d 50 03          	lea    0x3(%rax),%r10d
    5296:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    529a:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    529f:	41 0f bf 09          	movswl (%r9),%ecx
    52a3:	44 39 d2             	cmp    %r10d,%edx
    52a6:	c4 c1 5a 2a e0       	vcvtsi2ss %r8d,%xmm4,%xmm4
    52ab:	c5 d2 2a e9          	vcvtsi2ss %ecx,%xmm5,%xmm5
    52af:	c4 c1 7a 11 63 04    	vmovss %xmm4,0x4(%r11)
    52b5:	c4 c1 7a 11 2b       	vmovss %xmm5,(%r11)
    52ba:	0f 8e cd 02 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    52c0:	4d 63 da             	movslq %r10d,%r11
    52c3:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    52c7:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    52cb:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    52cf:	44 8d 58 04          	lea    0x4(%rax),%r11d
    52d3:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
    52d7:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    52dc:	41 0f bf 09          	movswl (%r9),%ecx
    52e0:	44 39 da             	cmp    %r11d,%edx
    52e3:	c4 c1 4a 2a f0       	vcvtsi2ss %r8d,%xmm6,%xmm6
    52e8:	c5 c2 2a f9          	vcvtsi2ss %ecx,%xmm7,%xmm7
    52ec:	c4 c1 7a 11 72 04    	vmovss %xmm6,0x4(%r10)
    52f2:	c4 c1 7a 11 3a       	vmovss %xmm7,(%r10)
    52f7:	0f 8e 90 02 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    52fd:	4d 63 d3             	movslq %r11d,%r10
    5300:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    5305:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    5309:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    530d:	44 8d 50 05          	lea    0x5(%rax),%r10d
    5311:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    5316:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    531b:	41 0f bf 09          	movswl (%r9),%ecx
    531f:	44 39 d2             	cmp    %r10d,%edx
    5322:	c4 41 3a 2a c0       	vcvtsi2ss %r8d,%xmm8,%xmm8
    5327:	c5 32 2a c9          	vcvtsi2ss %ecx,%xmm9,%xmm9
    532b:	c4 41 7a 11 43 04    	vmovss %xmm8,0x4(%r11)
    5331:	c4 41 7a 11 0b       	vmovss %xmm9,(%r11)
    5336:	0f 8e 51 02 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    533c:	4d 63 da             	movslq %r10d,%r11
    533f:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    5344:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5348:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    534c:	44 8d 58 06          	lea    0x6(%rax),%r11d
    5350:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    5355:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    535a:	41 0f bf 09          	movswl (%r9),%ecx
    535e:	44 39 da             	cmp    %r11d,%edx
    5361:	c4 41 2a 2a d0       	vcvtsi2ss %r8d,%xmm10,%xmm10
    5366:	c5 22 2a d9          	vcvtsi2ss %ecx,%xmm11,%xmm11
    536a:	c4 41 7a 11 52 04    	vmovss %xmm10,0x4(%r10)
    5370:	c4 41 7a 11 1a       	vmovss %xmm11,(%r10)
    5375:	0f 8e 12 02 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    537b:	4d 63 d3             	movslq %r11d,%r10
    537e:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    5383:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    5387:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    538b:	44 8d 50 07          	lea    0x7(%rax),%r10d
    538f:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    5394:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5399:	41 0f bf 09          	movswl (%r9),%ecx
    539d:	44 39 d2             	cmp    %r10d,%edx
    53a0:	c4 41 1a 2a e0       	vcvtsi2ss %r8d,%xmm12,%xmm12
    53a5:	c5 12 2a e9          	vcvtsi2ss %ecx,%xmm13,%xmm13
    53a9:	c4 41 7a 11 63 04    	vmovss %xmm12,0x4(%r11)
    53af:	c4 41 7a 11 2b       	vmovss %xmm13,(%r11)
    53b4:	0f 8e d3 01 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    53ba:	4d 63 da             	movslq %r10d,%r11
    53bd:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
    53c2:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    53c6:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    53ca:	44 8d 58 08          	lea    0x8(%rax),%r11d
    53ce:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
    53d3:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    53d8:	41 0f bf 09          	movswl (%r9),%ecx
    53dc:	44 39 da             	cmp    %r11d,%edx
    53df:	c4 41 0a 2a f0       	vcvtsi2ss %r8d,%xmm14,%xmm14
    53e4:	c5 02 2a f9          	vcvtsi2ss %ecx,%xmm15,%xmm15
    53e8:	c4 41 7a 11 72 04    	vmovss %xmm14,0x4(%r10)
    53ee:	c4 41 7a 11 3a       	vmovss %xmm15,(%r10)
    53f3:	0f 8e 94 01 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    53f9:	4d 63 d3             	movslq %r11d,%r10
    53fc:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    5400:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    5404:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    5408:	44 8d 50 09          	lea    0x9(%rax),%r10d
    540c:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    5410:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5415:	41 0f bf 09          	movswl (%r9),%ecx
    5419:	44 39 d2             	cmp    %r10d,%edx
    541c:	c4 c1 7a 2a c0       	vcvtsi2ss %r8d,%xmm0,%xmm0
    5421:	c5 f2 2a c9          	vcvtsi2ss %ecx,%xmm1,%xmm1
    5425:	c4 c1 7a 11 43 04    	vmovss %xmm0,0x4(%r11)
    542b:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    5430:	0f 8e 57 01 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5436:	4d 63 da             	movslq %r10d,%r11
    5439:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    543d:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5441:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    5445:	44 8d 58 0a          	lea    0xa(%rax),%r11d
    5449:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    544d:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5452:	41 0f bf 09          	movswl (%r9),%ecx
    5456:	44 39 da             	cmp    %r11d,%edx
    5459:	c4 c1 6a 2a d0       	vcvtsi2ss %r8d,%xmm2,%xmm2
    545e:	c5 e2 2a d9          	vcvtsi2ss %ecx,%xmm3,%xmm3
    5462:	c4 c1 7a 11 52 04    	vmovss %xmm2,0x4(%r10)
    5468:	c4 c1 7a 11 1a       	vmovss %xmm3,(%r10)
    546d:	0f 8e 1a 01 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5473:	4d 63 d3             	movslq %r11d,%r10
    5476:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    547a:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    547e:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    5482:	44 8d 50 0b          	lea    0xb(%rax),%r10d
    5486:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    548a:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    548f:	41 0f bf 09          	movswl (%r9),%ecx
    5493:	44 39 d2             	cmp    %r10d,%edx
    5496:	c4 c1 5a 2a e0       	vcvtsi2ss %r8d,%xmm4,%xmm4
    549b:	c5 d2 2a e9          	vcvtsi2ss %ecx,%xmm5,%xmm5
    549f:	c4 c1 7a 11 63 04    	vmovss %xmm4,0x4(%r11)
    54a5:	c4 c1 7a 11 2b       	vmovss %xmm5,(%r11)
    54aa:	0f 8e dd 00 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    54b0:	4d 63 da             	movslq %r10d,%r11
    54b3:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    54b7:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    54bb:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    54bf:	44 8d 58 0c          	lea    0xc(%rax),%r11d
    54c3:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
    54c7:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    54cc:	41 0f bf 09          	movswl (%r9),%ecx
    54d0:	44 39 da             	cmp    %r11d,%edx
    54d3:	c4 c1 4a 2a f0       	vcvtsi2ss %r8d,%xmm6,%xmm6
    54d8:	c5 c2 2a f9          	vcvtsi2ss %ecx,%xmm7,%xmm7
    54dc:	c4 c1 7a 11 72 04    	vmovss %xmm6,0x4(%r10)
    54e2:	c4 c1 7a 11 3a       	vmovss %xmm7,(%r10)
    54e7:	0f 8e a0 00 00 00    	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    54ed:	4d 63 d3             	movslq %r11d,%r10
    54f0:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    54f5:	4e 8d 0c 97          	lea    (%rdi,%r10,4),%r9
    54f9:	4e 8d 1c d6          	lea    (%rsi,%r10,8),%r11
    54fd:	44 8d 50 0d          	lea    0xd(%rax),%r10d
    5501:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    5506:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    550b:	41 0f bf 09          	movswl (%r9),%ecx
    550f:	44 39 d2             	cmp    %r10d,%edx
    5512:	c4 41 3a 2a c0       	vcvtsi2ss %r8d,%xmm8,%xmm8
    5517:	c5 32 2a c9          	vcvtsi2ss %ecx,%xmm9,%xmm9
    551b:	c4 41 7a 11 43 04    	vmovss %xmm8,0x4(%r11)
    5521:	c4 41 7a 11 0b       	vmovss %xmm9,(%r11)
    5526:	7e 65                	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5528:	4d 63 da             	movslq %r10d,%r11
    552b:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    5530:	4e 8d 0c 9f          	lea    (%rdi,%r11,4),%r9
    5534:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    5539:	4e 8d 14 de          	lea    (%rsi,%r11,8),%r10
    553d:	83 c0 0e             	add    $0xe,%eax
    5540:	45 0f bf 41 02       	movswl 0x2(%r9),%r8d
    5545:	41 0f bf 09          	movswl (%r9),%ecx
    5549:	39 c2                	cmp    %eax,%edx
    554b:	c4 41 2a 2a d0       	vcvtsi2ss %r8d,%xmm10,%xmm10
    5550:	c5 22 2a d9          	vcvtsi2ss %ecx,%xmm11,%xmm11
    5554:	c4 41 7a 11 52 04    	vmovss %xmm10,0x4(%r10)
    555a:	c4 41 7a 11 1a       	vmovss %xmm11,(%r10)
    555f:	7e 2c                	jle    558d <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x58d>
    5561:	48 98                	cltq   
    5563:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    5568:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
    556c:	48 8d 34 c6          	lea    (%rsi,%rax,8),%rsi
    5570:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    5575:	0f bf 57 02          	movswl 0x2(%rdi),%edx
    5579:	0f bf 07             	movswl (%rdi),%eax
    557c:	c5 1a 2a e2          	vcvtsi2ss %edx,%xmm12,%xmm12
    5580:	c5 12 2a e8          	vcvtsi2ss %eax,%xmm13,%xmm13
    5584:	c5 7a 11 66 04       	vmovss %xmm12,0x4(%rsi)
    5589:	c5 7a 11 2e          	vmovss %xmm13,(%rsi)
    558d:	f3 c3                	repz retq 
    558f:	90                   	nop
    5590:	62 f1 ff 48 6f 31    	vmovdqu16 (%rcx),%zmm6
    5596:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    559c:	48 8d 8f 80 00 00 00 	lea    0x80(%rdi),%rcx
    55a3:	62 d3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm9
    55aa:	62 f2 7d 48 23 fe    	vpmovsxwd %ymm6,%zmm7
    55b0:	62 71 7c 48 5b c7    	vcvtdq2ps %zmm7,%zmm8
    55b6:	62 51 7c 48 11 03    	vmovups %zmm8,(%r11)
    55bc:	62 52 7d 48 23 d1    	vpmovsxwd %ymm9,%zmm10
    55c2:	62 51 7c 48 5b da    	vcvtdq2ps %zmm10,%zmm11
    55c8:	62 51 7c 48 11 5b 01 	vmovups %zmm11,0x40(%r11)
    55cf:	4c 8d 9e 00 01 00 00 	lea    0x100(%rsi),%r11
    55d6:	e9 ad fa ff ff       	jmpq   5088 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x88>
    55db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    55e0:	31 c0                	xor    %eax,%eax
    55e2:	e9 22 fc ff ff       	jmpq   5209 <_Z18int16MatrixToFloatPK13Complex_int16P13Complex_floati+0x209>
    55e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    55ee:	00 00 
    55f0:	c5 f8 77             	vzeroupper 
    55f3:	c3                   	retq   
    55f4:	66 90                	xchg   %ax,%ax
    55f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    55fd:	00 00 00 

0000000000005600 <_Z11printVectorSt6vectorIdSaIdEE>:
    5600:	41 54                	push   %r12
    5602:	55                   	push   %rbp
    5603:	53                   	push   %rbx
    5604:	48 8b 17             	mov    (%rdi),%rdx
    5607:	48 3b 57 08          	cmp    0x8(%rdi),%rdx
    560b:	74 4c                	je     5659 <_Z11printVectorSt6vectorIdSaIdEE+0x59>
    560d:	4c 8d 25 6c 7a 20 00 	lea    0x207a6c(%rip),%r12        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5614:	48 89 fd             	mov    %rdi,%rbp
    5617:	31 db                	xor    %ebx,%ebx
    5619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5620:	c5 fb 10 04 da       	vmovsd (%rdx,%rbx,8),%xmm0
    5625:	4c 89 e7             	mov    %r12,%rdi
    5628:	48 83 c3 01          	add    $0x1,%rbx
    562c:	e8 1f c5 ff ff       	callq  1b50 <_ZNSo9_M_insertIdEERSoT_@plt>
    5631:	48 8d 35 98 56 00 00 	lea    0x5698(%rip),%rsi        # acd0 <_IO_stdin_used+0x10>
    5638:	ba 01 00 00 00       	mov    $0x1,%edx
    563d:	48 89 c7             	mov    %rax,%rdi
    5640:	e8 6b c5 ff ff       	callq  1bb0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    5645:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    5649:	48 8b 45 08          	mov    0x8(%rbp),%rax
    564d:	48 29 d0             	sub    %rdx,%rax
    5650:	48 c1 f8 03          	sar    $0x3,%rax
    5654:	48 39 d8             	cmp    %rbx,%rax
    5657:	77 c7                	ja     5620 <_Z11printVectorSt6vectorIdSaIdEE+0x20>
    5659:	48 8b 0d 20 7a 20 00 	mov    0x207a20(%rip),%rcx        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5660:	48 8d 3d 19 7a 20 00 	lea    0x207a19(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5667:	48 8b 71 e8          	mov    -0x18(%rcx),%rsi
    566b:	48 8b ac 37 f0 00 00 	mov    0xf0(%rdi,%rsi,1),%rbp
    5672:	00 
    5673:	48 85 ed             	test   %rbp,%rbp
    5676:	74 53                	je     56cb <_Z11printVectorSt6vectorIdSaIdEE+0xcb>
    5678:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
    567c:	74 22                	je     56a0 <_Z11printVectorSt6vectorIdSaIdEE+0xa0>
    567e:	0f be 75 43          	movsbl 0x43(%rbp),%esi
    5682:	48 8d 3d f7 79 20 00 	lea    0x2079f7(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    5689:	e8 62 c4 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    568e:	5b                   	pop    %rbx
    568f:	5d                   	pop    %rbp
    5690:	41 5c                	pop    %r12
    5692:	48 89 c7             	mov    %rax,%rdi
    5695:	e9 16 c4 ff ff       	jmpq   1ab0 <_ZNSo5flushEv@plt>
    569a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    56a0:	48 89 ef             	mov    %rbp,%rdi
    56a3:	e8 f8 c3 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    56a8:	4c 8b 45 00          	mov    0x0(%rbp),%r8
    56ac:	4c 8d 0d 5d d5 ff ff 	lea    -0x2aa3(%rip),%r9        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    56b3:	be 0a 00 00 00       	mov    $0xa,%esi
    56b8:	49 8b 58 30          	mov    0x30(%r8),%rbx
    56bc:	4c 39 cb             	cmp    %r9,%rbx
    56bf:	74 c1                	je     5682 <_Z11printVectorSt6vectorIdSaIdEE+0x82>
    56c1:	48 89 ef             	mov    %rbp,%rdi
    56c4:	ff d3                	callq  *%rbx
    56c6:	0f be f0             	movsbl %al,%esi
    56c9:	eb b7                	jmp    5682 <_Z11printVectorSt6vectorIdSaIdEE+0x82>
    56cb:	e8 70 c3 ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>

00000000000056d0 <_Z8newBenchv>:
    56d0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    56d5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    56d9:	62 51 15 48 ef ed    	vpxord %zmm13,%zmm13,%zmm13
    56df:	41 ff 72 f8          	pushq  -0x8(%r10)
    56e3:	55                   	push   %rbp
    56e4:	48 89 e5             	mov    %rsp,%rbp
    56e7:	41 57                	push   %r15
    56e9:	41 56                	push   %r14
    56eb:	41 55                	push   %r13
    56ed:	41 54                	push   %r12
    56ef:	41 52                	push   %r10
    56f1:	53                   	push   %rbx
    56f2:	48 81 ec c0 02 00 00 	sub    $0x2c0,%rsp
    56f9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5700:	00 00 
    5702:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    5706:	31 c0                	xor    %eax,%eax
    5708:	b8 40 04 00 00       	mov    $0x440,%eax
    570d:	62 f1 fd 48 6f 25 29 	vmovdqa64 0x5e29(%rip),%zmm4        # b540 <_ZL5temp0+0x60>
    5714:	5e 00 00 
    5717:	48 29 c4             	sub    %rax,%rsp
    571a:	62 f1 fd 48 6f 1d 5c 	vmovdqa64 0x5e5c(%rip),%zmm3        # b580 <_ZL5temp0+0xa0>
    5721:	5e 00 00 
    5724:	48 8d 7c 24 3f       	lea    0x3f(%rsp),%rdi
    5729:	62 f1 fd 48 6f 15 8d 	vmovdqa64 0x5e8d(%rip),%zmm2        # b5c0 <_ZL5temp0+0xe0>
    5730:	5e 00 00 
    5733:	48 29 c4             	sub    %rax,%rsp
    5736:	62 f1 fd 48 6f 0d c0 	vmovdqa64 0x5ec0(%rip),%zmm1        # b600 <_ZL5temp0+0x120>
    573d:	5e 00 00 
    5740:	48 8d 5c 24 3f       	lea    0x3f(%rsp),%rbx
    5745:	62 f1 fd 48 6f 05 f1 	vmovdqa64 0x5ef1(%rip),%zmm0        # b640 <_ZL5temp0+0x160>
    574c:	5e 00 00 
    574f:	48 89 fa             	mov    %rdi,%rdx
    5752:	62 71 fd 48 6f 25 24 	vmovdqa64 0x5f24(%rip),%zmm12        # b680 <_ZL5temp0+0x1a0>
    5759:	5f 00 00 
    575c:	48 83 e2 c0          	and    $0xffffffffffffffc0,%rdx
    5760:	48 83 e3 c0          	and    $0xffffffffffffffc0,%rbx
    5764:	62 71 fd 48 6f 1d 52 	vmovdqa64 0x5f52(%rip),%zmm11        # b6c0 <_ZL5temp0+0x1e0>
    576b:	5f 00 00 
    576e:	48 89 95 38 fd ff ff 	mov    %rdx,-0x2c8(%rbp)
    5775:	62 71 fd 48 6f 15 81 	vmovdqa64 0x5f81(%rip),%zmm10        # b700 <_ZL5temp0+0x220>
    577c:	5f 00 00 
    577f:	62 71 fd 48 6f 0d b7 	vmovdqa64 0x5fb7(%rip),%zmm9        # b740 <_ZL5temp0+0x260>
    5786:	5f 00 00 
    5789:	62 71 fd 48 6f 05 ed 	vmovdqa64 0x5fed(%rip),%zmm8        # b780 <_ZL5temp0+0x2a0>
    5790:	5f 00 00 
    5793:	62 f1 fd 48 7f 22    	vmovdqa64 %zmm4,(%rdx)
    5799:	62 f1 fd 48 7f 5a 01 	vmovdqa64 %zmm3,0x40(%rdx)
    57a0:	62 f1 fd 48 7f 52 02 	vmovdqa64 %zmm2,0x80(%rdx)
    57a7:	62 f1 fd 48 7f 4a 03 	vmovdqa64 %zmm1,0xc0(%rdx)
    57ae:	62 f1 fd 48 7f 42 04 	vmovdqa64 %zmm0,0x100(%rdx)
    57b5:	62 71 fd 48 7f 62 05 	vmovdqa64 %zmm12,0x140(%rdx)
    57bc:	62 71 fd 48 7f 5a 06 	vmovdqa64 %zmm11,0x180(%rdx)
    57c3:	62 71 fd 48 7f 52 07 	vmovdqa64 %zmm10,0x1c0(%rdx)
    57ca:	62 71 fd 48 7f 4a 08 	vmovdqa64 %zmm9,0x200(%rdx)
    57d1:	62 71 fd 48 7f 42 09 	vmovdqa64 %zmm8,0x240(%rdx)
    57d8:	62 f1 fd 48 6f 3d de 	vmovdqa64 0x5fde(%rip),%zmm7        # b7c0 <_ZL5temp0+0x2e0>
    57df:	5f 00 00 
    57e2:	62 f1 fd 28 6f 35 b4 	vmovdqa64 0x63b4(%rip),%ymm6        # bba0 <_ZL5temp0+0x6c0>
    57e9:	63 00 00 
    57ec:	62 f1 fd 28 6f 2d ca 	vmovdqa64 0x63ca(%rip),%ymm5        # bbc0 <_ZL5temp0+0x6e0>
    57f3:	63 00 00 
    57f6:	62 f1 fd 48 7f 7a 0a 	vmovdqa64 %zmm7,0x280(%rdx)
    57fd:	62 f1 fd 48 7f 62 0b 	vmovdqa64 %zmm4,0x2c0(%rdx)
    5804:	62 f1 fd 48 7f 5a 0c 	vmovdqa64 %zmm3,0x300(%rdx)
    580b:	62 f1 fd 48 7f 52 0d 	vmovdqa64 %zmm2,0x340(%rdx)
    5812:	62 f1 fd 48 7f 4a 0e 	vmovdqa64 %zmm1,0x380(%rdx)
    5819:	62 f1 fd 48 7f 42 0f 	vmovdqa64 %zmm0,0x3c0(%rdx)
    5820:	62 f1 fd 28 7f b5 90 	vmovdqa64 %ymm6,-0x270(%rbp)
    5827:	fd ff ff 
    582a:	62 f1 fd 28 7f ad b0 	vmovdqa64 %ymm5,-0x250(%rbp)
    5831:	fd ff ff 
    5834:	62 71 fd 48 7f ad d0 	vmovdqa64 %zmm13,-0x230(%rbp)
    583b:	fd ff ff 
    583e:	62 f1 fd 48 7f 23    	vmovdqa64 %zmm4,(%rbx)
    5844:	62 f1 fd 48 7f 5b 01 	vmovdqa64 %zmm3,0x40(%rbx)
    584b:	62 f1 fd 48 7f 53 02 	vmovdqa64 %zmm2,0x80(%rbx)
    5852:	62 f1 fd 48 7f 4b 03 	vmovdqa64 %zmm1,0xc0(%rbx)
    5859:	62 f1 fd 48 7f 43 04 	vmovdqa64 %zmm0,0x100(%rbx)
    5860:	62 71 fd 48 7f 63 05 	vmovdqa64 %zmm12,0x140(%rbx)
    5867:	62 71 fd 48 7f 5b 06 	vmovdqa64 %zmm11,0x180(%rbx)
    586e:	62 71 fd 48 7f 53 07 	vmovdqa64 %zmm10,0x1c0(%rbx)
    5875:	62 71 fd 48 7f 4b 08 	vmovdqa64 %zmm9,0x200(%rbx)
    587c:	62 71 fd 48 7f 43 09 	vmovdqa64 %zmm8,0x240(%rbx)
    5883:	62 f1 fd 48 7f 7b 0a 	vmovdqa64 %zmm7,0x280(%rbx)
    588a:	62 f1 fd 48 7f 63 0b 	vmovdqa64 %zmm4,0x2c0(%rbx)
    5891:	62 f1 fd 48 7f 5b 0c 	vmovdqa64 %zmm3,0x300(%rbx)
    5898:	62 f1 fd 48 7f 53 0d 	vmovdqa64 %zmm2,0x340(%rbx)
    589f:	62 f1 fd 48 7f 4b 0e 	vmovdqa64 %zmm1,0x380(%rbx)
    58a6:	62 f1 fd 48 7f 43 0f 	vmovdqa64 %zmm0,0x3c0(%rbx)
    58ad:	62 f1 fd 28 7f b5 10 	vmovdqa64 %ymm6,-0x1f0(%rbp)
    58b4:	fe ff ff 
    58b7:	62 f1 fd 28 7f ad 30 	vmovdqa64 %ymm5,-0x1d0(%rbp)
    58be:	fe ff ff 
    58c1:	c5 f8 77             	vzeroupper 
    58c4:	e8 57 d3 ff ff       	callq  2c20 <_Z7getTimev>
    58c9:	62 f1 45 08 ef ff    	vpxord %xmm7,%xmm7,%xmm7
    58cf:	4c 8d 8d 10 fe ff ff 	lea    -0x1f0(%rbp),%r9
    58d6:	49 89 d8             	mov    %rbx,%r8
    58d9:	49 8d 71 40          	lea    0x40(%r9),%rsi
    58dd:	62 71 fd 28 6f df    	vmovdqa64 %ymm7,%ymm11
    58e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    58e8:	41 0f b7 08          	movzwl (%r8),%ecx
    58ec:	45 0f b7 58 40       	movzwl 0x40(%r8),%r11d
    58f1:	49 83 c1 04          	add    $0x4,%r9
    58f5:	45 0f b7 a8 80 00 00 	movzwl 0x80(%r8),%r13d
    58fc:	00 
    58fd:	45 0f b7 b0 c0 00 00 	movzwl 0xc0(%r8),%r14d
    5904:	00 
    5905:	49 83 c0 04          	add    $0x4,%r8
    5909:	45 0f b7 b8 fc 00 00 	movzwl 0xfc(%r8),%r15d
    5910:	00 
    5911:	45 0f b7 90 3c 01 00 	movzwl 0x13c(%r8),%r10d
    5918:	00 
    5919:	41 0f b7 80 7c 01 00 	movzwl 0x17c(%r8),%eax
    5920:	00 
    5921:	41 0f b7 b8 bc 01 00 	movzwl 0x1bc(%r8),%edi
    5928:	00 
    5929:	41 0f b7 90 fc 01 00 	movzwl 0x1fc(%r8),%edx
    5930:	00 
    5931:	41 0f b7 98 3c 02 00 	movzwl 0x23c(%r8),%ebx
    5938:	00 
    5939:	45 0f b7 a0 7c 02 00 	movzwl 0x27c(%r8),%r12d
    5940:	00 
    5941:	66 89 8d 90 fe ff ff 	mov    %cx,-0x170(%rbp)
    5948:	66 44 89 9d 92 fe ff 	mov    %r11w,-0x16e(%rbp)
    594f:	ff 
    5950:	41 0f b7 88 bc 02 00 	movzwl 0x2bc(%r8),%ecx
    5957:	00 
    5958:	45 0f b7 98 fc 02 00 	movzwl 0x2fc(%r8),%r11d
    595f:	00 
    5960:	66 44 89 ad 94 fe ff 	mov    %r13w,-0x16c(%rbp)
    5967:	ff 
    5968:	66 44 89 b5 96 fe ff 	mov    %r14w,-0x16a(%rbp)
    596f:	ff 
    5970:	45 0f b7 a8 3c 03 00 	movzwl 0x33c(%r8),%r13d
    5977:	00 
    5978:	45 0f b7 b0 7c 03 00 	movzwl 0x37c(%r8),%r14d
    597f:	00 
    5980:	66 44 89 bd 98 fe ff 	mov    %r15w,-0x168(%rbp)
    5987:	ff 
    5988:	45 0f b7 b8 bc 03 00 	movzwl 0x3bc(%r8),%r15d
    598f:	00 
    5990:	66 44 89 95 9a fe ff 	mov    %r10w,-0x166(%rbp)
    5997:	ff 
    5998:	66 89 85 9c fe ff ff 	mov    %ax,-0x164(%rbp)
    599f:	66 89 bd 9e fe ff ff 	mov    %di,-0x162(%rbp)
    59a6:	66 89 95 a0 fe ff ff 	mov    %dx,-0x160(%rbp)
    59ad:	66 89 9d a2 fe ff ff 	mov    %bx,-0x15e(%rbp)
    59b4:	66 44 89 a5 a4 fe ff 	mov    %r12w,-0x15c(%rbp)
    59bb:	ff 
    59bc:	66 89 8d a6 fe ff ff 	mov    %cx,-0x15a(%rbp)
    59c3:	66 44 89 9d a8 fe ff 	mov    %r11w,-0x158(%rbp)
    59ca:	ff 
    59cb:	66 44 89 ad aa fe ff 	mov    %r13w,-0x156(%rbp)
    59d2:	ff 
    59d3:	66 44 89 b5 ac fe ff 	mov    %r14w,-0x154(%rbp)
    59da:	ff 
    59db:	66 44 89 bd ae fe ff 	mov    %r15w,-0x152(%rbp)
    59e2:	ff 
    59e3:	62 71 fd 28 6f b5 90 	vmovdqa64 -0x170(%rbp),%ymm14
    59ea:	fe ff ff 
    59ed:	45 0f b7 50 fe       	movzwl -0x2(%r8),%r10d
    59f2:	41 0f b7 40 3e       	movzwl 0x3e(%r8),%eax
    59f7:	41 0f b7 78 7e       	movzwl 0x7e(%r8),%edi
    59fc:	41 0f b7 90 be 00 00 	movzwl 0xbe(%r8),%edx
    5a03:	00 
    5a04:	41 0f b7 98 fe 00 00 	movzwl 0xfe(%r8),%ebx
    5a0b:	00 
    5a0c:	45 0f b7 a0 3e 01 00 	movzwl 0x13e(%r8),%r12d
    5a13:	00 
    5a14:	41 0f b7 88 7e 01 00 	movzwl 0x17e(%r8),%ecx
    5a1b:	00 
    5a1c:	45 0f b7 98 be 01 00 	movzwl 0x1be(%r8),%r11d
    5a23:	00 
    5a24:	45 0f b7 a8 fe 01 00 	movzwl 0x1fe(%r8),%r13d
    5a2b:	00 
    5a2c:	45 0f b7 b0 3e 02 00 	movzwl 0x23e(%r8),%r14d
    5a33:	00 
    5a34:	45 0f b7 b8 7e 02 00 	movzwl 0x27e(%r8),%r15d
    5a3b:	00 
    5a3c:	66 44 89 95 90 fe ff 	mov    %r10w,-0x170(%rbp)
    5a43:	ff 
    5a44:	66 89 85 92 fe ff ff 	mov    %ax,-0x16e(%rbp)
    5a4b:	45 0f b7 90 be 02 00 	movzwl 0x2be(%r8),%r10d
    5a52:	00 
    5a53:	41 0f b7 80 fe 02 00 	movzwl 0x2fe(%r8),%eax
    5a5a:	00 
    5a5b:	66 89 bd 94 fe ff ff 	mov    %di,-0x16c(%rbp)
    5a62:	66 89 95 96 fe ff ff 	mov    %dx,-0x16a(%rbp)
    5a69:	41 0f b7 b8 3e 03 00 	movzwl 0x33e(%r8),%edi
    5a70:	00 
    5a71:	41 0f b7 90 7e 03 00 	movzwl 0x37e(%r8),%edx
    5a78:	00 
    5a79:	66 89 9d 98 fe ff ff 	mov    %bx,-0x168(%rbp)
    5a80:	41 0f b7 98 be 03 00 	movzwl 0x3be(%r8),%ebx
    5a87:	00 
    5a88:	66 44 89 a5 9a fe ff 	mov    %r12w,-0x166(%rbp)
    5a8f:	ff 
    5a90:	66 89 8d 9c fe ff ff 	mov    %cx,-0x164(%rbp)
    5a97:	66 44 89 9d 9e fe ff 	mov    %r11w,-0x162(%rbp)
    5a9e:	ff 
    5a9f:	66 44 89 ad a0 fe ff 	mov    %r13w,-0x160(%rbp)
    5aa6:	ff 
    5aa7:	66 44 89 b5 a2 fe ff 	mov    %r14w,-0x15e(%rbp)
    5aae:	ff 
    5aaf:	66 44 89 bd a4 fe ff 	mov    %r15w,-0x15c(%rbp)
    5ab6:	ff 
    5ab7:	66 44 89 95 a6 fe ff 	mov    %r10w,-0x15a(%rbp)
    5abe:	ff 
    5abf:	66 89 85 a8 fe ff ff 	mov    %ax,-0x158(%rbp)
    5ac6:	66 89 bd aa fe ff ff 	mov    %di,-0x156(%rbp)
    5acd:	66 89 95 ac fe ff ff 	mov    %dx,-0x154(%rbp)
    5ad4:	66 89 9d ae fe ff ff 	mov    %bx,-0x152(%rbp)
    5adb:	c4 c2 7d 79 61 fc    	vpbroadcastw -0x4(%r9),%ymm4
    5ae1:	c4 c2 7d 79 51 fe    	vpbroadcastw -0x2(%r9),%ymm2
    5ae7:	49 39 f1             	cmp    %rsi,%r9
    5aea:	62 71 fd 28 6f bd 90 	vmovdqa64 -0x170(%rbp),%ymm15
    5af1:	fe ff ff 
    5af4:	c4 c1 5d d5 de       	vpmullw %ymm14,%ymm4,%ymm3
    5af9:	c4 c1 65 fd cb       	vpaddw %ymm11,%ymm3,%ymm1
    5afe:	c4 41 6d d5 ce       	vpmullw %ymm14,%ymm2,%ymm9
    5b03:	c4 41 6d d5 e7       	vpmullw %ymm15,%ymm2,%ymm12
    5b08:	c4 41 5d d5 d7       	vpmullw %ymm15,%ymm4,%ymm10
    5b0d:	c4 41 75 f9 dc       	vpsubw %ymm12,%ymm1,%ymm11
    5b12:	c4 41 2d fd c1       	vpaddw %ymm9,%ymm10,%ymm8
    5b17:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
    5b1b:	0f 85 c7 fd ff ff    	jne    58e8 <_Z8newBenchv+0x218>
    5b21:	c4 43 7d 39 dd 01    	vextracti128 $0x1,%ymm11,%xmm13
    5b27:	c4 c1 79 c5 c3 07    	vpextrw $0x7,%xmm11,%eax
    5b2d:	c4 c3 7d 39 fe 01    	vextracti128 $0x1,%ymm7,%xmm14
    5b33:	c4 41 79 c5 c3 00    	vpextrw $0x0,%xmm11,%r8d
    5b39:	89 85 6c fd ff ff    	mov    %eax,-0x294(%rbp)
    5b3f:	c4 c1 79 c5 c5 04    	vpextrw $0x4,%xmm13,%eax
    5b45:	c4 41 79 c5 cb 01    	vpextrw $0x1,%xmm11,%r9d
    5b4b:	c4 c1 79 c5 f3 02    	vpextrw $0x2,%xmm11,%esi
    5b51:	44 89 85 88 fd ff ff 	mov    %r8d,-0x278(%rbp)
    5b58:	89 85 58 fd ff ff    	mov    %eax,-0x2a8(%rbp)
    5b5e:	c4 c1 79 c5 c5 05    	vpextrw $0x5,%xmm13,%eax
    5b64:	c4 41 79 c5 e3 03    	vpextrw $0x3,%xmm11,%r12d
    5b6a:	44 89 8d 84 fd ff ff 	mov    %r9d,-0x27c(%rbp)
    5b71:	89 b5 80 fd ff ff    	mov    %esi,-0x280(%rbp)
    5b77:	c5 79 c5 ff 00       	vpextrw $0x0,%xmm7,%r15d
    5b7c:	89 85 54 fd ff ff    	mov    %eax,-0x2ac(%rbp)
    5b82:	c4 c1 79 c5 c6 05    	vpextrw $0x5,%xmm14,%eax
    5b88:	44 89 a5 7c fd ff ff 	mov    %r12d,-0x284(%rbp)
    5b8f:	c5 79 c5 f7 01       	vpextrw $0x1,%xmm7,%r14d
    5b94:	c5 79 c5 ef 02       	vpextrw $0x2,%xmm7,%r13d
    5b99:	c5 79 6e bd 88 fd ff 	vmovd  -0x278(%rbp),%xmm15
    5ba0:	ff 
    5ba1:	89 85 50 fd ff ff    	mov    %eax,-0x2b0(%rbp)
    5ba7:	c4 c1 79 c5 c5 06    	vpextrw $0x6,%xmm13,%eax
    5bad:	c5 79 c5 e7 03       	vpextrw $0x3,%xmm7,%r12d
    5bb2:	c5 f9 6e a5 84 fd ff 	vmovd  -0x27c(%rbp),%xmm4
    5bb9:	ff 
    5bba:	c5 f9 6e 9d 80 fd ff 	vmovd  -0x280(%rbp),%xmm3
    5bc1:	ff 
    5bc2:	c4 c1 79 c5 cb 04    	vpextrw $0x4,%xmm11,%ecx
    5bc8:	c4 41 79 c5 db 05    	vpextrw $0x5,%xmm11,%r11d
    5bce:	89 85 4c fd ff ff    	mov    %eax,-0x2b4(%rbp)
    5bd4:	c4 41 79 c5 d3 06    	vpextrw $0x6,%xmm11,%r10d
    5bda:	c5 79 6e 9d 7c fd ff 	vmovd  -0x284(%rbp),%xmm11
    5be1:	ff 
    5be2:	c4 c1 79 c5 c6 06    	vpextrw $0x6,%xmm14,%eax
    5be8:	89 8d 78 fd ff ff    	mov    %ecx,-0x288(%rbp)
    5bee:	c4 c1 01 c4 d7 01    	vpinsrw $0x1,%r15d,%xmm15,%xmm2
    5bf4:	44 89 9d 74 fd ff ff 	mov    %r11d,-0x28c(%rbp)
    5bfb:	c4 41 59 c4 e6 01    	vpinsrw $0x1,%r14d,%xmm4,%xmm12
    5c01:	44 89 95 70 fd ff ff 	mov    %r10d,-0x290(%rbp)
    5c08:	c4 c1 61 c4 cd 01    	vpinsrw $0x1,%r13d,%xmm3,%xmm1
    5c0e:	89 85 48 fd ff ff    	mov    %eax,-0x2b8(%rbp)
    5c14:	c4 41 21 c4 d4 01    	vpinsrw $0x1,%r12d,%xmm11,%xmm10
    5c1a:	c5 79 6e bd 70 fd ff 	vmovd  -0x290(%rbp),%xmm15
    5c21:	ff 
    5c22:	c5 f9 c5 df 04       	vpextrw $0x4,%xmm7,%ebx
    5c27:	c5 79 c5 df 05       	vpextrw $0x5,%xmm7,%r11d
    5c2c:	c5 79 c5 d7 06       	vpextrw $0x6,%xmm7,%r10d
    5c31:	c5 f9 c5 d7 07       	vpextrw $0x7,%xmm7,%edx
    5c36:	c5 f9 6e bd 78 fd ff 	vmovd  -0x288(%rbp),%xmm7
    5c3d:	ff 
    5c3e:	c4 c1 79 c5 fd 00    	vpextrw $0x0,%xmm13,%edi
    5c44:	c4 41 79 c5 c5 01    	vpextrw $0x1,%xmm13,%r8d
    5c4a:	c4 c1 79 c5 f5 02    	vpextrw $0x2,%xmm13,%esi
    5c50:	c4 c1 79 c5 cd 03    	vpextrw $0x3,%xmm13,%ecx
    5c56:	89 bd 68 fd ff ff    	mov    %edi,-0x298(%rbp)
    5c5c:	c4 c1 79 c5 c5 07    	vpextrw $0x7,%xmm13,%eax
    5c62:	c5 79 6e ad 74 fd ff 	vmovd  -0x28c(%rbp),%xmm13
    5c69:	ff 
    5c6a:	44 89 85 64 fd ff ff 	mov    %r8d,-0x29c(%rbp)
    5c71:	c4 41 69 62 cc       	vpunpckldq %xmm12,%xmm2,%xmm9
    5c76:	c5 f9 6e 95 6c fd ff 	vmovd  -0x294(%rbp),%xmm2
    5c7d:	ff 
    5c7e:	c4 41 71 62 c2       	vpunpckldq %xmm10,%xmm1,%xmm8
    5c83:	89 b5 60 fd ff ff    	mov    %esi,-0x2a0(%rbp)
    5c89:	89 8d 5c fd ff ff    	mov    %ecx,-0x2a4(%rbp)
    5c8f:	c5 c1 c4 f3 01       	vpinsrw $0x1,%ebx,%xmm7,%xmm6
    5c94:	c4 c1 01 c4 e2 01    	vpinsrw $0x1,%r10d,%xmm15,%xmm4
    5c9a:	89 85 44 fd ff ff    	mov    %eax,-0x2bc(%rbp)
    5ca0:	c5 69 c4 e2 01       	vpinsrw $0x1,%edx,%xmm2,%xmm12
    5ca5:	c5 79 6e 95 68 fd ff 	vmovd  -0x298(%rbp),%xmm10
    5cac:	ff 
    5cad:	c4 41 79 c5 ce 00    	vpextrw $0x0,%xmm14,%r9d
    5cb3:	c4 41 79 c5 c6 01    	vpextrw $0x1,%xmm14,%r8d
    5cb9:	c4 c1 79 c5 fe 02    	vpextrw $0x2,%xmm14,%edi
    5cbf:	c4 c1 79 c5 f6 03    	vpextrw $0x3,%xmm14,%esi
    5cc5:	c4 c1 79 c5 ce 04    	vpextrw $0x4,%xmm14,%ecx
    5ccb:	c4 c1 79 c5 c6 07    	vpextrw $0x7,%xmm14,%eax
    5cd1:	c4 41 11 c4 f3 01    	vpinsrw $0x1,%r11d,%xmm13,%xmm14
    5cd7:	c4 c1 31 6c e8       	vpunpcklqdq %xmm8,%xmm9,%xmm5
    5cdc:	c5 79 6e 85 64 fd ff 	vmovd  -0x29c(%rbp),%xmm8
    5ce3:	ff 
    5ce4:	c4 c1 59 62 cc       	vpunpckldq %xmm12,%xmm4,%xmm1
    5ce9:	c4 c1 49 62 de       	vpunpckldq %xmm14,%xmm6,%xmm3
    5cee:	c5 f9 6e b5 60 fd ff 	vmovd  -0x2a0(%rbp),%xmm6
    5cf5:	ff 
    5cf6:	c4 41 29 c4 c9 01    	vpinsrw $0x1,%r9d,%xmm10,%xmm9
    5cfc:	c5 79 6e 95 54 fd ff 	vmovd  -0x2ac(%rbp),%xmm10
    5d03:	ff 
    5d04:	c4 c1 39 c4 f8 01    	vpinsrw $0x1,%r8d,%xmm8,%xmm7
    5d0a:	c5 79 6e b5 5c fd ff 	vmovd  -0x2a4(%rbp),%xmm14
    5d11:	ff 
    5d12:	c5 61 6c d9          	vpunpcklqdq %xmm1,%xmm3,%xmm11
    5d16:	c5 f9 6e 9d 58 fd ff 	vmovd  -0x2a8(%rbp),%xmm3
    5d1d:	ff 
    5d1e:	c5 49 c4 ef 01       	vpinsrw $0x1,%edi,%xmm6,%xmm13
    5d23:	c5 b1 62 e7          	vpunpckldq %xmm7,%xmm9,%xmm4
    5d27:	c5 29 c4 8d 50 fd ff 	vpinsrw $0x1,-0x2b0(%rbp),%xmm10,%xmm9
    5d2e:	ff 01 
    5d30:	c5 79 6e 85 4c fd ff 	vmovd  -0x2b4(%rbp),%xmm8
    5d37:	ff 
    5d38:	c5 f9 6e b5 44 fd ff 	vmovd  -0x2bc(%rbp),%xmm6
    5d3f:	ff 
    5d40:	c5 09 c4 fe 01       	vpinsrw $0x1,%esi,%xmm14,%xmm15
    5d45:	c5 b9 c4 bd 48 fd ff 	vpinsrw $0x1,-0x2b8(%rbp),%xmm8,%xmm7
    5d4c:	ff 01 
    5d4e:	c4 c1 11 62 d7       	vpunpckldq %xmm15,%xmm13,%xmm2
    5d53:	c5 e1 c4 c9 01       	vpinsrw $0x1,%ecx,%xmm3,%xmm1
    5d58:	c5 49 c4 e8 01       	vpinsrw $0x1,%eax,%xmm6,%xmm13
    5d5d:	c5 59 6c e2          	vpunpcklqdq %xmm2,%xmm4,%xmm12
    5d61:	c4 41 71 62 f1       	vpunpckldq %xmm9,%xmm1,%xmm14
    5d66:	c4 41 41 62 fd       	vpunpckldq %xmm13,%xmm7,%xmm15
    5d6b:	c4 c3 55 38 eb 01    	vinserti128 $0x1,%xmm11,%ymm5,%ymm5
    5d71:	c4 c1 09 6c e7       	vpunpcklqdq %xmm15,%xmm14,%xmm4
    5d76:	c4 63 1d 38 dc 01    	vinserti128 $0x1,%xmm4,%ymm12,%ymm11
    5d7c:	62 d3 d5 48 3a d3 01 	vinserti64x4 $0x1,%ymm11,%zmm5,%zmm2
    5d83:	62 f1 fd 48 7f 95 50 	vmovdqa64 %zmm2,-0x1b0(%rbp)
    5d8a:	fe ff ff 
    5d8d:	c5 f8 77             	vzeroupper 
    5d90:	e8 eb ce ff ff       	callq  2c80 <_Z9timeSinced>
    5d95:	e8 86 ce ff ff       	callq  2c20 <_Z7getTimev>
    5d9a:	44 0f b6 3d 1e 74 20 	movzbl 0x20741e(%rip),%r15d        # 20d1c0 <_ZGVZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    5da1:	00 
    5da2:	45 84 ff             	test   %r15b,%r15b
    5da5:	0f 84 dd 07 00 00    	je     6588 <_Z8newBenchv+0xeb8>
    5dab:	4c 8d b5 90 fe ff ff 	lea    -0x170(%rbp),%r14
    5db2:	b9 20 00 00 00       	mov    $0x20,%ecx
    5db7:	31 c0                	xor    %eax,%eax
    5db9:	62 71 fd 48 6f 15 3d 	vmovdqa64 0x20743d(%rip),%zmm10        # 20d200 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    5dc0:	74 20 00 
    5dc3:	4c 8b ad 38 fd ff ff 	mov    -0x2c8(%rbp),%r13
    5dca:	4c 89 f7             	mov    %r14,%rdi
    5dcd:	62 f1 fd 48 6f 35 e9 	vmovdqa64 0x2079e9(%rip),%zmm6        # 20d7c0 <_ZL4idx0>
    5dd4:	79 20 00 
    5dd7:	4d 8d 66 40          	lea    0x40(%r14),%r12
    5ddb:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    5dde:	62 52 cd 48 8d ea    	vpermw %zmm10,%zmm6,%zmm13
    5de4:	62 71 fd 48 6f 0d 92 	vmovdqa64 0x207992(%rip),%zmm9        # 20d780 <_ZL4idx1>
    5deb:	79 20 00 
    5dee:	62 71 fd 48 6f 05 48 	vmovdqa64 0x207948(%rip),%zmm8        # 20d740 <_ZL4idx2>
    5df5:	79 20 00 
    5df8:	62 f1 fd 48 6f 3d fe 	vmovdqa64 0x2078fe(%rip),%zmm7        # 20d700 <_ZL6addsub>
    5dff:	78 20 00 
    5e02:	62 71 fd 08 6f 35 e4 	vmovdqa64 0x5de4(%rip),%xmm14        # bbf0 <_ZL5temp0+0x710>
    5e09:	5d 00 00 
    5e0c:	62 71 fd 08 6f 3d ea 	vmovdqa64 0x5dea(%rip),%xmm15        # bc00 <_ZL5temp0+0x720>
    5e13:	5d 00 00 
    5e16:	49 83 c6 10          	add    $0x10,%r14
    5e1a:	49 81 c5 00 01 00 00 	add    $0x100,%r13
    5e21:	62 d1 fd 48 6f 65 fc 	vmovdqa64 -0x100(%r13),%zmm4
    5e28:	62 f2 b5 48 8d ec    	vpermw %zmm4,%zmm9,%zmm5
    5e2e:	62 72 bd 48 8d dc    	vpermw %zmm4,%zmm8,%zmm11
    5e34:	62 d1 55 48 d5 d5    	vpmullw %zmm13,%zmm5,%zmm2
    5e3a:	62 71 6d 48 d5 e7    	vpmullw %zmm7,%zmm2,%zmm12
    5e40:	62 d1 25 48 d5 da    	vpmullw %zmm10,%zmm11,%zmm3
    5e46:	62 f1 1d 48 fd cb    	vpaddw %zmm3,%zmm12,%zmm1
    5e4c:	62 f3 fd 48 3b cc 01 	vextracti64x4 $0x1,%zmm1,%ymm4
    5e53:	c5 f5 fd ec          	vpaddw %ymm4,%ymm1,%ymm5
    5e57:	62 f3 fd 28 39 ea 01 	vextracti64x2 $0x1,%ymm5,%xmm2
    5e5e:	c5 51 fd e2          	vpaddw %xmm2,%xmm5,%xmm12
    5e62:	62 d2 8d 08 8d dc    	vpermw %xmm12,%xmm14,%xmm3
    5e68:	62 d1 fd 48 6f 6d fd 	vmovdqa64 -0xc0(%r13),%zmm5
    5e6f:	62 72 b5 48 8d dd    	vpermw %zmm5,%zmm9,%zmm11
    5e75:	c4 c1 61 fd cc       	vpaddw %xmm12,%xmm3,%xmm1
    5e7a:	62 72 bd 48 8d e5    	vpermw %zmm5,%zmm8,%zmm12
    5e80:	62 f2 85 08 8d f1    	vpermw %xmm1,%xmm15,%xmm6
    5e86:	62 d1 25 48 d5 d5    	vpmullw %zmm13,%zmm11,%zmm2
    5e8c:	62 f1 6d 48 d5 df    	vpmullw %zmm7,%zmm2,%zmm3
    5e92:	c5 c9 fd e1          	vpaddw %xmm1,%xmm6,%xmm4
    5e96:	62 d1 1d 48 d5 ca    	vpmullw %zmm10,%zmm12,%zmm1
    5e9c:	62 f1 65 48 fd f1    	vpaddw %zmm1,%zmm3,%zmm6
    5ea2:	62 f3 fd 48 3b f5 01 	vextracti64x4 $0x1,%zmm6,%ymm5
    5ea9:	c5 f9 7e e3          	vmovd  %xmm4,%ebx
    5ead:	c4 c3 79 15 66 f2 01 	vpextrw $0x1,%xmm4,-0xe(%r14)
    5eb4:	66 41 89 5e f0       	mov    %bx,-0x10(%r14)
    5eb9:	c5 4d fd dd          	vpaddw %ymm5,%ymm6,%ymm11
    5ebd:	62 73 fd 28 39 da 01 	vextracti64x2 $0x1,%ymm11,%xmm2
    5ec4:	c5 a1 fd da          	vpaddw %xmm2,%xmm11,%xmm3
    5ec8:	62 f2 8d 08 8d cb    	vpermw %xmm3,%xmm14,%xmm1
    5ece:	62 51 fd 48 6f 5d fe 	vmovdqa64 -0x80(%r13),%zmm11
    5ed5:	62 52 b5 48 8d e3    	vpermw %zmm11,%zmm9,%zmm12
    5edb:	c5 f1 fd f3          	vpaddw %xmm3,%xmm1,%xmm6
    5edf:	62 d2 bd 48 8d db    	vpermw %zmm11,%zmm8,%zmm3
    5ee5:	62 f2 85 08 8d e6    	vpermw %xmm6,%xmm15,%xmm4
    5eeb:	62 d1 1d 48 d5 d5    	vpmullw %zmm13,%zmm12,%zmm2
    5ef1:	62 d1 65 48 d5 ca    	vpmullw %zmm10,%zmm3,%zmm1
    5ef7:	c5 d9 fd ee          	vpaddw %xmm6,%xmm4,%xmm5
    5efb:	62 f1 6d 48 d5 f7    	vpmullw %zmm7,%zmm2,%zmm6
    5f01:	62 f1 4d 48 fd e1    	vpaddw %zmm1,%zmm6,%zmm4
    5f07:	62 d3 fd 48 3b e3 01 	vextracti64x4 $0x1,%zmm4,%ymm11
    5f0e:	c4 c1 79 7e eb       	vmovd  %xmm5,%r11d
    5f13:	c4 c3 79 15 6e f6 01 	vpextrw $0x1,%xmm5,-0xa(%r14)
    5f1a:	66 45 89 5e f4       	mov    %r11w,-0xc(%r14)
    5f1f:	c4 41 5d fd e3       	vpaddw %ymm11,%ymm4,%ymm12
    5f24:	62 73 fd 28 39 e2 01 	vextracti64x2 $0x1,%ymm12,%xmm2
    5f2b:	c5 99 fd f2          	vpaddw %xmm2,%xmm12,%xmm6
    5f2f:	62 f2 8d 08 8d ce    	vpermw %xmm6,%xmm14,%xmm1
    5f35:	62 51 fd 48 6f 65 ff 	vmovdqa64 -0x40(%r13),%zmm12
    5f3c:	62 d2 b5 48 8d dc    	vpermw %zmm12,%zmm9,%zmm3
    5f42:	c5 f1 fd e6          	vpaddw %xmm6,%xmm1,%xmm4
    5f46:	62 d2 bd 48 8d f4    	vpermw %zmm12,%zmm8,%zmm6
    5f4c:	62 f2 85 08 8d ec    	vpermw %xmm4,%xmm15,%xmm5
    5f52:	62 d1 65 48 d5 d5    	vpmullw %zmm13,%zmm3,%zmm2
    5f58:	62 d1 4d 48 d5 ca    	vpmullw %zmm10,%zmm6,%zmm1
    5f5e:	c5 51 fd dc          	vpaddw %xmm4,%xmm5,%xmm11
    5f62:	62 f1 6d 48 d5 e7    	vpmullw %zmm7,%zmm2,%zmm4
    5f68:	62 f1 5d 48 fd e9    	vpaddw %zmm1,%zmm4,%zmm5
    5f6e:	62 d3 fd 48 3b ec 01 	vextracti64x4 $0x1,%zmm5,%ymm12
    5f75:	c4 41 79 7e da       	vmovd  %xmm11,%r10d
    5f7a:	c4 43 79 15 5e fa 01 	vpextrw $0x1,%xmm11,-0x6(%r14)
    5f81:	66 45 89 56 f8       	mov    %r10w,-0x8(%r14)
    5f86:	c4 c1 55 fd dc       	vpaddw %ymm12,%ymm5,%ymm3
    5f8b:	62 f3 fd 28 39 da 01 	vextracti64x2 $0x1,%ymm3,%xmm2
    5f92:	c5 e1 fd e2          	vpaddw %xmm2,%xmm3,%xmm4
    5f96:	62 f2 8d 08 8d cc    	vpermw %xmm4,%xmm14,%xmm1
    5f9c:	c5 f1 fd ec          	vpaddw %xmm4,%xmm1,%xmm5
    5fa0:	62 72 85 08 8d dd    	vpermw %xmm5,%xmm15,%xmm11
    5fa6:	c5 21 fd e5          	vpaddw %xmm5,%xmm11,%xmm12
    5faa:	c5 79 7e e2          	vmovd  %xmm12,%edx
    5fae:	c4 43 79 15 66 fe 01 	vpextrw $0x1,%xmm12,-0x2(%r14)
    5fb5:	66 41 89 56 fc       	mov    %dx,-0x4(%r14)
    5fba:	4d 39 f4             	cmp    %r14,%r12
    5fbd:	0f 85 53 fe ff ff    	jne    5e16 <_Z8newBenchv+0x746>
    5fc3:	62 71 fd 48 6f 95 90 	vmovdqa64 -0x170(%rbp),%zmm10
    5fca:	fe ff ff 
    5fcd:	62 71 fd 48 7f 95 d0 	vmovdqa64 %zmm10,-0x230(%rbp)
    5fd4:	fd ff ff 
    5fd7:	c5 f8 77             	vzeroupper 
    5fda:	4c 8d 2d 6b 4d 00 00 	lea    0x4d6b(%rip),%r13        # ad4c <_IO_stdin_used+0x8c>
    5fe1:	e8 9a cc ff ff       	callq  2c80 <_Z9timeSinced>
    5fe6:	0f bf 8d d2 fd ff ff 	movswl -0x22e(%rbp),%ecx
    5fed:	4c 8d bd d0 fd ff ff 	lea    -0x230(%rbp),%r15
    5ff4:	4c 89 ee             	mov    %r13,%rsi
    5ff7:	0f bf 95 d0 fd ff ff 	movswl -0x230(%rbp),%edx
    5ffe:	bf 01 00 00 00       	mov    $0x1,%edi
    6003:	31 c0                	xor    %eax,%eax
    6005:	4d 8d 77 40          	lea    0x40(%r15),%r14
    6009:	49 83 c7 04          	add    $0x4,%r15
    600d:	e8 ce bb ff ff       	callq  1be0 <__printf_chk@plt>
    6012:	48 8d 35 0a 4d 00 00 	lea    0x4d0a(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    6019:	bf 01 00 00 00       	mov    $0x1,%edi
    601e:	31 c0                	xor    %eax,%eax
    6020:	e8 bb bb ff ff       	callq  1be0 <__printf_chk@plt>
    6025:	41 0f bf 4f 02       	movswl 0x2(%r15),%ecx
    602a:	41 0f bf 17          	movswl (%r15),%edx
    602e:	4c 89 ee             	mov    %r13,%rsi
    6031:	bf 01 00 00 00       	mov    $0x1,%edi
    6036:	31 c0                	xor    %eax,%eax
    6038:	49 83 c7 14          	add    $0x14,%r15
    603c:	e8 9f bb ff ff       	callq  1be0 <__printf_chk@plt>
    6041:	48 8d 35 db 4c 00 00 	lea    0x4cdb(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    6048:	bf 01 00 00 00       	mov    $0x1,%edi
    604d:	31 c0                	xor    %eax,%eax
    604f:	e8 8c bb ff ff       	callq  1be0 <__printf_chk@plt>
    6054:	41 0f bf 4f f2       	movswl -0xe(%r15),%ecx
    6059:	41 0f bf 57 f0       	movswl -0x10(%r15),%edx
    605e:	4c 89 ee             	mov    %r13,%rsi
    6061:	bf 01 00 00 00       	mov    $0x1,%edi
    6066:	31 c0                	xor    %eax,%eax
    6068:	e8 73 bb ff ff       	callq  1be0 <__printf_chk@plt>
    606d:	48 8d 35 af 4c 00 00 	lea    0x4caf(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    6074:	bf 01 00 00 00       	mov    $0x1,%edi
    6079:	31 c0                	xor    %eax,%eax
    607b:	e8 60 bb ff ff       	callq  1be0 <__printf_chk@plt>
    6080:	41 0f bf 4f f6       	movswl -0xa(%r15),%ecx
    6085:	41 0f bf 57 f4       	movswl -0xc(%r15),%edx
    608a:	4c 89 ee             	mov    %r13,%rsi
    608d:	bf 01 00 00 00       	mov    $0x1,%edi
    6092:	31 c0                	xor    %eax,%eax
    6094:	e8 47 bb ff ff       	callq  1be0 <__printf_chk@plt>
    6099:	48 8d 35 83 4c 00 00 	lea    0x4c83(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    60a0:	bf 01 00 00 00       	mov    $0x1,%edi
    60a5:	31 c0                	xor    %eax,%eax
    60a7:	e8 34 bb ff ff       	callq  1be0 <__printf_chk@plt>
    60ac:	41 0f bf 4f fa       	movswl -0x6(%r15),%ecx
    60b1:	41 0f bf 57 f8       	movswl -0x8(%r15),%edx
    60b6:	4c 89 ee             	mov    %r13,%rsi
    60b9:	bf 01 00 00 00       	mov    $0x1,%edi
    60be:	31 c0                	xor    %eax,%eax
    60c0:	e8 1b bb ff ff       	callq  1be0 <__printf_chk@plt>
    60c5:	48 8d 35 57 4c 00 00 	lea    0x4c57(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    60cc:	bf 01 00 00 00       	mov    $0x1,%edi
    60d1:	31 c0                	xor    %eax,%eax
    60d3:	e8 08 bb ff ff       	callq  1be0 <__printf_chk@plt>
    60d8:	41 0f bf 4f fe       	movswl -0x2(%r15),%ecx
    60dd:	41 0f bf 57 fc       	movswl -0x4(%r15),%edx
    60e2:	4c 89 ee             	mov    %r13,%rsi
    60e5:	bf 01 00 00 00       	mov    $0x1,%edi
    60ea:	31 c0                	xor    %eax,%eax
    60ec:	e8 ef ba ff ff       	callq  1be0 <__printf_chk@plt>
    60f1:	48 8d 35 2b 4c 00 00 	lea    0x4c2b(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    60f8:	31 c0                	xor    %eax,%eax
    60fa:	bf 01 00 00 00       	mov    $0x1,%edi
    60ff:	e8 dc ba ff ff       	callq  1be0 <__printf_chk@plt>
    6104:	4d 39 fe             	cmp    %r15,%r14
    6107:	0f 85 18 ff ff ff    	jne    6025 <_Z8newBenchv+0x955>
    610d:	4c 8b 0d 6c 6f 20 00 	mov    0x206f6c(%rip),%r9        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    6114:	48 8d 35 65 6f 20 00 	lea    0x206f65(%rip),%rsi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    611b:	4d 8b 41 e8          	mov    -0x18(%r9),%r8
    611f:	4e 8b a4 06 f0 00 00 	mov    0xf0(%rsi,%r8,1),%r12
    6126:	00 
    6127:	4d 85 e4             	test   %r12,%r12
    612a:	0f 84 e8 04 00 00    	je     6618 <_Z8newBenchv+0xf48>
    6130:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    6136:	0f 84 17 04 00 00    	je     6553 <_Z8newBenchv+0xe83>
    613c:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    6142:	48 8d 3d 37 6f 20 00 	lea    0x206f37(%rip),%rdi        # 20d080 <_ZSt4cout@@GLIBCXX_3.4>
    6149:	4c 8d 35 fc 4b 00 00 	lea    0x4bfc(%rip),%r14        # ad4c <_IO_stdin_used+0x8c>
    6150:	48 8d 9d 50 fe ff ff 	lea    -0x1b0(%rbp),%rbx
    6157:	e8 94 b9 ff ff       	callq  1af0 <_ZNSo3putEc@plt>
    615c:	48 89 c7             	mov    %rax,%rdi
    615f:	4c 8d 7b 40          	lea    0x40(%rbx),%r15
    6163:	48 83 c3 04          	add    $0x4,%rbx
    6167:	e8 44 b9 ff ff       	callq  1ab0 <_ZNSo5flushEv@plt>
    616c:	0f bf 8d 52 fe ff ff 	movswl -0x1ae(%rbp),%ecx
    6173:	0f bf 95 50 fe ff ff 	movswl -0x1b0(%rbp),%edx
    617a:	4c 89 f6             	mov    %r14,%rsi
    617d:	bf 01 00 00 00       	mov    $0x1,%edi
    6182:	31 c0                	xor    %eax,%eax
    6184:	e8 57 ba ff ff       	callq  1be0 <__printf_chk@plt>
    6189:	48 8d 35 93 4b 00 00 	lea    0x4b93(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    6190:	bf 01 00 00 00       	mov    $0x1,%edi
    6195:	31 c0                	xor    %eax,%eax
    6197:	e8 44 ba ff ff       	callq  1be0 <__printf_chk@plt>
    619c:	0f bf 4b 02          	movswl 0x2(%rbx),%ecx
    61a0:	0f bf 13             	movswl (%rbx),%edx
    61a3:	4c 89 f6             	mov    %r14,%rsi
    61a6:	bf 01 00 00 00       	mov    $0x1,%edi
    61ab:	31 c0                	xor    %eax,%eax
    61ad:	48 83 c3 14          	add    $0x14,%rbx
    61b1:	e8 2a ba ff ff       	callq  1be0 <__printf_chk@plt>
    61b6:	48 8d 35 66 4b 00 00 	lea    0x4b66(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    61bd:	bf 01 00 00 00       	mov    $0x1,%edi
    61c2:	31 c0                	xor    %eax,%eax
    61c4:	e8 17 ba ff ff       	callq  1be0 <__printf_chk@plt>
    61c9:	0f bf 4b f2          	movswl -0xe(%rbx),%ecx
    61cd:	0f bf 53 f0          	movswl -0x10(%rbx),%edx
    61d1:	4c 89 f6             	mov    %r14,%rsi
    61d4:	bf 01 00 00 00       	mov    $0x1,%edi
    61d9:	31 c0                	xor    %eax,%eax
    61db:	e8 00 ba ff ff       	callq  1be0 <__printf_chk@plt>
    61e0:	48 8d 35 3c 4b 00 00 	lea    0x4b3c(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    61e7:	bf 01 00 00 00       	mov    $0x1,%edi
    61ec:	31 c0                	xor    %eax,%eax
    61ee:	e8 ed b9 ff ff       	callq  1be0 <__printf_chk@plt>
    61f3:	0f bf 4b f6          	movswl -0xa(%rbx),%ecx
    61f7:	0f bf 53 f4          	movswl -0xc(%rbx),%edx
    61fb:	4c 89 f6             	mov    %r14,%rsi
    61fe:	bf 01 00 00 00       	mov    $0x1,%edi
    6203:	31 c0                	xor    %eax,%eax
    6205:	e8 d6 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    620a:	48 8d 35 12 4b 00 00 	lea    0x4b12(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    6211:	bf 01 00 00 00       	mov    $0x1,%edi
    6216:	31 c0                	xor    %eax,%eax
    6218:	e8 c3 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    621d:	0f bf 4b fa          	movswl -0x6(%rbx),%ecx
    6221:	0f bf 53 f8          	movswl -0x8(%rbx),%edx
    6225:	4c 89 f6             	mov    %r14,%rsi
    6228:	bf 01 00 00 00       	mov    $0x1,%edi
    622d:	31 c0                	xor    %eax,%eax
    622f:	e8 ac b9 ff ff       	callq  1be0 <__printf_chk@plt>
    6234:	48 8d 35 e8 4a 00 00 	lea    0x4ae8(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    623b:	bf 01 00 00 00       	mov    $0x1,%edi
    6240:	31 c0                	xor    %eax,%eax
    6242:	e8 99 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    6247:	0f bf 4b fe          	movswl -0x2(%rbx),%ecx
    624b:	0f bf 53 fc          	movswl -0x4(%rbx),%edx
    624f:	4c 89 f6             	mov    %r14,%rsi
    6252:	bf 01 00 00 00       	mov    $0x1,%edi
    6257:	31 c0                	xor    %eax,%eax
    6259:	e8 82 b9 ff ff       	callq  1be0 <__printf_chk@plt>
    625e:	48 8d 35 be 4a 00 00 	lea    0x4abe(%rip),%rsi        # ad23 <_IO_stdin_used+0x63>
    6265:	31 c0                	xor    %eax,%eax
    6267:	bf 01 00 00 00       	mov    $0x1,%edi
    626c:	e8 6f b9 ff ff       	callq  1be0 <__printf_chk@plt>
    6271:	49 39 df             	cmp    %rbx,%r15
    6274:	0f 85 22 ff ff ff    	jne    619c <_Z8newBenchv+0xacc>
    627a:	44 0f b7 9d 52 fe ff 	movzwl -0x1ae(%rbp),%r11d
    6281:	ff 
    6282:	66 44 39 9d d2 fd ff 	cmp    %r11w,-0x22e(%rbp)
    6289:	ff 
    628a:	0f 85 a4 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6290:	44 0f b7 95 d0 fd ff 	movzwl -0x230(%rbp),%r10d
    6297:	ff 
    6298:	66 44 39 95 50 fe ff 	cmp    %r10w,-0x1b0(%rbp)
    629f:	ff 
    62a0:	0f 85 8e 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    62a6:	0f b7 95 54 fe ff ff 	movzwl -0x1ac(%rbp),%edx
    62ad:	66 39 95 d4 fd ff ff 	cmp    %dx,-0x22c(%rbp)
    62b4:	0f 85 7a 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    62ba:	44 0f b7 ad 56 fe ff 	movzwl -0x1aa(%rbp),%r13d
    62c1:	ff 
    62c2:	66 44 39 ad d6 fd ff 	cmp    %r13w,-0x22a(%rbp)
    62c9:	ff 
    62ca:	0f 85 64 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    62d0:	44 0f b7 8d da fd ff 	movzwl -0x226(%rbp),%r9d
    62d7:	ff 
    62d8:	66 44 39 8d 5a fe ff 	cmp    %r9w,-0x1a6(%rbp)
    62df:	ff 
    62e0:	0f 85 4e 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    62e6:	44 0f b7 85 d8 fd ff 	movzwl -0x228(%rbp),%r8d
    62ed:	ff 
    62ee:	66 44 39 85 58 fe ff 	cmp    %r8w,-0x1a8(%rbp)
    62f5:	ff 
    62f6:	0f 85 38 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    62fc:	0f b7 b5 5c fe ff ff 	movzwl -0x1a4(%rbp),%esi
    6303:	66 39 b5 dc fd ff ff 	cmp    %si,-0x224(%rbp)
    630a:	0f 85 24 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6310:	44 0f b7 a5 5e fe ff 	movzwl -0x1a2(%rbp),%r12d
    6317:	ff 
    6318:	66 44 39 a5 de fd ff 	cmp    %r12w,-0x222(%rbp)
    631f:	ff 
    6320:	0f 85 0e 02 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6326:	0f b7 8d 60 fe ff ff 	movzwl -0x1a0(%rbp),%ecx
    632d:	66 39 8d e0 fd ff ff 	cmp    %cx,-0x220(%rbp)
    6334:	0f 85 fa 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    633a:	0f b7 85 e2 fd ff ff 	movzwl -0x21e(%rbp),%eax
    6341:	66 39 85 62 fe ff ff 	cmp    %ax,-0x19e(%rbp)
    6348:	0f 85 e6 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    634e:	0f b7 bd 64 fe ff ff 	movzwl -0x19c(%rbp),%edi
    6355:	66 39 bd e4 fd ff ff 	cmp    %di,-0x21c(%rbp)
    635c:	0f 85 d2 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6362:	0f b7 9d e6 fd ff ff 	movzwl -0x21a(%rbp),%ebx
    6369:	66 39 9d 66 fe ff ff 	cmp    %bx,-0x19a(%rbp)
    6370:	0f 85 be 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6376:	44 0f b7 bd 6a fe ff 	movzwl -0x196(%rbp),%r15d
    637d:	ff 
    637e:	66 44 39 bd ea fd ff 	cmp    %r15w,-0x216(%rbp)
    6385:	ff 
    6386:	0f 85 a8 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    638c:	44 0f b7 b5 e8 fd ff 	movzwl -0x218(%rbp),%r14d
    6393:	ff 
    6394:	66 44 39 b5 68 fe ff 	cmp    %r14w,-0x198(%rbp)
    639b:	ff 
    639c:	0f 85 92 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    63a2:	44 0f b7 9d ec fd ff 	movzwl -0x214(%rbp),%r11d
    63a9:	ff 
    63aa:	66 44 39 9d 6c fe ff 	cmp    %r11w,-0x194(%rbp)
    63b1:	ff 
    63b2:	0f 85 7c 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    63b8:	44 0f b7 95 ee fd ff 	movzwl -0x212(%rbp),%r10d
    63bf:	ff 
    63c0:	66 44 39 95 6e fe ff 	cmp    %r10w,-0x192(%rbp)
    63c7:	ff 
    63c8:	0f 85 66 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    63ce:	0f b7 95 f2 fd ff ff 	movzwl -0x20e(%rbp),%edx
    63d5:	66 39 95 72 fe ff ff 	cmp    %dx,-0x18e(%rbp)
    63dc:	0f 85 52 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    63e2:	44 0f b7 ad f0 fd ff 	movzwl -0x210(%rbp),%r13d
    63e9:	ff 
    63ea:	66 44 39 ad 70 fe ff 	cmp    %r13w,-0x190(%rbp)
    63f1:	ff 
    63f2:	0f 85 3c 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    63f8:	44 0f b7 8d f6 fd ff 	movzwl -0x20a(%rbp),%r9d
    63ff:	ff 
    6400:	66 44 39 8d 76 fe ff 	cmp    %r9w,-0x18a(%rbp)
    6407:	ff 
    6408:	0f 85 26 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    640e:	44 0f b7 85 f4 fd ff 	movzwl -0x20c(%rbp),%r8d
    6415:	ff 
    6416:	66 44 39 85 74 fe ff 	cmp    %r8w,-0x18c(%rbp)
    641d:	ff 
    641e:	0f 85 10 01 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6424:	0f b7 b5 fa fd ff ff 	movzwl -0x206(%rbp),%esi
    642b:	66 39 b5 7a fe ff ff 	cmp    %si,-0x186(%rbp)
    6432:	0f 85 fc 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6438:	44 0f b7 a5 f8 fd ff 	movzwl -0x208(%rbp),%r12d
    643f:	ff 
    6440:	66 44 39 a5 78 fe ff 	cmp    %r12w,-0x188(%rbp)
    6447:	ff 
    6448:	0f 85 e6 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    644e:	0f b7 8d fe fd ff ff 	movzwl -0x202(%rbp),%ecx
    6455:	66 39 8d 7e fe ff ff 	cmp    %cx,-0x182(%rbp)
    645c:	0f 85 d2 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6462:	0f b7 85 fc fd ff ff 	movzwl -0x204(%rbp),%eax
    6469:	66 39 85 7c fe ff ff 	cmp    %ax,-0x184(%rbp)
    6470:	0f 85 be 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    6476:	0f b7 bd 02 fe ff ff 	movzwl -0x1fe(%rbp),%edi
    647d:	66 39 bd 82 fe ff ff 	cmp    %di,-0x17e(%rbp)
    6484:	0f 85 aa 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    648a:	0f b7 9d 00 fe ff ff 	movzwl -0x200(%rbp),%ebx
    6491:	66 39 9d 80 fe ff ff 	cmp    %bx,-0x180(%rbp)
    6498:	0f 85 96 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    649e:	44 0f b7 bd 06 fe ff 	movzwl -0x1fa(%rbp),%r15d
    64a5:	ff 
    64a6:	66 44 39 bd 86 fe ff 	cmp    %r15w,-0x17a(%rbp)
    64ad:	ff 
    64ae:	0f 85 80 00 00 00    	jne    6534 <_Z8newBenchv+0xe64>
    64b4:	44 0f b7 b5 04 fe ff 	movzwl -0x1fc(%rbp),%r14d
    64bb:	ff 
    64bc:	66 44 39 b5 84 fe ff 	cmp    %r14w,-0x17c(%rbp)
    64c3:	ff 
    64c4:	75 6e                	jne    6534 <_Z8newBenchv+0xe64>
    64c6:	44 0f b7 9d 0a fe ff 	movzwl -0x1f6(%rbp),%r11d
    64cd:	ff 
    64ce:	66 44 39 9d 8a fe ff 	cmp    %r11w,-0x176(%rbp)
    64d5:	ff 
    64d6:	75 5c                	jne    6534 <_Z8newBenchv+0xe64>
    64d8:	44 0f b7 95 08 fe ff 	movzwl -0x1f8(%rbp),%r10d
    64df:	ff 
    64e0:	66 44 39 95 88 fe ff 	cmp    %r10w,-0x178(%rbp)
    64e7:	ff 
    64e8:	75 4a                	jne    6534 <_Z8newBenchv+0xe64>
    64ea:	0f b7 95 8c fe ff ff 	movzwl -0x174(%rbp),%edx
    64f1:	66 39 95 0c fe ff ff 	cmp    %dx,-0x1f4(%rbp)
    64f8:	75 3a                	jne    6534 <_Z8newBenchv+0xe64>
    64fa:	44 0f b7 ad 8e fe ff 	movzwl -0x172(%rbp),%r13d
    6501:	ff 
    6502:	66 44 39 ad 0e fe ff 	cmp    %r13w,-0x1f2(%rbp)
    6509:	ff 
    650a:	75 28                	jne    6534 <_Z8newBenchv+0xe64>
    650c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6510:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    6517:	00 00 
    6519:	0f 85 fe 00 00 00    	jne    661d <_Z8newBenchv+0xf4d>
    651f:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
    6523:	5b                   	pop    %rbx
    6524:	41 59                	pop    %r9
    6526:	41 5c                	pop    %r12
    6528:	41 5d                	pop    %r13
    652a:	41 5e                	pop    %r14
    652c:	41 5f                	pop    %r15
    652e:	5d                   	pop    %rbp
    652f:	49 8d 61 f8          	lea    -0x8(%r9),%rsp
    6533:	c3                   	retq   
    6534:	48 8d 0d c5 4e 00 00 	lea    0x4ec5(%rip),%rcx        # b400 <_ZZ8newBenchvE19__PRETTY_FUNCTION__>
    653b:	48 8d 35 15 48 00 00 	lea    0x4815(%rip),%rsi        # ad57 <_IO_stdin_used+0x97>
    6542:	48 8d 3d df 49 00 00 	lea    0x49df(%rip),%rdi        # af28 <_IO_stdin_used+0x268>
    6549:	ba 2d 01 00 00       	mov    $0x12d,%edx
    654e:	e8 7d b4 ff ff       	callq  19d0 <__assert_fail@plt>
    6553:	4c 89 e7             	mov    %r12,%rdi
    6556:	e8 45 b5 ff ff       	callq  1aa0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    655b:	49 8b 0c 24          	mov    (%r12),%rcx
    655f:	48 8d 3d aa c6 ff ff 	lea    -0x3956(%rip),%rdi        # 2c10 <_ZNKSt5ctypeIcE8do_widenEc>
    6566:	be 0a 00 00 00       	mov    $0xa,%esi
    656b:	48 8b 41 30          	mov    0x30(%rcx),%rax
    656f:	48 39 f8             	cmp    %rdi,%rax
    6572:	0f 84 ca fb ff ff    	je     6142 <_Z8newBenchv+0xa72>
    6578:	4c 89 e7             	mov    %r12,%rdi
    657b:	ff d0                	callq  *%rax
    657d:	0f be f0             	movsbl %al,%esi
    6580:	e9 bd fb ff ff       	jmpq   6142 <_Z8newBenchv+0xa72>
    6585:	0f 1f 00             	nopl   (%rax)
    6588:	48 8d 3d 31 6c 20 00 	lea    0x206c31(%rip),%rdi        # 20d1c0 <_ZGVZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    658f:	c5 fb 11 85 88 fd ff 	vmovsd %xmm0,-0x278(%rbp)
    6596:	ff 
    6597:	e8 c4 b4 ff ff       	callq  1a60 <__cxa_guard_acquire@plt>
    659c:	85 c0                	test   %eax,%eax
    659e:	c5 fb 10 85 88 fd ff 	vmovsd -0x278(%rbp),%xmm0
    65a5:	ff 
    65a6:	0f 84 ff f7 ff ff    	je     5dab <_Z8newBenchv+0x6db>
    65ac:	62 f1 fd 48 6f 85 90 	vmovdqa64 -0x270(%rbp),%zmm0
    65b3:	fd ff ff 
    65b6:	48 8d 3d 03 6c 20 00 	lea    0x206c03(%rip),%rdi        # 20d1c0 <_ZGVZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    65bd:	62 71 fd 48 6f a5 d0 	vmovdqa64 -0x230(%rbp),%zmm12
    65c4:	fd ff ff 
    65c7:	62 f1 fd 48 6f 9d 10 	vmovdqa64 -0x1f0(%rbp),%zmm3
    65ce:	fe ff ff 
    65d1:	62 f1 fd 48 6f 8d 50 	vmovdqa64 -0x1b0(%rbp),%zmm1
    65d8:	fe ff ff 
    65db:	62 f1 fd 48 7f 05 1b 	vmovdqa64 %zmm0,0x206c1b(%rip)        # 20d200 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice>
    65e2:	6c 20 00 
    65e5:	62 71 fd 48 7f 25 51 	vmovdqa64 %zmm12,0x206c51(%rip)        # 20d240 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x40>
    65ec:	6c 20 00 
    65ef:	62 f1 fd 48 7f 1d 87 	vmovdqa64 %zmm3,0x206c87(%rip)        # 20d280 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0x80>
    65f6:	6c 20 00 
    65f9:	62 f1 fd 48 7f 0d bd 	vmovdqa64 %zmm1,0x206cbd(%rip)        # 20d2c0 <_ZZL12matmulAVX512PK13Complex_int16iiS1_PS_E6bSlice+0xc0>
    6600:	6c 20 00 
    6603:	c5 f8 77             	vzeroupper 
    6606:	e8 f5 b4 ff ff       	callq  1b00 <__cxa_guard_release@plt>
    660b:	c5 fb 10 85 88 fd ff 	vmovsd -0x278(%rbp),%xmm0
    6612:	ff 
    6613:	e9 93 f7 ff ff       	jmpq   5dab <_Z8newBenchv+0x6db>
    6618:	e8 23 b4 ff ff       	callq  1a40 <_ZSt16__throw_bad_castv@plt>
    661d:	e8 ee b3 ff ff       	callq  1a10 <__stack_chk_fail@plt>
    6622:	0f 1f 40 00          	nopl   0x0(%rax)
    6626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    662d:	00 00 00 

0000000000006630 <_Z17int16MatrixToArmaP13Complex_int16ii>:
    6630:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    6635:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    6639:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    663e:	41 ff 72 f8          	pushq  -0x8(%r10)
    6642:	55                   	push   %rbp
    6643:	48 89 e5             	mov    %rsp,%rbp
    6646:	41 57                	push   %r15
    6648:	41 56                	push   %r14
    664a:	41 55                	push   %r13
    664c:	41 54                	push   %r12
    664e:	41 52                	push   %r10
    6650:	53                   	push   %rbx
    6651:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
    6658:	48 89 bd 40 fe ff ff 	mov    %rdi,-0x1c0(%rbp)
    665f:	48 63 f9             	movslq %ecx,%rdi
    6662:	64 48 8b 1c 25 28 00 	mov    %fs:0x28,%rbx
    6669:	00 00 
    666b:	48 89 5d c8          	mov    %rbx,-0x38(%rbp)
    666f:	31 db                	xor    %ebx,%ebx
    6671:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
    6678:	48 89 fb             	mov    %rdi,%rbx
    667b:	48 63 f2             	movslq %edx,%rsi
    667e:	48 0f af de          	imul   %rsi,%rbx
    6682:	48 39 c7             	cmp    %rax,%rdi
    6685:	49 89 f5             	mov    %rsi,%r13
    6688:	41 0f 97 c6          	seta   %r14b
    668c:	48 39 c6             	cmp    %rax,%rsi
    668f:	89 bd 8c fe ff ff    	mov    %edi,-0x174(%rbp)
    6695:	0f 97 c2             	seta   %dl
    6698:	48 89 bd 50 fe ff ff 	mov    %rdi,-0x1b0(%rbp)
    669f:	48 89 b5 80 fe ff ff 	mov    %rsi,-0x180(%rbp)
    66a6:	41 08 d6             	or     %dl,%r14b
    66a9:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
    66b0:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
    66b7:	48 89 9d f0 fe ff ff 	mov    %rbx,-0x110(%rbp)
    66be:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    66c5:	00 00 00 00 
    66c9:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    66d0:	00 00 00 00 
    66d4:	74 3f                	je     6715 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe5>
    66d6:	48 85 f6             	test   %rsi,%rsi
    66d9:	0f 88 1e 0f 00 00    	js     75fd <_Z17int16MatrixToArmaP13Complex_int16ii+0xfcd>
    66df:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    66e6:	00 
    66e7:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    66eb:	c4 e1 eb 2a d6       	vcvtsi2sd %rsi,%xmm2,%xmm2
    66f0:	0f 88 31 0f 00 00    	js     7627 <_Z17int16MatrixToArmaP13Complex_int16ii+0xff7>
    66f6:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    66fa:	c4 e1 e3 2a 9d 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm3,%xmm3
    6701:	ff ff 
    6703:	c5 eb 59 e3          	vmulsd %xmm3,%xmm2,%xmm4
    6707:	c5 f9 2e 25 01 55 00 	vucomisd 0x5501(%rip),%xmm4        # bc10 <_ZL5temp0+0x730>
    670e:	00 
    670f:	0f 87 ce 14 00 00    	ja     7be3 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15b3>
    6715:	48 83 fb 10          	cmp    $0x10,%rbx
    6719:	0f 87 aa 0d 00 00    	ja     74c9 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe99>
    671f:	48 85 db             	test   %rbx,%rbx
    6722:	0f 85 9d 0c 00 00    	jne    73c5 <_Z17int16MatrixToArmaP13Complex_int16ii+0xd95>
    6728:	c5 fa 7e 9d 80 fe ff 	vmovq  -0x180(%rbp),%xmm3
    672f:	ff 
    6730:	45 84 f6             	test   %r14b,%r14b
    6733:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    673a:	00 00 00 00 
    673e:	c4 e3 e1 22 a5 50 fe 	vpinsrq $0x1,-0x1b0(%rbp),%xmm3,%xmm4
    6745:	ff ff 01 
    6748:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    674f:	00 00 00 00 
    6753:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    675a:	00 00 00 00 
    675e:	c5 f8 29 a5 50 ff ff 	vmovaps %xmm4,-0xb0(%rbp)
    6765:	ff 
    6766:	74 4a                	je     67b2 <_Z17int16MatrixToArmaP13Complex_int16ii+0x182>
    6768:	48 83 bd 80 fe ff ff 	cmpq   $0x0,-0x180(%rbp)
    676f:	00 
    6770:	0f 88 12 10 00 00    	js     7788 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1158>
    6776:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    677a:	c4 e1 d3 2a ad 80 fe 	vcvtsi2sdq -0x180(%rbp),%xmm5,%xmm5
    6781:	ff ff 
    6783:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    678a:	00 
    678b:	0f 88 d2 0f 00 00    	js     7763 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1133>
    6791:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    6796:	c4 61 bb 2a 85 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm8,%xmm8
    679d:	ff ff 
    679f:	c4 41 53 59 c8       	vmulsd %xmm8,%xmm5,%xmm9
    67a4:	c5 79 2e 0d 64 54 00 	vucomisd 0x5464(%rip),%xmm9        # bc10 <_ZL5temp0+0x730>
    67ab:	00 
    67ac:	0f 87 67 13 00 00    	ja     7b19 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14e9>
    67b2:	4c 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%r9
    67b9:	4c 8d 9d 50 ff ff ff 	lea    -0xb0(%rbp),%r11
    67c0:	48 c7 85 58 fe ff ff 	movq   $0x0,-0x1a8(%rbp)
    67c7:	00 00 00 00 
    67cb:	4c 89 8d 48 fe ff ff 	mov    %r9,-0x1b8(%rbp)
    67d2:	4c 89 9d 38 fe ff ff 	mov    %r11,-0x1c8(%rbp)
    67d9:	4c 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%r10
    67e0:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    67e7:	45 85 ed             	test   %r13d,%r13d
    67ea:	4c 89 95 78 fe ff ff 	mov    %r10,-0x188(%rbp)
    67f1:	48 89 b5 70 fe ff ff 	mov    %rsi,-0x190(%rbp)
    67f8:	0f 8e fb 02 00 00    	jle    6af9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4c9>
    67fe:	8b 95 8c fe ff ff    	mov    -0x174(%rbp),%edx
    6804:	48 8b bd 70 fe ff ff 	mov    -0x190(%rbp),%rdi
    680b:	45 8d 6d ff          	lea    -0x1(%r13),%r13d
    680f:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    6816:	4c 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%r15
    681d:	45 31 db             	xor    %r11d,%r11d
    6820:	4c 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%r14
    6827:	4c 8b a5 00 ff ff ff 	mov    -0x100(%rbp),%r12
    682e:	49 83 c5 01          	add    $0x1,%r13
    6832:	8d 72 ff             	lea    -0x1(%rdx),%esi
    6835:	48 8b 9d 58 fe ff ff 	mov    -0x1a8(%rbp),%rbx
    683c:	4c 8d 0c bd 00 00 00 	lea    0x0(,%rdi,4),%r9
    6843:	00 
    6844:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
    684b:	00 
    684c:	4d 8d 57 01          	lea    0x1(%r15),%r10
    6850:	4c 89 ad 60 fe ff ff 	mov    %r13,-0x1a0(%rbp)
    6857:	49 8d 7e 01          	lea    0x1(%r14),%rdi
    685b:	4c 89 a5 30 fe ff ff 	mov    %r12,-0x1d0(%rbp)
    6862:	c7 85 88 fe ff ff 00 	movl   $0x0,-0x178(%rbp)
    6869:	00 00 00 
    686c:	48 83 c6 01          	add    $0x1,%rsi
    6870:	8b 8d 8c fe ff ff    	mov    -0x174(%rbp),%ecx
    6876:	85 c9                	test   %ecx,%ecx
    6878:	0f 8e 56 02 00 00    	jle    6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    687e:	4c 63 ad 88 fe ff ff 	movslq -0x178(%rbp),%r13
    6885:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    688c:	4c 39 9d 70 fe ff ff 	cmp    %r11,-0x190(%rbp)
    6893:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    6897:	4a 8d 0c a8          	lea    (%rax,%r13,4),%rcx
    689b:	44 0f bf 39          	movswl (%rcx),%r15d
    689f:	c4 c1 5a 2a e7       	vcvtsi2ss %r15d,%xmm4,%xmm4
    68a4:	0f 86 05 0c 00 00    	jbe    74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    68aa:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    68b1:	00 
    68b2:	0f 84 f7 0b 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    68b8:	4c 39 9d 80 fe ff ff 	cmp    %r11,-0x180(%rbp)
    68bf:	0f 86 c3 0b 00 00    	jbe    7488 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe58>
    68c5:	ba 01 00 00 00       	mov    $0x1,%edx
    68ca:	4d 89 d6             	mov    %r10,%r14
    68cd:	48 89 d8             	mov    %rbx,%rax
    68d0:	49 29 d6             	sub    %rdx,%r14
    68d3:	4d 89 e5             	mov    %r12,%r13
    68d6:	41 83 e6 03          	and    $0x3,%r14d
    68da:	0f 84 c8 01 00 00    	je     6aa8 <_Z17int16MatrixToArmaP13Complex_int16ii+0x478>
    68e0:	44 0f bf 69 02       	movswl 0x2(%rcx),%r13d
    68e5:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    68ea:	48 39 f2             	cmp    %rsi,%rdx
    68ed:	c4 c1 7a 11 24 24    	vmovss %xmm4,(%r12)
    68f3:	c4 41 2a 2a d5       	vcvtsi2ss %r13d,%xmm10,%xmm10
    68f8:	c5 7a 11 13          	vmovss %xmm10,(%rbx)
    68fc:	0f 84 d2 01 00 00    	je     6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6902:	0f bf 51 04          	movswl 0x4(%rcx),%edx
    6906:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    690a:	4f 8d 2c 0c          	lea    (%r12,%r9,1),%r13
    690e:	4a 8d 04 03          	lea    (%rbx,%r8,1),%rax
    6912:	c5 da 2a e2          	vcvtsi2ss %edx,%xmm4,%xmm4
    6916:	ba 02 00 00 00       	mov    $0x2,%edx
    691b:	48 39 fa             	cmp    %rdi,%rdx
    691e:	0f 84 8b 0b 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6924:	49 83 fe 01          	cmp    $0x1,%r14
    6928:	0f 84 7a 01 00 00    	je     6aa8 <_Z17int16MatrixToArmaP13Complex_int16ii+0x478>
    692e:	49 83 fe 02          	cmp    $0x2,%r14
    6932:	74 43                	je     6977 <_Z17int16MatrixToArmaP13Complex_int16ii+0x347>
    6934:	44 0f bf 79 06       	movswl 0x6(%rcx),%r15d
    6939:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    693e:	48 39 f2             	cmp    %rsi,%rdx
    6941:	c4 c1 7a 11 65 00    	vmovss %xmm4,0x0(%r13)
    6947:	c4 41 22 2a df       	vcvtsi2ss %r15d,%xmm11,%xmm11
    694c:	c5 7a 11 18          	vmovss %xmm11,(%rax)
    6950:	0f 84 7e 01 00 00    	je     6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6956:	44 0f bf 71 08       	movswl 0x8(%rcx),%r14d
    695b:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    695f:	48 83 c2 01          	add    $0x1,%rdx
    6963:	4d 01 cd             	add    %r9,%r13
    6966:	4c 01 c0             	add    %r8,%rax
    6969:	48 39 fa             	cmp    %rdi,%rdx
    696c:	c4 c1 5a 2a e6       	vcvtsi2ss %r14d,%xmm4,%xmm4
    6971:	0f 84 38 0b 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6977:	44 0f bf 7c 91 fe    	movswl -0x2(%rcx,%rdx,4),%r15d
    697d:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    6982:	48 39 f2             	cmp    %rsi,%rdx
    6985:	c4 c1 7a 11 65 00    	vmovss %xmm4,0x0(%r13)
    698b:	c4 41 1a 2a e7       	vcvtsi2ss %r15d,%xmm12,%xmm12
    6990:	c5 7a 11 20          	vmovss %xmm12,(%rax)
    6994:	0f 84 3a 01 00 00    	je     6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    699a:	44 0f bf 34 91       	movswl (%rcx,%rdx,4),%r14d
    699f:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    69a3:	48 83 c2 01          	add    $0x1,%rdx
    69a7:	4d 01 cd             	add    %r9,%r13
    69aa:	4c 01 c0             	add    %r8,%rax
    69ad:	48 39 fa             	cmp    %rdi,%rdx
    69b0:	c4 c1 5a 2a e6       	vcvtsi2ss %r14d,%xmm4,%xmm4
    69b5:	0f 85 ed 00 00 00    	jne    6aa8 <_Z17int16MatrixToArmaP13Complex_int16ii+0x478>
    69bb:	e9 ef 0a 00 00       	jmpq   74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    69c0:	44 0f bf 34 91       	movswl (%rcx,%rdx,4),%r14d
    69c5:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
    69ca:	4d 01 cd             	add    %r9,%r13
    69cd:	4c 01 c0             	add    %r8,%rax
    69d0:	c4 41 0a 2a f6       	vcvtsi2ss %r14d,%xmm14,%xmm14
    69d5:	4c 8d 72 01          	lea    0x1(%rdx),%r14
    69d9:	49 39 fe             	cmp    %rdi,%r14
    69dc:	0f 84 cd 0a 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    69e2:	46 0f bf 7c b1 fe    	movswl -0x2(%rcx,%r14,4),%r15d
    69e8:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
    69ed:	49 39 f6             	cmp    %rsi,%r14
    69f0:	c4 41 7a 11 75 00    	vmovss %xmm14,0x0(%r13)
    69f6:	c4 41 02 2a ff       	vcvtsi2ss %r15d,%xmm15,%xmm15
    69fb:	c5 7a 11 38          	vmovss %xmm15,(%rax)
    69ff:	0f 84 cf 00 00 00    	je     6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6a05:	46 0f bf 34 b1       	movswl (%rcx,%r14,4),%r14d
    6a0a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    6a0e:	4d 01 cd             	add    %r9,%r13
    6a11:	4c 01 c0             	add    %r8,%rax
    6a14:	c4 c1 7a 2a c6       	vcvtsi2ss %r14d,%xmm0,%xmm0
    6a19:	4c 8d 72 02          	lea    0x2(%rdx),%r14
    6a1d:	49 39 fe             	cmp    %rdi,%r14
    6a20:	0f 84 89 0a 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6a26:	46 0f bf 7c b1 fe    	movswl -0x2(%rcx,%r14,4),%r15d
    6a2c:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    6a30:	49 39 f6             	cmp    %rsi,%r14
    6a33:	c4 c1 7a 11 45 00    	vmovss %xmm0,0x0(%r13)
    6a39:	c4 c1 6a 2a d7       	vcvtsi2ss %r15d,%xmm2,%xmm2
    6a3e:	c5 fa 11 10          	vmovss %xmm2,(%rax)
    6a42:	0f 84 8c 00 00 00    	je     6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6a48:	46 0f bf 34 b1       	movswl (%rcx,%r14,4),%r14d
    6a4d:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    6a51:	4d 01 cd             	add    %r9,%r13
    6a54:	4c 01 c0             	add    %r8,%rax
    6a57:	c4 c1 72 2a ce       	vcvtsi2ss %r14d,%xmm1,%xmm1
    6a5c:	4c 8d 72 03          	lea    0x3(%rdx),%r14
    6a60:	49 39 fe             	cmp    %rdi,%r14
    6a63:	0f 84 46 0a 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6a69:	46 0f bf 7c b1 fe    	movswl -0x2(%rcx,%r14,4),%r15d
    6a6f:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    6a73:	49 39 f6             	cmp    %rsi,%r14
    6a76:	c4 c1 7a 11 4d 00    	vmovss %xmm1,0x0(%r13)
    6a7c:	c4 c1 62 2a df       	vcvtsi2ss %r15d,%xmm3,%xmm3
    6a81:	c5 fa 11 18          	vmovss %xmm3,(%rax)
    6a85:	74 4d                	je     6ad4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x4a4>
    6a87:	46 0f bf 34 b1       	movswl (%rcx,%r14,4),%r14d
    6a8c:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    6a90:	48 83 c2 04          	add    $0x4,%rdx
    6a94:	4d 01 cd             	add    %r9,%r13
    6a97:	4c 01 c0             	add    %r8,%rax
    6a9a:	48 39 fa             	cmp    %rdi,%rdx
    6a9d:	c4 c1 5a 2a e6       	vcvtsi2ss %r14d,%xmm4,%xmm4
    6aa2:	0f 84 07 0a 00 00    	je     74af <_Z17int16MatrixToArmaP13Complex_int16ii+0xe7f>
    6aa8:	44 0f bf 7c 91 fe    	movswl -0x2(%rcx,%rdx,4),%r15d
    6aae:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    6ab3:	4c 39 d2             	cmp    %r10,%rdx
    6ab6:	c4 c1 7a 11 65 00    	vmovss %xmm4,0x0(%r13)
    6abc:	c4 41 12 2a ef       	vcvtsi2ss %r15d,%xmm13,%xmm13
    6ac1:	0f 84 ce 09 00 00    	je     7495 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe65>
    6ac7:	48 39 f2             	cmp    %rsi,%rdx
    6aca:	c5 7a 11 28          	vmovss %xmm13,(%rax)
    6ace:	0f 85 ec fe ff ff    	jne    69c0 <_Z17int16MatrixToArmaP13Complex_int16ii+0x390>
    6ad4:	49 83 c3 01          	add    $0x1,%r11
    6ad8:	49 83 c4 04          	add    $0x4,%r12
    6adc:	48 83 c3 04          	add    $0x4,%rbx
    6ae0:	8b 8d 8c fe ff ff    	mov    -0x174(%rbp),%ecx
    6ae6:	01 8d 88 fe ff ff    	add    %ecx,-0x178(%rbp)
    6aec:	4c 3b 9d 60 fe ff ff 	cmp    -0x1a0(%rbp),%r11
    6af3:	0f 85 77 fd ff ff    	jne    6870 <_Z17int16MatrixToArmaP13Complex_int16ii+0x240>
    6af9:	4c 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%r8
    6b00:	31 c0                	xor    %eax,%eax
    6b02:	4c 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%r10
    6b09:	4c 39 95 70 fe ff ff 	cmp    %r10,-0x190(%rbp)
    6b10:	62 f1 4d 28 ef f6    	vpxord %ymm6,%ymm6,%ymm6
    6b16:	b9 10 00 00 00       	mov    $0x10,%ecx
    6b1b:	4d 8d 58 30          	lea    0x30(%r8),%r11
    6b1f:	49 c7 40 10 00 00 00 	movq   $0x0,0x10(%r8)
    6b26:	00 
    6b27:	41 c7 40 18 00 00 00 	movl   $0x0,0x18(%r8)
    6b2e:	00 
    6b2f:	c4 c1 78 29 30       	vmovaps %xmm6,(%r8)
    6b34:	4c 89 df             	mov    %r11,%rdi
    6b37:	41 c7 40 1c 00 00 00 	movl   $0x0,0x1c(%r8)
    6b3e:	00 
    6b3f:	49 c7 40 20 00 00 00 	movq   $0x0,0x20(%r8)
    6b46:	00 
    6b47:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    6b4a:	0f 85 17 10 00 00    	jne    7b67 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1537>
    6b50:	48 8b b5 50 fe ff ff 	mov    -0x1b0(%rbp),%rsi
    6b57:	48 39 b5 78 fe ff ff 	cmp    %rsi,-0x188(%rbp)
    6b5e:	0f 85 03 10 00 00    	jne    7b67 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1537>
    6b64:	48 83 bd 70 fe ff ff 	cmpq   $0x0,-0x190(%rbp)
    6b6b:	00 
    6b6c:	0f 84 83 0b 00 00    	je     76f5 <_Z17int16MatrixToArmaP13Complex_int16ii+0x10c5>
    6b72:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
    6b78:	4c 39 a5 70 fe ff ff 	cmp    %r12,-0x190(%rbp)
    6b7f:	0f 86 28 0c 00 00    	jbe    77ad <_Z17int16MatrixToArmaP13Complex_int16ii+0x117d>
    6b85:	48 83 bd 70 fe ff ff 	cmpq   $0x0,-0x190(%rbp)
    6b8c:	00 
    6b8d:	0f 88 b9 0a 00 00    	js     764c <_Z17int16MatrixToArmaP13Complex_int16ii+0x101c>
    6b93:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    6b9a:	00 
    6b9b:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    6b9f:	c4 e1 c3 2a bd 70 fe 	vcvtsi2sdq -0x190(%rbp),%xmm7,%xmm7
    6ba6:	ff ff 
    6ba8:	0f 88 cc 0a 00 00    	js     767a <_Z17int16MatrixToArmaP13Complex_int16ii+0x104a>
    6bae:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    6bb3:	c4 61 b3 2a 8d 78 fe 	vcvtsi2sdq -0x188(%rbp),%xmm9,%xmm9
    6bba:	ff ff 
    6bbc:	c4 41 43 59 d1       	vmulsd %xmm9,%xmm7,%xmm10
    6bc1:	c5 79 2e 15 47 50 00 	vucomisd 0x5047(%rip),%xmm10        # bc10 <_ZL5temp0+0x730>
    6bc8:	00 
    6bc9:	0f 87 9a 10 00 00    	ja     7c69 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1639>
    6bcf:	48 8b 9d 70 fe ff ff 	mov    -0x190(%rbp),%rbx
    6bd6:	48 0f af 9d 78 fe ff 	imul   -0x188(%rbp),%rbx
    6bdd:	ff 
    6bde:	48 85 db             	test   %rbx,%rbx
    6be1:	0f 84 5b 0b 00 00    	je     7742 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1112>
    6be7:	48 83 fb 10          	cmp    $0x10,%rbx
    6beb:	0f 87 5f 0e 00 00    	ja     7a50 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1420>
    6bf1:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
    6bf8:	4c 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%r10
    6bff:	4c 89 d8             	mov    %r11,%rax
    6c02:	4c 89 5f 20          	mov    %r11,0x20(%rdi)
    6c06:	49 89 f8             	mov    %rdi,%r8
    6c09:	4c 8d 2c 9d 00 00 00 	lea    0x0(,%rbx,4),%r13
    6c10:	00 
    6c11:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
    6c18:	48 8d 14 d8          	lea    (%rax,%rbx,8),%rdx
    6c1c:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
    6c23:	4c 8b a5 78 fe ff ff 	mov    -0x188(%rbp),%r12
    6c2a:	4f 8d 3c 2a          	lea    (%r10,%r13,1),%r15
    6c2e:	41 c7 40 1c 00 00 00 	movl   $0x0,0x1c(%r8)
    6c35:	00 
    6c36:	49 89 58 10          	mov    %rbx,0x10(%r8)
    6c3a:	4c 39 f8             	cmp    %r15,%rax
    6c3d:	49 89 30             	mov    %rsi,(%r8)
    6c40:	4d 89 60 08          	mov    %r12,0x8(%r8)
    6c44:	41 0f 93 c6          	setae  %r14b
    6c48:	4c 39 d2             	cmp    %r10,%rdx
    6c4b:	41 0f 96 c1          	setbe  %r9b
    6c4f:	49 01 cd             	add    %rcx,%r13
    6c52:	45 09 ce             	or     %r9d,%r14d
    6c55:	4c 39 e8             	cmp    %r13,%rax
    6c58:	41 0f 93 c0          	setae  %r8b
    6c5c:	48 39 d1             	cmp    %rdx,%rcx
    6c5f:	41 0f 93 c3          	setae  %r11b
    6c63:	45 09 c3             	or     %r8d,%r11d
    6c66:	45 84 de             	test   %r11b,%r14b
    6c69:	0f 84 a8 0b 00 00    	je     7817 <_Z17int16MatrixToArmaP13Complex_int16ii+0x11e7>
    6c6f:	48 83 fb 0f          	cmp    $0xf,%rbx
    6c73:	0f 86 9e 0b 00 00    	jbe    7817 <_Z17int16MatrixToArmaP13Complex_int16ii+0x11e7>
    6c79:	62 71 fd 48 6f 1d 7d 	vmovdqa64 0x4b7d(%rip),%zmm11        # b800 <_ZL5temp0+0x320>
    6c80:	4b 00 00 
    6c83:	49 89 dc             	mov    %rbx,%r12
    6c86:	be 01 00 00 00       	mov    $0x1,%esi
    6c8b:	62 71 fd 48 6f 25 ab 	vmovdqa64 0x4bab(%rip),%zmm12        # b840 <_ZL5temp0+0x360>
    6c92:	4b 00 00 
    6c95:	49 c1 ec 04          	shr    $0x4,%r12
    6c99:	41 bd 40 00 00 00    	mov    $0x40,%r13d
    6c9f:	62 51 7c 48 10 2a    	vmovups (%r10),%zmm13
    6ca5:	62 51 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm15
    6cab:	49 8d 7c 24 ff       	lea    -0x1(%r12),%rdi
    6cb0:	62 71 7c 48 10 31    	vmovups (%rcx),%zmm14
    6cb6:	62 c1 fd 48 6f c4    	vmovdqa64 %zmm12,%zmm16
    6cbc:	83 e7 07             	and    $0x7,%edi
    6cbf:	49 83 fc 01          	cmp    $0x1,%r12
    6cc3:	62 52 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm15
    6cc9:	62 c2 0d 48 77 c5    	vpermi2ps %zmm13,%zmm14,%zmm16
    6ccf:	62 71 7c 48 11 38    	vmovups %zmm15,(%rax)
    6cd5:	62 e1 7c 48 11 40 01 	vmovups %zmm16,0x40(%rax)
    6cdc:	0f 86 27 04 00 00    	jbe    7109 <_Z17int16MatrixToArmaP13Complex_int16ii+0xad9>
    6ce2:	48 85 ff             	test   %rdi,%rdi
    6ce5:	0f 84 1f 02 00 00    	je     6f0a <_Z17int16MatrixToArmaP13Complex_int16ii+0x8da>
    6ceb:	48 83 ff 01          	cmp    $0x1,%rdi
    6cef:	0f 84 c8 01 00 00    	je     6ebd <_Z17int16MatrixToArmaP13Complex_int16ii+0x88d>
    6cf5:	48 83 ff 02          	cmp    $0x2,%rdi
    6cf9:	0f 84 7a 01 00 00    	je     6e79 <_Z17int16MatrixToArmaP13Complex_int16ii+0x849>
    6cff:	48 83 ff 03          	cmp    $0x3,%rdi
    6d03:	0f 84 2c 01 00 00    	je     6e35 <_Z17int16MatrixToArmaP13Complex_int16ii+0x805>
    6d09:	48 83 ff 04          	cmp    $0x4,%rdi
    6d0d:	0f 84 de 00 00 00    	je     6df1 <_Z17int16MatrixToArmaP13Complex_int16ii+0x7c1>
    6d13:	48 83 ff 05          	cmp    $0x5,%rdi
    6d17:	0f 84 90 00 00 00    	je     6dad <_Z17int16MatrixToArmaP13Complex_int16ii+0x77d>
    6d1d:	48 83 ff 06          	cmp    $0x6,%rdi
    6d21:	74 46                	je     6d69 <_Z17int16MatrixToArmaP13Complex_int16ii+0x739>
    6d23:	4c 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%r10
    6d2a:	62 f1 7c 48 10 51 01 	vmovups 0x40(%rcx),%zmm2
    6d31:	62 d1 fd 48 6f db    	vmovdqa64 %zmm11,%zmm3
    6d37:	62 41 fd 48 6f cc    	vmovdqa64 %zmm12,%zmm25
    6d3d:	be 02 00 00 00       	mov    $0x2,%esi
    6d42:	41 bd 80 00 00 00    	mov    $0x80,%r13d
    6d48:	62 d1 7c 48 10 4a 01 	vmovups 0x40(%r10),%zmm1
    6d4f:	62 f2 6d 48 77 d9    	vpermi2ps %zmm1,%zmm2,%zmm3
    6d55:	62 62 6d 48 77 c9    	vpermi2ps %zmm1,%zmm2,%zmm25
    6d5b:	62 f1 7c 48 11 58 02 	vmovups %zmm3,0x80(%rax)
    6d62:	62 61 7c 48 11 48 03 	vmovups %zmm25,0xc0(%rax)
    6d69:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    6d70:	62 d1 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm7
    6d76:	62 41 fd 48 6f d4    	vmovdqa64 %zmm12,%zmm26
    6d7c:	62 b1 7c 48 10 2c 29 	vmovups (%rcx,%r13,1),%zmm5
    6d83:	48 83 c6 01          	add    $0x1,%rsi
    6d87:	62 b1 7c 48 10 34 2a 	vmovups (%rdx,%r13,1),%zmm6
    6d8e:	62 f2 55 48 77 fe    	vpermi2ps %zmm6,%zmm5,%zmm7
    6d94:	62 62 55 48 77 d6    	vpermi2ps %zmm6,%zmm5,%zmm26
    6d9a:	62 b1 7c 48 11 3c 68 	vmovups %zmm7,(%rax,%r13,2)
    6da1:	62 21 7c 48 11 54 68 	vmovups %zmm26,0x40(%rax,%r13,2)
    6da8:	01 
    6da9:	49 83 c5 40          	add    $0x40,%r13
    6dad:	4c 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%r15
    6db4:	62 51 fd 48 6f eb    	vmovdqa64 %zmm11,%zmm13
    6dba:	62 41 fd 48 6f dc    	vmovdqa64 %zmm12,%zmm27
    6dc0:	62 31 7c 48 10 14 29 	vmovups (%rcx,%r13,1),%zmm10
    6dc7:	48 83 c6 01          	add    $0x1,%rsi
    6dcb:	62 11 7c 48 10 0c 2f 	vmovups (%r15,%r13,1),%zmm9
    6dd2:	62 52 2d 48 77 e9    	vpermi2ps %zmm9,%zmm10,%zmm13
    6dd8:	62 42 2d 48 77 d9    	vpermi2ps %zmm9,%zmm10,%zmm27
    6dde:	62 31 7c 48 11 2c 68 	vmovups %zmm13,(%rax,%r13,2)
    6de5:	62 21 7c 48 11 5c 68 	vmovups %zmm27,0x40(%rax,%r13,2)
    6dec:	01 
    6ded:	49 83 c5 40          	add    $0x40,%r13
    6df1:	4c 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%r14
    6df8:	62 d1 fd 48 6f cb    	vmovdqa64 %zmm11,%zmm1
    6dfe:	62 41 fd 48 6f e4    	vmovdqa64 %zmm12,%zmm28
    6e04:	62 b1 7c 48 10 04 29 	vmovups (%rcx,%r13,1),%zmm0
    6e0b:	48 83 c6 01          	add    $0x1,%rsi
    6e0f:	62 11 7c 48 10 3c 2e 	vmovups (%r14,%r13,1),%zmm15
    6e16:	62 d2 7d 48 77 cf    	vpermi2ps %zmm15,%zmm0,%zmm1
    6e1c:	62 42 7d 48 77 e7    	vpermi2ps %zmm15,%zmm0,%zmm28
    6e22:	62 b1 7c 48 11 0c 68 	vmovups %zmm1,(%rax,%r13,2)
    6e29:	62 21 7c 48 11 64 68 	vmovups %zmm28,0x40(%rax,%r13,2)
    6e30:	01 
    6e31:	49 83 c5 40          	add    $0x40,%r13
    6e35:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    6e3c:	62 d1 fd 48 6f e3    	vmovdqa64 %zmm11,%zmm4
    6e42:	62 41 fd 48 6f ec    	vmovdqa64 %zmm12,%zmm29
    6e48:	62 b1 7c 48 10 34 29 	vmovups (%rcx,%r13,1),%zmm6
    6e4f:	48 83 c6 01          	add    $0x1,%rsi
    6e53:	62 91 7c 48 10 1c 29 	vmovups (%r9,%r13,1),%zmm3
    6e5a:	62 f2 4d 48 77 e3    	vpermi2ps %zmm3,%zmm6,%zmm4
    6e60:	62 62 4d 48 77 eb    	vpermi2ps %zmm3,%zmm6,%zmm29
    6e66:	62 b1 7c 48 11 24 68 	vmovups %zmm4,(%rax,%r13,2)
    6e6d:	62 21 7c 48 11 6c 68 	vmovups %zmm29,0x40(%rax,%r13,2)
    6e74:	01 
    6e75:	49 83 c5 40          	add    $0x40,%r13
    6e79:	4c 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%r8
    6e80:	62 51 fd 48 6f cb    	vmovdqa64 %zmm11,%zmm9
    6e86:	62 41 fd 48 6f f4    	vmovdqa64 %zmm12,%zmm30
    6e8c:	62 31 7c 48 10 04 29 	vmovups (%rcx,%r13,1),%zmm8
    6e93:	48 83 c6 01          	add    $0x1,%rsi
    6e97:	62 91 7c 48 10 3c 28 	vmovups (%r8,%r13,1),%zmm7
    6e9e:	62 72 3d 48 77 cf    	vpermi2ps %zmm7,%zmm8,%zmm9
    6ea4:	62 62 3d 48 77 f7    	vpermi2ps %zmm7,%zmm8,%zmm30
    6eaa:	62 31 7c 48 11 0c 68 	vmovups %zmm9,(%rax,%r13,2)
    6eb1:	62 21 7c 48 11 74 68 	vmovups %zmm30,0x40(%rax,%r13,2)
    6eb8:	01 
    6eb9:	49 83 c5 40          	add    $0x40,%r13
    6ebd:	4c 8b 9d 58 fe ff ff 	mov    -0x1a8(%rbp),%r11
    6ec4:	62 51 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm15
    6eca:	62 41 fd 48 6f fc    	vmovdqa64 %zmm12,%zmm31
    6ed0:	62 31 7c 48 10 34 29 	vmovups (%rcx,%r13,1),%zmm14
    6ed7:	48 83 c6 01          	add    $0x1,%rsi
    6edb:	62 11 7c 48 10 2c 2b 	vmovups (%r11,%r13,1),%zmm13
    6ee2:	62 52 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm15
    6ee8:	62 42 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm31
    6eee:	62 31 7c 48 11 3c 68 	vmovups %zmm15,(%rax,%r13,2)
    6ef5:	62 21 7c 48 11 7c 68 	vmovups %zmm31,0x40(%rax,%r13,2)
    6efc:	01 
    6efd:	49 83 c5 40          	add    $0x40,%r13
    6f01:	49 39 f4             	cmp    %rsi,%r12
    6f04:	0f 86 ff 01 00 00    	jbe    7109 <_Z17int16MatrixToArmaP13Complex_int16ii+0xad9>
    6f0a:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
    6f11:	62 b1 7c 48 10 0c 2f 	vmovups (%rdi,%r13,1),%zmm1
    6f18:	62 d1 fd 48 6f db    	vmovdqa64 %zmm11,%zmm3
    6f1e:	62 c1 fd 48 6f cc    	vmovdqa64 %zmm12,%zmm17
    6f24:	62 b1 7c 48 10 14 29 	vmovups (%rcx,%r13,1),%zmm2
    6f2b:	62 d1 fd 48 6f e3    	vmovdqa64 %zmm11,%zmm4
    6f31:	62 c1 fd 48 6f d4    	vmovdqa64 %zmm12,%zmm18
    6f37:	4d 8d 55 40          	lea    0x40(%r13),%r10
    6f3b:	62 51 fd 48 6f eb    	vmovdqa64 %zmm11,%zmm13
    6f41:	62 c1 fd 48 6f dc    	vmovdqa64 %zmm12,%zmm19
    6f47:	62 f2 6d 48 77 d9    	vpermi2ps %zmm1,%zmm2,%zmm3
    6f4d:	49 8d 95 80 00 00 00 	lea    0x80(%r13),%rdx
    6f54:	62 e2 6d 48 77 c9    	vpermi2ps %zmm1,%zmm2,%zmm17
    6f5a:	62 c1 fd 48 6f e4    	vmovdqa64 %zmm12,%zmm20
    6f60:	62 d1 fd 48 6f cb    	vmovdqa64 %zmm11,%zmm1
    6f66:	4d 8d bd c0 00 00 00 	lea    0xc0(%r13),%r15
    6f6d:	62 c1 fd 48 6f ec    	vmovdqa64 %zmm12,%zmm21
    6f73:	62 b1 7c 48 11 1c 68 	vmovups %zmm3,(%rax,%r13,2)
    6f7a:	4d 8d b5 00 01 00 00 	lea    0x100(%r13),%r14
    6f81:	62 c1 fd 48 6f f4    	vmovdqa64 %zmm12,%zmm22
    6f87:	62 a1 7c 48 11 4c 68 	vmovups %zmm17,0x40(%rax,%r13,2)
    6f8e:	01 
    6f8f:	4d 8d 8d 40 01 00 00 	lea    0x140(%r13),%r9
    6f96:	62 c1 fd 48 6f fc    	vmovdqa64 %zmm12,%zmm23
    6f9c:	4d 8d 85 80 01 00 00 	lea    0x180(%r13),%r8
    6fa3:	62 41 fd 48 6f c4    	vmovdqa64 %zmm12,%zmm24
    6fa9:	4d 8d 9d c0 01 00 00 	lea    0x1c0(%r13),%r11
    6fb0:	62 b1 7c 48 10 6c 2f 	vmovups 0x40(%rdi,%r13,1),%zmm5
    6fb7:	01 
    6fb8:	48 83 c6 08          	add    $0x8,%rsi
    6fbc:	62 b1 7c 48 10 7c 29 	vmovups 0x40(%rcx,%r13,1),%zmm7
    6fc3:	01 
    6fc4:	62 f2 45 48 77 e5    	vpermi2ps %zmm5,%zmm7,%zmm4
    6fca:	62 e2 45 48 77 d5    	vpermi2ps %zmm5,%zmm7,%zmm18
    6fd0:	62 d1 fd 48 6f eb    	vmovdqa64 %zmm11,%zmm5
    6fd6:	62 b1 7c 48 11 24 50 	vmovups %zmm4,(%rax,%r10,2)
    6fdd:	62 d1 fd 48 6f e3    	vmovdqa64 %zmm11,%zmm4
    6fe3:	62 a1 7c 48 11 54 50 	vmovups %zmm18,0x40(%rax,%r10,2)
    6fea:	01 
    6feb:	62 31 7c 48 10 4c 2f 	vmovups 0x80(%rdi,%r13,1),%zmm9
    6ff2:	02 
    6ff3:	62 31 7c 48 10 54 29 	vmovups 0x80(%rcx,%r13,1),%zmm10
    6ffa:	02 
    6ffb:	62 52 2d 48 77 e9    	vpermi2ps %zmm9,%zmm10,%zmm13
    7001:	62 c2 2d 48 77 d9    	vpermi2ps %zmm9,%zmm10,%zmm19
    7007:	62 71 7c 48 11 2c 50 	vmovups %zmm13,(%rax,%rdx,2)
    700e:	62 e1 7c 48 11 5c 50 	vmovups %zmm19,0x40(%rax,%rdx,2)
    7015:	01 
    7016:	62 31 7c 48 10 7c 2f 	vmovups 0xc0(%rdi,%r13,1),%zmm15
    701d:	03 
    701e:	62 b1 7c 48 10 44 29 	vmovups 0xc0(%rcx,%r13,1),%zmm0
    7025:	03 
    7026:	62 d2 7d 48 77 cf    	vpermi2ps %zmm15,%zmm0,%zmm1
    702c:	62 c2 7d 48 77 e7    	vpermi2ps %zmm15,%zmm0,%zmm20
    7032:	62 51 fd 48 6f fb    	vmovdqa64 %zmm11,%zmm15
    7038:	62 b1 7c 48 11 0c 78 	vmovups %zmm1,(%rax,%r15,2)
    703f:	62 a1 7c 48 11 64 78 	vmovups %zmm20,0x40(%rax,%r15,2)
    7046:	01 
    7047:	62 b1 7c 48 10 5c 2f 	vmovups 0x100(%rdi,%r13,1),%zmm3
    704e:	04 
    704f:	62 b1 7c 48 10 74 29 	vmovups 0x100(%rcx,%r13,1),%zmm6
    7056:	04 
    7057:	62 f2 4d 48 77 eb    	vpermi2ps %zmm3,%zmm6,%zmm5
    705d:	62 e2 4d 48 77 eb    	vpermi2ps %zmm3,%zmm6,%zmm21
    7063:	62 d1 fd 48 6f db    	vmovdqa64 %zmm11,%zmm3
    7069:	62 b1 7c 48 11 2c 70 	vmovups %zmm5,(%rax,%r14,2)
    7070:	62 a1 7c 48 11 6c 70 	vmovups %zmm21,0x40(%rax,%r14,2)
    7077:	01 
    7078:	62 31 7c 48 10 44 2f 	vmovups 0x140(%rdi,%r13,1),%zmm8
    707f:	05 
    7080:	62 31 7c 48 10 4c 29 	vmovups 0x140(%rcx,%r13,1),%zmm9
    7087:	05 
    7088:	62 d2 35 48 77 e0    	vpermi2ps %zmm8,%zmm9,%zmm4
    708e:	62 c2 35 48 77 f0    	vpermi2ps %zmm8,%zmm9,%zmm22
    7094:	62 b1 7c 48 11 24 48 	vmovups %zmm4,(%rax,%r9,2)
    709b:	62 a1 7c 48 11 74 48 	vmovups %zmm22,0x40(%rax,%r9,2)
    70a2:	01 
    70a3:	62 31 7c 48 10 6c 2f 	vmovups 0x180(%rdi,%r13,1),%zmm13
    70aa:	06 
    70ab:	62 31 7c 48 10 74 29 	vmovups 0x180(%rcx,%r13,1),%zmm14
    70b2:	06 
    70b3:	62 52 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm15
    70b9:	62 c2 0d 48 77 fd    	vpermi2ps %zmm13,%zmm14,%zmm23
    70bf:	62 31 7c 48 11 3c 40 	vmovups %zmm15,(%rax,%r8,2)
    70c6:	62 a1 7c 48 11 7c 40 	vmovups %zmm23,0x40(%rax,%r8,2)
    70cd:	01 
    70ce:	62 b1 7c 48 10 4c 2f 	vmovups 0x1c0(%rdi,%r13,1),%zmm1
    70d5:	07 
    70d6:	62 b1 7c 48 10 54 29 	vmovups 0x1c0(%rcx,%r13,1),%zmm2
    70dd:	07 
    70de:	49 81 c5 00 02 00 00 	add    $0x200,%r13
    70e5:	49 39 f4             	cmp    %rsi,%r12
    70e8:	62 f2 6d 48 77 d9    	vpermi2ps %zmm1,%zmm2,%zmm3
    70ee:	62 62 6d 48 77 c1    	vpermi2ps %zmm1,%zmm2,%zmm24
    70f4:	62 b1 7c 48 11 1c 58 	vmovups %zmm3,(%rax,%r11,2)
    70fb:	62 21 7c 48 11 44 58 	vmovups %zmm24,0x40(%rax,%r11,2)
    7102:	01 
    7103:	0f 87 08 fe ff ff    	ja     6f11 <_Z17int16MatrixToArmaP13Complex_int16ii+0x8e1>
    7109:	49 89 dc             	mov    %rbx,%r12
    710c:	49 83 e4 f0          	and    $0xfffffffffffffff0,%r12
    7110:	49 39 dc             	cmp    %rbx,%r12
    7113:	0f 84 d4 05 00 00    	je     76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7119:	4c 8b ad 58 fe ff ff 	mov    -0x1a8(%rbp),%r13
    7120:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    7125:	4a 8d 34 e0          	lea    (%rax,%r12,8),%rsi
    7129:	c4 21 7a 10 24 a1    	vmovss (%rcx,%r12,4),%xmm12
    712f:	48 39 fb             	cmp    %rdi,%rbx
    7132:	c4 01 7a 10 5c a5 00 	vmovss 0x0(%r13,%r12,4),%xmm11
    7139:	c5 7a 11 5e 04       	vmovss %xmm11,0x4(%rsi)
    713e:	c5 7a 11 26          	vmovss %xmm12,(%rsi)
    7142:	0f 86 a5 05 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7148:	49 8d 54 24 02       	lea    0x2(%r12),%rdx
    714d:	4c 8d 14 f8          	lea    (%rax,%rdi,8),%r10
    7151:	c4 c1 7a 10 6c bd 00 	vmovss 0x0(%r13,%rdi,4),%xmm5
    7158:	c5 fa 10 3c b9       	vmovss (%rcx,%rdi,4),%xmm7
    715d:	48 39 da             	cmp    %rbx,%rdx
    7160:	c4 c1 7a 11 3a       	vmovss %xmm7,(%r10)
    7165:	c4 c1 7a 11 6a 04    	vmovss %xmm5,0x4(%r10)
    716b:	0f 83 7c 05 00 00    	jae    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7171:	4d 8d 74 24 03       	lea    0x3(%r12),%r14
    7176:	4c 8d 3c d0          	lea    (%rax,%rdx,8),%r15
    717a:	c4 41 7a 10 44 95 00 	vmovss 0x0(%r13,%rdx,4),%xmm8
    7181:	c5 7a 10 0c 91       	vmovss (%rcx,%rdx,4),%xmm9
    7186:	4c 39 f3             	cmp    %r14,%rbx
    7189:	c4 41 7a 11 0f       	vmovss %xmm9,(%r15)
    718e:	c4 41 7a 11 47 04    	vmovss %xmm8,0x4(%r15)
    7194:	0f 86 53 05 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    719a:	4d 8d 44 24 04       	lea    0x4(%r12),%r8
    719f:	4e 8d 0c f0          	lea    (%rax,%r14,8),%r9
    71a3:	c4 81 7a 10 64 b5 00 	vmovss 0x0(%r13,%r14,4),%xmm4
    71aa:	c4 21 7a 10 14 b1    	vmovss (%rcx,%r14,4),%xmm10
    71b0:	4c 39 c3             	cmp    %r8,%rbx
    71b3:	c4 41 7a 11 11       	vmovss %xmm10,(%r9)
    71b8:	c4 c1 7a 11 61 04    	vmovss %xmm4,0x4(%r9)
    71be:	0f 86 29 05 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    71c4:	49 8d 74 24 05       	lea    0x5(%r12),%rsi
    71c9:	4e 8d 1c c0          	lea    (%rax,%r8,8),%r11
    71cd:	c4 01 7a 10 6c 85 00 	vmovss 0x0(%r13,%r8,4),%xmm13
    71d4:	c4 21 7a 10 34 81    	vmovss (%rcx,%r8,4),%xmm14
    71da:	48 39 f3             	cmp    %rsi,%rbx
    71dd:	c4 41 7a 11 33       	vmovss %xmm14,(%r11)
    71e2:	c4 41 7a 11 6b 04    	vmovss %xmm13,0x4(%r11)
    71e8:	0f 86 ff 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    71ee:	4d 8d 54 24 06       	lea    0x6(%r12),%r10
    71f3:	48 8d 3c f0          	lea    (%rax,%rsi,8),%rdi
    71f7:	c4 41 7a 10 7c b5 00 	vmovss 0x0(%r13,%rsi,4),%xmm15
    71fe:	c5 fa 10 04 b1       	vmovss (%rcx,%rsi,4),%xmm0
    7203:	4c 39 d3             	cmp    %r10,%rbx
    7206:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
    720a:	c5 7a 11 7f 04       	vmovss %xmm15,0x4(%rdi)
    720f:	0f 86 d8 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7215:	4d 8d 7c 24 07       	lea    0x7(%r12),%r15
    721a:	4a 8d 14 d0          	lea    (%rax,%r10,8),%rdx
    721e:	c4 81 7a 10 54 95 00 	vmovss 0x0(%r13,%r10,4),%xmm2
    7225:	c4 a1 7a 10 0c 91    	vmovss (%rcx,%r10,4),%xmm1
    722b:	4c 39 fb             	cmp    %r15,%rbx
    722e:	c5 fa 11 0a          	vmovss %xmm1,(%rdx)
    7232:	c5 fa 11 52 04       	vmovss %xmm2,0x4(%rdx)
    7237:	0f 86 b0 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    723d:	4d 8d 4c 24 08       	lea    0x8(%r12),%r9
    7242:	4e 8d 34 f8          	lea    (%rax,%r15,8),%r14
    7246:	c4 81 7a 10 5c bd 00 	vmovss 0x0(%r13,%r15,4),%xmm3
    724d:	c4 a1 7a 10 34 b9    	vmovss (%rcx,%r15,4),%xmm6
    7253:	4c 39 cb             	cmp    %r9,%rbx
    7256:	c4 c1 7a 11 36       	vmovss %xmm6,(%r14)
    725b:	c4 c1 7a 11 5e 04    	vmovss %xmm3,0x4(%r14)
    7261:	0f 86 86 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7267:	4d 8d 5c 24 09       	lea    0x9(%r12),%r11
    726c:	4e 8d 04 c8          	lea    (%rax,%r9,8),%r8
    7270:	c4 01 7a 10 5c 8d 00 	vmovss 0x0(%r13,%r9,4),%xmm11
    7277:	c4 21 7a 10 24 89    	vmovss (%rcx,%r9,4),%xmm12
    727d:	4c 39 db             	cmp    %r11,%rbx
    7280:	c4 41 7a 11 20       	vmovss %xmm12,(%r8)
    7285:	c4 41 7a 11 58 04    	vmovss %xmm11,0x4(%r8)
    728b:	0f 86 5c 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7291:	49 8d 7c 24 0a       	lea    0xa(%r12),%rdi
    7296:	4a 8d 34 d8          	lea    (%rax,%r11,8),%rsi
    729a:	c4 81 7a 10 6c 9d 00 	vmovss 0x0(%r13,%r11,4),%xmm5
    72a1:	c4 a1 7a 10 3c 99    	vmovss (%rcx,%r11,4),%xmm7
    72a7:	48 39 fb             	cmp    %rdi,%rbx
    72aa:	c5 fa 11 3e          	vmovss %xmm7,(%rsi)
    72ae:	c5 fa 11 6e 04       	vmovss %xmm5,0x4(%rsi)
    72b3:	0f 86 34 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    72b9:	49 8d 54 24 0b       	lea    0xb(%r12),%rdx
    72be:	4c 8d 14 f8          	lea    (%rax,%rdi,8),%r10
    72c2:	c4 41 7a 10 44 bd 00 	vmovss 0x0(%r13,%rdi,4),%xmm8
    72c9:	c5 7a 10 0c b9       	vmovss (%rcx,%rdi,4),%xmm9
    72ce:	48 39 d3             	cmp    %rdx,%rbx
    72d1:	c4 41 7a 11 0a       	vmovss %xmm9,(%r10)
    72d6:	c4 41 7a 11 42 04    	vmovss %xmm8,0x4(%r10)
    72dc:	0f 86 0b 04 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    72e2:	4d 8d 74 24 0c       	lea    0xc(%r12),%r14
    72e7:	4c 8d 3c d0          	lea    (%rax,%rdx,8),%r15
    72eb:	c4 c1 7a 10 64 95 00 	vmovss 0x0(%r13,%rdx,4),%xmm4
    72f2:	c5 7a 10 14 91       	vmovss (%rcx,%rdx,4),%xmm10
    72f7:	4c 39 f3             	cmp    %r14,%rbx
    72fa:	c4 41 7a 11 17       	vmovss %xmm10,(%r15)
    72ff:	c4 c1 7a 11 67 04    	vmovss %xmm4,0x4(%r15)
    7305:	0f 86 e2 03 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    730b:	4d 8d 44 24 0d       	lea    0xd(%r12),%r8
    7310:	4e 8d 0c f0          	lea    (%rax,%r14,8),%r9
    7314:	c4 01 7a 10 6c b5 00 	vmovss 0x0(%r13,%r14,4),%xmm13
    731b:	c4 21 7a 10 34 b1    	vmovss (%rcx,%r14,4),%xmm14
    7321:	4c 39 c3             	cmp    %r8,%rbx
    7324:	c4 41 7a 11 31       	vmovss %xmm14,(%r9)
    7329:	c4 41 7a 11 69 04    	vmovss %xmm13,0x4(%r9)
    732f:	0f 86 b8 03 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    7335:	4e 8d 1c c0          	lea    (%rax,%r8,8),%r11
    7339:	49 83 c4 0e          	add    $0xe,%r12
    733d:	c4 01 7a 10 7c 85 00 	vmovss 0x0(%r13,%r8,4),%xmm15
    7344:	4c 39 e3             	cmp    %r12,%rbx
    7347:	c4 a1 7a 10 04 81    	vmovss (%rcx,%r8,4),%xmm0
    734d:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    7352:	c4 41 7a 11 7b 04    	vmovss %xmm15,0x4(%r11)
    7358:	0f 86 8f 03 00 00    	jbe    76ed <_Z17int16MatrixToArmaP13Complex_int16ii+0x10bd>
    735e:	4a 8d 04 e0          	lea    (%rax,%r12,8),%rax
    7362:	c4 81 7a 10 54 a5 00 	vmovss 0x0(%r13,%r12,4),%xmm2
    7369:	c4 a1 7a 10 0c a1    	vmovss (%rcx,%r12,4),%xmm1
    736f:	c5 fa 11 08          	vmovss %xmm1,(%rax)
    7373:	c5 fa 11 50 04       	vmovss %xmm2,0x4(%rax)
    7378:	c5 f8 77             	vzeroupper 
    737b:	48 8b bd 38 fe ff ff 	mov    -0x1c8(%rbp),%rdi
    7382:	e8 29 2b 00 00       	callq  9eb0 <_ZN4arma3MatIfED1Ev>
    7387:	48 8b bd 48 fe ff ff 	mov    -0x1b8(%rbp),%rdi
    738e:	e8 1d 2b 00 00       	callq  9eb0 <_ZN4arma3MatIfED1Ev>
    7393:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    7397:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    739e:	00 00 
    73a0:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    73a7:	0f 85 b7 08 00 00    	jne    7c64 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1634>
    73ad:	48 81 c4 c0 01 00 00 	add    $0x1c0,%rsp
    73b4:	5b                   	pop    %rbx
    73b5:	41 5b                	pop    %r11
    73b7:	41 5c                	pop    %r12
    73b9:	41 5d                	pop    %r13
    73bb:	41 5e                	pop    %r14
    73bd:	41 5f                	pop    %r15
    73bf:	5d                   	pop    %rbp
    73c0:	49 8d 63 f8          	lea    -0x8(%r11),%rsp
    73c4:	c3                   	retq   
    73c5:	c5 7a 7e a5 80 fe ff 	vmovq  -0x180(%rbp),%xmm12
    73cc:	ff 
    73cd:	4c 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%r10
    73d4:	c4 63 99 22 ad 50 fe 	vpinsrq $0x1,-0x1b0(%rbp),%xmm12,%xmm13
    73db:	ff ff 01 
    73de:	4c 89 95 48 fe ff ff 	mov    %r10,-0x1b8(%rbp)
    73e5:	49 83 c2 30          	add    $0x30,%r10
    73e9:	45 84 f6             	test   %r14b,%r14b
    73ec:	4c 89 95 00 ff ff ff 	mov    %r10,-0x100(%rbp)
    73f3:	48 89 9d 60 ff ff ff 	mov    %rbx,-0xa0(%rbp)
    73fa:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    7401:	00 00 00 00 
    7405:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    740c:	00 00 00 00 
    7410:	c5 78 29 ad 50 ff ff 	vmovaps %xmm13,-0xb0(%rbp)
    7417:	ff 
    7418:	74 49                	je     7463 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe33>
    741a:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    7421:	00 
    7422:	0f 88 9e 02 00 00    	js     76c6 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1096>
    7428:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    742d:	c4 61 83 2a bd 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm15,%xmm15
    7434:	ff ff 
    7436:	48 83 bd 80 fe ff ff 	cmpq   $0x0,-0x180(%rbp)
    743d:	00 
    743e:	0f 88 5d 02 00 00    	js     76a1 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1071>
    7444:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7448:	c4 e1 eb 2a 95 80 fe 	vcvtsi2sdq -0x180(%rbp),%xmm2,%xmm2
    744f:	ff ff 
    7451:	c5 83 59 ca          	vmulsd %xmm2,%xmm15,%xmm1
    7455:	c5 f9 2e 0d b3 47 00 	vucomisd 0x47b3(%rip),%xmm1        # bc10 <_ZL5temp0+0x730>
    745c:	00 
    745d:	0f 87 c4 06 00 00    	ja     7b27 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14f7>
    7463:	4c 8d bd 50 ff ff ff 	lea    -0xb0(%rbp),%r15
    746a:	4c 89 bd 38 fe ff ff 	mov    %r15,-0x1c8(%rbp)
    7471:	49 83 c7 30          	add    $0x30,%r15
    7475:	4c 89 bd 70 ff ff ff 	mov    %r15,-0x90(%rbp)
    747c:	4c 89 bd 58 fe ff ff 	mov    %r15,-0x1a8(%rbp)
    7483:	e9 51 f3 ff ff       	jmpq   67d9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1a9>
    7488:	4c 8b a5 30 fe ff ff 	mov    -0x1d0(%rbp),%r12
    748f:	c4 81 7a 11 24 9c    	vmovss %xmm4,(%r12,%r11,4)
    7495:	48 8d 1d 7c 3b 00 00 	lea    0x3b7c(%rip),%rbx        # b018 <_IO_stdin_used+0x358>
    749c:	48 8d bd a0 fe ff ff 	lea    -0x160(%rbp),%rdi
    74a3:	48 89 9d a0 fe ff ff 	mov    %rbx,-0x160(%rbp)
    74aa:	e8 75 aa ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    74af:	4c 8d 0d 62 3b 00 00 	lea    0x3b62(%rip),%r9        # b018 <_IO_stdin_used+0x358>
    74b6:	48 8d bd 98 fe ff ff 	lea    -0x168(%rbp),%rdi
    74bd:	4c 89 8d 98 fe ff ff 	mov    %r9,-0x168(%rbp)
    74c4:	e8 5b aa ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    74c9:	49 bc ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r12
    74d0:	ff ff 3f 
    74d3:	4c 39 e3             	cmp    %r12,%rbx
    74d6:	0f 87 c5 06 00 00    	ja     7ba1 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1571>
    74dc:	4c 8d 3c 9d 00 00 00 	lea    0x0(,%rbx,4),%r15
    74e3:	00 
    74e4:	4c 8d a5 b8 fe ff ff 	lea    -0x148(%rbp),%r12
    74eb:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
    74f2:	00 00 00 00 
    74f6:	49 81 ff 00 04 00 00 	cmp    $0x400,%r15
    74fd:	4c 89 fa             	mov    %r15,%rdx
    7500:	4c 89 e7             	mov    %r12,%rdi
    7503:	48 19 f6             	sbb    %rsi,%rsi
    7506:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    750a:	48 83 c6 20          	add    $0x20,%rsi
    750e:	e8 dd a6 ff ff       	callq  1bf0 <posix_memalign@plt>
    7513:	85 c0                	test   %eax,%eax
    7515:	0f 85 c3 06 00 00    	jne    7bde <_Z17int16MatrixToArmaP13Complex_int16ii+0x15ae>
    751b:	4c 8b 95 b8 fe ff ff 	mov    -0x148(%rbp),%r10
    7522:	4d 85 d2             	test   %r10,%r10
    7525:	0f 84 b3 06 00 00    	je     7bde <_Z17int16MatrixToArmaP13Complex_int16ii+0x15ae>
    752b:	c5 fa 7e b5 80 fe ff 	vmovq  -0x180(%rbp),%xmm6
    7532:	ff 
    7533:	45 84 f6             	test   %r14b,%r14b
    7536:	4c 89 95 00 ff ff ff 	mov    %r10,-0x100(%rbp)
    753d:	c4 e3 c9 22 ad 50 fe 	vpinsrq $0x1,-0x1b0(%rbp),%xmm6,%xmm5
    7544:	ff ff 01 
    7547:	48 89 9d 60 ff ff ff 	mov    %rbx,-0xa0(%rbp)
    754e:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    7555:	00 00 00 00 
    7559:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    7560:	00 00 00 00 
    7564:	c5 f8 29 ad 50 ff ff 	vmovaps %xmm5,-0xb0(%rbp)
    756b:	ff 
    756c:	0f 85 4d 02 00 00    	jne    77bf <_Z17int16MatrixToArmaP13Complex_int16ii+0x118f>
    7572:	49 81 ff 00 04 00 00 	cmp    $0x400,%r15
    7579:	4c 89 fa             	mov    %r15,%rdx
    757c:	4c 89 e7             	mov    %r12,%rdi
    757f:	48 19 f6             	sbb    %rsi,%rsi
    7582:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    7586:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
    758d:	00 00 00 00 
    7591:	48 83 c6 20          	add    $0x20,%rsi
    7595:	e8 56 a6 ff ff       	callq  1bf0 <posix_memalign@plt>
    759a:	85 c0                	test   %eax,%eax
    759c:	0f 85 60 06 00 00    	jne    7c02 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15d2>
    75a2:	48 8b 9d b8 fe ff ff 	mov    -0x148(%rbp),%rbx
    75a9:	48 85 db             	test   %rbx,%rbx
    75ac:	48 89 9d 58 fe ff ff 	mov    %rbx,-0x1a8(%rbp)
    75b3:	0f 84 49 06 00 00    	je     7c02 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15d2>
    75b9:	4c 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%r14
    75c0:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
    75c7:	4c 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%r8
    75ce:	4c 8d 8d 50 ff ff ff 	lea    -0xb0(%rbp),%r9
    75d5:	48 89 9d 70 ff ff ff 	mov    %rbx,-0x90(%rbp)
    75dc:	4c 89 85 48 fe ff ff 	mov    %r8,-0x1b8(%rbp)
    75e3:	4c 89 b5 80 fe ff ff 	mov    %r14,-0x180(%rbp)
    75ea:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    75f1:	4c 89 8d 38 fe ff ff 	mov    %r9,-0x1c8(%rbp)
    75f8:	e9 dc f1 ff ff       	jmpq   67d9 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1a9>
    75fd:	48 89 f2             	mov    %rsi,%rdx
    7600:	48 89 f1             	mov    %rsi,%rcx
    7603:	48 d1 e9             	shr    %rcx
    7606:	83 e2 01             	and    $0x1,%edx
    7609:	48 09 d1             	or     %rdx,%rcx
    760c:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    7613:	00 
    7614:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    7618:	c4 e1 fb 2a c1       	vcvtsi2sd %rcx,%xmm0,%xmm0
    761d:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    7621:	0f 89 cf f0 ff ff    	jns    66f6 <_Z17int16MatrixToArmaP13Complex_int16ii+0xc6>
    7627:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    762e:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    7632:	49 89 d1             	mov    %rdx,%r9
    7635:	83 e2 01             	and    $0x1,%edx
    7638:	49 d1 e9             	shr    %r9
    763b:	49 09 d1             	or     %rdx,%r9
    763e:	c4 c1 f3 2a c9       	vcvtsi2sd %r9,%xmm1,%xmm1
    7643:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    7647:	e9 b7 f0 ff ff       	jmpq   6703 <_Z17int16MatrixToArmaP13Complex_int16ii+0xd3>
    764c:	48 8b 8d 70 fe ff ff 	mov    -0x190(%rbp),%rcx
    7653:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    7657:	48 89 ca             	mov    %rcx,%rdx
    765a:	83 e1 01             	and    $0x1,%ecx
    765d:	48 d1 ea             	shr    %rdx
    7660:	48 09 ca             	or     %rcx,%rdx
    7663:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    766a:	00 
    766b:	c4 e1 d3 2a ea       	vcvtsi2sd %rdx,%xmm5,%xmm5
    7670:	c5 d3 58 fd          	vaddsd %xmm5,%xmm5,%xmm7
    7674:	0f 89 34 f5 ff ff    	jns    6bae <_Z17int16MatrixToArmaP13Complex_int16ii+0x57e>
    767a:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
    7681:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    7686:	49 89 cf             	mov    %rcx,%r15
    7689:	83 e1 01             	and    $0x1,%ecx
    768c:	49 d1 ef             	shr    %r15
    768f:	49 09 cf             	or     %rcx,%r15
    7692:	c4 41 bb 2a c7       	vcvtsi2sd %r15,%xmm8,%xmm8
    7697:	c4 41 3b 58 c8       	vaddsd %xmm8,%xmm8,%xmm9
    769c:	e9 1b f5 ff ff       	jmpq   6bbc <_Z17int16MatrixToArmaP13Complex_int16ii+0x58c>
    76a1:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    76a8:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    76ac:	48 89 d0             	mov    %rdx,%rax
    76af:	83 e2 01             	and    $0x1,%edx
    76b2:	48 d1 e8             	shr    %rax
    76b5:	48 09 d0             	or     %rdx,%rax
    76b8:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
    76bd:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    76c1:	e9 8b fd ff ff       	jmpq   7451 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe21>
    76c6:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    76cd:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    76d2:	48 89 d6             	mov    %rdx,%rsi
    76d5:	83 e2 01             	and    $0x1,%edx
    76d8:	48 d1 ee             	shr    %rsi
    76db:	48 09 d6             	or     %rdx,%rsi
    76de:	c4 61 8b 2a f6       	vcvtsi2sd %rsi,%xmm14,%xmm14
    76e3:	c4 41 0b 58 fe       	vaddsd %xmm14,%xmm14,%xmm15
    76e8:	e9 49 fd ff ff       	jmpq   7436 <_Z17int16MatrixToArmaP13Complex_int16ii+0xe06>
    76ed:	c5 f8 77             	vzeroupper 
    76f0:	e9 86 fc ff ff       	jmpq   737b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    76f5:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    76fc:	00 
    76fd:	0f 84 78 fc ff ff    	je     737b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7703:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7708:	48 39 8d 78 fe ff ff 	cmp    %rcx,-0x188(%rbp)
    770f:	76 31                	jbe    7742 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1112>
    7711:	48 83 bd 78 fe ff ff 	cmpq   $0x0,-0x188(%rbp)
    7718:	00 
    7719:	0f 88 20 05 00 00    	js     7c3f <_Z17int16MatrixToArmaP13Complex_int16ii+0x160f>
    771f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    7723:	c4 e1 f3 2a 8d 78 fe 	vcvtsi2sdq -0x188(%rbp),%xmm1,%xmm1
    772a:	ff ff 
    772c:	c5 f3 59 1d e4 44 00 	vmulsd 0x44e4(%rip),%xmm1,%xmm3        # bc18 <_ZL5temp0+0x738>
    7733:	00 
    7734:	c5 f9 2e 1d d4 44 00 	vucomisd 0x44d4(%rip),%xmm3        # bc10 <_ZL5temp0+0x730>
    773b:	00 
    773c:	0f 87 27 05 00 00    	ja     7c69 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1639>
    7742:	4c 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%r10
    7749:	4c 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%r14
    7750:	4c 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%r9
    7757:	4d 89 32             	mov    %r14,(%r10)
    775a:	4d 89 4a 08          	mov    %r9,0x8(%r10)
    775e:	e9 18 fc ff ff       	jmpq   737b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7763:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    776a:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    776e:	48 89 d1             	mov    %rdx,%rcx
    7771:	83 e2 01             	and    $0x1,%edx
    7774:	48 d1 e9             	shr    %rcx
    7777:	48 09 d1             	or     %rdx,%rcx
    777a:	c4 e1 c3 2a f9       	vcvtsi2sd %rcx,%xmm7,%xmm7
    777f:	c5 43 58 c7          	vaddsd %xmm7,%xmm7,%xmm8
    7783:	e9 17 f0 ff ff       	jmpq   679f <_Z17int16MatrixToArmaP13Complex_int16ii+0x16f>
    7788:	c4 e1 f9 7e da       	vmovq  %xmm3,%rdx
    778d:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
    7792:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    7796:	48 d1 eb             	shr    %rbx
    7799:	83 e2 01             	and    $0x1,%edx
    779c:	48 09 d3             	or     %rdx,%rbx
    779f:	c4 e1 cb 2a f3       	vcvtsi2sd %rbx,%xmm6,%xmm6
    77a4:	c5 cb 58 ee          	vaddsd %xmm6,%xmm6,%xmm5
    77a8:	e9 d6 ef ff ff       	jmpq   6783 <_Z17int16MatrixToArmaP13Complex_int16ii+0x153>
    77ad:	4c 39 a5 78 fe ff ff 	cmp    %r12,-0x188(%rbp)
    77b4:	0f 87 cb f3 ff ff    	ja     6b85 <_Z17int16MatrixToArmaP13Complex_int16ii+0x555>
    77ba:	e9 10 f4 ff ff       	jmpq   6bcf <_Z17int16MatrixToArmaP13Complex_int16ii+0x59f>
    77bf:	48 83 bd 50 fe ff ff 	cmpq   $0x0,-0x1b0(%rbp)
    77c6:	00 
    77c7:	0f 88 27 03 00 00    	js     7af4 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14c4>
    77cd:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
    77d2:	c4 61 bb 2a 85 50 fe 	vcvtsi2sdq -0x1b0(%rbp),%xmm8,%xmm8
    77d9:	ff ff 
    77db:	48 83 bd 80 fe ff ff 	cmpq   $0x0,-0x180(%rbp)
    77e2:	00 
    77e3:	0f 88 e4 02 00 00    	js     7acd <_Z17int16MatrixToArmaP13Complex_int16ii+0x149d>
    77e9:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    77ee:	c4 61 ab 2a 95 80 fe 	vcvtsi2sdq -0x180(%rbp),%xmm10,%xmm10
    77f5:	ff ff 
    77f7:	c4 41 3b 59 da       	vmulsd %xmm10,%xmm8,%xmm11
    77fc:	c5 79 2e 1d 0c 44 00 	vucomisd 0x440c(%rip),%xmm11        # bc10 <_ZL5temp0+0x730>
    7803:	00 
    7804:	0f 87 0f 03 00 00    	ja     7b19 <_Z17int16MatrixToArmaP13Complex_int16ii+0x14e9>
    780a:	4c 8d 3c 9d 00 00 00 	lea    0x0(,%rbx,4),%r15
    7811:	00 
    7812:	e9 5b fd ff ff       	jmpq   7572 <_Z17int16MatrixToArmaP13Complex_int16ii+0xf42>
    7817:	49 89 dc             	mov    %rbx,%r12
    781a:	45 31 d2             	xor    %r10d,%r10d
    781d:	41 83 e4 07          	and    $0x7,%r12d
    7821:	0f 84 31 01 00 00    	je     7958 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1328>
    7827:	49 83 fc 01          	cmp    $0x1,%r12
    782b:	0f 84 fa 00 00 00    	je     792b <_Z17int16MatrixToArmaP13Complex_int16ii+0x12fb>
    7831:	49 83 fc 02          	cmp    $0x2,%r12
    7835:	0f 84 cc 00 00 00    	je     7907 <_Z17int16MatrixToArmaP13Complex_int16ii+0x12d7>
    783b:	49 83 fc 03          	cmp    $0x3,%r12
    783f:	0f 84 9e 00 00 00    	je     78e3 <_Z17int16MatrixToArmaP13Complex_int16ii+0x12b3>
    7845:	49 83 fc 04          	cmp    $0x4,%r12
    7849:	74 74                	je     78bf <_Z17int16MatrixToArmaP13Complex_int16ii+0x128f>
    784b:	49 83 fc 05          	cmp    $0x5,%r12
    784f:	74 4a                	je     789b <_Z17int16MatrixToArmaP13Complex_int16ii+0x126b>
    7851:	49 83 fc 06          	cmp    $0x6,%r12
    7855:	74 20                	je     7877 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1247>
    7857:	4c 8b ad 58 fe ff ff 	mov    -0x1a8(%rbp),%r13
    785e:	c5 fa 10 31          	vmovss (%rcx),%xmm6
    7862:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    7868:	c4 c1 7a 10 5d 00    	vmovss 0x0(%r13),%xmm3
    786e:	c5 fa 11 58 04       	vmovss %xmm3,0x4(%rax)
    7873:	c5 fa 11 30          	vmovss %xmm6,(%rax)
    7877:	48 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%rsi
    787e:	c4 21 7a 10 24 91    	vmovss (%rcx,%r10,4),%xmm12
    7884:	c4 21 7a 10 1c 96    	vmovss (%rsi,%r10,4),%xmm11
    788a:	c4 21 7a 11 5c d0 04 	vmovss %xmm11,0x4(%rax,%r10,8)
    7891:	c4 21 7a 11 24 d0    	vmovss %xmm12,(%rax,%r10,8)
    7897:	49 83 c2 01          	add    $0x1,%r10
    789b:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
    78a2:	c4 a1 7a 10 3c 91    	vmovss (%rcx,%r10,4),%xmm7
    78a8:	c4 a1 7a 10 2c 97    	vmovss (%rdi,%r10,4),%xmm5
    78ae:	c4 a1 7a 11 6c d0 04 	vmovss %xmm5,0x4(%rax,%r10,8)
    78b5:	c4 a1 7a 11 3c d0    	vmovss %xmm7,(%rax,%r10,8)
    78bb:	49 83 c2 01          	add    $0x1,%r10
    78bf:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    78c6:	c4 21 7a 10 0c 91    	vmovss (%rcx,%r10,4),%xmm9
    78cc:	c4 21 7a 10 04 92    	vmovss (%rdx,%r10,4),%xmm8
    78d2:	c4 21 7a 11 44 d0 04 	vmovss %xmm8,0x4(%rax,%r10,8)
    78d9:	c4 21 7a 11 0c d0    	vmovss %xmm9,(%rax,%r10,8)
    78df:	49 83 c2 01          	add    $0x1,%r10
    78e3:	4c 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%r15
    78ea:	c4 21 7a 10 14 91    	vmovss (%rcx,%r10,4),%xmm10
    78f0:	c4 81 7a 10 24 97    	vmovss (%r15,%r10,4),%xmm4
    78f6:	c4 a1 7a 11 64 d0 04 	vmovss %xmm4,0x4(%rax,%r10,8)
    78fd:	c4 21 7a 11 14 d0    	vmovss %xmm10,(%rax,%r10,8)
    7903:	49 83 c2 01          	add    $0x1,%r10
    7907:	4c 8b b5 58 fe ff ff 	mov    -0x1a8(%rbp),%r14
    790e:	c4 21 7a 10 34 91    	vmovss (%rcx,%r10,4),%xmm14
    7914:	c4 01 7a 10 2c 96    	vmovss (%r14,%r10,4),%xmm13
    791a:	c4 21 7a 11 6c d0 04 	vmovss %xmm13,0x4(%rax,%r10,8)
    7921:	c4 21 7a 11 34 d0    	vmovss %xmm14,(%rax,%r10,8)
    7927:	49 83 c2 01          	add    $0x1,%r10
    792b:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    7932:	c4 a1 7a 10 04 91    	vmovss (%rcx,%r10,4),%xmm0
    7938:	c4 01 7a 10 3c 91    	vmovss (%r9,%r10,4),%xmm15
    793e:	c4 21 7a 11 7c d0 04 	vmovss %xmm15,0x4(%rax,%r10,8)
    7945:	c4 a1 7a 11 04 d0    	vmovss %xmm0,(%rax,%r10,8)
    794b:	49 83 c2 01          	add    $0x1,%r10
    794f:	4c 39 d3             	cmp    %r10,%rbx
    7952:	0f 84 23 fa ff ff    	je     737b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7958:	4c 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%r8
    795f:	c4 81 7a 10 14 90    	vmovss (%r8,%r10,4),%xmm2
    7965:	4d 8d 5a 01          	lea    0x1(%r10),%r11
    7969:	4d 8d 62 02          	lea    0x2(%r10),%r12
    796d:	c4 a1 7a 10 0c 91    	vmovss (%rcx,%r10,4),%xmm1
    7973:	4d 8d 6a 03          	lea    0x3(%r10),%r13
    7977:	c4 a1 7a 11 0c d0    	vmovss %xmm1,(%rax,%r10,8)
    797d:	49 8d 72 04          	lea    0x4(%r10),%rsi
    7981:	49 8d 7a 05          	lea    0x5(%r10),%rdi
    7985:	c4 a1 7a 11 54 d0 04 	vmovss %xmm2,0x4(%rax,%r10,8)
    798c:	49 8d 52 06          	lea    0x6(%r10),%rdx
    7990:	4d 8d 7a 07          	lea    0x7(%r10),%r15
    7994:	49 83 c2 08          	add    $0x8,%r10
    7998:	c4 81 7a 10 1c 98    	vmovss (%r8,%r11,4),%xmm3
    799e:	4c 39 d3             	cmp    %r10,%rbx
    79a1:	c4 a1 7a 10 34 99    	vmovss (%rcx,%r11,4),%xmm6
    79a7:	c4 a1 7a 11 34 d8    	vmovss %xmm6,(%rax,%r11,8)
    79ad:	c4 a1 7a 11 5c d8 04 	vmovss %xmm3,0x4(%rax,%r11,8)
    79b4:	c4 01 7a 10 1c a0    	vmovss (%r8,%r12,4),%xmm11
    79ba:	c4 21 7a 10 24 a1    	vmovss (%rcx,%r12,4),%xmm12
    79c0:	c4 21 7a 11 24 e0    	vmovss %xmm12,(%rax,%r12,8)
    79c6:	c4 21 7a 11 5c e0 04 	vmovss %xmm11,0x4(%rax,%r12,8)
    79cd:	c4 81 7a 10 2c a8    	vmovss (%r8,%r13,4),%xmm5
    79d3:	c4 a1 7a 10 3c a9    	vmovss (%rcx,%r13,4),%xmm7
    79d9:	c4 a1 7a 11 3c e8    	vmovss %xmm7,(%rax,%r13,8)
    79df:	c4 a1 7a 11 6c e8 04 	vmovss %xmm5,0x4(%rax,%r13,8)
    79e6:	c4 41 7a 10 04 b0    	vmovss (%r8,%rsi,4),%xmm8
    79ec:	c5 7a 10 0c b1       	vmovss (%rcx,%rsi,4),%xmm9
    79f1:	c5 7a 11 0c f0       	vmovss %xmm9,(%rax,%rsi,8)
    79f6:	c5 7a 11 44 f0 04    	vmovss %xmm8,0x4(%rax,%rsi,8)
    79fc:	c4 c1 7a 10 24 b8    	vmovss (%r8,%rdi,4),%xmm4
    7a02:	c5 7a 10 14 b9       	vmovss (%rcx,%rdi,4),%xmm10
    7a07:	c5 7a 11 14 f8       	vmovss %xmm10,(%rax,%rdi,8)
    7a0c:	c5 fa 11 64 f8 04    	vmovss %xmm4,0x4(%rax,%rdi,8)
    7a12:	c4 41 7a 10 2c 90    	vmovss (%r8,%rdx,4),%xmm13
    7a18:	c5 7a 10 34 91       	vmovss (%rcx,%rdx,4),%xmm14
    7a1d:	c5 7a 11 34 d0       	vmovss %xmm14,(%rax,%rdx,8)
    7a22:	c5 7a 11 6c d0 04    	vmovss %xmm13,0x4(%rax,%rdx,8)
    7a28:	c4 01 7a 10 3c b8    	vmovss (%r8,%r15,4),%xmm15
    7a2e:	c4 a1 7a 10 04 b9    	vmovss (%rcx,%r15,4),%xmm0
    7a34:	c4 a1 7a 11 04 f8    	vmovss %xmm0,(%rax,%r15,8)
    7a3a:	c4 21 7a 11 7c f8 04 	vmovss %xmm15,0x4(%rax,%r15,8)
    7a41:	0f 85 18 ff ff ff    	jne    795f <_Z17int16MatrixToArmaP13Complex_int16ii+0x132f>
    7a47:	e9 2f f9 ff ff       	jmpq   737b <_Z17int16MatrixToArmaP13Complex_int16ii+0xd4b>
    7a4c:	0f 1f 40 00          	nopl   0x0(%rax)
    7a50:	49 b9 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%r9
    7a57:	ff ff 1f 
    7a5a:	4c 39 cb             	cmp    %r9,%rbx
    7a5d:	0f 87 c2 01 00 00    	ja     7c25 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15f5>
    7a63:	48 8d 14 dd 00 00 00 	lea    0x0(,%rbx,8),%rdx
    7a6a:	00 
    7a6b:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7a72:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
    7a79:	00 00 00 00 
    7a7d:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    7a84:	48 19 f6             	sbb    %rsi,%rsi
    7a87:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    7a8b:	48 83 c6 20          	add    $0x20,%rsi
    7a8f:	e8 5c a1 ff ff       	callq  1bf0 <posix_memalign@plt>
    7a94:	85 c0                	test   %eax,%eax
    7a96:	0f 85 84 01 00 00    	jne    7c20 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15f0>
    7a9c:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    7aa3:	48 85 c0             	test   %rax,%rax
    7aa6:	0f 84 74 01 00 00    	je     7c20 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15f0>
    7aac:	4c 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11
    7ab3:	4c 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%r8
    7aba:	4c 89 9d 58 fe ff ff 	mov    %r11,-0x1a8(%rbp)
    7ac1:	49 89 40 20          	mov    %rax,0x20(%r8)
    7ac5:	4d 89 da             	mov    %r11,%r10
    7ac8:	e9 3c f1 ff ff       	jmpq   6c09 <_Z17int16MatrixToArmaP13Complex_int16ii+0x5d9>
    7acd:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    7ad4:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    7ad9:	48 89 d7             	mov    %rdx,%rdi
    7adc:	83 e2 01             	and    $0x1,%edx
    7adf:	48 d1 ef             	shr    %rdi
    7ae2:	48 09 d7             	or     %rdx,%rdi
    7ae5:	c4 61 b3 2a cf       	vcvtsi2sd %rdi,%xmm9,%xmm9
    7aea:	c4 41 33 58 d1       	vaddsd %xmm9,%xmm9,%xmm10
    7aef:	e9 03 fd ff ff       	jmpq   77f7 <_Z17int16MatrixToArmaP13Complex_int16ii+0x11c7>
    7af4:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    7afb:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    7aff:	49 89 d7             	mov    %rdx,%r15
    7b02:	83 e2 01             	and    $0x1,%edx
    7b05:	49 d1 ef             	shr    %r15
    7b08:	49 09 d7             	or     %rdx,%r15
    7b0b:	c4 c1 c3 2a ff       	vcvtsi2sd %r15,%xmm7,%xmm7
    7b10:	c5 43 58 c7          	vaddsd %xmm7,%xmm7,%xmm8
    7b14:	e9 c2 fc ff ff       	jmpq   77db <_Z17int16MatrixToArmaP13Complex_int16ii+0x11ab>
    7b19:	4c 8d ad e0 fe ff ff 	lea    -0x120(%rbp),%r13
    7b20:	4c 89 ad 48 fe ff ff 	mov    %r13,-0x1b8(%rbp)
    7b27:	48 8d 35 82 34 00 00 	lea    0x3482(%rip),%rsi        # afb0 <_IO_stdin_used+0x2f0>
    7b2e:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    7b35:	48 89 b5 a8 fe ff ff 	mov    %rsi,-0x158(%rbp)
    7b3c:	e8 e3 a3 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7b41:	49 89 c7             	mov    %rax,%r15
    7b44:	c5 f8 77             	vzeroupper 
    7b47:	48 8b bd 38 fe ff ff 	mov    -0x1c8(%rbp),%rdi
    7b4e:	e8 5d 23 00 00       	callq  9eb0 <_ZN4arma3MatIfED1Ev>
    7b53:	48 8b bd 48 fe ff ff 	mov    -0x1b8(%rbp),%rdi
    7b5a:	e8 51 23 00 00       	callq  9eb0 <_ZN4arma3MatIfED1Ev>
    7b5f:	4c 89 ff             	mov    %r15,%rdi
    7b62:	e8 d9 9f ff ff       	callq  1b40 <_Unwind_Resume@plt>
    7b67:	48 8d 9d c0 fe ff ff 	lea    -0x140(%rbp),%rbx
    7b6e:	4c 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%r8
    7b75:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
    7b7c:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    7b83:	48 8b b5 70 fe ff ff 	mov    -0x190(%rbp),%rsi
    7b8a:	4c 8d 0d db 31 00 00 	lea    0x31db(%rip),%r9        # ad6c <_IO_stdin_used+0xac>
    7b91:	48 89 df             	mov    %rbx,%rdi
    7b94:	e8 da a1 ff ff       	callq  1d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>
    7b99:	48 89 df             	mov    %rbx,%rdi
    7b9c:	e8 7f a0 ff ff       	callq  1c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>
    7ba1:	4c 8d 1d 38 34 00 00 	lea    0x3438(%rip),%r11        # afe0 <_IO_stdin_used+0x320>
    7ba8:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7baf:	4c 89 9d b8 fe ff ff 	mov    %r11,-0x148(%rbp)
    7bb6:	e8 69 a3 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7bbb:	48 8b bd c0 fe ff ff 	mov    -0x140(%rbp),%rdi
    7bc2:	48 83 c3 10          	add    $0x10,%rbx
    7bc6:	49 89 c4             	mov    %rax,%r12
    7bc9:	48 39 df             	cmp    %rbx,%rdi
    7bcc:	74 2f                	je     7bfd <_Z17int16MatrixToArmaP13Complex_int16ii+0x15cd>
    7bce:	c5 f8 77             	vzeroupper 
    7bd1:	e8 0a 9f ff ff       	callq  1ae0 <_ZdlPv@plt>
    7bd6:	4d 89 e7             	mov    %r12,%r15
    7bd9:	e9 69 ff ff ff       	jmpq   7b47 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1517>
    7bde:	e8 da a2 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    7be3:	48 8d 3d c6 33 00 00 	lea    0x33c6(%rip),%rdi        # afb0 <_IO_stdin_used+0x2f0>
    7bea:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
    7bf1:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7bf8:	e8 27 a3 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7bfd:	c5 f8 77             	vzeroupper 
    7c00:	eb d4                	jmp    7bd6 <_Z17int16MatrixToArmaP13Complex_int16ii+0x15a6>
    7c02:	4c 8d ad e0 fe ff ff 	lea    -0x120(%rbp),%r13
    7c09:	4c 89 ad 48 fe ff ff 	mov    %r13,-0x1b8(%rbp)
    7c10:	e8 a8 a2 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    7c15:	49 89 c7             	mov    %rax,%r15
    7c18:	c5 f8 77             	vzeroupper 
    7c1b:	e9 33 ff ff ff       	jmpq   7b53 <_Z17int16MatrixToArmaP13Complex_int16ii+0x1523>
    7c20:	e8 98 a2 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    7c25:	48 8d 1d b4 33 00 00 	lea    0x33b4(%rip),%rbx        # afe0 <_IO_stdin_used+0x320>
    7c2c:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    7c33:	48 89 9d b8 fe ff ff 	mov    %rbx,-0x148(%rbp)
    7c3a:	e8 e5 a2 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7c3f:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    7c46:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7c4a:	48 89 d3             	mov    %rdx,%rbx
    7c4d:	83 e2 01             	and    $0x1,%edx
    7c50:	48 d1 eb             	shr    %rbx
    7c53:	48 09 d3             	or     %rdx,%rbx
    7c56:	c4 e1 eb 2a d3       	vcvtsi2sd %rbx,%xmm2,%xmm2
    7c5b:	c5 eb 58 ca          	vaddsd %xmm2,%xmm2,%xmm1
    7c5f:	e9 c8 fa ff ff       	jmpq   772c <_Z17int16MatrixToArmaP13Complex_int16ii+0x10fc>
    7c64:	e8 a7 9d ff ff       	callq  1a10 <__stack_chk_fail@plt>
    7c69:	4c 8d 05 40 33 00 00 	lea    0x3340(%rip),%r8        # afb0 <_IO_stdin_used+0x2f0>
    7c70:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
    7c77:	4c 89 85 b0 fe ff ff 	mov    %r8,-0x150(%rbp)
    7c7e:	e8 a1 a2 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    7c83:	0f 1f 00             	nopl   (%rax)
    7c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    7c8d:	00 00 00 

0000000000007c90 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i>:
    7c90:	55                   	push   %rbp
    7c91:	48 89 e5             	mov    %rsp,%rbp
    7c94:	41 57                	push   %r15
    7c96:	41 56                	push   %r14
    7c98:	41 55                	push   %r13
    7c9a:	41 54                	push   %r12
    7c9c:	41 89 cf             	mov    %ecx,%r15d
    7c9f:	53                   	push   %rbx
    7ca0:	49 89 fd             	mov    %rdi,%r13
    7ca3:	49 89 f6             	mov    %rsi,%r14
    7ca6:	48 89 d3             	mov    %rdx,%rbx
    7ca9:	48 81 ec 98 01 00 00 	sub    $0x198,%rsp
    7cb0:	48 89 95 78 fe ff ff 	mov    %rdx,-0x188(%rbp)
    7cb7:	89 8d 64 fe ff ff    	mov    %ecx,-0x19c(%rbp)
    7cbd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7cc4:	00 00 
    7cc6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    7cca:	31 c0                	xor    %eax,%eax
    7ccc:	e8 4f af ff ff       	callq  2c20 <_Z7getTimev>
    7cd1:	45 85 ff             	test   %r15d,%r15d
    7cd4:	c5 fb 11 85 48 fe ff 	vmovsd %xmm0,-0x1b8(%rbp)
    7cdb:	ff 
    7cdc:	0f 8e c9 03 00 00    	jle    80ab <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x41b>
    7ce2:	49 39 de             	cmp    %rbx,%r14
    7ce5:	48 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%rcx
    7cec:	c7 85 74 fe ff ff 00 	movl   $0x0,-0x18c(%rbp)
    7cf3:	00 00 00 
    7cf6:	0f 94 c2             	sete   %dl
    7cf9:	49 39 dd             	cmp    %rbx,%r13
    7cfc:	0f 94 c0             	sete   %al
    7cff:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
    7d06:	48 83 c1 30          	add    $0x30,%rcx
    7d0a:	09 c2                	or     %eax,%edx
    7d0c:	48 89 8d 40 fe ff ff 	mov    %rcx,-0x1c0(%rbp)
    7d13:	88 95 73 fe ff ff    	mov    %dl,-0x18d(%rbp)
    7d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7d20:	80 bd 73 fe ff ff 00 	cmpb   $0x0,-0x18d(%rbp)
    7d27:	4d 8b 46 08          	mov    0x8(%r14),%r8
    7d2b:	49 8b 36             	mov    (%r14),%rsi
    7d2e:	49 8b 55 08          	mov    0x8(%r13),%rdx
    7d32:	49 8b 5d 00          	mov    0x0(%r13),%rbx
    7d36:	4d 89 c4             	mov    %r8,%r12
    7d39:	0f 84 71 01 00 00    	je     7eb0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x220>
    7d3f:	62 51 15 28 ef ed    	vpxord %ymm13,%ymm13,%ymm13
    7d45:	48 8d bd 40 ff ff ff 	lea    -0xc0(%rbp),%rdi
    7d4c:	31 c0                	xor    %eax,%eax
    7d4e:	b9 10 00 00 00       	mov    $0x10,%ecx
    7d53:	48 39 f2             	cmp    %rsi,%rdx
    7d56:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    7d5d:	00 00 00 00 
    7d61:	c7 85 28 ff ff ff 00 	movl   $0x0,-0xd8(%rbp)
    7d68:	00 00 00 
    7d6b:	c7 85 2c ff ff ff 00 	movl   $0x0,-0xd4(%rbp)
    7d72:	00 00 00 
    7d75:	c5 78 29 ad 10 ff ff 	vmovaps %xmm13,-0xf0(%rbp)
    7d7c:	ff 
    7d7d:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    7d84:	00 00 00 00 
    7d88:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    7d8b:	0f 85 d9 0e 00 00    	jne    8c6a <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfda>
    7d91:	48 85 db             	test   %rbx,%rbx
    7d94:	0f 84 3e 03 00 00    	je     80d8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x448>
    7d9a:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7d9f:	48 39 d3             	cmp    %rdx,%rbx
    7da2:	0f 86 38 07 00 00    	jbe    84e0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x850>
    7da8:	48 85 db             	test   %rbx,%rbx
    7dab:	0f 88 7f 07 00 00    	js     8530 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8a0>
    7db1:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    7db6:	c4 61 8b 2a f3       	vcvtsi2sd %rbx,%xmm14,%xmm14
    7dbb:	4d 85 c0             	test   %r8,%r8
    7dbe:	0f 88 2c 07 00 00    	js     84f0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x860>
    7dc4:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7dc8:	c4 c1 eb 2a d0       	vcvtsi2sd %r8,%xmm2,%xmm2
    7dcd:	c4 c1 6b 59 ce       	vmulsd %xmm14,%xmm2,%xmm1
    7dd2:	c5 f9 2e 0d 36 3e 00 	vucomisd 0x3e36(%rip),%xmm1        # bc10 <_ZL5temp0+0x730>
    7dd9:	00 
    7dda:	0f 87 b8 07 00 00    	ja     8598 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x908>
    7de0:	49 89 df             	mov    %rbx,%r15
    7de3:	4d 0f af f8          	imul   %r8,%r15
    7de7:	4d 85 ff             	test   %r15,%r15
    7dea:	0f 84 00 03 00 00    	je     80f0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x460>
    7df0:	49 83 ff 10          	cmp    $0x10,%r15
    7df4:	0f 87 46 0b 00 00    	ja     8940 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xcb0>
    7dfa:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
    7e01:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    7e08:	48 89 bd 50 fe ff ff 	mov    %rdi,-0x1b0(%rbp)
    7e0f:	48 89 95 30 ff ff ff 	mov    %rdx,-0xd0(%rbp)
    7e16:	48 89 9d 58 fe ff ff 	mov    %rbx,-0x1a8(%rbp)
    7e1d:	49 83 7d 10 00       	cmpq   $0x0,0x10(%r13)
    7e22:	c5 fa 7e 9d 58 fe ff 	vmovq  -0x1a8(%rbp),%xmm3
    7e29:	ff 
    7e2a:	c7 85 2c ff ff ff 00 	movl   $0x0,-0xd4(%rbp)
    7e31:	00 00 00 
    7e34:	c4 c3 e1 22 e0 01    	vpinsrq $0x1,%r8,%xmm3,%xmm4
    7e3a:	4c 89 bd 20 ff ff ff 	mov    %r15,-0xe0(%rbp)
    7e41:	c5 f8 29 a5 10 ff ff 	vmovaps %xmm4,-0xf0(%rbp)
    7e48:	ff 
    7e49:	0f 84 49 0d 00 00    	je     8b98 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf08>
    7e4f:	49 83 7e 10 00       	cmpq   $0x0,0x10(%r14)
    7e54:	0f 84 3e 0d 00 00    	je     8b98 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf08>
    7e5a:	4d 8b 46 08          	mov    0x8(%r14),%r8
    7e5e:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    7e62:	49 8b 45 08          	mov    0x8(%r13),%rax
    7e66:	48 81 ff ff ff ff 7f 	cmp    $0x7fffffff,%rdi
    7e6d:	41 0f 97 c2          	seta   %r10b
    7e71:	48 3d ff ff ff 7f    	cmp    $0x7fffffff,%rax
    7e77:	41 0f 97 c3          	seta   %r11b
    7e7b:	49 83 f8 01          	cmp    $0x1,%r8
    7e7f:	0f 84 ab 09 00 00    	je     8830 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xba0>
    7e85:	49 81 3e ff ff ff 7f 	cmpq   $0x7fffffff,(%r14)
    7e8c:	0f 97 c2             	seta   %dl
    7e8f:	49 81 f8 ff ff ff 7f 	cmp    $0x7fffffff,%r8
    7e96:	41 0f 97 c0          	seta   %r8b
    7e9a:	44 09 c2             	or     %r8d,%edx
    7e9d:	44 08 d2             	or     %r10b,%dl
    7ea0:	75 09                	jne    7eab <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x21b>
    7ea2:	45 84 db             	test   %r11b,%r11b
    7ea5:	0f 84 a5 07 00 00    	je     8650 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x9c0>
    7eab:	e8 55 a1 ff ff       	callq  2005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>
    7eb0:	48 39 f2             	cmp    %rsi,%rdx
    7eb3:	0f 85 4c 0e 00 00    	jne    8d05 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1075>
    7eb9:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    7ec0:	48 39 1f             	cmp    %rbx,(%rdi)
    7ec3:	0f 84 af 05 00 00    	je     8478 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x7e8>
    7ec9:	4c 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%r9
    7ed0:	4c 8d 3d b9 33 00 00 	lea    0x33b9(%rip),%r15        # b290 <_IO_stdin_used+0x5d0>
    7ed7:	be 00 00 00 00       	mov    $0x0,%esi
    7edc:	45 8b 59 1c          	mov    0x1c(%r9),%r11d
    7ee0:	45 8b 51 18          	mov    0x18(%r9),%r10d
    7ee4:	41 83 fb 03          	cmp    $0x3,%r11d
    7ee8:	0f 94 c1             	sete   %cl
    7eeb:	49 0f 44 f7          	cmove  %r15,%rsi
    7eef:	45 85 d2             	test   %r10d,%r10d
    7ef2:	74 3c                	je     7f30 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2a0>
    7ef4:	48 89 da             	mov    %rbx,%rdx
    7ef7:	4c 09 c2             	or     %r8,%rdx
    7efa:	0f 84 50 0c 00 00    	je     8b50 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xec0>
    7f00:	41 83 fa 01          	cmp    $0x1,%r10d
    7f04:	0f 84 26 0c 00 00    	je     8b30 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xea0>
    7f0a:	41 83 fa 02          	cmp    $0x2,%r10d
    7f0e:	75 20                	jne    7f30 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2a0>
    7f10:	48 83 fb 01          	cmp    $0x1,%rbx
    7f14:	0f 84 fe 04 00 00    	je     8418 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x788>
    7f1a:	48 8d 35 ef 33 00 00 	lea    0x33ef(%rip),%rsi        # b310 <_IO_stdin_used+0x650>
    7f21:	b9 01 00 00 00       	mov    $0x1,%ecx
    7f26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    7f2d:	00 00 00 
    7f30:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    7f35:	48 39 fb             	cmp    %rdi,%rbx
    7f38:	0f 86 da 04 00 00    	jbe    8418 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x788>
    7f3e:	48 85 db             	test   %rbx,%rbx
    7f41:	0f 88 e9 04 00 00    	js     8430 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x7a0>
    7f47:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    7f4b:	4d 85 c0             	test   %r8,%r8
    7f4e:	c4 e1 eb 2a d3       	vcvtsi2sd %rbx,%xmm2,%xmm2
    7f53:	0f 88 fd 04 00 00    	js     8456 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x7c6>
    7f59:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    7f5d:	c4 c1 e3 2a d8       	vcvtsi2sd %r8,%xmm3,%xmm3
    7f62:	c5 eb 59 e3          	vmulsd %xmm3,%xmm2,%xmm4
    7f66:	c5 f9 2e 25 a2 3c 00 	vucomisd 0x3ca2(%rip),%xmm4        # bc10 <_ZL5temp0+0x730>
    7f6d:	00 
    7f6e:	0f 87 dc 0c 00 00    	ja     8c50 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfc0>
    7f74:	84 c9                	test   %cl,%cl
    7f76:	0f 85 db 0c 00 00    	jne    8c57 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfc7>
    7f7c:	4c 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%r8
    7f83:	49 89 df             	mov    %rbx,%r15
    7f86:	4d 0f af fc          	imul   %r12,%r15
    7f8a:	49 8b 40 10          	mov    0x10(%r8),%rax
    7f8e:	4c 39 f8             	cmp    %r15,%rax
    7f91:	0f 84 81 05 00 00    	je     8518 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x888>
    7f97:	41 83 fb 02          	cmp    $0x2,%r11d
    7f9b:	0f 84 4a 0d 00 00    	je     8ceb <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x105b>
    7fa1:	45 85 db             	test   %r11d,%r11d
    7fa4:	41 0f 94 c3          	sete   %r11b
    7fa8:	4c 39 f8             	cmp    %r15,%rax
    7fab:	0f 86 df 04 00 00    	jbe    8490 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x800>
    7fb1:	49 83 ff 10          	cmp    $0x10,%r15
    7fb5:	77 3b                	ja     7ff2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x362>
    7fb7:	45 84 db             	test   %r11b,%r11b
    7fba:	74 36                	je     7ff2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x362>
    7fbc:	48 83 f8 10          	cmp    $0x10,%rax
    7fc0:	76 15                	jbe    7fd7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x347>
    7fc2:	4c 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%r8
    7fc9:	49 8b 78 20          	mov    0x20(%r8),%rdi
    7fcd:	48 85 ff             	test   %rdi,%rdi
    7fd0:	74 05                	je     7fd7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x347>
    7fd2:	e8 09 9a ff ff       	callq  19e0 <free@plt>
    7fd7:	4c 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%r11
    7fde:	4d 85 ff             	test   %r15,%r15
    7fe1:	bf 00 00 00 00       	mov    $0x0,%edi
    7fe6:	49 8d 4b 30          	lea    0x30(%r11),%rcx
    7fea:	48 0f 44 cf          	cmove  %rdi,%rcx
    7fee:	49 89 4b 20          	mov    %rcx,0x20(%r11)
    7ff2:	4c 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%r9
    7ff9:	49 89 19             	mov    %rbx,(%r9)
    7ffc:	4d 89 61 08          	mov    %r12,0x8(%r9)
    8000:	4d 89 79 10          	mov    %r15,0x10(%r9)
    8004:	49 83 7d 10 00       	cmpq   $0x0,0x10(%r13)
    8009:	74 65                	je     8070 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3e0>
    800b:	49 83 7e 10 00       	cmpq   $0x0,0x10(%r14)
    8010:	74 5e                	je     8070 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3e0>
    8012:	49 8b 45 08          	mov    0x8(%r13),%rax
    8016:	49 8b 55 00          	mov    0x0(%r13),%rdx
    801a:	4d 8b 56 08          	mov    0x8(%r14),%r10
    801e:	48 3d ff ff ff 7f    	cmp    $0x7fffffff,%rax
    8024:	40 0f 97 c6          	seta   %sil
    8028:	48 81 fa ff ff ff 7f 	cmp    $0x7fffffff,%rdx
    802f:	41 0f 97 c3          	seta   %r11b
    8033:	49 83 fa 01          	cmp    $0x1,%r10
    8037:	0f 84 2b 0a 00 00    	je     8a68 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xdd8>
    803d:	49 81 3e ff ff ff 7f 	cmpq   $0x7fffffff,(%r14)
    8044:	41 0f 97 c0          	seta   %r8b
    8048:	49 81 fa ff ff ff 7f 	cmp    $0x7fffffff,%r10
    804f:	0f 97 c1             	seta   %cl
    8052:	41 09 c8             	or     %ecx,%r8d
    8055:	41 08 f0             	or     %sil,%r8b
    8058:	75 09                	jne    8063 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3d3>
    805a:	45 84 db             	test   %r11b,%r11b
    805d:	0f 84 ed 06 00 00    	je     8750 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xac0>
    8063:	e8 9d 9f ff ff       	callq  2005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>
    8068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    806f:	00 
    8070:	48 8b b5 78 fe ff ff 	mov    -0x188(%rbp),%rsi
    8077:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    807b:	48 85 d2             	test   %rdx,%rdx
    807e:	0f 85 84 0b 00 00    	jne    8c08 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf78>
    8084:	0f 1f 40 00          	nopl   0x0(%rax)
    8088:	83 85 74 fe ff ff 01 	addl   $0x1,-0x18c(%rbp)
    808f:	44 8b bd 74 fe ff ff 	mov    -0x18c(%rbp),%r15d
    8096:	44 39 bd 64 fe ff ff 	cmp    %r15d,-0x19c(%rbp)
    809d:	0f 85 7d fc ff ff    	jne    7d20 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x90>
    80a3:	c5 fb 10 85 48 fe ff 	vmovsd -0x1b8(%rbp),%xmm0
    80aa:	ff 
    80ab:	e8 d0 ab ff ff       	callq  2c80 <_Z9timeSinced>
    80b0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    80b4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    80bb:	00 00 
    80bd:	0f 85 0f 0d 00 00    	jne    8dd2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1142>
    80c3:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    80c7:	5b                   	pop    %rbx
    80c8:	41 5c                	pop    %r12
    80ca:	41 5d                	pop    %r13
    80cc:	41 5e                	pop    %r14
    80ce:	41 5f                	pop    %r15
    80d0:	5d                   	pop    %rbp
    80d1:	c3                   	retq   
    80d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    80d8:	4d 85 c0             	test   %r8,%r8
    80db:	0f 84 57 08 00 00    	je     8938 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xca8>
    80e1:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
    80e7:	4d 39 c8             	cmp    %r9,%r8
    80ea:	0f 87 80 04 00 00    	ja     8570 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8e0>
    80f0:	48 89 9d 58 fe ff ff 	mov    %rbx,-0x1a8(%rbp)
    80f7:	c5 7a 7e 85 58 fe ff 	vmovq  -0x1a8(%rbp),%xmm8
    80fe:	ff 
    80ff:	c4 43 b9 22 c8 01    	vpinsrq $0x1,%r8,%xmm8,%xmm9
    8105:	c5 78 29 8d 10 ff ff 	vmovaps %xmm9,-0xf0(%rbp)
    810c:	ff 
    810d:	4d 8b 7d 10          	mov    0x10(%r13),%r15
    8111:	48 8b b5 68 fe ff ff 	mov    -0x198(%rbp),%rsi
    8118:	4d 85 ff             	test   %r15,%r15
    811b:	c7 85 58 fe ff ff 00 	movl   $0x0,-0x1a8(%rbp)
    8122:	00 00 00 
    8125:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
    812c:	0f 85 16 09 00 00    	jne    8a48 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xdb8>
    8132:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8139:	0f b6 95 73 fe ff ff 	movzbl -0x18d(%rbp),%edx
    8140:	8b 4f 18             	mov    0x18(%rdi),%ecx
    8143:	39 8d 28 ff ff ff    	cmp    %ecx,-0xd8(%rbp)
    8149:	44 8b 5f 1c          	mov    0x1c(%rdi),%r11d
    814d:	74 24                	je     8173 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4e3>
    814f:	83 f9 01             	cmp    $0x1,%ecx
    8152:	0f 94 c2             	sete   %dl
    8155:	49 83 fc 01          	cmp    $0x1,%r12
    8159:	41 0f 94 c1          	sete   %r9b
    815d:	44 20 ca             	and    %r9b,%dl
    8160:	75 11                	jne    8173 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4e3>
    8162:	83 f9 02             	cmp    $0x2,%ecx
    8165:	0f 94 c2             	sete   %dl
    8168:	48 83 fb 01          	cmp    $0x1,%rbx
    816c:	41 0f 94 c0          	sete   %r8b
    8170:	44 21 c2             	and    %r8d,%edx
    8173:	41 83 fb 01          	cmp    $0x1,%r11d
    8177:	77 26                	ja     819f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x50f>
    8179:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
    817f:	85 c0                	test   %eax,%eax
    8181:	41 0f 94 c2          	sete   %r10b
    8185:	49 83 ff 10          	cmp    $0x10,%r15
    8189:	40 0f 97 c6          	seta   %sil
    818d:	41 84 f2             	test   %sil,%r10b
    8190:	75 05                	jne    8197 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x507>
    8192:	83 f8 01             	cmp    $0x1,%eax
    8195:	75 08                	jne    819f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x50f>
    8197:	84 d2                	test   %dl,%dl
    8199:	0f 85 b1 0b 00 00    	jne    8d50 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x10c0>
    819f:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    81a6:	48 39 1f             	cmp    %rbx,(%rdi)
    81a9:	0f 84 a9 01 00 00    	je     8358 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x6c8>
    81af:	0f b6 95 73 fe ff ff 	movzbl -0x18d(%rbp),%edx
    81b6:	4c 8d 0d d3 30 00 00 	lea    0x30d3(%rip),%r9        # b290 <_IO_stdin_used+0x5d0>
    81bd:	41 83 fb 03          	cmp    $0x3,%r11d
    81c1:	bf 00 00 00 00       	mov    $0x0,%edi
    81c6:	b8 00 00 00 00       	mov    $0x0,%eax
    81cb:	49 0f 44 f9          	cmove  %r9,%rdi
    81cf:	0f 44 c2             	cmove  %edx,%eax
    81d2:	85 c9                	test   %ecx,%ecx
    81d4:	74 3a                	je     8210 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x580>
    81d6:	49 89 d8             	mov    %rbx,%r8
    81d9:	4d 09 e0             	or     %r12,%r8
    81dc:	0f 84 36 07 00 00    	je     8918 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xc88>
    81e2:	83 f9 01             	cmp    $0x1,%ecx
    81e5:	0f 84 0d 07 00 00    	je     88f8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xc68>
    81eb:	83 f9 02             	cmp    $0x2,%ecx
    81ee:	75 20                	jne    8210 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x580>
    81f0:	48 83 fb 01          	cmp    $0x1,%rbx
    81f4:	0f 84 fe 00 00 00    	je     82f8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x668>
    81fa:	0f b6 85 73 fe ff ff 	movzbl -0x18d(%rbp),%eax
    8201:	48 8d 3d 08 31 00 00 	lea    0x3108(%rip),%rdi        # b310 <_IO_stdin_used+0x650>
    8208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    820f:	00 
    8210:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
    8216:	4c 39 d3             	cmp    %r10,%rbx
    8219:	0f 86 d9 00 00 00    	jbe    82f8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x668>
    821f:	48 85 db             	test   %rbx,%rbx
    8222:	0f 88 e7 00 00 00    	js     830f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x67f>
    8228:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    822c:	4d 85 e4             	test   %r12,%r12
    822f:	c4 e1 e3 2a db       	vcvtsi2sd %rbx,%xmm3,%xmm3
    8234:	0f 88 fa 00 00 00    	js     8334 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x6a4>
    823a:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    823e:	c4 c1 d3 2a ec       	vcvtsi2sd %r12,%xmm5,%xmm5
    8243:	c5 e3 59 f5          	vmulsd %xmm5,%xmm3,%xmm6
    8247:	c5 f9 2e 35 c1 39 00 	vucomisd 0x39c1(%rip),%xmm6        # bc10 <_ZL5temp0+0x730>
    824e:	00 
    824f:	0f 87 e1 09 00 00    	ja     8c36 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfa6>
    8255:	84 c0                	test   %al,%al
    8257:	0f 85 e0 09 00 00    	jne    8c3d <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xfad>
    825d:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    8264:	4d 89 e1             	mov    %r12,%r9
    8267:	4c 0f af cb          	imul   %rbx,%r9
    826b:	4c 8b 50 10          	mov    0x10(%rax),%r10
    826f:	4d 39 ca             	cmp    %r9,%r10
    8272:	0f 84 88 01 00 00    	je     8400 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x770>
    8278:	41 83 fb 02          	cmp    $0x2,%r11d
    827c:	0f 84 4f 0a 00 00    	je     8cd1 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1041>
    8282:	45 85 db             	test   %r11d,%r11d
    8285:	41 0f 94 c3          	sete   %r11b
    8289:	4d 39 ca             	cmp    %r9,%r10
    828c:	0f 86 de 00 00 00    	jbe    8370 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x6e0>
    8292:	49 83 f9 10          	cmp    $0x10,%r9
    8296:	0f 87 bc 02 00 00    	ja     8558 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8c8>
    829c:	45 84 db             	test   %r11b,%r11b
    829f:	0f 84 b3 02 00 00    	je     8558 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8c8>
    82a5:	49 83 fa 10          	cmp    $0x10,%r10
    82a9:	76 23                	jbe    82ce <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x63e>
    82ab:	4c 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%r8
    82b2:	49 8b 78 20          	mov    0x20(%r8),%rdi
    82b6:	48 85 ff             	test   %rdi,%rdi
    82b9:	74 13                	je     82ce <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x63e>
    82bb:	4c 89 8d 58 fe ff ff 	mov    %r9,-0x1a8(%rbp)
    82c2:	e8 19 97 ff ff       	callq  19e0 <free@plt>
    82c7:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    82ce:	4d 85 c9             	test   %r9,%r9
    82d1:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    82d8:	0f 85 e2 02 00 00    	jne    85c0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x930>
    82de:	48 c7 42 20 00 00 00 	movq   $0x0,0x20(%rdx)
    82e5:	00 
    82e6:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    82ed:	31 ff                	xor    %edi,%edi
    82ef:	e9 d1 00 00 00       	jmpq   83c5 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x735>
    82f4:	0f 1f 40 00          	nopl   0x0(%rax)
    82f8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    82fd:	49 39 f4             	cmp    %rsi,%r12
    8300:	0f 86 4f ff ff ff    	jbe    8255 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8306:	48 85 db             	test   %rbx,%rbx
    8309:	0f 89 19 ff ff ff    	jns    8228 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x598>
    830f:	49 89 d9             	mov    %rbx,%r9
    8312:	48 89 da             	mov    %rbx,%rdx
    8315:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    8319:	49 d1 e9             	shr    %r9
    831c:	83 e2 01             	and    $0x1,%edx
    831f:	49 09 d1             	or     %rdx,%r9
    8322:	4d 85 e4             	test   %r12,%r12
    8325:	c4 c1 f3 2a c9       	vcvtsi2sd %r9,%xmm1,%xmm1
    832a:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    832e:	0f 89 06 ff ff ff    	jns    823a <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5aa>
    8334:	4d 89 e0             	mov    %r12,%r8
    8337:	4c 89 e1             	mov    %r12,%rcx
    833a:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
    833e:	49 d1 e8             	shr    %r8
    8341:	83 e1 01             	and    $0x1,%ecx
    8344:	49 09 c8             	or     %rcx,%r8
    8347:	c4 c1 db 2a e0       	vcvtsi2sd %r8,%xmm4,%xmm4
    834c:	c5 db 58 ec          	vaddsd %xmm4,%xmm4,%xmm5
    8350:	e9 ee fe ff ff       	jmpq   8243 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5b3>
    8355:	0f 1f 00             	nopl   (%rax)
    8358:	4c 39 67 08          	cmp    %r12,0x8(%rdi)
    835c:	0f 85 4d fe ff ff    	jne    81af <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x51f>
    8362:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    8366:	eb 68                	jmp    83d0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x740>
    8368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    836f:	00 
    8370:	49 83 fa 10          	cmp    $0x10,%r10
    8374:	76 28                	jbe    839e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x70e>
    8376:	45 84 db             	test   %r11b,%r11b
    8379:	74 23                	je     839e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x70e>
    837b:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
    8382:	49 8b 7f 20          	mov    0x20(%r15),%rdi
    8386:	48 85 ff             	test   %rdi,%rdi
    8389:	74 13                	je     839e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x70e>
    838b:	4c 89 8d 58 fe ff ff 	mov    %r9,-0x1a8(%rbp)
    8392:	e8 49 96 ff ff       	callq  19e0 <free@plt>
    8397:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    839e:	49 83 f9 10          	cmp    $0x10,%r9
    83a2:	0f 87 20 06 00 00    	ja     89c8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xd38>
    83a8:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    83af:	48 8d 7a 30          	lea    0x30(%rdx),%rdi
    83b3:	48 89 7a 20          	mov    %rdi,0x20(%rdx)
    83b7:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    83be:	c7 42 1c 00 00 00 00 	movl   $0x0,0x1c(%rdx)
    83c5:	48 89 1a             	mov    %rbx,(%rdx)
    83c8:	4c 89 62 08          	mov    %r12,0x8(%rdx)
    83cc:	4c 89 4a 10          	mov    %r9,0x10(%rdx)
    83d0:	4d 85 ff             	test   %r15,%r15
    83d3:	74 14                	je     83e9 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x759>
    83d5:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
    83dc:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    83e3:	00 
    83e4:	e8 77 95 ff ff       	callq  1960 <memcpy@plt>
    83e9:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
    83f0:	e8 8b 1a 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    83f5:	e9 8e fc ff ff       	jmpq   8088 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    83fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8400:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
    8407:	48 89 19             	mov    %rbx,(%rcx)
    840a:	4c 89 61 08          	mov    %r12,0x8(%rcx)
    840e:	48 8b 79 20          	mov    0x20(%rcx),%rdi
    8412:	eb bc                	jmp    83d0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x740>
    8414:	0f 1f 40 00          	nopl   0x0(%rax)
    8418:	41 b9 ff ff ff ff    	mov    $0xffffffff,%r9d
    841e:	4d 39 c8             	cmp    %r9,%r8
    8421:	0f 86 4d fb ff ff    	jbe    7f74 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8427:	48 85 db             	test   %rbx,%rbx
    842a:	0f 89 17 fb ff ff    	jns    7f47 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2b7>
    8430:	49 89 da             	mov    %rbx,%r10
    8433:	49 89 df             	mov    %rbx,%r15
    8436:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    843a:	49 d1 ea             	shr    %r10
    843d:	41 83 e7 01          	and    $0x1,%r15d
    8441:	4d 09 fa             	or     %r15,%r10
    8444:	4d 85 c0             	test   %r8,%r8
    8447:	c4 c1 fb 2a c2       	vcvtsi2sd %r10,%xmm0,%xmm0
    844c:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    8450:	0f 89 03 fb ff ff    	jns    7f59 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2c9>
    8456:	4c 89 c2             	mov    %r8,%rdx
    8459:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    845d:	48 d1 ea             	shr    %rdx
    8460:	41 83 e0 01          	and    $0x1,%r8d
    8464:	49 09 d0             	or     %rdx,%r8
    8467:	c4 c1 f3 2a c8       	vcvtsi2sd %r8,%xmm1,%xmm1
    846c:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    8470:	e9 ed fa ff ff       	jmpq   7f62 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2d2>
    8475:	0f 1f 00             	nopl   (%rax)
    8478:	4c 39 47 08          	cmp    %r8,0x8(%rdi)
    847c:	0f 85 47 fa ff ff    	jne    7ec9 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x239>
    8482:	e9 7d fb ff ff       	jmpq   8004 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x374>
    8487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    848e:	00 00 
    8490:	48 83 f8 10          	cmp    $0x10,%rax
    8494:	76 1a                	jbe    84b0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x820>
    8496:	45 84 db             	test   %r11b,%r11b
    8499:	74 15                	je     84b0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x820>
    849b:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
    84a2:	48 8b 79 20          	mov    0x20(%rcx),%rdi
    84a6:	48 85 ff             	test   %rdi,%rdi
    84a9:	74 05                	je     84b0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x820>
    84ab:	e8 30 95 ff ff       	callq  19e0 <free@plt>
    84b0:	49 83 ff 10          	cmp    $0x10,%r15
    84b4:	0f 87 1e 01 00 00    	ja     85d8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x948>
    84ba:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    84c1:	48 8d 72 30          	lea    0x30(%rdx),%rsi
    84c5:	49 89 d2             	mov    %rdx,%r10
    84c8:	48 89 72 20          	mov    %rsi,0x20(%rdx)
    84cc:	41 c7 42 1c 00 00 00 	movl   $0x0,0x1c(%r10)
    84d3:	00 
    84d4:	e9 19 fb ff ff       	jmpq   7ff2 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x362>
    84d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    84e0:	49 39 d0             	cmp    %rdx,%r8
    84e3:	0f 86 f7 f8 ff ff    	jbe    7de0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x150>
    84e9:	e9 c3 f8 ff ff       	jmpq   7db1 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x121>
    84ee:	66 90                	xchg   %ax,%ax
    84f0:	4d 89 c2             	mov    %r8,%r10
    84f3:	4d 89 c3             	mov    %r8,%r11
    84f6:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    84fa:	49 d1 ea             	shr    %r10
    84fd:	41 83 e3 01          	and    $0x1,%r11d
    8501:	4d 09 da             	or     %r11,%r10
    8504:	c4 c1 fb 2a c2       	vcvtsi2sd %r10,%xmm0,%xmm0
    8509:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    850d:	e9 bb f8 ff ff       	jmpq   7dcd <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x13d>
    8512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8518:	4c 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%r15
    851f:	49 89 1f             	mov    %rbx,(%r15)
    8522:	4d 89 67 08          	mov    %r12,0x8(%r15)
    8526:	e9 d9 fa ff ff       	jmpq   8004 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x374>
    852b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8530:	49 89 d9             	mov    %rbx,%r9
    8533:	49 89 df             	mov    %rbx,%r15
    8536:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    853b:	49 d1 e9             	shr    %r9
    853e:	41 83 e7 01          	and    $0x1,%r15d
    8542:	4d 09 f9             	or     %r15,%r9
    8545:	c4 41 83 2a f9       	vcvtsi2sd %r9,%xmm15,%xmm15
    854a:	c4 41 03 58 f7       	vaddsd %xmm15,%xmm15,%xmm14
    854f:	e9 67 f8 ff ff       	jmpq   7dbb <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x12b>
    8554:	0f 1f 40 00          	nopl   0x0(%rax)
    8558:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    855f:	48 8b 7a 20          	mov    0x20(%rdx),%rdi
    8563:	e9 5d fe ff ff       	jmpq   83c5 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x735>
    8568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    856f:	00 
    8570:	4d 85 c0             	test   %r8,%r8
    8573:	0f 88 3f 06 00 00    	js     8bb8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf28>
    8579:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    857d:	c4 c1 cb 2a f0       	vcvtsi2sd %r8,%xmm6,%xmm6
    8582:	c5 cb 59 3d 8e 36 00 	vmulsd 0x368e(%rip),%xmm6,%xmm7        # bc18 <_ZL5temp0+0x738>
    8589:	00 
    858a:	c5 f9 2e 3d 7e 36 00 	vucomisd 0x367e(%rip),%xmm7        # bc10 <_ZL5temp0+0x730>
    8591:	00 
    8592:	0f 86 58 fb ff ff    	jbe    80f0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x460>
    8598:	48 8d 1d 11 2a 00 00 	lea    0x2a11(%rip),%rbx        # afb0 <_IO_stdin_used+0x2f0>
    859f:	4c 8d b5 10 ff ff ff 	lea    -0xf0(%rbp),%r14
    85a6:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    85ad:	48 89 9d a8 fe ff ff 	mov    %rbx,-0x158(%rbp)
    85b4:	4c 89 b5 50 fe ff ff 	mov    %r14,-0x1b0(%rbp)
    85bb:	e8 64 99 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    85c0:	48 8d 7a 30          	lea    0x30(%rdx),%rdi
    85c4:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    85cb:	48 89 7a 20          	mov    %rdi,0x20(%rdx)
    85cf:	e9 f1 fd ff ff       	jmpq   83c5 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x735>
    85d4:	0f 1f 40 00          	nopl   0x0(%rax)
    85d8:	48 bf ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rdi
    85df:	ff ff 1f 
    85e2:	49 39 ff             	cmp    %rdi,%r15
    85e5:	0f 87 21 08 00 00    	ja     8e0c <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x117c>
    85eb:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    85f2:	00 
    85f3:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    85fa:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    8601:	00 00 00 00 
    8605:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    860c:	48 19 f6             	sbb    %rsi,%rsi
    860f:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    8613:	48 83 c6 20          	add    $0x20,%rsi
    8617:	e8 d4 95 ff ff       	callq  1bf0 <posix_memalign@plt>
    861c:	85 c0                	test   %eax,%eax
    861e:	0f 85 1d 08 00 00    	jne    8e41 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b1>
    8624:	4c 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%r9
    862b:	4d 85 c9             	test   %r9,%r9
    862e:	0f 84 0d 08 00 00    	je     8e41 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b1>
    8634:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    863b:	4c 89 48 20          	mov    %r9,0x20(%rax)
    863f:	49 89 c2             	mov    %rax,%r10
    8642:	e9 85 fe ff ff       	jmpq   84cc <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x83c>
    8647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    864e:	00 00 
    8650:	4c 8d 8d a4 fe ff ff 	lea    -0x15c(%rbp),%r9
    8657:	89 9d 94 fe ff ff    	mov    %ebx,-0x16c(%rbp)
    865d:	44 89 a5 98 fe ff ff 	mov    %r12d,-0x168(%rbp)
    8664:	89 9d a0 fe ff ff    	mov    %ebx,-0x160(%rbp)
    866a:	48 8d 95 94 fe ff ff 	lea    -0x16c(%rbp),%rdx
    8671:	4c 8d a5 e8 fe ff ff 	lea    -0x118(%rbp),%r12
    8678:	48 8d 9d a0 fe ff ff 	lea    -0x160(%rbp),%rbx
    867f:	48 83 ec 08          	sub    $0x8,%rsp
    8683:	48 8d 8d 98 fe ff ff 	lea    -0x168(%rbp),%rcx
    868a:	6a 01                	pushq  $0x1
    868c:	48 8d b5 87 fe ff ff 	lea    -0x179(%rbp),%rsi
    8693:	6a 01                	pushq  $0x1
    8695:	48 8d bd 86 fe ff ff 	lea    -0x17a(%rbp),%rdi
    869c:	52                   	push   %rdx
    869d:	4c 8d 85 9c fe ff ff 	lea    -0x164(%rbp),%r8
    86a4:	ff b5 30 ff ff ff    	pushq  -0xd0(%rbp)
    86aa:	41 54                	push   %r12
    86ac:	41 51                	push   %r9
    86ae:	4c 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%r9
    86b5:	41 ff 76 20          	pushq  0x20(%r14)
    86b9:	53                   	push   %rbx
    86ba:	41 ff 75 20          	pushq  0x20(%r13)
    86be:	c5 7a 10 15 fa 2c 00 	vmovss 0x2cfa(%rip),%xmm10        # b3c0 <_IO_stdin_used+0x700>
    86c5:	00 
    86c6:	c6 85 86 fe ff ff 4e 	movb   $0x4e,-0x17a(%rbp)
    86cd:	c5 7a 10 1d ef 2c 00 	vmovss 0x2cef(%rip),%xmm11        # b3c4 <_IO_stdin_used+0x704>
    86d4:	00 
    86d5:	c6 85 87 fe ff ff 4e 	movb   $0x4e,-0x179(%rbp)
    86dc:	c5 7a 10 25 e4 2c 00 	vmovss 0x2ce4(%rip),%xmm12        # b3c8 <_IO_stdin_used+0x708>
    86e3:	00 
    86e4:	89 85 9c fe ff ff    	mov    %eax,-0x164(%rbp)
    86ea:	c5 7a 10 2d da 2c 00 	vmovss 0x2cda(%rip),%xmm13        # b3cc <_IO_stdin_used+0x70c>
    86f1:	00 
    86f2:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%rbp)
    86f8:	c5 7a 11 95 e0 fe ff 	vmovss %xmm10,-0x120(%rbp)
    86ff:	ff 
    8700:	c5 7a 11 9d e4 fe ff 	vmovss %xmm11,-0x11c(%rbp)
    8707:	ff 
    8708:	c5 7a 11 a5 e8 fe ff 	vmovss %xmm12,-0x118(%rbp)
    870f:	ff 
    8710:	c5 7a 11 ad ec fe ff 	vmovss %xmm13,-0x114(%rbp)
    8717:	ff 
    8718:	e8 03 93 ff ff       	callq  1a20 <wrapper2_cgemm_@plt>
    871d:	48 83 c4 50          	add    $0x50,%rsp
    8721:	8b b5 2c ff ff ff    	mov    -0xd4(%rbp),%esi
    8727:	4c 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%r15
    872e:	48 8b 9d 10 ff ff ff 	mov    -0xf0(%rbp),%rbx
    8735:	4c 8b a5 18 ff ff ff 	mov    -0xe8(%rbp),%r12
    873c:	89 b5 58 fe ff ff    	mov    %esi,-0x1a8(%rbp)
    8742:	e9 eb f9 ff ff       	jmpq   8132 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4a2>
    8747:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    874e:	00 00 
    8750:	89 9d b8 fe ff ff    	mov    %ebx,-0x148(%rbp)
    8756:	89 9d d0 fe ff ff    	mov    %ebx,-0x130(%rbp)
    875c:	48 8d 95 b8 fe ff ff 	lea    -0x148(%rbp),%rdx
    8763:	48 8b 9d 78 fe ff ff 	mov    -0x188(%rbp),%rbx
    876a:	44 89 a5 c0 fe ff ff 	mov    %r12d,-0x140(%rbp)
    8771:	4c 8d 8d d8 fe ff ff 	lea    -0x128(%rbp),%r9
    8778:	4c 8d a5 e8 fe ff ff 	lea    -0x118(%rbp),%r12
    877f:	4c 8d bd d0 fe ff ff 	lea    -0x130(%rbp),%r15
    8786:	48 83 ec 08          	sub    $0x8,%rsp
    878a:	6a 01                	pushq  $0x1
    878c:	48 8d 8d c0 fe ff ff 	lea    -0x140(%rbp),%rcx
    8793:	6a 01                	pushq  $0x1
    8795:	48 8d b5 b0 fe ff ff 	lea    -0x150(%rbp),%rsi
    879c:	52                   	push   %rdx
    879d:	48 8d bd a8 fe ff ff 	lea    -0x158(%rbp),%rdi
    87a4:	ff 73 20             	pushq  0x20(%rbx)
    87a7:	4c 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%r8
    87ae:	41 54                	push   %r12
    87b0:	41 51                	push   %r9
    87b2:	4c 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%r9
    87b9:	41 ff 76 20          	pushq  0x20(%r14)
    87bd:	41 57                	push   %r15
    87bf:	41 ff 75 20          	pushq  0x20(%r13)
    87c3:	c5 fa 10 2d f5 2b 00 	vmovss 0x2bf5(%rip),%xmm5        # b3c0 <_IO_stdin_used+0x700>
    87ca:	00 
    87cb:	c6 85 a8 fe ff ff 4e 	movb   $0x4e,-0x158(%rbp)
    87d2:	c5 fa 10 35 ea 2b 00 	vmovss 0x2bea(%rip),%xmm6        # b3c4 <_IO_stdin_used+0x704>
    87d9:	00 
    87da:	c6 85 b0 fe ff ff 4e 	movb   $0x4e,-0x150(%rbp)
    87e1:	c5 fa 10 3d df 2b 00 	vmovss 0x2bdf(%rip),%xmm7        # b3c8 <_IO_stdin_used+0x708>
    87e8:	00 
    87e9:	89 85 c8 fe ff ff    	mov    %eax,-0x138(%rbp)
    87ef:	c5 7a 10 05 d5 2b 00 	vmovss 0x2bd5(%rip),%xmm8        # b3cc <_IO_stdin_used+0x70c>
    87f6:	00 
    87f7:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%rbp)
    87fd:	c5 fa 11 ad e0 fe ff 	vmovss %xmm5,-0x120(%rbp)
    8804:	ff 
    8805:	c5 fa 11 b5 e4 fe ff 	vmovss %xmm6,-0x11c(%rbp)
    880c:	ff 
    880d:	c5 fa 11 bd e8 fe ff 	vmovss %xmm7,-0x118(%rbp)
    8814:	ff 
    8815:	c5 7a 11 85 ec fe ff 	vmovss %xmm8,-0x114(%rbp)
    881c:	ff 
    881d:	e8 fe 91 ff ff       	callq  1a20 <wrapper2_cgemm_@plt>
    8822:	48 83 c4 50          	add    $0x50,%rsp
    8826:	e9 5d f8 ff ff       	jmpq   8088 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    882b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8830:	45 84 d2             	test   %r10b,%r10b
    8833:	4d 8b 7e 20          	mov    0x20(%r14),%r15
    8837:	4c 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%r8
    883e:	0f 85 02 06 00 00    	jne    8e46 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b6>
    8844:	45 84 db             	test   %r11b,%r11b
    8847:	0f 85 f9 05 00 00    	jne    8e46 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11b6>
    884d:	89 85 8c fe ff ff    	mov    %eax,-0x174(%rbp)
    8853:	4c 8d 95 d8 fe ff ff 	lea    -0x128(%rbp),%r10
    885a:	48 8d 85 90 fe ff ff 	lea    -0x170(%rbp),%rax
    8861:	6a 01                	pushq  $0x1
    8863:	48 8d b5 88 fe ff ff 	lea    -0x178(%rbp),%rsi
    886a:	89 bd 88 fe ff ff    	mov    %edi,-0x178(%rbp)
    8870:	50                   	push   %rax
    8871:	41 50                	push   %r8
    8873:	48 8d 8d d0 fe ff ff 	lea    -0x130(%rbp),%rcx
    887a:	41 52                	push   %r10
    887c:	50                   	push   %rax
    887d:	48 8d 95 8c fe ff ff 	lea    -0x174(%rbp),%rdx
    8884:	41 57                	push   %r15
    8886:	4d 8b 45 20          	mov    0x20(%r13),%r8
    888a:	48 8d bd 85 fe ff ff 	lea    -0x17b(%rbp),%rdi
    8891:	c5 7a 10 35 27 2b 00 	vmovss 0x2b27(%rip),%xmm14        # b3c0 <_IO_stdin_used+0x700>
    8898:	00 
    8899:	49 89 f1             	mov    %rsi,%r9
    889c:	c5 7a 10 3d 20 2b 00 	vmovss 0x2b20(%rip),%xmm15        # b3c4 <_IO_stdin_used+0x704>
    88a3:	00 
    88a4:	c6 85 85 fe ff ff 4e 	movb   $0x4e,-0x17b(%rbp)
    88ab:	c5 fa 10 05 15 2b 00 	vmovss 0x2b15(%rip),%xmm0        # b3c8 <_IO_stdin_used+0x708>
    88b2:	00 
    88b3:	c7 85 90 fe ff ff 01 	movl   $0x1,-0x170(%rbp)
    88ba:	00 00 00 
    88bd:	c5 fa 10 15 07 2b 00 	vmovss 0x2b07(%rip),%xmm2        # b3cc <_IO_stdin_used+0x70c>
    88c4:	00 
    88c5:	c5 7a 11 b5 d0 fe ff 	vmovss %xmm14,-0x130(%rbp)
    88cc:	ff 
    88cd:	c5 7a 11 bd d4 fe ff 	vmovss %xmm15,-0x12c(%rbp)
    88d4:	ff 
    88d5:	c5 fa 11 85 d8 fe ff 	vmovss %xmm0,-0x128(%rbp)
    88dc:	ff 
    88dd:	c5 fa 11 95 dc fe ff 	vmovss %xmm2,-0x124(%rbp)
    88e4:	ff 
    88e5:	e8 a6 90 ff ff       	callq  1990 <wrapper2_cgemv_@plt>
    88ea:	48 83 c4 30          	add    $0x30,%rsp
    88ee:	e9 2e fe ff ff       	jmpq   8721 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xa91>
    88f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    88f8:	49 83 fc 01          	cmp    $0x1,%r12
    88fc:	0f 84 de 02 00 00    	je     8be0 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf50>
    8902:	0f b6 85 73 fe ff ff 	movzbl -0x18d(%rbp),%eax
    8909:	48 8d 3d b8 29 00 00 	lea    0x29b8(%rip),%rdi        # b2c8 <_IO_stdin_used+0x608>
    8910:	e9 fb f8 ff ff       	jmpq   8210 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x580>
    8915:	0f 1f 00             	nopl   (%rax)
    8918:	83 f9 01             	cmp    $0x1,%ecx
    891b:	0f 84 d7 02 00 00    	je     8bf8 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf68>
    8921:	31 db                	xor    %ebx,%ebx
    8923:	83 f9 02             	cmp    $0x2,%ecx
    8926:	0f 94 c3             	sete   %bl
    8929:	45 31 e4             	xor    %r12d,%r12d
    892c:	e9 24 f9 ff ff       	jmpq   8255 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8938:	4c 89 c3             	mov    %r8,%rbx
    893b:	e9 cd f7 ff ff       	jmpq   810d <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x47d>
    8940:	48 be ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rsi
    8947:	ff ff 1f 
    894a:	49 39 f7             	cmp    %rsi,%r15
    894d:	0f 87 f8 04 00 00    	ja     8e4b <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11bb>
    8953:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    895a:	00 
    895b:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8962:	4c 89 85 58 fe ff ff 	mov    %r8,-0x1a8(%rbp)
    8969:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    8970:	00 00 00 00 
    8974:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    897b:	48 19 f6             	sbb    %rsi,%rsi
    897e:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    8982:	48 83 c6 20          	add    $0x20,%rsi
    8986:	e8 65 92 ff ff       	callq  1bf0 <posix_memalign@plt>
    898b:	85 c0                	test   %eax,%eax
    898d:	0f 85 e0 04 00 00    	jne    8e73 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11e3>
    8993:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    899a:	4c 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%r8
    89a1:	48 85 c9             	test   %rcx,%rcx
    89a4:	0f 84 c9 04 00 00    	je     8e73 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11e3>
    89aa:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    89b1:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
    89b8:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    89bf:	e9 52 f4 ff ff       	jmpq   7e16 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x186>
    89c4:	0f 1f 40 00          	nopl   0x0(%rax)
    89c8:	48 be ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rsi
    89cf:	ff ff 1f 
    89d2:	49 39 f1             	cmp    %rsi,%r9
    89d5:	0f 87 ab 04 00 00    	ja     8e86 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x11f6>
    89db:	4a 8d 14 cd 00 00 00 	lea    0x0(,%r9,8),%rdx
    89e2:	00 
    89e3:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    89ea:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    89f1:	00 00 00 00 
    89f5:	4c 89 8d 58 fe ff ff 	mov    %r9,-0x1a8(%rbp)
    89fc:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    8a03:	48 19 f6             	sbb    %rsi,%rsi
    8a06:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    8a0a:	48 83 c6 20          	add    $0x20,%rsi
    8a0e:	e8 dd 91 ff ff       	callq  1bf0 <posix_memalign@plt>
    8a13:	85 c0                	test   %eax,%eax
    8a15:	0f 85 e4 03 00 00    	jne    8dff <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x116f>
    8a1b:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
    8a22:	4c 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%r9
    8a29:	48 85 ff             	test   %rdi,%rdi
    8a2c:	0f 84 cd 03 00 00    	je     8dff <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x116f>
    8a32:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    8a39:	48 89 7a 20          	mov    %rdi,0x20(%rdx)
    8a3d:	e9 75 f9 ff ff       	jmpq   83b7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x727>
    8a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8a48:	4d 8b 7e 10          	mov    0x10(%r14),%r15
    8a4c:	4d 85 ff             	test   %r15,%r15
    8a4f:	0f 85 d9 03 00 00    	jne    8e2e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x119e>
    8a55:	48 89 b5 50 fe ff ff 	mov    %rsi,-0x1b0(%rbp)
    8a5c:	e9 d1 f6 ff ff       	jmpq   8132 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x4a2>
    8a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8a68:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8a6f:	40 84 f6             	test   %sil,%sil
    8a72:	4d 8b 56 20          	mov    0x20(%r14),%r10
    8a76:	4c 8b 47 20          	mov    0x20(%rdi),%r8
    8a7a:	0f 85 e3 f5 ff ff    	jne    8063 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3d3>
    8a80:	45 84 db             	test   %r11b,%r11b
    8a83:	0f 85 da f5 ff ff    	jne    8063 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3d3>
    8a89:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%rbp)
    8a8f:	4c 8d 9d e8 fe ff ff 	lea    -0x118(%rbp),%r11
    8a96:	48 8d 85 d8 fe ff ff 	lea    -0x128(%rbp),%rax
    8a9d:	6a 01                	pushq  $0x1
    8a9f:	48 8d b5 c8 fe ff ff 	lea    -0x138(%rbp),%rsi
    8aa6:	89 95 c8 fe ff ff    	mov    %edx,-0x138(%rbp)
    8aac:	50                   	push   %rax
    8aad:	41 50                	push   %r8
    8aaf:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    8ab6:	41 53                	push   %r11
    8ab8:	50                   	push   %rax
    8ab9:	48 8d 95 d0 fe ff ff 	lea    -0x130(%rbp),%rdx
    8ac0:	41 52                	push   %r10
    8ac2:	4d 8b 45 20          	mov    0x20(%r13),%r8
    8ac6:	48 8d bd c0 fe ff ff 	lea    -0x140(%rbp),%rdi
    8acd:	c5 7a 10 0d eb 28 00 	vmovss 0x28eb(%rip),%xmm9        # b3c0 <_IO_stdin_used+0x700>
    8ad4:	00 
    8ad5:	49 89 f1             	mov    %rsi,%r9
    8ad8:	c5 7a 10 15 e4 28 00 	vmovss 0x28e4(%rip),%xmm10        # b3c4 <_IO_stdin_used+0x704>
    8adf:	00 
    8ae0:	c6 85 c0 fe ff ff 4e 	movb   $0x4e,-0x140(%rbp)
    8ae7:	c5 7a 10 1d d9 28 00 	vmovss 0x28d9(%rip),%xmm11        # b3c8 <_IO_stdin_used+0x708>
    8aee:	00 
    8aef:	c7 85 d8 fe ff ff 01 	movl   $0x1,-0x128(%rbp)
    8af6:	00 00 00 
    8af9:	c5 7a 10 25 cb 28 00 	vmovss 0x28cb(%rip),%xmm12        # b3cc <_IO_stdin_used+0x70c>
    8b00:	00 
    8b01:	c5 7a 11 8d e0 fe ff 	vmovss %xmm9,-0x120(%rbp)
    8b08:	ff 
    8b09:	c5 7a 11 95 e4 fe ff 	vmovss %xmm10,-0x11c(%rbp)
    8b10:	ff 
    8b11:	c5 7a 11 9d e8 fe ff 	vmovss %xmm11,-0x118(%rbp)
    8b18:	ff 
    8b19:	c5 7a 11 a5 ec fe ff 	vmovss %xmm12,-0x114(%rbp)
    8b20:	ff 
    8b21:	e8 6a 8e ff ff       	callq  1990 <wrapper2_cgemv_@plt>
    8b26:	48 83 c4 30          	add    $0x30,%rsp
    8b2a:	e9 59 f5 ff ff       	jmpq   8088 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    8b2f:	90                   	nop
    8b30:	49 83 f8 01          	cmp    $0x1,%r8
    8b34:	74 3a                	je     8b70 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xee0>
    8b36:	48 8d 35 8b 27 00 00 	lea    0x278b(%rip),%rsi        # b2c8 <_IO_stdin_used+0x608>
    8b3d:	b9 01 00 00 00       	mov    $0x1,%ecx
    8b42:	e9 e9 f3 ff ff       	jmpq   7f30 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2a0>
    8b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    8b4e:	00 00 
    8b50:	41 83 fa 01          	cmp    $0x1,%r10d
    8b54:	74 32                	je     8b88 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xef8>
    8b56:	31 db                	xor    %ebx,%ebx
    8b58:	41 83 fa 02          	cmp    $0x2,%r10d
    8b5c:	0f 94 c3             	sete   %bl
    8b5f:	45 31 e4             	xor    %r12d,%r12d
    8b62:	e9 0d f4 ff ff       	jmpq   7f74 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    8b6e:	00 00 
    8b70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8b75:	48 39 c3             	cmp    %rax,%rbx
    8b78:	0f 87 c0 f3 ff ff    	ja     7f3e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2ae>
    8b7e:	e9 f1 f3 ff ff       	jmpq   7f74 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8b83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8b88:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    8b8e:	31 db                	xor    %ebx,%ebx
    8b90:	e9 df f3 ff ff       	jmpq   7f74 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x2e4>
    8b95:	0f 1f 00             	nopl   (%rax)
    8b98:	48 8b bd 30 ff ff ff 	mov    -0xd0(%rbp),%rdi
    8b9f:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
    8ba6:	00 
    8ba7:	31 f6                	xor    %esi,%esi
    8ba9:	e8 82 8e ff ff       	callq  1a30 <memset@plt>
    8bae:	e9 6e fb ff ff       	jmpq   8721 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xa91>
    8bb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8bb8:	4d 89 c2             	mov    %r8,%r10
    8bbb:	4d 89 c3             	mov    %r8,%r11
    8bbe:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    8bc2:	49 d1 ea             	shr    %r10
    8bc5:	41 83 e3 01          	and    $0x1,%r11d
    8bc9:	4d 09 da             	or     %r11,%r10
    8bcc:	c4 c1 d3 2a ea       	vcvtsi2sd %r10,%xmm5,%xmm5
    8bd1:	c5 d3 58 f5          	vaddsd %xmm5,%xmm5,%xmm6
    8bd5:	e9 a8 f9 ff ff       	jmpq   8582 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x8f2>
    8bda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8be0:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    8be5:	48 39 cb             	cmp    %rcx,%rbx
    8be8:	0f 87 31 f6 ff ff    	ja     821f <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x58f>
    8bee:	e9 62 f6 ff ff       	jmpq   8255 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8bf8:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    8bfe:	31 db                	xor    %ebx,%ebx
    8c00:	e9 50 f6 ff ff       	jmpq   8255 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x5c5>
    8c05:	0f 1f 00             	nopl   (%rax)
    8c08:	48 8b 7e 20          	mov    0x20(%rsi),%rdi
    8c0c:	48 c1 e2 03          	shl    $0x3,%rdx
    8c10:	31 f6                	xor    %esi,%esi
    8c12:	e8 19 8e ff ff       	callq  1a30 <memset@plt>
    8c17:	e9 6c f4 ff ff       	jmpq   8088 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x3f8>
    8c1c:	48 89 c3             	mov    %rax,%rbx
    8c1f:	c5 f8 77             	vzeroupper 
    8c22:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
    8c29:	e8 52 12 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    8c2e:	48 89 df             	mov    %rbx,%rdi
    8c31:	e8 0a 8f ff ff       	callq  1b40 <_Unwind_Resume@plt>
    8c36:	48 8d 3d 73 23 00 00 	lea    0x2373(%rip),%rdi        # afb0 <_IO_stdin_used+0x2f0>
    8c3d:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
    8c44:	48 8d bd b8 fe ff ff 	lea    -0x148(%rbp),%rdi
    8c4b:	e8 d4 92 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8c50:	48 8d 35 59 23 00 00 	lea    0x2359(%rip),%rsi        # afb0 <_IO_stdin_used+0x2f0>
    8c57:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8c5e:	48 89 b5 e8 fe ff ff 	mov    %rsi,-0x118(%rbp)
    8c65:	e8 ba 92 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8c6a:	4c 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%r9
    8c71:	4c 8d ad f0 fe ff ff 	lea    -0x110(%rbp),%r13
    8c78:	48 89 f1             	mov    %rsi,%rcx
    8c7b:	48 89 de             	mov    %rbx,%rsi
    8c7e:	4c 89 8d 50 fe ff ff 	mov    %r9,-0x1b0(%rbp)
    8c85:	4c 8d 0d e6 20 00 00 	lea    0x20e6(%rip),%r9        # ad72 <_IO_stdin_used+0xb2>
    8c8c:	4c 89 ef             	mov    %r13,%rdi
    8c8f:	4d 89 ee             	mov    %r13,%r14
    8c92:	e8 dc 90 ff ff       	callq  1d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>
    8c97:	4c 89 ef             	mov    %r13,%rdi
    8c9a:	e8 81 8f ff ff       	callq  1c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>
    8c9f:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
    8ca6:	49 83 c6 10          	add    $0x10,%r14
    8caa:	48 89 c3             	mov    %rax,%rbx
    8cad:	4c 39 f7             	cmp    %r14,%rdi
    8cb0:	0f 84 70 01 00 00    	je     8e26 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1196>
    8cb6:	c5 f8 77             	vzeroupper 
    8cb9:	e8 22 8e ff ff       	callq  1ae0 <_ZdlPv@plt>
    8cbe:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
    8cc5:	48 89 95 50 fe ff ff 	mov    %rdx,-0x1b0(%rbp)
    8ccc:	e9 51 ff ff ff       	jmpq   8c22 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf92>
    8cd1:	48 8d 1d 80 26 00 00 	lea    0x2680(%rip),%rbx        # b358 <_IO_stdin_used+0x698>
    8cd8:	48 8d bd c0 fe ff ff 	lea    -0x140(%rbp),%rdi
    8cdf:	48 89 9d c0 fe ff ff 	mov    %rbx,-0x140(%rbp)
    8ce6:	e8 39 92 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8ceb:	4c 8d 35 66 26 00 00 	lea    0x2666(%rip),%r14        # b358 <_IO_stdin_used+0x698>
    8cf2:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8cf9:	4c 89 b5 e8 fe ff ff 	mov    %r14,-0x118(%rbp)
    8d00:	e8 1f 92 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8d05:	4c 8d ad 10 ff ff ff 	lea    -0xf0(%rbp),%r13
    8d0c:	4c 8d 0d 5f 20 00 00 	lea    0x205f(%rip),%r9        # ad72 <_IO_stdin_used+0xb2>
    8d13:	48 89 f1             	mov    %rsi,%rcx
    8d16:	48 89 de             	mov    %rbx,%rsi
    8d19:	4c 89 ef             	mov    %r13,%rdi
    8d1c:	4d 89 ee             	mov    %r13,%r14
    8d1f:	e8 4f 90 ff ff       	callq  1d73 <_ZN4armaL25arma_incompat_size_stringEyyyyPKc>
    8d24:	4c 89 ef             	mov    %r13,%rdi
    8d27:	e8 f4 8e ff ff       	callq  1c20 <_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_>
    8d2c:	48 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%rdi
    8d33:	49 83 c6 10          	add    $0x10,%r14
    8d37:	48 89 c3             	mov    %rax,%rbx
    8d3a:	4c 39 f7             	cmp    %r14,%rdi
    8d3d:	0f 84 c1 00 00 00    	je     8e04 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1174>
    8d43:	c5 f8 77             	vzeroupper 
    8d46:	e8 95 8d ff ff       	callq  1ae0 <_ZdlPv@plt>
    8d4b:	e9 de fe ff ff       	jmpq   8c2e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf9e>
    8d50:	83 f9 01             	cmp    $0x1,%ecx
    8d53:	0f 84 8e 00 00 00    	je     8de7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1157>
    8d59:	31 d2                	xor    %edx,%edx
    8d5b:	83 f9 02             	cmp    $0x2,%ecx
    8d5e:	75 77                	jne    8dd7 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1147>
    8d60:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8d67:	be 01 00 00 00       	mov    $0x1,%esi
    8d6c:	e8 8f 1b 00 00       	callq  a900 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>
    8d71:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8d78:	4c 8b 9d 30 ff ff ff 	mov    -0xd0(%rbp),%r11
    8d7f:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
    8d85:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    8d8c:	00 00 00 00 
    8d90:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    8d97:	00 00 00 00 
    8d9b:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    8da2:	00 00 00 00 
    8da6:	48 89 1f             	mov    %rbx,(%rdi)
    8da9:	4c 89 67 08          	mov    %r12,0x8(%rdi)
    8dad:	4c 89 7f 10          	mov    %r15,0x10(%rdi)
    8db1:	89 47 1c             	mov    %eax,0x1c(%rdi)
    8db4:	4c 89 5f 20          	mov    %r11,0x20(%rdi)
    8db8:	c7 85 2c ff ff ff 00 	movl   $0x0,-0xd4(%rbp)
    8dbf:	00 00 00 
    8dc2:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    8dc9:	00 00 00 00 
    8dcd:	e9 17 f6 ff ff       	jmpq   83e9 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x759>
    8dd2:	e8 39 8c ff ff       	callq  1a10 <__stack_chk_fail@plt>
    8dd7:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8dde:	31 f6                	xor    %esi,%esi
    8de0:	e8 1b 1b 00 00       	callq  a900 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>
    8de5:	eb 8a                	jmp    8d71 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x10e1>
    8de7:	48 8b bd 78 fe ff ff 	mov    -0x188(%rbp),%rdi
    8dee:	ba 01 00 00 00       	mov    $0x1,%edx
    8df3:	31 f6                	xor    %esi,%esi
    8df5:	e8 06 1b 00 00       	callq  a900 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>
    8dfa:	e9 72 ff ff ff       	jmpq   8d71 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x10e1>
    8dff:	e8 b9 90 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    8e04:	c5 f8 77             	vzeroupper 
    8e07:	e9 22 fe ff ff       	jmpq   8c2e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0xf9e>
    8e0c:	4c 8d 2d cd 21 00 00 	lea    0x21cd(%rip),%r13        # afe0 <_IO_stdin_used+0x320>
    8e13:	48 8d bd e8 fe ff ff 	lea    -0x118(%rbp),%rdi
    8e1a:	4c 89 ad e8 fe ff ff 	mov    %r13,-0x118(%rbp)
    8e21:	e8 fe 90 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8e26:	c5 f8 77             	vzeroupper 
    8e29:	e9 90 fe ff ff       	jmpq   8cbe <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x102e>
    8e2e:	48 8b 8d 68 fe ff ff 	mov    -0x198(%rbp),%rcx
    8e35:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    8e3c:	e9 1d f0 ff ff       	jmpq   7e5e <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i+0x1ce>
    8e41:	e8 77 90 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    8e46:	e8 ba 91 ff ff       	callq  2005 <_ZN4armaL23arma_stop_runtime_errorIA91_cEEvRKT_.constprop.81>
    8e4b:	4c 8d 05 8e 21 00 00 	lea    0x218e(%rip),%r8        # afe0 <_IO_stdin_used+0x320>
    8e52:	4c 8d ad 10 ff ff ff 	lea    -0xf0(%rbp),%r13
    8e59:	48 8d bd b0 fe ff ff 	lea    -0x150(%rbp),%rdi
    8e60:	4c 89 85 b0 fe ff ff 	mov    %r8,-0x150(%rbp)
    8e67:	4c 89 ad 50 fe ff ff 	mov    %r13,-0x1b0(%rbp)
    8e6e:	e8 b1 90 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    8e73:	4c 8d a5 10 ff ff ff 	lea    -0xf0(%rbp),%r12
    8e7a:	4c 89 a5 50 fe ff ff 	mov    %r12,-0x1b0(%rbp)
    8e81:	e8 37 90 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    8e86:	4c 8d 25 53 21 00 00 	lea    0x2153(%rip),%r12        # afe0 <_IO_stdin_used+0x320>
    8e8d:	48 8d bd c8 fe ff ff 	lea    -0x138(%rbp),%rdi
    8e94:	4c 89 a5 c8 fe ff ff 	mov    %r12,-0x138(%rbp)
    8e9b:	e8 84 90 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>

0000000000008ea0 <_ZL13runBenchmarksi>:
    8ea0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    8ea5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    8ea9:	62 f1 7d 28 ef c0    	vpxord %ymm0,%ymm0,%ymm0
    8eaf:	41 ff 72 f8          	pushq  -0x8(%r10)
    8eb3:	55                   	push   %rbp
    8eb4:	48 89 e5             	mov    %rsp,%rbp
    8eb7:	41 57                	push   %r15
    8eb9:	41 56                	push   %r14
    8ebb:	41 55                	push   %r13
    8ebd:	41 54                	push   %r12
    8ebf:	41 52                	push   %r10
    8ec1:	53                   	push   %rbx
    8ec2:	48 81 ec 80 03 00 00 	sub    $0x380,%rsp
    8ec9:	89 bd e0 fc ff ff    	mov    %edi,-0x320(%rbp)
    8ecf:	48 c7 85 20 fd ff ff 	movq   $0x0,-0x2e0(%rbp)
    8ed6:	00 00 00 00 
    8eda:	48 89 a5 a8 fc ff ff 	mov    %rsp,-0x358(%rbp)
    8ee1:	48 81 ec 40 10 00 00 	sub    $0x1040,%rsp
    8ee8:	62 71 fd 48 6f 2d 8e 	vmovdqa64 0x298e(%rip),%zmm13        # b880 <_ZL5temp0+0x3a0>
    8eef:	29 00 00 
    8ef2:	4c 8d 6c 24 3f       	lea    0x3f(%rsp),%r13
    8ef7:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    8efe:	48 c7 85 40 fd ff ff 	movq   $0x0,-0x2c0(%rbp)
    8f05:	00 00 00 00 
    8f09:	4c 8d 64 24 3f       	lea    0x3f(%rsp),%r12
    8f0e:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    8f12:	48 c7 85 60 fd ff ff 	movq   $0x0,-0x2a0(%rbp)
    8f19:	00 00 00 00 
    8f1d:	49 83 e5 c0          	and    $0xffffffffffffffc0,%r13
    8f21:	4c 8d 7c 24 3f       	lea    0x3f(%rsp),%r15
    8f26:	48 c7 85 80 fd ff ff 	movq   $0x0,-0x280(%rbp)
    8f2d:	00 00 00 00 
    8f31:	c5 f8 29 85 10 fd ff 	vmovaps %xmm0,-0x2f0(%rbp)
    8f38:	ff 
    8f39:	49 8d 95 00 10 00 00 	lea    0x1000(%r13),%rdx
    8f40:	49 83 e4 c0          	and    $0xffffffffffffffc0,%r12
    8f44:	49 83 e7 c0          	and    $0xffffffffffffffc0,%r15
    8f48:	c5 f8 29 85 30 fd ff 	vmovaps %xmm0,-0x2d0(%rbp)
    8f4f:	ff 
    8f50:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    8f57:	00 00 
    8f59:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    8f5d:	31 c0                	xor    %eax,%eax
    8f5f:	c5 f8 29 85 50 fd ff 	vmovaps %xmm0,-0x2b0(%rbp)
    8f66:	ff 
    8f67:	4c 89 e8             	mov    %r13,%rax
    8f6a:	c5 f8 29 85 70 fd ff 	vmovaps %xmm0,-0x290(%rbp)
    8f71:	ff 
    8f72:	62 d1 f5 48 73 d5 20 	vpsrlq $0x20,%zmm13,%zmm1
    8f79:	62 f2 f5 48 28 35 bd 	vpmuldq 0x29bd(%rip),%zmm1,%zmm6        # b940 <_ZL5temp0+0x460>
    8f80:	29 00 00 
    8f83:	62 f2 95 48 28 25 b3 	vpmuldq 0x29b3(%rip),%zmm13,%zmm4        # b940 <_ZL5temp0+0x460>
    8f8a:	29 00 00 
    8f8d:	62 f1 15 48 fe 15 69 	vpaddd 0x2969(%rip),%zmm13,%zmm2        # b900 <_ZL5temp0+0x420>
    8f94:	29 00 00 
    8f97:	62 72 ed 48 28 15 9f 	vpmuldq 0x299f(%rip),%zmm2,%zmm10        # b940 <_ZL5temp0+0x460>
    8f9e:	29 00 00 
    8fa1:	62 f1 a5 48 73 d2 20 	vpsrlq $0x20,%zmm2,%zmm11
    8fa8:	62 72 a5 48 28 25 8e 	vpmuldq 0x298e(%rip),%zmm11,%zmm12        # b940 <_ZL5temp0+0x460>
    8faf:	29 00 00 
    8fb2:	62 f1 15 48 fe 1d 04 	vpaddd 0x2904(%rip),%zmm13,%zmm3        # b8c0 <_ZL5temp0+0x3e0>
    8fb9:	29 00 00 
    8fbc:	62 f1 a5 48 73 d3 20 	vpsrlq $0x20,%zmm3,%zmm11
    8fc3:	62 f1 fd 48 6f 0d b3 	vmovdqa64 0x29b3(%rip),%zmm1        # b980 <_ZL5temp0+0x4a0>
    8fca:	29 00 00 
    8fcd:	48 05 00 01 00 00    	add    $0x100,%rax
    8fd3:	62 e1 fd 48 6f 0d a3 	vmovdqa64 0x29a3(%rip),%zmm17        # b980 <_ZL5temp0+0x4a0>
    8fda:	29 00 00 
    8fdd:	62 f2 5d 48 76 ce    	vpermi2d %zmm6,%zmm4,%zmm1
    8fe3:	62 e1 fd 48 6f 15 93 	vmovdqa64 0x2993(%rip),%zmm18        # b980 <_ZL5temp0+0x4a0>
    8fea:	29 00 00 
    8fed:	62 e1 fd 48 6f 05 09 	vmovdqa64 0x2b09(%rip),%zmm16        # bb00 <_ZL5temp0+0x620>
    8ff4:	2b 00 00 
    8ff7:	62 e1 fd 48 6f 1d ff 	vmovdqa64 0x29ff(%rip),%zmm19        # ba00 <_ZL5temp0+0x520>
    8ffe:	29 00 00 
    9001:	62 f1 45 48 72 e1 01 	vpsrad $0x1,%zmm1,%zmm7
    9008:	62 f1 fd 48 6f 0d 6e 	vmovdqa64 0x296e(%rip),%zmm1        # b980 <_ZL5temp0+0x4a0>
    900f:	29 00 00 
    9012:	62 72 45 48 40 05 a4 	vpmulld 0x29a4(%rip),%zmm7,%zmm8        # b9c0 <_ZL5temp0+0x4e0>
    9019:	29 00 00 
    901c:	62 51 15 48 fa c8    	vpsubd %zmm8,%zmm13,%zmm9
    9022:	62 f1 fd 48 6f 3d 94 	vmovdqa64 0x2a94(%rip),%zmm7        # bac0 <_ZL5temp0+0x5e0>
    9029:	2a 00 00 
    902c:	62 d2 2d 48 76 cc    	vpermi2d %zmm12,%zmm10,%zmm1
    9032:	62 72 a5 48 28 25 04 	vpmuldq 0x2904(%rip),%zmm11,%zmm12        # b940 <_ZL5temp0+0x460>
    9039:	29 00 00 
    903c:	62 72 e5 48 28 15 fa 	vpmuldq 0x28fa(%rip),%zmm3,%zmm10        # b940 <_ZL5temp0+0x460>
    9043:	28 00 00 
    9046:	62 c2 2d 48 76 cc    	vpermi2d %zmm12,%zmm10,%zmm17
    904c:	62 e1 fd 48 6f 25 aa 	vmovdqa64 0x2aaa(%rip),%zmm20        # bb00 <_ZL5temp0+0x620>
    9053:	2a 00 00 
    9056:	62 71 fd 48 6f 25 60 	vmovdqa64 0x2a60(%rip),%zmm12        # bac0 <_ZL5temp0+0x5e0>
    905d:	2a 00 00 
    9060:	62 f1 0d 48 72 e1 01 	vpsrad $0x1,%zmm1,%zmm14
    9067:	62 72 0d 48 40 3d 4f 	vpmulld 0x294f(%rip),%zmm14,%zmm15        # b9c0 <_ZL5temp0+0x4e0>
    906e:	29 00 00 
    9071:	62 d1 6d 48 fa c7    	vpsubd %zmm15,%zmm2,%zmm0
    9077:	62 f1 fd 48 6f 15 7f 	vmovdqa64 0x297f(%rip),%zmm2        # ba00 <_ZL5temp0+0x520>
    907e:	29 00 00 
    9081:	62 b1 15 48 72 e1 01 	vpsrad $0x1,%zmm17,%zmm13
    9088:	62 72 15 48 40 35 2e 	vpmulld 0x292e(%rip),%zmm13,%zmm14        # b9c0 <_ZL5temp0+0x4e0>
    908f:	29 00 00 
    9092:	62 51 65 48 fa fe    	vpsubd %zmm14,%zmm3,%zmm15
    9098:	62 f2 b5 48 75 d0    	vpermi2w %zmm0,%zmm9,%zmm2
    909e:	62 71 65 48 fe 0d 58 	vpaddd 0x2858(%rip),%zmm3,%zmm9        # b900 <_ZL5temp0+0x420>
    90a5:	28 00 00 
    90a8:	62 f2 b5 48 28 05 8e 	vpmuldq 0x288e(%rip),%zmm9,%zmm0        # b940 <_ZL5temp0+0x460>
    90af:	28 00 00 
    90b2:	62 f1 6d 48 fd 2d c4 	vpaddw 0x29c4(%rip),%zmm2,%zmm5        # ba80 <_ZL5temp0+0x5a0>
    90b9:	29 00 00 
    90bc:	62 f1 6d 48 fd 35 7a 	vpaddw 0x297a(%rip),%zmm2,%zmm6        # ba40 <_ZL5temp0+0x560>
    90c3:	29 00 00 
    90c6:	62 d1 ed 48 73 d1 20 	vpsrlq $0x20,%zmm9,%zmm2
    90cd:	62 f2 d5 48 75 fe    	vpermi2w %zmm6,%zmm5,%zmm7
    90d3:	62 f2 ed 48 28 25 63 	vpmuldq 0x2863(%rip),%zmm2,%zmm4        # b940 <_ZL5temp0+0x460>
    90da:	28 00 00 
    90dd:	62 e2 7d 48 76 d4    	vpermi2d %zmm4,%zmm0,%zmm18
    90e3:	62 e2 d5 48 75 c6    	vpermi2w %zmm6,%zmm5,%zmm16
    90e9:	62 f1 fd 48 7f 78 fc 	vmovdqa64 %zmm7,-0x100(%rax)
    90f0:	62 b1 55 48 72 e2 01 	vpsrad $0x1,%zmm18,%zmm5
    90f7:	62 f2 55 48 40 3d bf 	vpmulld 0x28bf(%rip),%zmm5,%zmm7        # b9c0 <_ZL5temp0+0x4e0>
    90fe:	28 00 00 
    9101:	62 71 35 48 fa c7    	vpsubd %zmm7,%zmm9,%zmm8
    9107:	62 c2 85 48 75 d8    	vpermi2w %zmm8,%zmm15,%zmm19
    910d:	62 e1 fd 48 7f 40 fd 	vmovdqa64 %zmm16,-0xc0(%rax)
    9114:	62 71 65 40 fd 15 22 	vpaddw 0x2922(%rip),%zmm19,%zmm10        # ba40 <_ZL5temp0+0x560>
    911b:	29 00 00 
    911e:	62 71 65 40 fd 1d 58 	vpaddw 0x2958(%rip),%zmm19,%zmm11        # ba80 <_ZL5temp0+0x5a0>
    9125:	29 00 00 
    9128:	62 52 a5 48 75 e2    	vpermi2w %zmm10,%zmm11,%zmm12
    912e:	62 c2 a5 48 75 e2    	vpermi2w %zmm10,%zmm11,%zmm20
    9134:	62 71 fd 48 7f 60 fe 	vmovdqa64 %zmm12,-0x80(%rax)
    913b:	62 e1 fd 48 7f 60 ff 	vmovdqa64 %zmm20,-0x40(%rax)
    9142:	48 39 c2             	cmp    %rax,%rdx
    9145:	62 71 65 48 fe 2d 71 	vpaddd 0x2771(%rip),%zmm3,%zmm13        # b8c0 <_ZL5temp0+0x3e0>
    914c:	27 00 00 
    914f:	0f 85 1d fe ff ff    	jne    8f72 <_ZL13runBenchmarksi+0xd2>
    9155:	62 f1 65 48 ef db    	vpxord %zmm3,%zmm3,%zmm3
    915b:	62 e1 fd 48 6f 2d db 	vmovdqa64 0x23db(%rip),%zmm21        # b540 <_ZL5temp0+0x60>
    9162:	23 00 00 
    9165:	48 8d bd b0 fd ff ff 	lea    -0x250(%rbp),%rdi
    916c:	62 e1 fd 48 6f 35 0a 	vmovdqa64 0x240a(%rip),%zmm22        # b580 <_ZL5temp0+0xa0>
    9173:	24 00 00 
    9176:	b9 40 00 00 00       	mov    $0x40,%ecx
    917b:	ba 10 00 00 00       	mov    $0x10,%edx
    9180:	62 e1 fd 48 6f 3d 36 	vmovdqa64 0x2436(%rip),%zmm23        # b5c0 <_ZL5temp0+0xe0>
    9187:	24 00 00 
    918a:	4c 89 ee             	mov    %r13,%rsi
    918d:	48 89 bd c0 fc ff ff 	mov    %rdi,-0x340(%rbp)
    9194:	62 61 fd 48 6f 05 62 	vmovdqa64 0x2462(%rip),%zmm24        # b600 <_ZL5temp0+0x120>
    919b:	24 00 00 
    919e:	62 c1 fd 48 7f 2c 24 	vmovdqa64 %zmm21,(%r12)
    91a5:	62 c1 fd 48 7f 74 24 	vmovdqa64 %zmm22,0x40(%r12)
    91ac:	01 
    91ad:	62 c1 fd 48 7f 7c 24 	vmovdqa64 %zmm23,0x80(%r12)
    91b4:	02 
    91b5:	62 41 fd 48 7f 44 24 	vmovdqa64 %zmm24,0xc0(%r12)
    91bc:	03 
    91bd:	62 d1 fd 48 7f 1f    	vmovdqa64 %zmm3,(%r15)
    91c3:	c5 f8 77             	vzeroupper 
    91c6:	e8 65 d4 ff ff       	callq  6630 <_Z17int16MatrixToArmaP13Complex_int16ii>
    91cb:	48 8d bd 60 fe ff ff 	lea    -0x1a0(%rbp),%rdi
    91d2:	b9 01 00 00 00       	mov    $0x1,%ecx
    91d7:	ba 40 00 00 00       	mov    $0x40,%edx
    91dc:	4c 89 e6             	mov    %r12,%rsi
    91df:	48 89 bd c8 fc ff ff 	mov    %rdi,-0x338(%rbp)
    91e6:	e8 45 d4 ff ff       	callq  6630 <_Z17int16MatrixToArmaP13Complex_int16ii>
    91eb:	48 8d bd 10 ff ff ff 	lea    -0xf0(%rbp),%rdi
    91f2:	b9 01 00 00 00       	mov    $0x1,%ecx
    91f7:	ba 10 00 00 00       	mov    $0x10,%edx
    91fc:	4c 89 fe             	mov    %r15,%rsi
    91ff:	48 89 bd e8 fc ff ff 	mov    %rdi,-0x318(%rbp)
    9206:	e8 25 d4 ff ff       	callq  6630 <_Z17int16MatrixToArmaP13Complex_int16ii>
    920b:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
    9212:	31 f6                	xor    %esi,%esi
    9214:	48 8d 5c 24 3f       	lea    0x3f(%rsp),%rbx
    9219:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
    9220:	4c 8d 74 24 3f       	lea    0x3f(%rsp),%r14
    9225:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    922c:	48 8d 4c 24 3f       	lea    0x3f(%rsp),%rcx
    9231:	48 83 e3 c0          	and    $0xffffffffffffffc0,%rbx
    9235:	49 83 e6 c0          	and    $0xffffffffffffffc0,%r14
    9239:	48 83 e1 c0          	and    $0xffffffffffffffc0,%rcx
    923d:	48 89 8d d0 fc ff ff 	mov    %rcx,-0x330(%rbp)
    9244:	62 51 fd 48 6f 74 35 	vmovdqa64 0x0(%r13,%rsi,1),%zmm14
    924b:	00 
    924c:	4c 8d 46 40          	lea    0x40(%rsi),%r8
    9250:	4c 8d 8e 80 00 00 00 	lea    0x80(%rsi),%r9
    9257:	62 d1 fd 48 6f 6c 35 	vmovdqa64 0x40(%r13,%rsi,1),%zmm5
    925e:	01 
    925f:	4c 8d 9e c0 00 00 00 	lea    0xc0(%rsi),%r11
    9266:	4c 8d 96 00 01 00 00 	lea    0x100(%rsi),%r10
    926d:	62 73 fd 48 3b f2 01 	vextracti64x4 $0x1,%zmm14,%ymm2
    9274:	62 52 7d 48 23 fe    	vpmovsxwd %ymm14,%zmm15
    927a:	62 d3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm9
    9281:	62 51 fd 48 6f 64 35 	vmovdqa64 0x80(%r13,%rsi,1),%zmm12
    9288:	02 
    9289:	62 d1 7c 48 5b c7    	vcvtdq2ps %zmm15,%zmm0
    928f:	62 f2 7d 48 23 fd    	vpmovsxwd %ymm5,%zmm7
    9295:	62 f1 7c 48 29 04 73 	vmovaps %zmm0,(%rbx,%rsi,2)
    929c:	62 f2 7d 48 23 e2    	vpmovsxwd %ymm2,%zmm4
    92a2:	62 d1 fd 48 6f 44 35 	vmovdqa64 0xc0(%r13,%rsi,1),%zmm0
    92a9:	03 
    92aa:	62 d2 7d 48 23 cc    	vpmovsxwd %ymm12,%zmm1
    92b0:	62 71 7c 48 5b c7    	vcvtdq2ps %zmm7,%zmm8
    92b6:	62 52 7d 48 23 d1    	vpmovsxwd %ymm9,%zmm10
    92bc:	62 73 fd 48 3b e3 01 	vextracti64x4 $0x1,%zmm12,%ymm3
    92c3:	62 f1 7c 48 5b f4    	vcvtdq2ps %zmm4,%zmm6
    92c9:	62 f1 7c 48 29 74 73 	vmovaps %zmm6,0x40(%rbx,%rsi,2)
    92d0:	01 
    92d1:	62 f3 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm0,%ymm6
    92d8:	62 31 7c 48 29 04 43 	vmovaps %zmm8,(%rbx,%r8,2)
    92df:	62 51 7c 48 5b da    	vcvtdq2ps %zmm10,%zmm11
    92e5:	62 f2 7d 48 23 d0    	vpmovsxwd %ymm0,%zmm2
    92eb:	62 51 fd 48 6f 44 35 	vmovdqa64 0x100(%r13,%rsi,1),%zmm8
    92f2:	04 
    92f3:	62 72 7d 48 23 f3    	vpmovsxwd %ymm3,%zmm14
    92f9:	62 71 7c 48 5b e9    	vcvtdq2ps %zmm1,%zmm13
    92ff:	62 31 7c 48 29 5c 43 	vmovaps %zmm11,0x40(%rbx,%r8,2)
    9306:	01 
    9307:	62 f2 7d 48 23 ee    	vpmovsxwd %ymm6,%zmm5
    930d:	62 f1 7c 48 5b e2    	vcvtdq2ps %zmm2,%zmm4
    9313:	62 53 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm11
    931a:	62 52 7d 48 23 c8    	vpmovsxwd %ymm8,%zmm9
    9320:	62 31 7c 48 29 2c 4b 	vmovaps %zmm13,(%rbx,%r9,2)
    9327:	62 51 7c 48 5b fe    	vcvtdq2ps %zmm14,%zmm15
    932d:	62 51 fd 48 6f 6c 35 	vmovdqa64 0x140(%r13,%rsi,1),%zmm13
    9334:	05 
    9335:	62 f1 7c 48 5b fd    	vcvtdq2ps %zmm5,%zmm7
    933b:	62 31 7c 48 29 7c 4b 	vmovaps %zmm15,0x40(%rbx,%r9,2)
    9342:	01 
    9343:	62 51 7c 48 5b d1    	vcvtdq2ps %zmm9,%zmm10
    9349:	48 8d 86 40 01 00 00 	lea    0x140(%rsi),%rax
    9350:	62 b1 7c 48 29 24 5b 	vmovaps %zmm4,(%rbx,%r11,2)
    9357:	62 52 7d 48 23 e3    	vpmovsxwd %ymm11,%zmm12
    935d:	62 d2 7d 48 23 dd    	vpmovsxwd %ymm13,%zmm3
    9363:	62 b1 7c 48 29 7c 5b 	vmovaps %zmm7,0x40(%rbx,%r11,2)
    936a:	01 
    936b:	62 53 fd 48 3b ef 01 	vextracti64x4 $0x1,%zmm13,%ymm15
    9372:	62 31 7c 48 29 14 53 	vmovaps %zmm10,(%rbx,%r10,2)
    9379:	62 d1 7c 48 5b cc    	vcvtdq2ps %zmm12,%zmm1
    937f:	48 8d 96 80 01 00 00 	lea    0x180(%rsi),%rdx
    9386:	62 d1 fd 48 6f 64 35 	vmovdqa64 0x180(%r13,%rsi,1),%zmm4
    938d:	06 
    938e:	48 8d be c0 01 00 00 	lea    0x1c0(%rsi),%rdi
    9395:	62 71 7c 48 5b f3    	vcvtdq2ps %zmm3,%zmm14
    939b:	62 51 fd 48 6f 54 35 	vmovdqa64 0x1c0(%r13,%rsi,1),%zmm10
    93a2:	07 
    93a3:	62 d2 7d 48 23 c7    	vpmovsxwd %ymm15,%zmm0
    93a9:	48 81 c6 00 02 00 00 	add    $0x200,%rsi
    93b0:	62 b1 7c 48 29 4c 53 	vmovaps %zmm1,0x40(%rbx,%r10,2)
    93b7:	01 
    93b8:	62 f3 fd 48 3b e7 01 	vextracti64x4 $0x1,%zmm4,%ymm7
    93bf:	62 73 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm10,%ymm1
    93c6:	62 f2 7d 48 23 f4    	vpmovsxwd %ymm4,%zmm6
    93cc:	62 f1 7c 48 5b d0    	vcvtdq2ps %zmm0,%zmm2
    93d2:	62 52 7d 48 23 da    	vpmovsxwd %ymm10,%zmm11
    93d8:	48 81 fe 00 10 00 00 	cmp    $0x1000,%rsi
    93df:	62 71 7c 48 29 34 43 	vmovaps %zmm14,(%rbx,%rax,2)
    93e6:	62 72 7d 48 23 c7    	vpmovsxwd %ymm7,%zmm8
    93ec:	62 f1 7c 48 29 54 43 	vmovaps %zmm2,0x40(%rbx,%rax,2)
    93f3:	01 
    93f4:	62 f1 7c 48 5b ee    	vcvtdq2ps %zmm6,%zmm5
    93fa:	62 72 7d 48 23 e9    	vpmovsxwd %ymm1,%zmm13
    9400:	62 f1 7c 48 29 2c 53 	vmovaps %zmm5,(%rbx,%rdx,2)
    9407:	62 51 7c 48 5b e3    	vcvtdq2ps %zmm11,%zmm12
    940d:	62 51 7c 48 5b c8    	vcvtdq2ps %zmm8,%zmm9
    9413:	62 71 7c 48 29 4c 53 	vmovaps %zmm9,0x40(%rbx,%rdx,2)
    941a:	01 
    941b:	62 d1 7c 48 5b dd    	vcvtdq2ps %zmm13,%zmm3
    9421:	62 71 7c 48 29 24 7b 	vmovaps %zmm12,(%rbx,%rdi,2)
    9428:	62 f1 7c 48 29 5c 7b 	vmovaps %zmm3,0x40(%rbx,%rdi,2)
    942f:	01 
    9430:	0f 85 0e fe ff ff    	jne    9244 <_ZL13runBenchmarksi+0x3a4>
    9436:	62 d1 fd 48 6f 6c 24 	vmovdqa64 0x40(%r12),%zmm5
    943d:	01 
    943e:	48 81 ec 40 10 00 00 	sub    $0x1040,%rsp
    9445:	62 51 fd 48 6f 34 24 	vmovdqa64 (%r12),%zmm14
    944c:	48 8d 7c 24 3f       	lea    0x3f(%rsp),%rdi
    9451:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    9458:	62 d3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm9
    945f:	62 f2 7d 48 23 fd    	vpmovsxwd %ymm5,%zmm7
    9465:	62 73 fd 48 3b f2 01 	vextracti64x4 $0x1,%zmm14,%ymm2
    946c:	62 52 7d 48 23 fe    	vpmovsxwd %ymm14,%zmm15
    9472:	62 71 7c 48 5b c7    	vcvtdq2ps %zmm7,%zmm8
    9478:	62 51 7c 48 29 46 02 	vmovaps %zmm8,0x80(%r14)
    947f:	48 8b 8d d0 fc ff ff 	mov    -0x330(%rbp),%rcx
    9486:	62 52 7d 48 23 d1    	vpmovsxwd %ymm9,%zmm10
    948c:	62 51 fd 48 6f 07    	vmovdqa64 (%r15),%zmm8
    9492:	62 d1 7c 48 5b c7    	vcvtdq2ps %zmm15,%zmm0
    9498:	62 f2 7d 48 23 e2    	vpmovsxwd %ymm2,%zmm4
    949e:	62 51 fd 48 6f 64 24 	vmovdqa64 0x80(%r12),%zmm12
    94a5:	02 
    94a6:	48 83 e7 c0          	and    $0xffffffffffffffc0,%rdi
    94aa:	62 51 7c 48 5b da    	vcvtdq2ps %zmm10,%zmm11
    94b0:	62 51 7c 48 29 5e 03 	vmovaps %zmm11,0xc0(%r14)
    94b7:	62 53 fd 48 3b c3 01 	vextracti64x4 $0x1,%zmm8,%ymm11
    94be:	62 d1 7c 48 29 06    	vmovaps %zmm0,(%r14)
    94c4:	62 f1 7c 48 5b f4    	vcvtdq2ps %zmm4,%zmm6
    94ca:	62 d2 7d 48 23 cc    	vpmovsxwd %ymm12,%zmm1
    94d0:	62 d1 fd 48 6f 44 24 	vmovdqa64 0xc0(%r12),%zmm0
    94d7:	03 
    94d8:	62 73 fd 48 3b e3 01 	vextracti64x4 $0x1,%zmm12,%ymm3
    94df:	62 52 7d 48 23 c8    	vpmovsxwd %ymm8,%zmm9
    94e5:	62 d1 7c 48 29 76 01 	vmovaps %zmm6,0x40(%r14)
    94ec:	62 52 7d 48 23 e3    	vpmovsxwd %ymm11,%zmm12
    94f2:	62 f3 fd 48 3b c6 01 	vextracti64x4 $0x1,%zmm0,%ymm6
    94f9:	62 71 7c 48 5b e9    	vcvtdq2ps %zmm1,%zmm13
    94ff:	62 f2 7d 48 23 d0    	vpmovsxwd %ymm0,%zmm2
    9505:	62 51 7c 48 5b d1    	vcvtdq2ps %zmm9,%zmm10
    950b:	62 d1 7c 48 5b cc    	vcvtdq2ps %zmm12,%zmm1
    9511:	62 71 7c 48 29 11    	vmovaps %zmm10,(%rcx)
    9517:	62 f1 7c 48 29 49 01 	vmovaps %zmm1,0x40(%rcx)
    951e:	48 8d 4c 24 3f       	lea    0x3f(%rsp),%rcx
    9523:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    9527:	62 72 7d 48 23 f3    	vpmovsxwd %ymm3,%zmm14
    952d:	62 f2 7d 48 23 ee    	vpmovsxwd %ymm6,%zmm5
    9533:	48 8d 74 24 3f       	lea    0x3f(%rsp),%rsi
    9538:	62 f1 7c 48 5b e2    	vcvtdq2ps %zmm2,%zmm4
    953e:	62 51 7c 48 29 6e 04 	vmovaps %zmm13,0x100(%r14)
    9545:	4c 8d 8f 00 10 00 00 	lea    0x1000(%rdi),%r9
    954c:	62 51 7c 48 5b fe    	vcvtdq2ps %zmm14,%zmm15
    9552:	62 f1 7c 48 5b fd    	vcvtdq2ps %zmm5,%zmm7
    9558:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
    955c:	62 51 7c 48 29 7e 05 	vmovaps %zmm15,0x140(%r14)
    9563:	48 83 e1 c0          	and    $0xffffffffffffffc0,%rcx
    9567:	48 89 b5 b8 fc ff ff 	mov    %rsi,-0x348(%rbp)
    956e:	62 d1 7c 48 29 66 06 	vmovaps %zmm4,0x180(%r14)
    9575:	49 89 f8             	mov    %rdi,%r8
    9578:	62 d1 7c 48 29 7e 07 	vmovaps %zmm7,0x1c0(%r14)
    957f:	62 71 fd 48 6f 0d f7 	vmovdqa64 0x22f7(%rip),%zmm9        # b880 <_ZL5temp0+0x3a0>
    9586:	22 00 00 
    9589:	62 61 fd 48 6f 0d ed 	vmovdqa64 0x23ed(%rip),%zmm25        # b980 <_ZL5temp0+0x4a0>
    9590:	23 00 00 
    9593:	62 72 b5 48 28 35 a3 	vpmuldq 0x23a3(%rip),%zmm9,%zmm14        # b940 <_ZL5temp0+0x460>
    959a:	23 00 00 
    959d:	62 d1 85 48 73 d1 20 	vpsrlq $0x20,%zmm9,%zmm15
    95a4:	62 f2 85 48 28 15 92 	vpmuldq 0x2392(%rip),%zmm15,%zmm2        # b940 <_ZL5temp0+0x460>
    95ab:	23 00 00 
    95ae:	62 61 fd 48 6f 15 c8 	vmovdqa64 0x23c8(%rip),%zmm26        # b980 <_ZL5temp0+0x4a0>
    95b5:	23 00 00 
    95b8:	62 71 35 48 fe 2d fe 	vpaddd 0x22fe(%rip),%zmm9,%zmm13        # b8c0 <_ZL5temp0+0x3e0>
    95bf:	22 00 00 
    95c2:	62 62 0d 48 76 ca    	vpermi2d %zmm2,%zmm14,%zmm25
    95c8:	62 f1 35 48 fe 1d 2e 	vpaddd 0x232e(%rip),%zmm9,%zmm3        # b900 <_ZL5temp0+0x420>
    95cf:	23 00 00 
    95d2:	62 f2 e5 48 28 3d 64 	vpmuldq 0x2364(%rip),%zmm3,%zmm7        # b940 <_ZL5temp0+0x460>
    95d9:	23 00 00 
    95dc:	62 f1 bd 48 73 d3 20 	vpsrlq $0x20,%zmm3,%zmm8
    95e3:	62 61 fd 48 6f 1d 13 	vmovdqa64 0x2413(%rip),%zmm27        # ba00 <_ZL5temp0+0x520>
    95ea:	24 00 00 
    95ed:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    95f4:	62 f1 fd 48 6f 15 c2 	vmovdqa64 0x24c2(%rip),%zmm2        # bac0 <_ZL5temp0+0x5e0>
    95fb:	24 00 00 
    95fe:	62 91 4d 48 72 e1 01 	vpsrad $0x1,%zmm25,%zmm6
    9605:	62 f2 4d 48 40 2d b1 	vpmulld 0x23b1(%rip),%zmm6,%zmm5        # b9c0 <_ZL5temp0+0x4e0>
    960c:	23 00 00 
    960f:	62 f1 35 48 fa c5    	vpsubd %zmm5,%zmm9,%zmm0
    9615:	62 72 bd 48 28 0d 21 	vpmuldq 0x2321(%rip),%zmm8,%zmm9        # b940 <_ZL5temp0+0x460>
    961c:	23 00 00 
    961f:	62 42 45 48 76 d1    	vpermi2d %zmm9,%zmm7,%zmm26
    9625:	62 61 fd 48 6f 2d 51 	vmovdqa64 0x2351(%rip),%zmm29        # b980 <_ZL5temp0+0x4a0>
    962c:	23 00 00 
    962f:	62 61 fd 48 6f 35 47 	vmovdqa64 0x2347(%rip),%zmm30        # b980 <_ZL5temp0+0x4a0>
    9636:	23 00 00 
    9639:	62 f1 15 48 fe 35 bd 	vpaddd 0x22bd(%rip),%zmm13,%zmm6        # b900 <_ZL5temp0+0x420>
    9640:	22 00 00 
    9643:	62 f2 95 48 28 2d f3 	vpmuldq 0x22f3(%rip),%zmm13,%zmm5        # b940 <_ZL5temp0+0x460>
    964a:	22 00 00 
    964d:	62 61 fd 48 6f 25 a9 	vmovdqa64 0x24a9(%rip),%zmm28        # bb00 <_ZL5temp0+0x620>
    9654:	24 00 00 
    9657:	62 91 25 48 72 e2 01 	vpsrad $0x1,%zmm26,%zmm11
    965e:	62 72 25 48 40 25 58 	vpmulld 0x2358(%rip),%zmm11,%zmm12        # b9c0 <_ZL5temp0+0x4e0>
    9665:	23 00 00 
    9668:	62 d1 65 48 fa cc    	vpsubd %zmm12,%zmm3,%zmm1
    966e:	62 62 fd 48 75 d9    	vpermi2w %zmm1,%zmm0,%zmm27
    9674:	62 72 cd 48 28 25 c2 	vpmuldq 0x22c2(%rip),%zmm6,%zmm12        # b940 <_ZL5temp0+0x460>
    967b:	22 00 00 
    967e:	62 d1 fd 48 73 d5 20 	vpsrlq $0x20,%zmm13,%zmm0
    9685:	62 f1 f5 48 73 d6 20 	vpsrlq $0x20,%zmm6,%zmm1
    968c:	62 f2 fd 48 28 3d aa 	vpmuldq 0x22aa(%rip),%zmm0,%zmm7        # b940 <_ZL5temp0+0x460>
    9693:	22 00 00 
    9696:	62 f2 f5 48 28 1d a0 	vpmuldq 0x22a0(%rip),%zmm1,%zmm3        # b940 <_ZL5temp0+0x460>
    969d:	22 00 00 
    96a0:	62 62 55 48 76 ef    	vpermi2d %zmm7,%zmm5,%zmm29
    96a6:	62 61 fd 48 6f 3d 50 	vmovdqa64 0x2350(%rip),%zmm31        # ba00 <_ZL5temp0+0x520>
    96ad:	23 00 00 
    96b0:	62 71 25 40 fd 3d c6 	vpaddw 0x23c6(%rip),%zmm27,%zmm15        # ba80 <_ZL5temp0+0x5a0>
    96b7:	23 00 00 
    96ba:	62 71 25 40 fd 35 7c 	vpaddw 0x237c(%rip),%zmm27,%zmm14        # ba40 <_ZL5temp0+0x560>
    96c1:	23 00 00 
    96c4:	62 62 1d 48 76 f3    	vpermi2d %zmm3,%zmm12,%zmm30
    96ca:	62 d2 85 48 75 d6    	vpermi2w %zmm14,%zmm15,%zmm2
    96d0:	62 f1 fd 48 6f 3d e6 	vmovdqa64 0x23e6(%rip),%zmm7        # bac0 <_ZL5temp0+0x5e0>
    96d7:	23 00 00 
    96da:	62 42 85 48 75 e6    	vpermi2w %zmm14,%zmm15,%zmm28
    96e0:	62 91 35 48 72 e5 01 	vpsrad $0x1,%zmm29,%zmm9
    96e7:	62 72 35 48 40 15 cf 	vpmulld 0x22cf(%rip),%zmm9,%zmm10        # b9c0 <_ZL5temp0+0x4e0>
    96ee:	22 00 00 
    96f1:	62 91 05 48 72 e6 01 	vpsrad $0x1,%zmm30,%zmm15
    96f8:	62 51 15 48 fa da    	vpsubd %zmm10,%zmm13,%zmm11
    96fe:	62 e1 fd 48 6f 05 f8 	vmovdqa64 0x23f8(%rip),%zmm16        # bb00 <_ZL5temp0+0x620>
    9705:	23 00 00 
    9708:	62 d1 fd 48 7f 50 fc 	vmovdqa64 %zmm2,-0x100(%r8)
    970f:	62 f2 05 48 40 15 a7 	vpmulld 0x22a7(%rip),%zmm15,%zmm2        # b9c0 <_ZL5temp0+0x4e0>
    9716:	22 00 00 
    9719:	62 f1 4d 48 fa e2    	vpsubd %zmm2,%zmm6,%zmm4
    971f:	62 62 a5 48 75 fc    	vpermi2w %zmm4,%zmm11,%zmm31
    9725:	62 41 fd 48 7f 60 fd 	vmovdqa64 %zmm28,-0xc0(%r8)
    972c:	62 f1 05 40 fd 2d 0a 	vpaddw 0x230a(%rip),%zmm31,%zmm5        # ba40 <_ZL5temp0+0x560>
    9733:	23 00 00 
    9736:	62 f1 05 40 fd 05 40 	vpaddw 0x2340(%rip),%zmm31,%zmm0        # ba80 <_ZL5temp0+0x5a0>
    973d:	23 00 00 
    9740:	62 f2 fd 48 75 fd    	vpermi2w %zmm5,%zmm0,%zmm7
    9746:	62 e2 fd 48 75 c5    	vpermi2w %zmm5,%zmm0,%zmm16
    974c:	62 d1 fd 48 7f 78 fe 	vmovdqa64 %zmm7,-0x80(%r8)
    9753:	62 c1 fd 48 7f 40 ff 	vmovdqa64 %zmm16,-0x40(%r8)
    975a:	4d 39 c1             	cmp    %r8,%r9
    975d:	62 71 15 48 fe 0d 59 	vpaddd 0x2159(%rip),%zmm13,%zmm9        # b8c0 <_ZL5temp0+0x3e0>
    9764:	21 00 00 
    9767:	0f 85 1c fe ff ff    	jne    9589 <_ZL13runBenchmarksi+0x6e9>
    976d:	62 51 15 48 ef ed    	vpxord %zmm13,%zmm13,%zmm13
    9773:	4c 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%r8
    977a:	ba 40 00 00 00       	mov    $0x40,%edx
    977f:	44 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9d
    9786:	62 e1 fd 48 6f 0d b0 	vmovdqa64 0x1db0(%rip),%zmm17        # b540 <_ZL5temp0+0x60>
    978d:	1d 00 00 
    9790:	be 10 00 00 00       	mov    $0x10,%esi
    9795:	62 e1 fd 48 6f 15 e1 	vmovdqa64 0x1de1(%rip),%zmm18        # b580 <_ZL5temp0+0xa0>
    979c:	1d 00 00 
    979f:	62 e1 fd 48 6f 1d 17 	vmovdqa64 0x1e17(%rip),%zmm19        # b5c0 <_ZL5temp0+0xe0>
    97a6:	1e 00 00 
    97a9:	62 e1 fd 48 6f 25 4d 	vmovdqa64 0x1e4d(%rip),%zmm20        # b600 <_ZL5temp0+0x120>
    97b0:	1e 00 00 
    97b3:	62 e1 fd 48 7f 09    	vmovdqa64 %zmm17,(%rcx)
    97b9:	62 e1 fd 48 7f 51 01 	vmovdqa64 %zmm18,0x40(%rcx)
    97c0:	62 e1 fd 48 7f 59 02 	vmovdqa64 %zmm19,0x80(%rcx)
    97c7:	62 e1 fd 48 7f 61 03 	vmovdqa64 %zmm20,0xc0(%rcx)
    97ce:	62 51 fd 48 7f 28    	vmovdqa64 %zmm13,(%r8)
    97d4:	c5 f8 77             	vzeroupper 
    97d7:	e8 f4 a8 ff ff       	callq  40d0 <_Z14runV2BenchmarkP13Complex_int16iiS0_S0_i>
    97dc:	44 8b 8d e0 fc ff ff 	mov    -0x320(%rbp),%r9d
    97e3:	4d 89 f8             	mov    %r15,%r8
    97e6:	4c 89 e1             	mov    %r12,%rcx
    97e9:	ba 40 00 00 00       	mov    $0x40,%edx
    97ee:	be 10 00 00 00       	mov    $0x10,%esi
    97f3:	4c 89 ef             	mov    %r13,%rdi
    97f6:	c5 fb 11 85 f8 fc ff 	vmovsd %xmm0,-0x308(%rbp)
    97fd:	ff 
    97fe:	e8 cd 9e ff ff       	callq  36d0 <_Z15runAVXBenchmarkP13Complex_int16iiS0_S0_i>
    9803:	44 8b ad e0 fc ff ff 	mov    -0x320(%rbp),%r13d
    980a:	4c 89 f1             	mov    %r14,%rcx
    980d:	ba 40 00 00 00       	mov    $0x40,%edx
    9812:	4c 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%r8
    9819:	be 10 00 00 00       	mov    $0x10,%esi
    981e:	48 89 df             	mov    %rbx,%rdi
    9821:	c5 fb 11 85 00 fd ff 	vmovsd %xmm0,-0x300(%rbp)
    9828:	ff 
    9829:	45 89 e9             	mov    %r13d,%r9d
    982c:	e8 8f aa ff ff       	callq  42c0 <_Z15runVCLBenchmarkP13Complex_floatiiS0_S0_i>
    9831:	48 8b 95 e8 fc ff ff 	mov    -0x318(%rbp),%rdx
    9838:	48 8b b5 c8 fc ff ff 	mov    -0x338(%rbp),%rsi
    983f:	44 89 e9             	mov    %r13d,%ecx
    9842:	48 8b bd c0 fc ff ff 	mov    -0x340(%rbp),%rdi
    9849:	c5 fb 11 85 08 fd ff 	vmovsd %xmm0,-0x2f8(%rbp)
    9850:	ff 
    9851:	e8 3a e4 ff ff       	callq  7c90 <_Z16runArmaBenchmarkRKN4arma3MatISt7complexIfEEES5_RS3_i>
    9856:	48 8d 9d 90 fd ff ff 	lea    -0x270(%rbp),%rbx
    985d:	48 8d bd 10 fd ff ff 	lea    -0x2f0(%rbp),%rdi
    9864:	c5 fb 11 85 90 fd ff 	vmovsd %xmm0,-0x270(%rbp)
    986b:	ff 
    986c:	48 89 de             	mov    %rbx,%rsi
    986f:	48 89 bd 70 fc ff ff 	mov    %rdi,-0x390(%rbp)
    9876:	e8 65 06 00 00       	callq  9ee0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    987b:	4c 8d ad 50 fd ff ff 	lea    -0x2b0(%rbp),%r13
    9882:	48 8d b5 08 fd ff ff 	lea    -0x2f8(%rbp),%rsi
    9889:	4c 89 ef             	mov    %r13,%rdi
    988c:	e8 4f 06 00 00       	callq  9ee0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    9891:	4c 8d b5 30 fd ff ff 	lea    -0x2d0(%rbp),%r14
    9898:	48 8d b5 00 fd ff ff 	lea    -0x300(%rbp),%rsi
    989f:	4c 89 f7             	mov    %r14,%rdi
    98a2:	e8 39 06 00 00       	callq  9ee0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    98a7:	4c 8d a5 70 fd ff ff 	lea    -0x290(%rbp),%r12
    98ae:	48 8d b5 f8 fc ff ff 	lea    -0x308(%rbp),%rsi
    98b5:	4c 89 e7             	mov    %r12,%rdi
    98b8:	e8 23 06 00 00       	callq  9ee0 <_ZNSt6vectorIdSaIdEE9push_backERKd>
    98bd:	62 51 2d 48 ef d2    	vpxord %zmm10,%zmm10,%zmm10
    98c3:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
    98ca:	62 e1 ff 08 10 6d b2 	vmovsd -0x270(%rbp),%xmm21
    98d1:	4c 89 ff             	mov    %r15,%rdi
    98d4:	62 e1 ff 08 10 7d a1 	vmovsd -0x2f8(%rbp),%xmm23
    98db:	62 61 ff 08 10 4d a0 	vmovsd -0x300(%rbp),%xmm25
    98e2:	62 a1 af 08 58 f5    	vaddsd %xmm21,%xmm10,%xmm22
    98e8:	62 61 ff 08 10 5d 9f 	vmovsd -0x308(%rbp),%xmm27
    98ef:	62 21 af 08 58 c7    	vaddsd %xmm23,%xmm10,%xmm24
    98f5:	62 01 af 08 58 d1    	vaddsd %xmm25,%xmm10,%xmm26
    98fb:	62 e1 ff 08 11 6d 96 	vmovsd %xmm21,-0x350(%rbp)
    9902:	62 01 af 08 58 e3    	vaddsd %xmm27,%xmm10,%xmm28
    9908:	62 e1 ff 08 11 7d 94 	vmovsd %xmm23,-0x360(%rbp)
    990f:	62 e1 ff 08 11 75 9b 	vmovsd %xmm22,-0x328(%rbp)
    9916:	62 61 ff 08 11 45 91 	vmovsd %xmm24,-0x378(%rbp)
    991d:	62 61 ff 08 11 4d 93 	vmovsd %xmm25,-0x368(%rbp)
    9924:	62 61 ff 08 11 55 90 	vmovsd %xmm26,-0x380(%rbp)
    992b:	62 61 ff 08 11 5d 92 	vmovsd %xmm27,-0x370(%rbp)
    9932:	62 61 ff 08 11 65 8f 	vmovsd %xmm28,-0x388(%rbp)
    9939:	e8 e2 06 00 00       	callq  a020 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE>
    993e:	84 c0                	test   %al,%al
    9940:	0f 84 25 04 00 00    	je     9d6b <_ZL13runBenchmarksi+0xecb>
    9946:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
    994d:	48 8b bd d0 fc ff ff 	mov    -0x330(%rbp),%rdi
    9954:	e8 a7 0b 00 00       	callq  a500 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE>
    9959:	84 c0                	test   %al,%al
    995b:	0f 84 eb 03 00 00    	je     9d4c <_ZL13runBenchmarksi+0xeac>
    9961:	48 8b b5 e8 fc ff ff 	mov    -0x318(%rbp),%rsi
    9968:	48 8b bd b8 fc ff ff 	mov    -0x348(%rbp),%rdi
    996f:	e8 ac 06 00 00       	callq  a020 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE>
    9974:	84 c0                	test   %al,%al
    9976:	0f 84 b1 03 00 00    	je     9d2d <_ZL13runBenchmarksi+0xe8d>
    997c:	44 8b bd e0 fc ff ff 	mov    -0x320(%rbp),%r15d
    9983:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    9988:	62 61 ff 08 10 75 96 	vmovsd -0x350(%rbp),%xmm30
    998f:	48 8d 35 aa 16 00 00 	lea    0x16aa(%rip),%rsi        # b040 <_IO_stdin_used+0x380>
    9996:	62 61 ff 08 10 6d 94 	vmovsd -0x360(%rbp),%xmm29
    999d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
    99a3:	62 e1 ff 08 10 45 93 	vmovsd -0x368(%rbp),%xmm16
    99aa:	c4 41 23 2a df       	vcvtsi2sd %r15d,%xmm11,%xmm11
    99af:	b9 40 00 00 00       	mov    $0x40,%ecx
    99b4:	62 e1 ff 08 10 4d 92 	vmovsd -0x370(%rbp),%xmm17
    99bb:	ba 10 00 00 00       	mov    $0x10,%edx
    99c0:	62 51 97 00 5e e3    	vdivsd %xmm11,%xmm29,%xmm12
    99c6:	bf 01 00 00 00       	mov    $0x1,%edi
    99cb:	31 c0                	xor    %eax,%eax
    99cd:	62 41 8f 00 5e fb    	vdivsd %xmm11,%xmm30,%xmm31
    99d3:	c5 7b 11 a5 d0 fc ff 	vmovsd %xmm12,-0x330(%rbp)
    99da:	ff 
    99db:	62 d1 ff 00 5e cb    	vdivsd %xmm11,%xmm16,%xmm1
    99e1:	62 61 ff 08 11 7d 9c 	vmovsd %xmm31,-0x320(%rbp)
    99e8:	62 d1 f7 00 5e db    	vdivsd %xmm11,%xmm17,%xmm3
    99ee:	c5 fb 11 8d b8 fc ff 	vmovsd %xmm1,-0x348(%rbp)
    99f5:	ff 
    99f6:	c5 fb 11 9d b0 fc ff 	vmovsd %xmm3,-0x350(%rbp)
    99fd:	ff 
    99fe:	e8 dd 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9a03:	48 8d 35 66 16 00 00 	lea    0x1666(%rip),%rsi        # b070 <_IO_stdin_used+0x3b0>
    9a0a:	44 89 fa             	mov    %r15d,%edx
    9a0d:	bf 01 00 00 00       	mov    $0x1,%edi
    9a12:	31 c0                	xor    %eax,%eax
    9a14:	e8 c7 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9a19:	c5 fb 10 85 e0 fc ff 	vmovsd -0x320(%rbp),%xmm0
    9a20:	ff 
    9a21:	48 8d 35 80 16 00 00 	lea    0x1680(%rip),%rsi        # b0a8 <_IO_stdin_used+0x3e8>
    9a28:	bf 01 00 00 00       	mov    $0x1,%edi
    9a2d:	b8 01 00 00 00       	mov    $0x1,%eax
    9a32:	e8 a9 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9a37:	c5 fb 10 85 b8 fc ff 	vmovsd -0x348(%rbp),%xmm0
    9a3e:	ff 
    9a3f:	48 8d 35 92 16 00 00 	lea    0x1692(%rip),%rsi        # b0d8 <_IO_stdin_used+0x418>
    9a46:	bf 01 00 00 00       	mov    $0x1,%edi
    9a4b:	b8 01 00 00 00       	mov    $0x1,%eax
    9a50:	e8 8b 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9a55:	62 e1 ff 08 10 55 9c 	vmovsd -0x320(%rbp),%xmm18
    9a5c:	48 8d 35 a5 16 00 00 	lea    0x16a5(%rip),%rsi        # b108 <_IO_stdin_used+0x448>
    9a63:	bf 01 00 00 00       	mov    $0x1,%edi
    9a68:	b8 01 00 00 00       	mov    $0x1,%eax
    9a6d:	62 f1 ef 00 5e 45 97 	vdivsd -0x348(%rbp),%xmm18,%xmm0
    9a74:	e8 67 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9a79:	c5 fb 10 85 b0 fc ff 	vmovsd -0x350(%rbp),%xmm0
    9a80:	ff 
    9a81:	48 8d 35 b0 16 00 00 	lea    0x16b0(%rip),%rsi        # b138 <_IO_stdin_used+0x478>
    9a88:	bf 01 00 00 00       	mov    $0x1,%edi
    9a8d:	b8 01 00 00 00       	mov    $0x1,%eax
    9a92:	e8 49 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9a97:	62 e1 ff 08 10 5d 9c 	vmovsd -0x320(%rbp),%xmm19
    9a9e:	48 8d 35 63 16 00 00 	lea    0x1663(%rip),%rsi        # b108 <_IO_stdin_used+0x448>
    9aa5:	bf 01 00 00 00       	mov    $0x1,%edi
    9aaa:	b8 01 00 00 00       	mov    $0x1,%eax
    9aaf:	62 f1 e7 00 5e 45 96 	vdivsd -0x350(%rbp),%xmm19,%xmm0
    9ab6:	e8 25 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9abb:	c5 fb 10 85 d0 fc ff 	vmovsd -0x330(%rbp),%xmm0
    9ac2:	ff 
    9ac3:	48 8d 35 9e 16 00 00 	lea    0x169e(%rip),%rsi        # b168 <_IO_stdin_used+0x4a8>
    9aca:	bf 01 00 00 00       	mov    $0x1,%edi
    9acf:	b8 01 00 00 00       	mov    $0x1,%eax
    9ad4:	e8 07 81 ff ff       	callq  1be0 <__printf_chk@plt>
    9ad9:	62 e1 ff 08 10 65 9c 	vmovsd -0x320(%rbp),%xmm20
    9ae0:	48 8d 35 b1 16 00 00 	lea    0x16b1(%rip),%rsi        # b198 <_IO_stdin_used+0x4d8>
    9ae7:	bf 01 00 00 00       	mov    $0x1,%edi
    9aec:	b8 01 00 00 00       	mov    $0x1,%eax
    9af1:	62 f1 df 00 5e 45 9a 	vdivsd -0x330(%rbp),%xmm20,%xmm0
    9af8:	e8 e3 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9afd:	48 8d 35 c4 16 00 00 	lea    0x16c4(%rip),%rsi        # b1c8 <_IO_stdin_used+0x508>
    9b04:	bf 01 00 00 00       	mov    $0x1,%edi
    9b09:	31 c0                	xor    %eax,%eax
    9b0b:	e8 d0 80 ff ff       	callq  1be0 <__printf_chk@plt>
    9b10:	48 8b bd e8 fc ff ff 	mov    -0x318(%rbp),%rdi
    9b17:	e8 64 03 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    9b1c:	48 8b bd c8 fc ff ff 	mov    -0x338(%rbp),%rdi
    9b23:	e8 58 03 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    9b28:	48 8b bd c0 fc ff ff 	mov    -0x340(%rbp),%rdi
    9b2f:	e8 4c 03 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    9b34:	48 8b a5 a8 fc ff ff 	mov    -0x358(%rbp),%rsp
    9b3b:	48 8b b5 70 fc ff ff 	mov    -0x390(%rbp),%rsi
    9b42:	48 89 df             	mov    %rbx,%rdi
    9b45:	e8 16 0d 00 00       	callq  a860 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9b4a:	48 89 df             	mov    %rbx,%rdi
    9b4d:	e8 ae ba ff ff       	callq  5600 <_Z11printVectorSt6vectorIdSaIdEE>
    9b52:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9b59:	48 85 ff             	test   %rdi,%rdi
    9b5c:	74 05                	je     9b63 <_ZL13runBenchmarksi+0xcc3>
    9b5e:	e8 7d 7f ff ff       	callq  1ae0 <_ZdlPv@plt>
    9b63:	4c 89 f6             	mov    %r14,%rsi
    9b66:	48 89 df             	mov    %rbx,%rdi
    9b69:	e8 f2 0c 00 00       	callq  a860 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9b6e:	48 89 df             	mov    %rbx,%rdi
    9b71:	e8 8a ba ff ff       	callq  5600 <_Z11printVectorSt6vectorIdSaIdEE>
    9b76:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9b7d:	48 85 ff             	test   %rdi,%rdi
    9b80:	74 05                	je     9b87 <_ZL13runBenchmarksi+0xce7>
    9b82:	e8 59 7f ff ff       	callq  1ae0 <_ZdlPv@plt>
    9b87:	4c 89 ee             	mov    %r13,%rsi
    9b8a:	48 89 df             	mov    %rbx,%rdi
    9b8d:	e8 ce 0c 00 00       	callq  a860 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9b92:	48 89 df             	mov    %rbx,%rdi
    9b95:	e8 66 ba ff ff       	callq  5600 <_Z11printVectorSt6vectorIdSaIdEE>
    9b9a:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9ba1:	48 85 ff             	test   %rdi,%rdi
    9ba4:	74 05                	je     9bab <_ZL13runBenchmarksi+0xd0b>
    9ba6:	e8 35 7f ff ff       	callq  1ae0 <_ZdlPv@plt>
    9bab:	4c 89 e6             	mov    %r12,%rsi
    9bae:	48 89 df             	mov    %rbx,%rdi
    9bb1:	e8 aa 0c 00 00       	callq  a860 <_ZNSt6vectorIdSaIdEEC1ERKS1_>
    9bb6:	48 89 df             	mov    %rbx,%rdi
    9bb9:	e8 42 ba ff ff       	callq  5600 <_Z11printVectorSt6vectorIdSaIdEE>
    9bbe:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9bc5:	48 85 ff             	test   %rdi,%rdi
    9bc8:	74 05                	je     9bcf <_ZL13runBenchmarksi+0xd2f>
    9bca:	e8 11 7f ff ff       	callq  1ae0 <_ZdlPv@plt>
    9bcf:	62 e1 ff 08 10 6d 9b 	vmovsd -0x328(%rbp),%xmm21
    9bd6:	48 8d 35 13 16 00 00 	lea    0x1613(%rip),%rsi        # b1f0 <_IO_stdin_used+0x530>
    9bdd:	bf 01 00 00 00       	mov    $0x1,%edi
    9be2:	b8 01 00 00 00       	mov    $0x1,%eax
    9be7:	62 f1 d7 00 5e 45 90 	vdivsd -0x380(%rbp),%xmm21,%xmm0
    9bee:	e8 ed 7f ff ff       	callq  1be0 <__printf_chk@plt>
    9bf3:	62 e1 ff 08 10 75 9b 	vmovsd -0x328(%rbp),%xmm22
    9bfa:	48 8d 35 27 16 00 00 	lea    0x1627(%rip),%rsi        # b228 <_IO_stdin_used+0x568>
    9c01:	bf 01 00 00 00       	mov    $0x1,%edi
    9c06:	b8 01 00 00 00       	mov    $0x1,%eax
    9c0b:	62 f1 cf 00 5e 45 91 	vdivsd -0x378(%rbp),%xmm22,%xmm0
    9c12:	e8 c9 7f ff ff       	callq  1be0 <__printf_chk@plt>
    9c17:	62 e1 ff 08 10 7d 9b 	vmovsd -0x328(%rbp),%xmm23
    9c1e:	48 8d 35 3b 16 00 00 	lea    0x163b(%rip),%rsi        # b260 <_IO_stdin_used+0x5a0>
    9c25:	bf 01 00 00 00       	mov    $0x1,%edi
    9c2a:	b8 01 00 00 00       	mov    $0x1,%eax
    9c2f:	62 f1 c7 00 5e 45 8f 	vdivsd -0x388(%rbp),%xmm23,%xmm0
    9c36:	e8 a5 7f ff ff       	callq  1be0 <__printf_chk@plt>
    9c3b:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
    9c42:	48 85 ff             	test   %rdi,%rdi
    9c45:	74 05                	je     9c4c <_ZL13runBenchmarksi+0xdac>
    9c47:	e8 94 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c4c:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
    9c53:	48 85 ff             	test   %rdi,%rdi
    9c56:	74 05                	je     9c5d <_ZL13runBenchmarksi+0xdbd>
    9c58:	e8 83 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c5d:	48 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%rdi
    9c64:	48 85 ff             	test   %rdi,%rdi
    9c67:	74 05                	je     9c6e <_ZL13runBenchmarksi+0xdce>
    9c69:	e8 72 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c6e:	48 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%rdi
    9c75:	48 85 ff             	test   %rdi,%rdi
    9c78:	74 05                	je     9c7f <_ZL13runBenchmarksi+0xddf>
    9c7a:	e8 61 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9c7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    9c83:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    9c8a:	00 00 
    9c8c:	75 6e                	jne    9cfc <_ZL13runBenchmarksi+0xe5c>
    9c8e:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
    9c92:	5b                   	pop    %rbx
    9c93:	41 5b                	pop    %r11
    9c95:	41 5c                	pop    %r12
    9c97:	41 5d                	pop    %r13
    9c99:	41 5e                	pop    %r14
    9c9b:	41 5f                	pop    %r15
    9c9d:	5d                   	pop    %rbp
    9c9e:	49 8d 63 f8          	lea    -0x8(%r11),%rsp
    9ca2:	c3                   	retq   
    9ca3:	48 89 c3             	mov    %rax,%rbx
    9ca6:	c5 f8 77             	vzeroupper 
    9ca9:	48 8b a5 a8 fc ff ff 	mov    -0x358(%rbp),%rsp
    9cb0:	48 8b bd 70 fd ff ff 	mov    -0x290(%rbp),%rdi
    9cb7:	48 85 ff             	test   %rdi,%rdi
    9cba:	74 05                	je     9cc1 <_ZL13runBenchmarksi+0xe21>
    9cbc:	e8 1f 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9cc1:	48 8b bd 50 fd ff ff 	mov    -0x2b0(%rbp),%rdi
    9cc8:	48 85 ff             	test   %rdi,%rdi
    9ccb:	74 05                	je     9cd2 <_ZL13runBenchmarksi+0xe32>
    9ccd:	e8 0e 7e ff ff       	callq  1ae0 <_ZdlPv@plt>
    9cd2:	48 8b bd 30 fd ff ff 	mov    -0x2d0(%rbp),%rdi
    9cd9:	48 85 ff             	test   %rdi,%rdi
    9cdc:	74 05                	je     9ce3 <_ZL13runBenchmarksi+0xe43>
    9cde:	e8 fd 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9ce3:	48 8b bd 10 fd ff ff 	mov    -0x2f0(%rbp),%rdi
    9cea:	48 85 ff             	test   %rdi,%rdi
    9ced:	74 05                	je     9cf4 <_ZL13runBenchmarksi+0xe54>
    9cef:	e8 ec 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9cf4:	48 89 df             	mov    %rbx,%rdi
    9cf7:	e8 44 7e ff ff       	callq  1b40 <_Unwind_Resume@plt>
    9cfc:	e8 0f 7d ff ff       	callq  1a10 <__stack_chk_fail@plt>
    9d01:	48 8b bd 90 fd ff ff 	mov    -0x270(%rbp),%rdi
    9d08:	48 89 c3             	mov    %rax,%rbx
    9d0b:	48 85 ff             	test   %rdi,%rdi
    9d0e:	74 0e                	je     9d1e <_ZL13runBenchmarksi+0xe7e>
    9d10:	c5 f8 77             	vzeroupper 
    9d13:	e8 c8 7d ff ff       	callq  1ae0 <_ZdlPv@plt>
    9d18:	eb 96                	jmp    9cb0 <_ZL13runBenchmarksi+0xe10>
    9d1a:	eb e5                	jmp    9d01 <_ZL13runBenchmarksi+0xe61>
    9d1c:	eb e3                	jmp    9d01 <_ZL13runBenchmarksi+0xe61>
    9d1e:	c5 f8 77             	vzeroupper 
    9d21:	eb 8d                	jmp    9cb0 <_ZL13runBenchmarksi+0xe10>
    9d23:	eb dc                	jmp    9d01 <_ZL13runBenchmarksi+0xe61>
    9d25:	48 89 c3             	mov    %rax,%rbx
    9d28:	c5 f8 77             	vzeroupper 
    9d2b:	eb 83                	jmp    9cb0 <_ZL13runBenchmarksi+0xe10>
    9d2d:	48 8d 0d ac 16 00 00 	lea    0x16ac(%rip),%rcx        # b3e0 <_ZZL13runBenchmarksiE19__PRETTY_FUNCTION__>
    9d34:	48 8d 35 1c 10 00 00 	lea    0x101c(%rip),%rsi        # ad57 <_IO_stdin_used+0x97>
    9d3b:	48 8d 3d 7b 10 00 00 	lea    0x107b(%rip),%rdi        # adbd <_IO_stdin_used+0xfd>
    9d42:	ba f8 00 00 00       	mov    $0xf8,%edx
    9d47:	e8 84 7c ff ff       	callq  19d0 <__assert_fail@plt>
    9d4c:	48 8d 0d 8d 16 00 00 	lea    0x168d(%rip),%rcx        # b3e0 <_ZZL13runBenchmarksiE19__PRETTY_FUNCTION__>
    9d53:	48 8d 35 fd 0f 00 00 	lea    0xffd(%rip),%rsi        # ad57 <_IO_stdin_used+0x97>
    9d5a:	48 8d 3d 3f 10 00 00 	lea    0x103f(%rip),%rdi        # ada0 <_IO_stdin_used+0xe0>
    9d61:	ba f7 00 00 00       	mov    $0xf7,%edx
    9d66:	e8 65 7c ff ff       	callq  19d0 <__assert_fail@plt>
    9d6b:	48 8d 0d 6e 16 00 00 	lea    0x166e(%rip),%rcx        # b3e0 <_ZZL13runBenchmarksiE19__PRETTY_FUNCTION__>
    9d72:	48 8d 35 de 0f 00 00 	lea    0xfde(%rip),%rsi        # ad57 <_IO_stdin_used+0x97>
    9d79:	48 8d 3d 08 10 00 00 	lea    0x1008(%rip),%rdi        # ad88 <_IO_stdin_used+0xc8>
    9d80:	ba f6 00 00 00       	mov    $0xf6,%edx
    9d85:	e8 46 7c ff ff       	callq  19d0 <__assert_fail@plt>
    9d8a:	48 8b bd e8 fc ff ff 	mov    -0x318(%rbp),%rdi
    9d91:	48 89 c3             	mov    %rax,%rbx
    9d94:	c5 f8 77             	vzeroupper 
    9d97:	e8 e4 00 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    9d9c:	48 8b bd c8 fc ff ff 	mov    -0x338(%rbp),%rdi
    9da3:	e8 d8 00 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    9da8:	48 8b bd c0 fc ff ff 	mov    -0x340(%rbp),%rdi
    9daf:	e8 cc 00 00 00       	callq  9e80 <_ZN4arma3MatISt7complexIfEED1Ev>
    9db4:	e9 f0 fe ff ff       	jmpq   9ca9 <_ZL13runBenchmarksi+0xe09>
    9db9:	48 89 c3             	mov    %rax,%rbx
    9dbc:	c5 f8 77             	vzeroupper 
    9dbf:	eb db                	jmp    9d9c <_ZL13runBenchmarksi+0xefc>
    9dc1:	48 89 c3             	mov    %rax,%rbx
    9dc4:	c5 f8 77             	vzeroupper 
    9dc7:	eb df                	jmp    9da8 <_ZL13runBenchmarksi+0xf08>
    9dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000009dd0 <_ZNSt11char_traitsIcE6lengthEPKc>:
    9dd0:	e9 bb 7c ff ff       	jmpq   1a90 <strlen@plt>
    9dd5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9ddc:	00 00 00 
    9ddf:	90                   	nop

0000000000009de0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_>:
    9de0:	41 55                	push   %r13
    9de2:	41 54                	push   %r12
    9de4:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    9de8:	55                   	push   %rbp
    9de9:	53                   	push   %rbx
    9dea:	48 83 ec 08          	sub    $0x8,%rsp
    9dee:	48 85 f6             	test   %rsi,%rsi
    9df1:	4c 89 27             	mov    %r12,(%rdi)
    9df4:	74 72                	je     9e68 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x88>
    9df6:	48 89 fd             	mov    %rdi,%rbp
    9df9:	48 89 f7             	mov    %rsi,%rdi
    9dfc:	49 89 f5             	mov    %rsi,%r13
    9dff:	e8 8c 7c ff ff       	callq  1a90 <strlen@plt>
    9e04:	48 83 f8 0f          	cmp    $0xf,%rax
    9e08:	48 89 c3             	mov    %rax,%rbx
    9e0b:	77 33                	ja     9e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x60>
    9e0d:	48 83 f8 01          	cmp    $0x1,%rax
    9e11:	74 1d                	je     9e30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x50>
    9e13:	48 85 c0             	test   %rax,%rax
    9e16:	75 3c                	jne    9e54 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x74>
    9e18:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
    9e1c:	41 c6 04 1c 00       	movb   $0x0,(%r12,%rbx,1)
    9e21:	48 83 c4 08          	add    $0x8,%rsp
    9e25:	5b                   	pop    %rbx
    9e26:	5d                   	pop    %rbp
    9e27:	41 5c                	pop    %r12
    9e29:	41 5d                	pop    %r13
    9e2b:	c3                   	retq   
    9e2c:	0f 1f 40 00          	nopl   0x0(%rax)
    9e30:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    9e35:	88 45 10             	mov    %al,0x10(%rbp)
    9e38:	eb de                	jmp    9e18 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x38>
    9e3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    9e40:	48 8d 78 01          	lea    0x1(%rax),%rdi
    9e44:	e8 67 7b ff ff       	callq  19b0 <_Znwm@plt>
    9e49:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
    9e4d:	49 89 c4             	mov    %rax,%r12
    9e50:	48 89 45 00          	mov    %rax,0x0(%rbp)
    9e54:	4c 89 e7             	mov    %r12,%rdi
    9e57:	48 89 da             	mov    %rbx,%rdx
    9e5a:	4c 89 ee             	mov    %r13,%rsi
    9e5d:	e8 fe 7a ff ff       	callq  1960 <memcpy@plt>
    9e62:	4c 8b 65 00          	mov    0x0(%rbp),%r12
    9e66:	eb b0                	jmp    9e18 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_+0x38>
    9e68:	48 8d 3d 39 10 00 00 	lea    0x1039(%rip),%rdi        # aea8 <_IO_stdin_used+0x1e8>
    9e6f:	e8 dc 7a ff ff       	callq  1950 <_ZSt19__throw_logic_errorPKc@plt>
    9e74:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9e7b:	00 00 00 
    9e7e:	66 90                	xchg   %ax,%ax

0000000000009e80 <_ZN4arma3MatISt7complexIfEED1Ev>:
    9e80:	8b 47 1c             	mov    0x1c(%rdi),%eax
    9e83:	85 c0                	test   %eax,%eax
    9e85:	75 19                	jne    9ea0 <_ZN4arma3MatISt7complexIfEED1Ev+0x20>
    9e87:	48 83 7f 10 10       	cmpq   $0x10,0x10(%rdi)
    9e8c:	76 12                	jbe    9ea0 <_ZN4arma3MatISt7complexIfEED1Ev+0x20>
    9e8e:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    9e92:	48 85 ff             	test   %rdi,%rdi
    9e95:	74 09                	je     9ea0 <_ZN4arma3MatISt7complexIfEED1Ev+0x20>
    9e97:	e9 44 7b ff ff       	jmpq   19e0 <free@plt>
    9e9c:	0f 1f 40 00          	nopl   0x0(%rax)
    9ea0:	f3 c3                	repz retq 
    9ea2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9ea9:	00 00 00 
    9eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000009eb0 <_ZN4arma3MatIfED1Ev>:
    9eb0:	8b 47 1c             	mov    0x1c(%rdi),%eax
    9eb3:	85 c0                	test   %eax,%eax
    9eb5:	75 19                	jne    9ed0 <_ZN4arma3MatIfED1Ev+0x20>
    9eb7:	48 83 7f 10 10       	cmpq   $0x10,0x10(%rdi)
    9ebc:	76 12                	jbe    9ed0 <_ZN4arma3MatIfED1Ev+0x20>
    9ebe:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    9ec2:	48 85 ff             	test   %rdi,%rdi
    9ec5:	74 09                	je     9ed0 <_ZN4arma3MatIfED1Ev+0x20>
    9ec7:	e9 14 7b ff ff       	jmpq   19e0 <free@plt>
    9ecc:	0f 1f 40 00          	nopl   0x0(%rax)
    9ed0:	f3 c3                	repz retq 
    9ed2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9ed9:	00 00 00 
    9edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000009ee0 <_ZNSt6vectorIdSaIdEE9push_backERKd>:
    9ee0:	41 57                	push   %r15
    9ee2:	41 56                	push   %r14
    9ee4:	41 55                	push   %r13
    9ee6:	41 54                	push   %r12
    9ee8:	55                   	push   %rbp
    9ee9:	53                   	push   %rbx
    9eea:	48 83 ec 08          	sub    $0x8,%rsp
    9eee:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
    9ef2:	48 3b 5f 10          	cmp    0x10(%rdi),%rbx
    9ef6:	74 28                	je     9f20 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x40>
    9ef8:	c5 fb 10 0e          	vmovsd (%rsi),%xmm1
    9efc:	48 83 c3 08          	add    $0x8,%rbx
    9f00:	c5 fb 11 4b f8       	vmovsd %xmm1,-0x8(%rbx)
    9f05:	48 89 5f 08          	mov    %rbx,0x8(%rdi)
    9f09:	48 83 c4 08          	add    $0x8,%rsp
    9f0d:	5b                   	pop    %rbx
    9f0e:	5d                   	pop    %rbp
    9f0f:	41 5c                	pop    %r12
    9f11:	41 5d                	pop    %r13
    9f13:	41 5e                	pop    %r14
    9f15:	41 5f                	pop    %r15
    9f17:	c3                   	retq   
    9f18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    9f1f:	00 
    9f20:	49 89 df             	mov    %rbx,%r15
    9f23:	4c 2b 3f             	sub    (%rdi),%r15
    9f26:	49 89 f4             	mov    %rsi,%r12
    9f29:	48 89 fd             	mov    %rdi,%rbp
    9f2c:	4c 89 f8             	mov    %r15,%rax
    9f2f:	48 c1 f8 03          	sar    $0x3,%rax
    9f33:	48 85 c0             	test   %rax,%rax
    9f36:	0f 84 9c 00 00 00    	je     9fd8 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xf8>
    9f3c:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    9f40:	49 c7 c6 f8 ff ff ff 	mov    $0xfffffffffffffff8,%r14
    9f47:	48 39 d0             	cmp    %rdx,%rax
    9f4a:	0f 86 98 00 00 00    	jbe    9fe8 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x108>
    9f50:	4c 89 f7             	mov    %r14,%rdi
    9f53:	e8 58 7a ff ff       	callq  19b0 <_Znwm@plt>
    9f58:	49 89 c5             	mov    %rax,%r13
    9f5b:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
    9f61:	4c 8b 65 00          	mov    0x0(%rbp),%r12
    9f65:	c4 81 7b 11 44 3d 00 	vmovsd %xmm0,0x0(%r13,%r15,1)
    9f6c:	49 89 df             	mov    %rbx,%r15
    9f6f:	4d 29 e7             	sub    %r12,%r15
    9f72:	49 39 dc             	cmp    %rbx,%r12
    9f75:	74 0e                	je     9f85 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xa5>
    9f77:	4c 89 fa             	mov    %r15,%rdx
    9f7a:	4c 89 e6             	mov    %r12,%rsi
    9f7d:	4c 89 ef             	mov    %r13,%rdi
    9f80:	e8 3b 7a ff ff       	callq  19c0 <memmove@plt>
    9f85:	48 8b 75 08          	mov    0x8(%rbp),%rsi
    9f89:	4b 8d 7c 3d 08       	lea    0x8(%r13,%r15,1),%rdi
    9f8e:	49 89 f7             	mov    %rsi,%r15
    9f91:	49 29 df             	sub    %rbx,%r15
    9f94:	48 39 de             	cmp    %rbx,%rsi
    9f97:	74 0e                	je     9fa7 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xc7>
    9f99:	4c 89 fa             	mov    %r15,%rdx
    9f9c:	48 89 de             	mov    %rbx,%rsi
    9f9f:	e8 1c 7a ff ff       	callq  19c0 <memmove@plt>
    9fa4:	48 89 c7             	mov    %rax,%rdi
    9fa7:	49 01 ff             	add    %rdi,%r15
    9faa:	4d 85 e4             	test   %r12,%r12
    9fad:	74 08                	je     9fb7 <_ZNSt6vectorIdSaIdEE9push_backERKd+0xd7>
    9faf:	4c 89 e7             	mov    %r12,%rdi
    9fb2:	e8 29 7b ff ff       	callq  1ae0 <_ZdlPv@plt>
    9fb7:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    9fbb:	4d 01 f5             	add    %r14,%r13
    9fbe:	4c 89 7d 08          	mov    %r15,0x8(%rbp)
    9fc2:	4c 89 6d 10          	mov    %r13,0x10(%rbp)
    9fc6:	48 83 c4 08          	add    $0x8,%rsp
    9fca:	5b                   	pop    %rbx
    9fcb:	5d                   	pop    %rbp
    9fcc:	41 5c                	pop    %r12
    9fce:	41 5d                	pop    %r13
    9fd0:	41 5e                	pop    %r14
    9fd2:	41 5f                	pop    %r15
    9fd4:	c3                   	retq   
    9fd5:	0f 1f 00             	nopl   (%rax)
    9fd8:	41 be 08 00 00 00    	mov    $0x8,%r14d
    9fde:	e9 6d ff ff ff       	jmpq   9f50 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x70>
    9fe3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    9fe8:	48 b9 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rcx
    9fef:	ff ff 1f 
    9ff2:	48 39 ca             	cmp    %rcx,%rdx
    9ff5:	0f 87 55 ff ff ff    	ja     9f50 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x70>
    9ffb:	45 31 f6             	xor    %r14d,%r14d
    9ffe:	45 31 ed             	xor    %r13d,%r13d
    a001:	48 85 d2             	test   %rdx,%rdx
    a004:	0f 84 51 ff ff ff    	je     9f5b <_ZNSt6vectorIdSaIdEE9push_backERKd+0x7b>
    a00a:	48 c1 e0 04          	shl    $0x4,%rax
    a00e:	49 89 c6             	mov    %rax,%r14
    a011:	e9 3a ff ff ff       	jmpq   9f50 <_ZNSt6vectorIdSaIdEE9push_backERKd+0x70>
    a016:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a01d:	00 00 00 

000000000000a020 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE>:
    a020:	55                   	push   %rbp
    a021:	53                   	push   %rbx
    a022:	48 89 fd             	mov    %rdi,%rbp
    a025:	48 89 f3             	mov    %rsi,%rbx
    a028:	48 83 ec 08          	sub    $0x8,%rsp
    a02c:	48 8b 3d 85 2b 20 00 	mov    0x202b85(%rip),%rdi        # 20cbb8 <_ZTIs@@CXXABI_1.3+0x8>
    a033:	48 8b 35 3e 2b 20 00 	mov    0x202b3e(%rip),%rsi        # 20cb78 <_ZTIf@@CXXABI_1.3+0x8>
    a03a:	48 39 f7             	cmp    %rsi,%rdi
    a03d:	0f 84 cd 02 00 00    	je     a310 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2f0>
    a043:	80 3f 2a             	cmpb   $0x2a,(%rdi)
    a046:	0f 84 a4 02 00 00    	je     a2f0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2d0>
    a04c:	e8 0f 7b ff ff       	callq  1b60 <strcmp@plt>
    a051:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    a055:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    a059:	4c 8d 14 ca          	lea    (%rdx,%rcx,8),%r10
    a05d:	49 39 d2             	cmp    %rdx,%r10
    a060:	0f 84 79 02 00 00    	je     a2df <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a066:	85 c0                	test   %eax,%eax
    a068:	0f 84 b3 02 00 00    	je     a321 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x301>
    a06e:	4c 89 d6             	mov    %r10,%rsi
    a071:	48 89 ef             	mov    %rbp,%rdi
    a074:	48 29 d6             	sub    %rdx,%rsi
    a077:	48 83 ee 08          	sub    $0x8,%rsi
    a07b:	48 c1 ee 03          	shr    $0x3,%rsi
    a07f:	48 83 c6 01          	add    $0x1,%rsi
    a083:	83 e6 07             	and    $0x7,%esi
    a086:	0f 84 3c 01 00 00    	je     a1c8 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x1a8>
    a08c:	48 83 fe 01          	cmp    $0x1,%rsi
    a090:	0f 84 05 01 00 00    	je     a19b <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x17b>
    a096:	48 83 fe 02          	cmp    $0x2,%rsi
    a09a:	0f 84 d6 00 00 00    	je     a176 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x156>
    a0a0:	48 83 fe 03          	cmp    $0x3,%rsi
    a0a4:	0f 84 a6 00 00 00    	je     a150 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x130>
    a0aa:	48 83 fe 04          	cmp    $0x4,%rsi
    a0ae:	74 7c                	je     a12c <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x10c>
    a0b0:	48 83 fe 05          	cmp    $0x5,%rsi
    a0b4:	74 52                	je     a108 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0xe8>
    a0b6:	48 83 fe 06          	cmp    $0x6,%rsi
    a0ba:	74 27                	je     a0e3 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0xc3>
    a0bc:	c5 7a 2c 02          	vcvttss2si (%rdx),%r8d
    a0c0:	66 44 3b 45 00       	cmp    0x0(%rbp),%r8w
    a0c5:	0f 85 da 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a0cb:	c5 7a 2c 4a 04       	vcvttss2si 0x4(%rdx),%r9d
    a0d0:	66 44 39 4d 02       	cmp    %r9w,0x2(%rbp)
    a0d5:	0f 85 ca 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a0db:	48 83 c2 08          	add    $0x8,%rdx
    a0df:	48 83 c7 04          	add    $0x4,%rdi
    a0e3:	c5 7a 2c 1a          	vcvttss2si (%rdx),%r11d
    a0e7:	66 44 3b 1f          	cmp    (%rdi),%r11w
    a0eb:	0f 85 b4 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a0f1:	c5 fa 2c 6a 04       	vcvttss2si 0x4(%rdx),%ebp
    a0f6:	66 39 6f 02          	cmp    %bp,0x2(%rdi)
    a0fa:	0f 85 a5 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a100:	48 83 c2 08          	add    $0x8,%rdx
    a104:	48 83 c7 04          	add    $0x4,%rdi
    a108:	c5 fa 2c 1a          	vcvttss2si (%rdx),%ebx
    a10c:	66 3b 1f             	cmp    (%rdi),%bx
    a10f:	0f 85 90 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a115:	c5 fa 2c 42 04       	vcvttss2si 0x4(%rdx),%eax
    a11a:	66 39 47 02          	cmp    %ax,0x2(%rdi)
    a11e:	0f 85 81 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a124:	48 83 c2 08          	add    $0x8,%rdx
    a128:	48 83 c7 04          	add    $0x4,%rdi
    a12c:	c5 fa 2c 0a          	vcvttss2si (%rdx),%ecx
    a130:	66 3b 0f             	cmp    (%rdi),%cx
    a133:	0f 85 6c 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a139:	c5 fa 2c 72 04       	vcvttss2si 0x4(%rdx),%esi
    a13e:	66 39 77 02          	cmp    %si,0x2(%rdi)
    a142:	0f 85 5d 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a148:	48 83 c2 08          	add    $0x8,%rdx
    a14c:	48 83 c7 04          	add    $0x4,%rdi
    a150:	c5 7a 2c 02          	vcvttss2si (%rdx),%r8d
    a154:	66 44 3b 07          	cmp    (%rdi),%r8w
    a158:	0f 85 47 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a15e:	c5 7a 2c 4a 04       	vcvttss2si 0x4(%rdx),%r9d
    a163:	66 44 39 4f 02       	cmp    %r9w,0x2(%rdi)
    a168:	0f 85 37 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a16e:	48 83 c2 08          	add    $0x8,%rdx
    a172:	48 83 c7 04          	add    $0x4,%rdi
    a176:	c5 7a 2c 1a          	vcvttss2si (%rdx),%r11d
    a17a:	66 44 3b 1f          	cmp    (%rdi),%r11w
    a17e:	0f 85 21 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a184:	c5 fa 2c 6a 04       	vcvttss2si 0x4(%rdx),%ebp
    a189:	66 39 6f 02          	cmp    %bp,0x2(%rdi)
    a18d:	0f 85 12 02 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a193:	48 83 c2 08          	add    $0x8,%rdx
    a197:	48 83 c7 04          	add    $0x4,%rdi
    a19b:	c5 fa 2c 1a          	vcvttss2si (%rdx),%ebx
    a19f:	66 3b 1f             	cmp    (%rdi),%bx
    a1a2:	0f 85 fd 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1a8:	c5 fa 2c 42 04       	vcvttss2si 0x4(%rdx),%eax
    a1ad:	66 39 47 02          	cmp    %ax,0x2(%rdi)
    a1b1:	0f 85 ee 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1b7:	48 83 c2 08          	add    $0x8,%rdx
    a1bb:	48 83 c7 04          	add    $0x4,%rdi
    a1bf:	49 39 d2             	cmp    %rdx,%r10
    a1c2:	0f 84 17 01 00 00    	je     a2df <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a1c8:	c5 fa 2c 0a          	vcvttss2si (%rdx),%ecx
    a1cc:	66 3b 0f             	cmp    (%rdi),%cx
    a1cf:	0f 85 d0 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1d5:	c5 fa 2c 72 04       	vcvttss2si 0x4(%rdx),%esi
    a1da:	66 39 77 02          	cmp    %si,0x2(%rdi)
    a1de:	0f 85 c1 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1e4:	c5 7a 2c 42 08       	vcvttss2si 0x8(%rdx),%r8d
    a1e9:	66 44 3b 47 04       	cmp    0x4(%rdi),%r8w
    a1ee:	4c 8d 5a 08          	lea    0x8(%rdx),%r11
    a1f2:	48 8d 6f 04          	lea    0x4(%rdi),%rbp
    a1f6:	0f 85 a9 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a1fc:	c4 41 7a 2c 4b 04    	vcvttss2si 0x4(%r11),%r9d
    a202:	66 44 39 4d 02       	cmp    %r9w,0x2(%rbp)
    a207:	0f 85 98 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a20d:	c5 fa 2c 5a 10       	vcvttss2si 0x10(%rdx),%ebx
    a212:	66 3b 5f 08          	cmp    0x8(%rdi),%bx
    a216:	0f 85 89 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a21c:	c5 fa 2c 42 14       	vcvttss2si 0x14(%rdx),%eax
    a221:	66 39 47 0a          	cmp    %ax,0xa(%rdi)
    a225:	0f 85 7a 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a22b:	c5 fa 2c 4a 18       	vcvttss2si 0x18(%rdx),%ecx
    a230:	66 3b 4f 0c          	cmp    0xc(%rdi),%cx
    a234:	0f 85 6b 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a23a:	c5 fa 2c 72 1c       	vcvttss2si 0x1c(%rdx),%esi
    a23f:	66 39 77 0e          	cmp    %si,0xe(%rdi)
    a243:	0f 85 5c 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a249:	4c 8d 42 20          	lea    0x20(%rdx),%r8
    a24d:	c5 fa 2c 52 20       	vcvttss2si 0x20(%rdx),%edx
    a252:	66 3b 57 10          	cmp    0x10(%rdi),%dx
    a256:	0f 85 49 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a25c:	c4 41 7a 2c 48 04    	vcvttss2si 0x4(%r8),%r9d
    a262:	66 44 39 4f 12       	cmp    %r9w,0x12(%rdi)
    a267:	0f 85 38 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a26d:	c4 c1 7a 2c 7b 20    	vcvttss2si 0x20(%r11),%edi
    a273:	66 3b 7d 10          	cmp    0x10(%rbp),%di
    a277:	0f 85 28 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a27d:	c4 c1 7a 2c 5b 24    	vcvttss2si 0x24(%r11),%ebx
    a283:	66 39 5d 12          	cmp    %bx,0x12(%rbp)
    a287:	0f 85 18 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a28d:	c4 c1 7a 2c 43 28    	vcvttss2si 0x28(%r11),%eax
    a293:	66 3b 45 14          	cmp    0x14(%rbp),%ax
    a297:	0f 85 08 01 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a29d:	c4 c1 7a 2c 4b 2c    	vcvttss2si 0x2c(%r11),%ecx
    a2a3:	66 39 4d 16          	cmp    %cx,0x16(%rbp)
    a2a7:	0f 85 f8 00 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2ad:	c4 c1 7a 2c 73 30    	vcvttss2si 0x30(%r11),%esi
    a2b3:	66 3b 75 18          	cmp    0x18(%rbp),%si
    a2b7:	0f 85 e8 00 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2bd:	c4 41 7a 2c 43 34    	vcvttss2si 0x34(%r11),%r8d
    a2c3:	66 44 39 45 1a       	cmp    %r8w,0x1a(%rbp)
    a2c8:	0f 85 d7 00 00 00    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a2ce:	49 8d 53 38          	lea    0x38(%r11),%rdx
    a2d2:	48 8d 7d 1c          	lea    0x1c(%rbp),%rdi
    a2d6:	49 39 d2             	cmp    %rdx,%r10
    a2d9:	0f 85 e9 fe ff ff    	jne    a1c8 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x1a8>
    a2df:	48 83 c4 08          	add    $0x8,%rsp
    a2e3:	b8 01 00 00 00       	mov    $0x1,%eax
    a2e8:	5b                   	pop    %rbx
    a2e9:	5d                   	pop    %rbp
    a2ea:	c3                   	retq   
    a2eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    a2f0:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    a2f4:	48 8b 43 10          	mov    0x10(%rbx),%rax
    a2f8:	4c 8d 14 c2          	lea    (%rdx,%rax,8),%r10
    a2fc:	49 39 d2             	cmp    %rdx,%r10
    a2ff:	0f 85 69 fd ff ff    	jne    a06e <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x4e>
    a305:	eb d8                	jmp    a2df <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    a30e:	00 00 
    a310:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    a314:	4c 8b 53 10          	mov    0x10(%rbx),%r10
    a318:	4e 8d 14 d2          	lea    (%rdx,%r10,8),%r10
    a31c:	49 39 d2             	cmp    %rdx,%r10
    a31f:	74 be                	je     a2df <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a321:	4d 89 d3             	mov    %r10,%r11
    a324:	48 89 ef             	mov    %rbp,%rdi
    a327:	49 29 d3             	sub    %rdx,%r11
    a32a:	49 83 eb 08          	sub    $0x8,%r11
    a32e:	49 c1 eb 03          	shr    $0x3,%r11
    a332:	49 83 c3 01          	add    $0x1,%r11
    a336:	41 83 e3 03          	and    $0x3,%r11d
    a33a:	0f 84 b3 00 00 00    	je     a3f3 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x3d3>
    a340:	49 83 fb 01          	cmp    $0x1,%r11
    a344:	74 74                	je     a3ba <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x39a>
    a346:	49 83 fb 02          	cmp    $0x2,%r11
    a34a:	74 33                	je     a37f <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x35f>
    a34c:	0f bf 6d 00          	movswl 0x0(%rbp),%ebp
    a350:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    a354:	c5 fa 2a c5          	vcvtsi2ss %ebp,%xmm0,%xmm0
    a358:	c5 f8 2e 02          	vucomiss (%rdx),%xmm0
    a35c:	7a 47                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a35e:	75 45                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a360:	44 0f bf 4f 02       	movswl 0x2(%rdi),%r9d
    a365:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    a369:	c4 c1 72 2a c9       	vcvtsi2ss %r9d,%xmm1,%xmm1
    a36e:	c5 f8 2e 4a 04       	vucomiss 0x4(%rdx),%xmm1
    a373:	7a 30                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a375:	75 2e                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a377:	48 83 c2 08          	add    $0x8,%rdx
    a37b:	48 83 c7 04          	add    $0x4,%rdi
    a37f:	0f bf 1f             	movswl (%rdi),%ebx
    a382:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    a386:	c5 ea 2a d3          	vcvtsi2ss %ebx,%xmm2,%xmm2
    a38a:	c5 f8 2e 12          	vucomiss (%rdx),%xmm2
    a38e:	7a 15                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a390:	75 13                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a392:	0f bf 47 02          	movswl 0x2(%rdi),%eax
    a396:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
    a39a:	c5 e2 2a d8          	vcvtsi2ss %eax,%xmm3,%xmm3
    a39e:	c5 f8 2e 5a 04       	vucomiss 0x4(%rdx),%xmm3
    a3a3:	7b 0b                	jnp    a3b0 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x390>
    a3a5:	48 83 c4 08          	add    $0x8,%rsp
    a3a9:	31 c0                	xor    %eax,%eax
    a3ab:	5b                   	pop    %rbx
    a3ac:	5d                   	pop    %rbp
    a3ad:	c3                   	retq   
    a3ae:	66 90                	xchg   %ax,%ax
    a3b0:	75 f3                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a3b2:	48 83 c2 08          	add    $0x8,%rdx
    a3b6:	48 83 c7 04          	add    $0x4,%rdi
    a3ba:	0f bf 0f             	movswl (%rdi),%ecx
    a3bd:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    a3c1:	c5 da 2a e1          	vcvtsi2ss %ecx,%xmm4,%xmm4
    a3c5:	c5 f8 2e 22          	vucomiss (%rdx),%xmm4
    a3c9:	7a da                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a3cb:	75 d8                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a3cd:	0f bf 77 02          	movswl 0x2(%rdi),%esi
    a3d1:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    a3d5:	c5 d2 2a ee          	vcvtsi2ss %esi,%xmm5,%xmm5
    a3d9:	c5 f8 2e 6a 04       	vucomiss 0x4(%rdx),%xmm5
    a3de:	7a c5                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a3e0:	75 c3                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a3e2:	48 83 c2 08          	add    $0x8,%rdx
    a3e6:	48 83 c7 04          	add    $0x4,%rdi
    a3ea:	4c 39 d2             	cmp    %r10,%rdx
    a3ed:	0f 84 ec fe ff ff    	je     a2df <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a3f3:	44 0f bf 07          	movswl (%rdi),%r8d
    a3f7:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
    a3fb:	c4 c1 4a 2a f0       	vcvtsi2ss %r8d,%xmm6,%xmm6
    a400:	c5 f8 2e 32          	vucomiss (%rdx),%xmm6
    a404:	7a 9f                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a406:	75 9d                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a408:	44 0f bf 5f 02       	movswl 0x2(%rdi),%r11d
    a40d:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
    a411:	c4 c1 42 2a fb       	vcvtsi2ss %r11d,%xmm7,%xmm7
    a416:	c5 f8 2e 7a 04       	vucomiss 0x4(%rdx),%xmm7
    a41b:	7a 88                	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a41d:	75 86                	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a41f:	44 0f bf 4f 04       	movswl 0x4(%rdi),%r9d
    a424:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
    a429:	48 8d 6a 08          	lea    0x8(%rdx),%rbp
    a42d:	48 8d 5f 04          	lea    0x4(%rdi),%rbx
    a431:	c4 41 3a 2a c1       	vcvtsi2ss %r9d,%xmm8,%xmm8
    a436:	c5 78 2e 42 08       	vucomiss 0x8(%rdx),%xmm8
    a43b:	0f 8a 64 ff ff ff    	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a441:	0f 85 5e ff ff ff    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a447:	0f bf 43 02          	movswl 0x2(%rbx),%eax
    a44b:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
    a450:	c5 32 2a c8          	vcvtsi2ss %eax,%xmm9,%xmm9
    a454:	c5 78 2e 4d 04       	vucomiss 0x4(%rbp),%xmm9
    a459:	0f 8a 46 ff ff ff    	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a45f:	0f 85 40 ff ff ff    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a465:	48 8d 77 08          	lea    0x8(%rdi),%rsi
    a469:	0f bf 7f 08          	movswl 0x8(%rdi),%edi
    a46d:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
    a471:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
    a476:	c5 2a 2a d7          	vcvtsi2ss %edi,%xmm10,%xmm10
    a47a:	c5 78 2e 52 10       	vucomiss 0x10(%rdx),%xmm10
    a47f:	0f 8a 20 ff ff ff    	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a485:	0f 85 1a ff ff ff    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a48b:	0f bf 56 02          	movswl 0x2(%rsi),%edx
    a48f:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
    a494:	c5 22 2a da          	vcvtsi2ss %edx,%xmm11,%xmm11
    a498:	c5 78 2e 59 04       	vucomiss 0x4(%rcx),%xmm11
    a49d:	0f 8a 02 ff ff ff    	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4a3:	0f 85 fc fe ff ff    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4a9:	44 0f bf 43 08       	movswl 0x8(%rbx),%r8d
    a4ae:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
    a4b3:	c4 41 1a 2a e0       	vcvtsi2ss %r8d,%xmm12,%xmm12
    a4b8:	c5 78 2e 65 10       	vucomiss 0x10(%rbp),%xmm12
    a4bd:	0f 8a e2 fe ff ff    	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4c3:	0f 85 dc fe ff ff    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4c9:	44 0f bf 5b 0a       	movswl 0xa(%rbx),%r11d
    a4ce:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
    a4d3:	c4 41 12 2a eb       	vcvtsi2ss %r11d,%xmm13,%xmm13
    a4d8:	c5 78 2e 6d 14       	vucomiss 0x14(%rbp),%xmm13
    a4dd:	0f 8a c2 fe ff ff    	jp     a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4e3:	0f 85 bc fe ff ff    	jne    a3a5 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x385>
    a4e9:	48 8d 55 18          	lea    0x18(%rbp),%rdx
    a4ed:	48 8d 7b 0c          	lea    0xc(%rbx),%rdi
    a4f1:	4c 39 d2             	cmp    %r10,%rdx
    a4f4:	0f 85 f9 fe ff ff    	jne    a3f3 <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x3d3>
    a4fa:	e9 e0 fd ff ff       	jmpq   a2df <_Z13matricesEqualI13Complex_int16EbPKT_RN4arma3MatISt7complexIfEEE+0x2bf>
    a4ff:	90                   	nop

000000000000a500 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE>:
    a500:	48 8b 46 20          	mov    0x20(%rsi),%rax
    a504:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    a508:	48 8d 0c d0          	lea    (%rax,%rdx,8),%rcx
    a50c:	48 39 c1             	cmp    %rax,%rcx
    a50f:	0f 84 0b 03 00 00    	je     a820 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x320>
    a515:	c5 fa 10 07          	vmovss (%rdi),%xmm0
    a519:	c5 f8 2e 00          	vucomiss (%rax),%xmm0
    a51d:	0f 8a f5 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a523:	0f 85 ef 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a529:	c5 fa 10 4f 04       	vmovss 0x4(%rdi),%xmm1
    a52e:	c5 f8 2e 48 04       	vucomiss 0x4(%rax),%xmm1
    a533:	0f 8a df 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a539:	0f 85 d9 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a53f:	49 89 c9             	mov    %rcx,%r9
    a542:	48 8d 77 08          	lea    0x8(%rdi),%rsi
    a546:	49 29 c1             	sub    %rax,%r9
    a549:	49 83 e9 08          	sub    $0x8,%r9
    a54d:	49 c1 e9 03          	shr    $0x3,%r9
    a551:	41 83 e1 07          	and    $0x7,%r9d
    a555:	0f 84 77 01 00 00    	je     a6d2 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x1d2>
    a55b:	48 83 c0 08          	add    $0x8,%rax
    a55f:	c5 fa 10 16          	vmovss (%rsi),%xmm2
    a563:	c5 f8 2e 10          	vucomiss (%rax),%xmm2
    a567:	49 89 f0             	mov    %rsi,%r8
    a56a:	0f 8a a8 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a570:	0f 85 a2 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a576:	c4 c1 7a 10 58 04    	vmovss 0x4(%r8),%xmm3
    a57c:	48 8d 77 10          	lea    0x10(%rdi),%rsi
    a580:	c5 f8 2e 58 04       	vucomiss 0x4(%rax),%xmm3
    a585:	0f 8a 8d 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a58b:	0f 85 87 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a591:	49 83 f9 01          	cmp    $0x1,%r9
    a595:	0f 84 37 01 00 00    	je     a6d2 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x1d2>
    a59b:	49 83 f9 02          	cmp    $0x2,%r9
    a59f:	0f 84 f7 00 00 00    	je     a69c <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x19c>
    a5a5:	49 83 f9 03          	cmp    $0x3,%r9
    a5a9:	0f 84 b7 00 00 00    	je     a666 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x166>
    a5af:	49 83 f9 04          	cmp    $0x4,%r9
    a5b3:	74 7c                	je     a631 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x131>
    a5b5:	49 83 f9 05          	cmp    $0x5,%r9
    a5b9:	74 40                	je     a5fb <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0xfb>
    a5bb:	49 83 f9 06          	cmp    $0x6,%r9
    a5bf:	0f 85 6b 02 00 00    	jne    a830 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x330>
    a5c5:	48 83 c0 08          	add    $0x8,%rax
    a5c9:	c5 fa 10 36          	vmovss (%rsi),%xmm6
    a5cd:	c5 f8 2e 30          	vucomiss (%rax),%xmm6
    a5d1:	49 89 f2             	mov    %rsi,%r10
    a5d4:	0f 8a 3e 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a5da:	0f 85 38 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a5e0:	c4 c1 7a 10 7a 04    	vmovss 0x4(%r10),%xmm7
    a5e6:	48 83 c6 08          	add    $0x8,%rsi
    a5ea:	c5 f8 2e 78 04       	vucomiss 0x4(%rax),%xmm7
    a5ef:	0f 8a 23 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a5f5:	0f 85 1d 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a5fb:	48 83 c0 08          	add    $0x8,%rax
    a5ff:	c5 7a 10 06          	vmovss (%rsi),%xmm8
    a603:	c5 78 2e 00          	vucomiss (%rax),%xmm8
    a607:	49 89 f3             	mov    %rsi,%r11
    a60a:	0f 8a 08 02 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a610:	0f 85 02 02 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a616:	c4 41 7a 10 4b 04    	vmovss 0x4(%r11),%xmm9
    a61c:	48 83 c6 08          	add    $0x8,%rsi
    a620:	c5 78 2e 48 04       	vucomiss 0x4(%rax),%xmm9
    a625:	0f 8a ed 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a62b:	0f 85 e7 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a631:	48 83 c0 08          	add    $0x8,%rax
    a635:	c5 7a 10 16          	vmovss (%rsi),%xmm10
    a639:	c5 78 2e 10          	vucomiss (%rax),%xmm10
    a63d:	48 89 f2             	mov    %rsi,%rdx
    a640:	0f 8a d2 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a646:	0f 85 cc 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a64c:	c5 7a 10 5a 04       	vmovss 0x4(%rdx),%xmm11
    a651:	48 83 c6 08          	add    $0x8,%rsi
    a655:	c5 78 2e 58 04       	vucomiss 0x4(%rax),%xmm11
    a65a:	0f 8a b8 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a660:	0f 85 b2 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a666:	48 83 c0 08          	add    $0x8,%rax
    a66a:	c5 7a 10 26          	vmovss (%rsi),%xmm12
    a66e:	c5 78 2e 20          	vucomiss (%rax),%xmm12
    a672:	49 89 f1             	mov    %rsi,%r9
    a675:	0f 8a 9d 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a67b:	0f 85 97 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a681:	c4 41 7a 10 69 04    	vmovss 0x4(%r9),%xmm13
    a687:	48 83 c6 08          	add    $0x8,%rsi
    a68b:	c5 78 2e 68 04       	vucomiss 0x4(%rax),%xmm13
    a690:	0f 8a 82 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a696:	0f 85 7c 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a69c:	48 83 c0 08          	add    $0x8,%rax
    a6a0:	c5 7a 10 36          	vmovss (%rsi),%xmm14
    a6a4:	c5 78 2e 30          	vucomiss (%rax),%xmm14
    a6a8:	49 89 f0             	mov    %rsi,%r8
    a6ab:	0f 8a 67 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6b1:	0f 85 61 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6b7:	c4 41 7a 10 78 04    	vmovss 0x4(%r8),%xmm15
    a6bd:	48 83 c6 08          	add    $0x8,%rsi
    a6c1:	c5 78 2e 78 04       	vucomiss 0x4(%rax),%xmm15
    a6c6:	0f 8a 4c 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6cc:	0f 85 46 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6d2:	4c 8d 50 08          	lea    0x8(%rax),%r10
    a6d6:	4c 39 d1             	cmp    %r10,%rcx
    a6d9:	0f 84 41 01 00 00    	je     a820 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x320>
    a6df:	c5 fa 10 06          	vmovss (%rsi),%xmm0
    a6e3:	c5 f8 2e 40 08       	vucomiss 0x8(%rax),%xmm0
    a6e8:	0f 8a 2a 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6ee:	0f 85 24 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a6f4:	c5 fa 10 4e 04       	vmovss 0x4(%rsi),%xmm1
    a6f9:	48 8d 7e 08          	lea    0x8(%rsi),%rdi
    a6fd:	c4 c1 78 2e 4a 04    	vucomiss 0x4(%r10),%xmm1
    a703:	0f 8a 0f 01 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a709:	0f 85 09 01 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a70f:	c5 fa 10 17          	vmovss (%rdi),%xmm2
    a713:	c5 f8 2e 50 10       	vucomiss 0x10(%rax),%xmm2
    a718:	0f 8a fa 00 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a71e:	0f 85 f4 00 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a724:	c5 fa 10 5f 04       	vmovss 0x4(%rdi),%xmm3
    a729:	48 83 c6 10          	add    $0x10,%rsi
    a72d:	c5 f8 2e 58 14       	vucomiss 0x14(%rax),%xmm3
    a732:	0f 8a e0 00 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a738:	0f 85 da 00 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a73e:	c5 fa 10 26          	vmovss (%rsi),%xmm4
    a742:	c5 f8 2e 60 18       	vucomiss 0x18(%rax),%xmm4
    a747:	0f 8a cb 00 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a74d:	0f 85 c5 00 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a753:	c5 fa 10 6e 04       	vmovss 0x4(%rsi),%xmm5
    a758:	c5 f8 2e 68 1c       	vucomiss 0x1c(%rax),%xmm5
    a75d:	0f 8a b5 00 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a763:	0f 85 af 00 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a769:	c5 fa 10 77 10       	vmovss 0x10(%rdi),%xmm6
    a76e:	c4 c1 78 2e 72 18    	vucomiss 0x18(%r10),%xmm6
    a774:	0f 8a 9e 00 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a77a:	0f 85 98 00 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a780:	c5 fa 10 7f 14       	vmovss 0x14(%rdi),%xmm7
    a785:	c4 c1 78 2e 7a 1c    	vucomiss 0x1c(%r10),%xmm7
    a78b:	0f 8a 87 00 00 00    	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a791:	0f 85 81 00 00 00    	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a797:	c5 7a 10 47 18       	vmovss 0x18(%rdi),%xmm8
    a79c:	c4 41 78 2e 42 20    	vucomiss 0x20(%r10),%xmm8
    a7a2:	7a 74                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7a4:	75 72                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7a6:	c5 7a 10 4f 1c       	vmovss 0x1c(%rdi),%xmm9
    a7ab:	c4 41 78 2e 4a 24    	vucomiss 0x24(%r10),%xmm9
    a7b1:	7a 65                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7b3:	75 63                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7b5:	c5 7a 10 57 20       	vmovss 0x20(%rdi),%xmm10
    a7ba:	c4 41 78 2e 52 28    	vucomiss 0x28(%r10),%xmm10
    a7c0:	7a 56                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7c2:	75 54                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7c4:	c5 7a 10 5f 24       	vmovss 0x24(%rdi),%xmm11
    a7c9:	c4 41 78 2e 5a 2c    	vucomiss 0x2c(%r10),%xmm11
    a7cf:	7a 47                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7d1:	75 45                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7d3:	c5 7a 10 67 28       	vmovss 0x28(%rdi),%xmm12
    a7d8:	c4 41 78 2e 62 30    	vucomiss 0x30(%r10),%xmm12
    a7de:	7a 38                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7e0:	75 36                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7e2:	c5 7a 10 6f 2c       	vmovss 0x2c(%rdi),%xmm13
    a7e7:	c4 41 78 2e 6a 34    	vucomiss 0x34(%r10),%xmm13
    a7ed:	7a 29                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7ef:	75 27                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a7f1:	c5 7a 10 77 30       	vmovss 0x30(%rdi),%xmm14
    a7f6:	49 8d 42 38          	lea    0x38(%r10),%rax
    a7fa:	c4 41 78 2e 72 38    	vucomiss 0x38(%r10),%xmm14
    a800:	7a 16                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a802:	75 14                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a804:	c5 7a 10 7f 34       	vmovss 0x34(%rdi),%xmm15
    a809:	48 8d 77 38          	lea    0x38(%rdi),%rsi
    a80d:	c5 78 2e 78 04       	vucomiss 0x4(%rax),%xmm15
    a812:	0f 8b b4 fe ff ff    	jnp    a6cc <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x1cc>
    a818:	31 c0                	xor    %eax,%eax
    a81a:	c3                   	retq   
    a81b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    a820:	b8 01 00 00 00       	mov    $0x1,%eax
    a825:	c3                   	retq   
    a826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a82d:	00 00 00 
    a830:	48 83 c0 08          	add    $0x8,%rax
    a834:	c5 fa 10 26          	vmovss (%rsi),%xmm4
    a838:	c5 f8 2e 20          	vucomiss (%rax),%xmm4
    a83c:	48 89 f7             	mov    %rsi,%rdi
    a83f:	7a d7                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a841:	75 d5                	jne    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a843:	c5 fa 10 6f 04       	vmovss 0x4(%rdi),%xmm5
    a848:	48 83 c6 08          	add    $0x8,%rsi
    a84c:	c5 f8 2e 68 04       	vucomiss 0x4(%rax),%xmm5
    a851:	7a c5                	jp     a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a853:	0f 84 6c fd ff ff    	je     a5c5 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0xc5>
    a859:	eb bd                	jmp    a818 <_Z13matricesEqualI13Complex_floatEbPKT_RN4arma3MatISt7complexIfEEE+0x318>
    a85b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000a860 <_ZNSt6vectorIdSaIdEEC1ERKS1_>:
    a860:	41 54                	push   %r12
    a862:	55                   	push   %rbp
    a863:	31 c9                	xor    %ecx,%ecx
    a865:	53                   	push   %rbx
    a866:	48 8b 6e 08          	mov    0x8(%rsi),%rbp
    a86a:	48 89 fb             	mov    %rdi,%rbx
    a86d:	48 2b 2e             	sub    (%rsi),%rbp
    a870:	49 89 f4             	mov    %rsi,%r12
    a873:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    a87a:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    a881:	00 
    a882:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    a889:	00 
    a88a:	48 89 e8             	mov    %rbp,%rax
    a88d:	48 c1 f8 03          	sar    $0x3,%rax
    a891:	48 85 c0             	test   %rax,%rax
    a894:	74 1a                	je     a8b0 <_ZNSt6vectorIdSaIdEEC1ERKS1_+0x50>
    a896:	48 ba ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rdx
    a89d:	ff ff 1f 
    a8a0:	48 39 d0             	cmp    %rdx,%rax
    a8a3:	77 47                	ja     a8ec <_ZNSt6vectorIdSaIdEEC1ERKS1_+0x8c>
    a8a5:	48 89 ef             	mov    %rbp,%rdi
    a8a8:	e8 03 71 ff ff       	callq  19b0 <_Znwm@plt>
    a8ad:	48 89 c1             	mov    %rax,%rcx
    a8b0:	48 01 cd             	add    %rcx,%rbp
    a8b3:	48 89 0b             	mov    %rcx,(%rbx)
    a8b6:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    a8ba:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
    a8be:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    a8c3:	49 8b 34 24          	mov    (%r12),%rsi
    a8c7:	49 89 fc             	mov    %rdi,%r12
    a8ca:	49 29 f4             	sub    %rsi,%r12
    a8cd:	48 39 f7             	cmp    %rsi,%rdi
    a8d0:	74 0e                	je     a8e0 <_ZNSt6vectorIdSaIdEEC1ERKS1_+0x80>
    a8d2:	48 89 cf             	mov    %rcx,%rdi
    a8d5:	4c 89 e2             	mov    %r12,%rdx
    a8d8:	e8 e3 70 ff ff       	callq  19c0 <memmove@plt>
    a8dd:	48 89 c1             	mov    %rax,%rcx
    a8e0:	4c 01 e1             	add    %r12,%rcx
    a8e3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    a8e7:	5b                   	pop    %rbx
    a8e8:	5d                   	pop    %rbp
    a8e9:	41 5c                	pop    %r12
    a8eb:	c3                   	retq   
    a8ec:	e8 7f 70 ff ff       	callq  1970 <_ZSt17__throw_bad_allocv@plt>
    a8f1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    a8f8:	00 00 00 
    a8fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000a900 <_ZN4arma3MatISt7complexIfEE9init_warmEyy>:
    a900:	41 55                	push   %r13
    a902:	41 54                	push   %r12
    a904:	49 89 d4             	mov    %rdx,%r12
    a907:	55                   	push   %rbp
    a908:	53                   	push   %rbx
    a909:	48 89 f5             	mov    %rsi,%rbp
    a90c:	48 89 fb             	mov    %rdi,%rbx
    a90f:	48 83 ec 18          	sub    $0x18,%rsp
    a913:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    a91a:	00 00 
    a91c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    a921:	31 c0                	xor    %eax,%eax
    a923:	48 39 37             	cmp    %rsi,(%rdi)
    a926:	0f 84 94 01 00 00    	je     aac0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1c0>
    a92c:	8b 53 1c             	mov    0x1c(%rbx),%edx
    a92f:	8b 43 18             	mov    0x18(%rbx),%eax
    a932:	48 8d 35 57 09 00 00 	lea    0x957(%rip),%rsi        # b290 <_IO_stdin_used+0x5d0>
    a939:	b9 00 00 00 00       	mov    $0x0,%ecx
    a93e:	83 fa 03             	cmp    $0x3,%edx
    a941:	48 0f 44 ce          	cmove  %rsi,%rcx
    a945:	41 0f 94 c1          	sete   %r9b
    a949:	85 c0                	test   %eax,%eax
    a94b:	74 33                	je     a980 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x80>
    a94d:	48 89 ef             	mov    %rbp,%rdi
    a950:	4c 09 e7             	or     %r12,%rdi
    a953:	0f 84 df 01 00 00    	je     ab38 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x238>
    a959:	83 f8 01             	cmp    $0x1,%eax
    a95c:	0f 84 b6 01 00 00    	je     ab18 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x218>
    a962:	83 f8 02             	cmp    $0x2,%eax
    a965:	75 19                	jne    a980 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x80>
    a967:	48 83 fd 01          	cmp    $0x1,%rbp
    a96b:	0f 84 e7 00 00 00    	je     aa58 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x158>
    a971:	48 8d 0d 98 09 00 00 	lea    0x998(%rip),%rcx        # b310 <_IO_stdin_used+0x650>
    a978:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    a97e:	66 90                	xchg   %ax,%ax
    a980:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
    a986:	4c 39 d5             	cmp    %r10,%rbp
    a989:	0f 86 c9 00 00 00    	jbe    aa58 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x158>
    a98f:	48 85 ed             	test   %rbp,%rbp
    a992:	0f 88 d8 00 00 00    	js     aa70 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x170>
    a998:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    a99c:	4d 85 e4             	test   %r12,%r12
    a99f:	c4 e1 eb 2a d5       	vcvtsi2sd %rbp,%xmm2,%xmm2
    a9a4:	0f 88 eb 00 00 00    	js     aa95 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x195>
    a9aa:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    a9ae:	c4 c1 e3 2a dc       	vcvtsi2sd %r12,%xmm3,%xmm3
    a9b3:	c5 eb 59 e3          	vmulsd %xmm3,%xmm2,%xmm4
    a9b7:	c5 f9 2e 25 51 12 00 	vucomisd 0x1251(%rip),%xmm4        # bc10 <_ZL5temp0+0x730>
    a9be:	00 
    a9bf:	0f 87 10 02 00 00    	ja     abd5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2d5>
    a9c5:	45 84 c9             	test   %r9b,%r9b
    a9c8:	0f 85 0e 02 00 00    	jne    abdc <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2dc>
    a9ce:	49 89 ed             	mov    %rbp,%r13
    a9d1:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    a9d5:	4d 0f af ec          	imul   %r12,%r13
    a9d9:	4d 39 e8             	cmp    %r13,%r8
    a9dc:	0f 84 26 01 00 00    	je     ab08 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x208>
    a9e2:	83 fa 02             	cmp    $0x2,%edx
    a9e5:	0f 84 02 02 00 00    	je     abed <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2ed>
    a9eb:	85 d2                	test   %edx,%edx
    a9ed:	0f 94 c2             	sete   %dl
    a9f0:	4d 39 e8             	cmp    %r13,%r8
    a9f3:	0f 86 d7 00 00 00    	jbe    aad0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1d0>
    a9f9:	49 83 fd 10          	cmp    $0x10,%r13
    a9fd:	77 2c                	ja     aa2b <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x12b>
    a9ff:	84 d2                	test   %dl,%dl
    aa01:	74 28                	je     aa2b <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x12b>
    aa03:	49 83 f8 10          	cmp    $0x10,%r8
    aa07:	76 0e                	jbe    aa17 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x117>
    aa09:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    aa0d:	48 85 ff             	test   %rdi,%rdi
    aa10:	74 05                	je     aa17 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x117>
    aa12:	e8 c9 6f ff ff       	callq  19e0 <free@plt>
    aa17:	48 8d 73 30          	lea    0x30(%rbx),%rsi
    aa1b:	4d 85 ed             	test   %r13,%r13
    aa1e:	bf 00 00 00 00       	mov    $0x0,%edi
    aa23:	48 0f 44 f7          	cmove  %rdi,%rsi
    aa27:	48 89 73 20          	mov    %rsi,0x20(%rbx)
    aa2b:	48 89 2b             	mov    %rbp,(%rbx)
    aa2e:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    aa32:	4c 89 6b 10          	mov    %r13,0x10(%rbx)
    aa36:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    aa3b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    aa42:	00 00 
    aa44:	0f 85 9e 01 00 00    	jne    abe8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2e8>
    aa4a:	48 83 c4 18          	add    $0x18,%rsp
    aa4e:	5b                   	pop    %rbx
    aa4f:	5d                   	pop    %rbp
    aa50:	41 5c                	pop    %r12
    aa52:	41 5d                	pop    %r13
    aa54:	c3                   	retq   
    aa55:	0f 1f 00             	nopl   (%rax)
    aa58:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
    aa5e:	4d 39 dc             	cmp    %r11,%r12
    aa61:	0f 86 5e ff ff ff    	jbe    a9c5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    aa67:	48 85 ed             	test   %rbp,%rbp
    aa6a:	0f 89 28 ff ff ff    	jns    a998 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x98>
    aa70:	49 89 ed             	mov    %rbp,%r13
    aa73:	48 89 e8             	mov    %rbp,%rax
    aa76:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    aa7a:	49 d1 ed             	shr    %r13
    aa7d:	83 e0 01             	and    $0x1,%eax
    aa80:	49 09 c5             	or     %rax,%r13
    aa83:	4d 85 e4             	test   %r12,%r12
    aa86:	c4 c1 fb 2a c5       	vcvtsi2sd %r13,%xmm0,%xmm0
    aa8b:	c5 fb 58 d0          	vaddsd %xmm0,%xmm0,%xmm2
    aa8f:	0f 89 15 ff ff ff    	jns    a9aa <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xaa>
    aa95:	4c 89 e6             	mov    %r12,%rsi
    aa98:	4c 89 e7             	mov    %r12,%rdi
    aa9b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    aa9f:	48 d1 ee             	shr    %rsi
    aaa2:	83 e7 01             	and    $0x1,%edi
    aaa5:	48 09 fe             	or     %rdi,%rsi
    aaa8:	c4 e1 f3 2a ce       	vcvtsi2sd %rsi,%xmm1,%xmm1
    aaad:	c5 f3 58 d9          	vaddsd %xmm1,%xmm1,%xmm3
    aab1:	e9 fd fe ff ff       	jmpq   a9b3 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xb3>
    aab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    aabd:	00 00 00 
    aac0:	48 39 57 08          	cmp    %rdx,0x8(%rdi)
    aac4:	0f 85 62 fe ff ff    	jne    a92c <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2c>
    aaca:	e9 67 ff ff ff       	jmpq   aa36 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x136>
    aacf:	90                   	nop
    aad0:	49 83 f8 10          	cmp    $0x10,%r8
    aad4:	76 12                	jbe    aae8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1e8>
    aad6:	84 d2                	test   %dl,%dl
    aad8:	74 0e                	je     aae8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1e8>
    aada:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    aade:	48 85 ff             	test   %rdi,%rdi
    aae1:	74 05                	je     aae8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1e8>
    aae3:	e8 f8 6e ff ff       	callq  19e0 <free@plt>
    aae8:	49 83 fd 10          	cmp    $0x10,%r13
    aaec:	77 6a                	ja     ab58 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x258>
    aaee:	48 8d 43 30          	lea    0x30(%rbx),%rax
    aaf2:	48 89 43 20          	mov    %rax,0x20(%rbx)
    aaf6:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%rbx)
    aafd:	e9 29 ff ff ff       	jmpq   aa2b <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x12b>
    ab02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    ab08:	48 89 2b             	mov    %rbp,(%rbx)
    ab0b:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    ab0f:	e9 22 ff ff ff       	jmpq   aa36 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x136>
    ab14:	0f 1f 40 00          	nopl   0x0(%rax)
    ab18:	49 83 fc 01          	cmp    $0x1,%r12
    ab1c:	0f 84 8e 00 00 00    	je     abb0 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2b0>
    ab22:	48 8d 0d 9f 07 00 00 	lea    0x79f(%rip),%rcx        # b2c8 <_IO_stdin_used+0x608>
    ab29:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    ab2f:	e9 4c fe ff ff       	jmpq   a980 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x80>
    ab34:	0f 1f 40 00          	nopl   0x0(%rax)
    ab38:	83 f8 01             	cmp    $0x1,%eax
    ab3b:	0f 84 87 00 00 00    	je     abc8 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x2c8>
    ab41:	31 ed                	xor    %ebp,%ebp
    ab43:	83 f8 02             	cmp    $0x2,%eax
    ab46:	40 0f 94 c5          	sete   %bpl
    ab4a:	45 31 e4             	xor    %r12d,%r12d
    ab4d:	e9 73 fe ff ff       	jmpq   a9c5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    ab52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    ab58:	49 b9 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%r9
    ab5f:	ff ff 1f 
    ab62:	4d 39 cd             	cmp    %r9,%r13
    ab65:	0f 87 9a 00 00 00    	ja     ac05 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x305>
    ab6b:	4a 8d 14 ed 00 00 00 	lea    0x0(,%r13,8),%rdx
    ab72:	00 
    ab73:	48 89 e7             	mov    %rsp,%rdi
    ab76:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    ab7d:	00 
    ab7e:	48 81 fa 00 04 00 00 	cmp    $0x400,%rdx
    ab85:	48 19 f6             	sbb    %rsi,%rsi
    ab88:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    ab8c:	48 83 c6 20          	add    $0x20,%rsi
    ab90:	e8 5b 70 ff ff       	callq  1bf0 <posix_memalign@plt>
    ab95:	85 c0                	test   %eax,%eax
    ab97:	75 67                	jne    ac00 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x300>
    ab99:	4c 8b 14 24          	mov    (%rsp),%r10
    ab9d:	4d 85 d2             	test   %r10,%r10
    aba0:	74 5e                	je     ac00 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x300>
    aba2:	4c 89 53 20          	mov    %r10,0x20(%rbx)
    aba6:	e9 4b ff ff ff       	jmpq   aaf6 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x1f6>
    abab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    abb0:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    abb6:	4c 39 c5             	cmp    %r8,%rbp
    abb9:	0f 87 d0 fd ff ff    	ja     a98f <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0x8f>
    abbf:	e9 01 fe ff ff       	jmpq   a9c5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    abc4:	0f 1f 40 00          	nopl   0x0(%rax)
    abc8:	31 ed                	xor    %ebp,%ebp
    abca:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    abd0:	e9 f0 fd ff ff       	jmpq   a9c5 <_ZN4arma3MatISt7complexIfEE9init_warmEyy+0xc5>
    abd5:	48 8d 0d d4 03 00 00 	lea    0x3d4(%rip),%rcx        # afb0 <_IO_stdin_used+0x2f0>
    abdc:	48 89 e7             	mov    %rsp,%rdi
    abdf:	48 89 0c 24          	mov    %rcx,(%rsp)
    abe3:	e8 3c 73 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    abe8:	e8 23 6e ff ff       	callq  1a10 <__stack_chk_fail@plt>
    abed:	48 8d 0d 64 07 00 00 	lea    0x764(%rip),%rcx        # b358 <_IO_stdin_used+0x698>
    abf4:	48 89 e7             	mov    %rsp,%rdi
    abf7:	48 89 0c 24          	mov    %rcx,(%rsp)
    abfb:	e8 24 73 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    ac00:	e8 b8 72 ff ff       	callq  1ebd <_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_.constprop.84>
    ac05:	4c 8d 1d d4 03 00 00 	lea    0x3d4(%rip),%r11        # afe0 <_IO_stdin_used+0x320>
    ac0c:	48 89 e7             	mov    %rsp,%rdi
    ac0f:	4c 89 1c 24          	mov    %r11,(%rsp)
    ac13:	e8 0c 73 ff ff       	callq  1f24 <_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_>
    ac18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ac1f:	00 

000000000000ac20 <__libc_csu_init>:
    ac20:	41 57                	push   %r15
    ac22:	41 56                	push   %r14
    ac24:	49 89 d7             	mov    %rdx,%r15
    ac27:	41 55                	push   %r13
    ac29:	41 54                	push   %r12
    ac2b:	4c 8d 25 ce 1e 20 00 	lea    0x201ece(%rip),%r12        # 20cb00 <__frame_dummy_init_array_entry>
    ac32:	55                   	push   %rbp
    ac33:	48 8d 2d de 1e 20 00 	lea    0x201ede(%rip),%rbp        # 20cb18 <__init_array_end>
    ac3a:	53                   	push   %rbx
    ac3b:	41 89 fd             	mov    %edi,%r13d
    ac3e:	49 89 f6             	mov    %rsi,%r14
    ac41:	4c 29 e5             	sub    %r12,%rbp
    ac44:	48 83 ec 08          	sub    $0x8,%rsp
    ac48:	48 c1 fd 03          	sar    $0x3,%rbp
    ac4c:	e8 cf 6c ff ff       	callq  1920 <_init>
    ac51:	48 85 ed             	test   %rbp,%rbp
    ac54:	74 20                	je     ac76 <__libc_csu_init+0x56>
    ac56:	31 db                	xor    %ebx,%ebx
    ac58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ac5f:	00 
    ac60:	4c 89 fa             	mov    %r15,%rdx
    ac63:	4c 89 f6             	mov    %r14,%rsi
    ac66:	44 89 ef             	mov    %r13d,%edi
    ac69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    ac6d:	48 83 c3 01          	add    $0x1,%rbx
    ac71:	48 39 dd             	cmp    %rbx,%rbp
    ac74:	75 ea                	jne    ac60 <__libc_csu_init+0x40>
    ac76:	48 83 c4 08          	add    $0x8,%rsp
    ac7a:	5b                   	pop    %rbx
    ac7b:	5d                   	pop    %rbp
    ac7c:	41 5c                	pop    %r12
    ac7e:	41 5d                	pop    %r13
    ac80:	41 5e                	pop    %r14
    ac82:	41 5f                	pop    %r15
    ac84:	c3                   	retq   
    ac85:	90                   	nop
    ac86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    ac8d:	00 00 00 

000000000000ac90 <__libc_csu_fini>:
    ac90:	f3 c3                	repz retq 

Disassembly of section .fini:

000000000000ac94 <_fini>:
    ac94:	48 83 ec 08          	sub    $0x8,%rsp
    ac98:	48 83 c4 08          	add    $0x8,%rsp
    ac9c:	c3                   	retq   
