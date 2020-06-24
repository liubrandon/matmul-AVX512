	.file	"cgemv.cpp"
	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB12:
	.file 1 "cgemv.cpp"
	.loc 1 3 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	.loc 1 3 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 4 0
	movl	$64, -76(%rbp)
	.loc 1 5 0
	movl	$16, -72(%rbp)
	.loc 1 8 0
	movl	-76(%rbp), %eax
	imull	-72(%rbp), %eax
	cltq
	movl	$64, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	MKL_calloc@PLT
	movq	%rax, -64(%rbp)
	.loc 1 9 0
	movl	-72(%rbp), %eax
	cltq
	movl	$64, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	MKL_calloc@PLT
	movq	%rax, -56(%rbp)
	.loc 1 10 0
	movl	-76(%rbp), %eax
	cltq
	movl	$64, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	MKL_calloc@PLT
	movq	%rax, -48(%rbp)
.LBB2:
	.loc 1 12 0
	movl	$0, -84(%rbp)
.L3:
	.loc 1 12 0 is_stmt 0 discriminator 3
	movl	-76(%rbp), %eax
	imull	-72(%rbp), %eax
	cmpl	%eax, -84(%rbp)
	jge	.L2
	.loc 1 13 0 is_stmt 1 discriminator 2
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand@PLT
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	.LC0(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm2
	vmovss	%xmm2, -100(%rbp)
	.loc 1 13 0 discriminator 2
	call	rand@PLT
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	.LC0(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	.loc 1 13 0 discriminator 2
	vmovss	-100(%rbp), %xmm2
	vmovss	%xmm2, (%rbx)
	vmovss	%xmm0, 4(%rbx)
	.loc 1 12 0 discriminator 2
	addl	$1, -84(%rbp)
	jmp	.L3
.L2:
.LBE2:
.LBB3:
	.loc 1 15 0
	movl	$0, -80(%rbp)
.L5:
	.loc 1 15 0 is_stmt 0 discriminator 3
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.L4
	.loc 1 16 0 is_stmt 1 discriminator 2
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand@PLT
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	.LC0(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm3
	vmovss	%xmm3, -100(%rbp)
	.loc 1 16 0 discriminator 2
	call	rand@PLT
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	.LC0(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	.loc 1 16 0 discriminator 2
	vmovss	-100(%rbp), %xmm3
	vmovss	%xmm3, (%rbx)
	vmovss	%xmm0, 4(%rbx)
	.loc 1 15 0 discriminator 2
	addl	$1, -80(%rbp)
	jmp	.L5
.L4:
.LBE3:
	.loc 1 18 0
	vmovss	.LC1(%rip), %xmm0
	vmovss	%xmm0, -40(%rbp)
	vxorps	%zmm0, %zmm0, %zmm0
	vmovss	%xmm0, -36(%rbp)
	.loc 1 19 0
	vxorps	%zmm0, %zmm0, %zmm0
	vmovss	%xmm0, -32(%rbp)
	vxorps	%zmm0, %zmm0, %zmm0
	vmovss	%xmm0, -28(%rbp)
	.loc 1 20 0
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 1 21 0
	movq	-64(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %eax
	pushq	$1
	pushq	-48(%rbp)
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	pushq	$1
	pushq	-56(%rbp)
	movl	-68(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$111, %esi
	movl	$102, %edi
	call	cblas_cgemv@PLT
	addq	$48, %rsp
	.loc 1 22 0
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1325400064
	.align 4
.LC1:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/opt/intel/compilers_and_libraries_2020.1.217/linux/mkl/include/mkl_types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/opt/intel/compilers_and_libraries_2020.1.217/linux/mkl/include/mkl_cblas.h"
	.file 5 "/usr/include/c++/7/cstdlib"
	.file 6 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/c++/7/stdlib.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7e4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x4
	.long	.LASF65
	.long	.LASF66
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x2
	.byte	0x1e
	.long	0x52
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0x1f
	.long	0x52
	.byte	0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x2
	.byte	0x20
	.long	0x52
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0x21
	.long	0x2d
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.long	0x78
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x8
	.long	0x78
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x59
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0xd8
	.long	0xa5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF11
	.uleb128 0xa
	.long	.LASF68
	.uleb128 0xb
	.long	.LASF14
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0x4
	.byte	0x41
	.long	0xdd
	.uleb128 0xc
	.long	.LASF12
	.byte	0x65
	.uleb128 0xc
	.long	.LASF13
	.byte	0x66
	.byte	0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0x4
	.byte	0x42
	.long	0x101
	.uleb128 0xc
	.long	.LASF16
	.byte	0x6f
	.uleb128 0xc
	.long	.LASF17
	.byte	0x70
	.uleb128 0xc
	.long	.LASF18
	.byte	0x71
	.byte	0
	.uleb128 0xd
	.string	"std"
	.byte	0x9
	.byte	0
	.long	0x1fb
	.uleb128 0xe
	.long	.LASF20
	.byte	0x6
	.byte	0xfd
	.uleb128 0xf
	.byte	0x6
	.byte	0xfd
	.long	0x10c
	.uleb128 0x10
	.byte	0x5
	.byte	0x7f
	.long	0x295
	.uleb128 0x10
	.byte	0x5
	.byte	0x80
	.long	0x2c5
	.uleb128 0x10
	.byte	0x5
	.byte	0x86
	.long	0x356
	.uleb128 0x10
	.byte	0x5
	.byte	0x89
	.long	0x373
	.uleb128 0x10
	.byte	0x5
	.byte	0x8c
	.long	0x38d
	.uleb128 0x10
	.byte	0x5
	.byte	0x8d
	.long	0x3a2
	.uleb128 0x10
	.byte	0x5
	.byte	0x8e
	.long	0x3b7
	.uleb128 0x10
	.byte	0x5
	.byte	0x8f
	.long	0x3cc
	.uleb128 0x10
	.byte	0x5
	.byte	0x91
	.long	0x3f6
	.uleb128 0x10
	.byte	0x5
	.byte	0x94
	.long	0x411
	.uleb128 0x10
	.byte	0x5
	.byte	0x96
	.long	0x427
	.uleb128 0x10
	.byte	0x5
	.byte	0x99
	.long	0x442
	.uleb128 0x10
	.byte	0x5
	.byte	0x9a
	.long	0x45d
	.uleb128 0x10
	.byte	0x5
	.byte	0x9b
	.long	0x48f
	.uleb128 0x10
	.byte	0x5
	.byte	0x9d
	.long	0x4af
	.uleb128 0x10
	.byte	0x5
	.byte	0xa0
	.long	0x4d0
	.uleb128 0x10
	.byte	0x5
	.byte	0xa3
	.long	0x4e2
	.uleb128 0x10
	.byte	0x5
	.byte	0xa5
	.long	0x4ee
	.uleb128 0x10
	.byte	0x5
	.byte	0xa6
	.long	0x500
	.uleb128 0x10
	.byte	0x5
	.byte	0xa7
	.long	0x520
	.uleb128 0x10
	.byte	0x5
	.byte	0xa8
	.long	0x53f
	.uleb128 0x10
	.byte	0x5
	.byte	0xa9
	.long	0x55e
	.uleb128 0x10
	.byte	0x5
	.byte	0xab
	.long	0x574
	.uleb128 0x10
	.byte	0x5
	.byte	0xac
	.long	0x59a
	.uleb128 0x10
	.byte	0x5
	.byte	0xf0
	.long	0x2f5
	.uleb128 0x10
	.byte	0x5
	.byte	0xf5
	.long	0x247
	.uleb128 0x10
	.byte	0x5
	.byte	0xf6
	.long	0x5b5
	.uleb128 0x10
	.byte	0x5
	.byte	0xf8
	.long	0x5d0
	.uleb128 0x10
	.byte	0x5
	.byte	0xf9
	.long	0x623
	.uleb128 0x10
	.byte	0x5
	.byte	0xfa
	.long	0x5e5
	.uleb128 0x10
	.byte	0x5
	.byte	0xfb
	.long	0x604
	.uleb128 0x10
	.byte	0x5
	.byte	0xfc
	.long	0x63d
	.byte	0
	.uleb128 0x11
	.long	.LASF19
	.byte	0x6
	.byte	0xff
	.long	0x262
	.uleb128 0x12
	.long	.LASF20
	.byte	0x6
	.value	0x101
	.uleb128 0x13
	.byte	0x6
	.value	0x101
	.long	0x206
	.uleb128 0x10
	.byte	0x5
	.byte	0xc8
	.long	0x2f5
	.uleb128 0x10
	.byte	0x5
	.byte	0xd8
	.long	0x5b5
	.uleb128 0x10
	.byte	0x5
	.byte	0xe3
	.long	0x5d0
	.uleb128 0x10
	.byte	0x5
	.byte	0xe4
	.long	0x5e5
	.uleb128 0x10
	.byte	0x5
	.byte	0xe5
	.long	0x604
	.uleb128 0x10
	.byte	0x5
	.byte	0xe7
	.long	0x623
	.uleb128 0x10
	.byte	0x5
	.byte	0xe8
	.long	0x63d
	.uleb128 0x14
	.string	"div"
	.byte	0x5
	.byte	0xd5
	.long	.LASF69
	.long	0x2f5
	.uleb128 0x15
	.long	0xac
	.uleb128 0x15
	.long	0xac
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x20
	.byte	0x3
	.long	.LASF21
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF22
	.uleb128 0x16
	.byte	0x8
	.byte	0x7
	.byte	0x3b
	.long	.LASF25
	.long	0x295
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x3c
	.long	0x6b
	.byte	0
	.uleb128 0x17
	.string	"rem"
	.byte	0x7
	.byte	0x3d
	.long	0x6b
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x7
	.byte	0x3e
	.long	0x270
	.uleb128 0x16
	.byte	0x10
	.byte	0x7
	.byte	0x43
	.long	.LASF26
	.long	0x2c5
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x44
	.long	0x93
	.byte	0
	.uleb128 0x17
	.string	"rem"
	.byte	0x7
	.byte	0x45
	.long	0x93
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x7
	.byte	0x46
	.long	0x2a0
	.uleb128 0x16
	.byte	0x10
	.byte	0x7
	.byte	0x4d
	.long	.LASF28
	.long	0x2f5
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x4e
	.long	0xac
	.byte	0
	.uleb128 0x17
	.string	"rem"
	.byte	0x7
	.byte	0x4f
	.long	0xac
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF29
	.byte	0x7
	.byte	0x50
	.long	0x2d0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF30
	.uleb128 0x7
	.byte	0x8
	.long	0x7f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF31
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF32
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF33
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF34
	.uleb128 0x18
	.long	.LASF35
	.byte	0x7
	.value	0x325
	.long	0x335
	.uleb128 0x7
	.byte	0x8
	.long	0x33b
	.uleb128 0x19
	.long	0x6b
	.long	0x34f
	.uleb128 0x15
	.long	0x34f
	.uleb128 0x15
	.long	0x34f
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x355
	.uleb128 0x1a
	.uleb128 0x1b
	.long	.LASF36
	.byte	0x7
	.value	0x250
	.long	0x6b
	.long	0x36c
	.uleb128 0x15
	.long	0x36c
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x372
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x7
	.value	0x255
	.long	.LASF70
	.long	0x6b
	.long	0x38d
	.uleb128 0x15
	.long	0x36c
	.byte	0
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x7
	.byte	0x65
	.long	0x64
	.long	0x3a2
	.uleb128 0x15
	.long	0x307
	.byte	0
	.uleb128 0x1e
	.long	.LASF38
	.byte	0x7
	.byte	0x68
	.long	0x6b
	.long	0x3b7
	.uleb128 0x15
	.long	0x307
	.byte	0
	.uleb128 0x1e
	.long	.LASF39
	.byte	0x7
	.byte	0x6b
	.long	0x93
	.long	0x3cc
	.uleb128 0x15
	.long	0x307
	.byte	0
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x7
	.value	0x331
	.long	0x8b
	.long	0x3f6
	.uleb128 0x15
	.long	0x34f
	.uleb128 0x15
	.long	0x34f
	.uleb128 0x15
	.long	0x9a
	.uleb128 0x15
	.long	0x9a
	.uleb128 0x15
	.long	0x329
	.byte	0
	.uleb128 0x1f
	.string	"div"
	.byte	0x7
	.value	0x351
	.long	0x295
	.long	0x411
	.uleb128 0x15
	.long	0x6b
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x7
	.value	0x277
	.long	0x72
	.long	0x427
	.uleb128 0x15
	.long	0x307
	.byte	0
	.uleb128 0x1b
	.long	.LASF42
	.byte	0x7
	.value	0x353
	.long	0x2c5
	.long	0x442
	.uleb128 0x15
	.long	0x93
	.uleb128 0x15
	.long	0x93
	.byte	0
	.uleb128 0x1b
	.long	.LASF43
	.byte	0x7
	.value	0x397
	.long	0x6b
	.long	0x45d
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF44
	.byte	0x7
	.value	0x3a2
	.long	0x9a
	.long	0x47d
	.uleb128 0x15
	.long	0x47d
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x9a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x483
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF45
	.uleb128 0x8
	.long	0x483
	.uleb128 0x1b
	.long	.LASF46
	.byte	0x7
	.value	0x39a
	.long	0x6b
	.long	0x4af
	.uleb128 0x15
	.long	0x47d
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x9a
	.byte	0
	.uleb128 0x20
	.long	.LASF48
	.byte	0x7
	.value	0x33b
	.long	0x4d0
	.uleb128 0x15
	.long	0x8b
	.uleb128 0x15
	.long	0x9a
	.uleb128 0x15
	.long	0x9a
	.uleb128 0x15
	.long	0x329
	.byte	0
	.uleb128 0x21
	.long	.LASF47
	.byte	0x7
	.value	0x26c
	.long	0x4e2
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x22
	.long	.LASF71
	.byte	0x7
	.value	0x1c5
	.long	0x6b
	.uleb128 0x20
	.long	.LASF49
	.byte	0x7
	.value	0x1c7
	.long	0x500
	.uleb128 0x15
	.long	0x84
	.byte	0
	.uleb128 0x1e
	.long	.LASF50
	.byte	0x7
	.byte	0x75
	.long	0x64
	.long	0x51a
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x72
	.uleb128 0x1e
	.long	.LASF51
	.byte	0x7
	.byte	0xb0
	.long	0x93
	.long	0x53f
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x7
	.byte	0xb4
	.long	0xa5
	.long	0x55e
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x7
	.value	0x30d
	.long	0x6b
	.long	0x574
	.uleb128 0x15
	.long	0x307
	.byte	0
	.uleb128 0x1b
	.long	.LASF54
	.byte	0x7
	.value	0x3a5
	.long	0x9a
	.long	0x594
	.uleb128 0x15
	.long	0x72
	.uleb128 0x15
	.long	0x594
	.uleb128 0x15
	.long	0x9a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x48a
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x7
	.value	0x39e
	.long	0x6b
	.long	0x5b5
	.uleb128 0x15
	.long	0x72
	.uleb128 0x15
	.long	0x483
	.byte	0
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x7
	.value	0x357
	.long	0x2f5
	.long	0x5d0
	.uleb128 0x15
	.long	0xac
	.uleb128 0x15
	.long	0xac
	.byte	0
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x7
	.byte	0x70
	.long	0xac
	.long	0x5e5
	.uleb128 0x15
	.long	0x307
	.byte	0
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x7
	.byte	0xc8
	.long	0xac
	.long	0x604
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x7
	.byte	0xcd
	.long	0x322
	.long	0x623
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x1e
	.long	.LASF60
	.byte	0x7
	.byte	0x7b
	.long	0x52
	.long	0x63d
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.byte	0
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x7
	.byte	0x7e
	.long	0xb3
	.long	0x657
	.uleb128 0x15
	.long	0x307
	.uleb128 0x15
	.long	0x51a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x27
	.long	0x356
	.uleb128 0x10
	.byte	0x8
	.byte	0x2b
	.long	0x373
	.uleb128 0x10
	.byte	0x8
	.byte	0x2e
	.long	0x4d0
	.uleb128 0x10
	.byte	0x8
	.byte	0x33
	.long	0x295
	.uleb128 0x10
	.byte	0x8
	.byte	0x34
	.long	0x2c5
	.uleb128 0x1f
	.string	"abs"
	.byte	0x7
	.value	0x345
	.long	0x6b
	.long	0x690
	.uleb128 0x15
	.long	0x6b
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x36
	.long	0x67a
	.uleb128 0x10
	.byte	0x8
	.byte	0x37
	.long	0x38d
	.uleb128 0x10
	.byte	0x8
	.byte	0x38
	.long	0x3a2
	.uleb128 0x10
	.byte	0x8
	.byte	0x39
	.long	0x3b7
	.uleb128 0x10
	.byte	0x8
	.byte	0x3a
	.long	0x3cc
	.uleb128 0x10
	.byte	0x8
	.byte	0x3c
	.long	0x247
	.uleb128 0x10
	.byte	0x8
	.byte	0x3e
	.long	0x411
	.uleb128 0x10
	.byte	0x8
	.byte	0x40
	.long	0x427
	.uleb128 0x10
	.byte	0x8
	.byte	0x43
	.long	0x442
	.uleb128 0x10
	.byte	0x8
	.byte	0x44
	.long	0x45d
	.uleb128 0x10
	.byte	0x8
	.byte	0x45
	.long	0x48f
	.uleb128 0x10
	.byte	0x8
	.byte	0x47
	.long	0x4af
	.uleb128 0x10
	.byte	0x8
	.byte	0x48
	.long	0x4e2
	.uleb128 0x10
	.byte	0x8
	.byte	0x4a
	.long	0x4ee
	.uleb128 0x10
	.byte	0x8
	.byte	0x4b
	.long	0x500
	.uleb128 0x10
	.byte	0x8
	.byte	0x4c
	.long	0x520
	.uleb128 0x10
	.byte	0x8
	.byte	0x4d
	.long	0x53f
	.uleb128 0x10
	.byte	0x8
	.byte	0x4e
	.long	0x55e
	.uleb128 0x10
	.byte	0x8
	.byte	0x50
	.long	0x574
	.uleb128 0x10
	.byte	0x8
	.byte	0x51
	.long	0x59a
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.byte	0x3
	.long	0x6b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.byte	0x4
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.byte	0x5
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.byte	0x6
	.long	0x8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0x6
	.long	0x8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.byte	0x6
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF62
	.byte	0x1
	.byte	0x12
	.long	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF63
	.byte	0x1
	.byte	0x13
	.long	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"lda"
	.byte	0x1
	.byte	0x14
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x7c7
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"qsort"
.LASF13:
	.string	"CblasColMajor"
.LASF23:
	.string	"quot"
.LASF68:
	.string	"decltype(nullptr)"
.LASF61:
	.string	"strtold"
.LASF70:
	.string	"at_quick_exit"
.LASF58:
	.string	"strtoll"
.LASF44:
	.string	"mbstowcs"
.LASF12:
	.string	"CblasRowMajor"
.LASF33:
	.string	"short int"
.LASF18:
	.string	"CblasConjTrans"
.LASF40:
	.string	"bsearch"
.LASF36:
	.string	"atexit"
.LASF67:
	.string	"_MKL_Complex8"
.LASF16:
	.string	"CblasNoTrans"
.LASF21:
	.string	"__unknown__"
.LASF41:
	.string	"getenv"
.LASF71:
	.string	"rand"
.LASF32:
	.string	"signed char"
.LASF2:
	.string	"float"
.LASF46:
	.string	"mbtowc"
.LASF65:
	.string	"cgemv.cpp"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"real"
.LASF50:
	.string	"strtod"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"7lldiv_t"
.LASF69:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF51:
	.string	"strtol"
.LASF55:
	.string	"wctomb"
.LASF37:
	.string	"atof"
.LASF31:
	.string	"unsigned char"
.LASF54:
	.string	"wcstombs"
.LASF15:
	.string	"CBLAS_TRANSPOSE"
.LASF11:
	.string	"long double"
.LASF52:
	.string	"strtoul"
.LASF38:
	.string	"atoi"
.LASF47:
	.string	"quick_exit"
.LASF24:
	.string	"div_t"
.LASF19:
	.string	"__gnu_cxx"
.LASF59:
	.string	"strtoull"
.LASF26:
	.string	"6ldiv_t"
.LASF34:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned int"
.LASF39:
	.string	"atol"
.LASF43:
	.string	"mblen"
.LASF1:
	.string	"imag"
.LASF27:
	.string	"ldiv_t"
.LASF42:
	.string	"ldiv"
.LASF30:
	.string	"short unsigned int"
.LASF20:
	.string	"__cxx11"
.LASF45:
	.string	"wchar_t"
.LASF4:
	.string	"char"
.LASF72:
	.string	"main"
.LASF22:
	.string	"__float128"
.LASF8:
	.string	"size_t"
.LASF64:
	.ascii	"GNU C++14 7.5.0 -march=knl -mmmx -mno-3dnow -msse -msse2 -ms"
	.ascii	"se3 -mssse3 -mno-sse4a -mcx16 -msahf -mmovbe -maes -mno-sha "
	.ascii	"-mpclmul -mpopcnt -mabm -mno-lwp -mfma -mno-fma4 -mno-xop -m"
	.ascii	"bmi -mno-sgx -mbmi2 -mno-tbm -mavx -mavx2 -msse4.2 -msse4.1 "
	.ascii	"-mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c -mfsgsbase -mrdseed"
	.ascii	" -mprfchw -madx -mfxsr -mxsave -mxsaveopt -mavx512f -mno-avx"
	.ascii	"512er -mavx512cd -mno-avx512pf -mno-prefetchwt1 -mclflushopt"
	.ascii	" -mxsavec -mxsaves -mavx512dq -mavx512bw -mavx512vl -"
	.string	"mno-avx512ifma -mno-avx512vbmi -mno-avx5124fmaps -mno-avx5124vnniw -mclwb -mno-mwaitx -mno-clzero -mpku -mno-rdpid --param l1-cache-size=32 --param l1-cache-line-size=64 --param l2-cache-size=25344 -mtune=generic -m64 -g -std=c++1z -fstack-protector-strong"
.LASF60:
	.string	"strtof"
.LASF17:
	.string	"CblasTrans"
.LASF63:
	.string	"beta"
.LASF53:
	.string	"system"
.LASF9:
	.string	"long unsigned int"
.LASF3:
	.string	"double"
.LASF62:
	.string	"alpha"
.LASF29:
	.string	"lldiv_t"
.LASF56:
	.string	"lldiv"
.LASF35:
	.string	"__compar_fn_t"
.LASF14:
	.string	"CBLAS_LAYOUT"
.LASF66:
	.string	"/home/brandon/matvec/src/experiments"
.LASF25:
	.string	"5div_t"
.LASF7:
	.string	"MKL_Complex8"
.LASF49:
	.string	"srand"
.LASF57:
	.string	"atoll"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
