0000000000634e60 <mkl_blas_avx_xcgemv>:
  634e60:	55                   	push   %rbp
  634e61:	48 89 e5             	mov    %rsp,%rbp
  634e64:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  634e68:	41 54                	push   %r12
  634e6a:	41 55                	push   %r13
  634e6c:	41 56                	push   %r14
  634e6e:	41 57                	push   %r15
  634e70:	53                   	push   %rbx
  634e71:	48 81 ec f8 23 00 00 	sub    $0x23f8,%rsp
  634e78:	4c 89 cb             	mov    %r9,%rbx
  634e7b:	44 8a 17             	mov    (%rdi),%r10b
  634e7e:	48 89 c8             	mov    %rcx,%rax
  634e81:	4c 8b 3b             	mov    (%rbx),%r15
  634e84:	41 80 fa 4e          	cmp    $0x4e,%r10b
  634e88:	75 05                	jne    634e8f <mkl_blas_avx_xcgemv+0x2f>
  634e8a:	41 b1 01             	mov    $0x1,%r9b
  634e8d:	eb 15                	jmp    634ea4 <mkl_blas_avx_xcgemv+0x44>
  634e8f:	41 80 fa 6e          	cmp    $0x6e,%r10b
  634e93:	74 f5                	je     634e8a <mkl_blas_avx_xcgemv+0x2a>
  634e95:	45 32 c9             	xor    %r9b,%r9b
  634e98:	41 80 fa 54          	cmp    $0x54,%r10b
  634e9c:	74 0b                	je     634ea9 <mkl_blas_avx_xcgemv+0x49>
  634e9e:	41 80 fa 74          	cmp    $0x74,%r10b
  634ea2:	74 05                	je     634ea9 <mkl_blas_avx_xcgemv+0x49>
  634ea4:	45 33 d2             	xor    %r10d,%r10d
  634ea7:	eb 06                	jmp    634eaf <mkl_blas_avx_xcgemv+0x4f>
  634ea9:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  634eaf:	45 33 e4             	xor    %r12d,%r12d
  634eb2:	45 85 d2             	test   %r10d,%r10d
  634eb5:	48 8b 0e             	mov    (%rsi),%rcx
  634eb8:	41 0f 95 c4          	setne  %r12b
  634ebc:	48 85 c9             	test   %rcx,%rcx
  634ebf:	0f 84 68 0f 00 00    	je     635e2d <mkl_blas_avx_xcgemv+0xfcd>
  634ec5:	4c 8b 32             	mov    (%rdx),%r14
  634ec8:	4d 85 f6             	test   %r14,%r14
  634ecb:	0f 84 5c 0f 00 00    	je     635e2d <mkl_blas_avx_xcgemv+0xfcd>
  634ed1:	c5 fb 10 10          	vmovsd (%rax),%xmm2
  634ed5:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
  634ed9:	c5 e8 c2 cb 04       	vcmpneqps %xmm3,%xmm2,%xmm1
  634ede:	4c 8b 55 20          	mov    0x20(%rbp),%r10
  634ee2:	c5 79 d7 d9          	vpmovmskb %xmm1,%r11d
  634ee6:	c5 fb 10 25 ea 4f ca 	vmovsd 0x3ca4fea(%rip),%xmm4        # 42d9ed8 <__NLITPACK_0.0.1+0x8>
  634eed:	03 
  634eee:	c4 c1 7b 10 12       	vmovsd (%r10),%xmm2
  634ef3:	c5 e9 14 c2          	vunpcklpd %xmm2,%xmm2,%xmm0
  634ef7:	44 88 5c 24 60       	mov    %r11b,0x60(%rsp)
  634efc:	c4 e3 7d 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm0,%ymm0
  634f02:	45 84 db             	test   %r11b,%r11b
  634f05:	75 14                	jne    634f1b <mkl_blas_avx_xcgemv+0xbb>
  634f07:	c5 e8 c2 cc 04       	vcmpneqps %xmm4,%xmm2,%xmm1
  634f0c:	c5 f9 d7 f9          	vpmovmskb %xmm1,%edi
  634f10:	40 84 ff             	test   %dil,%dil
  634f13:	0f 84 14 0f 00 00    	je     635e2d <mkl_blas_avx_xcgemv+0xfcd>
  634f19:	eb 09                	jmp    634f24 <mkl_blas_avx_xcgemv+0xc4>
  634f1b:	c5 e8 c2 cc 04       	vcmpneqps %xmm4,%xmm2,%xmm1
  634f20:	c5 f9 d7 f9          	vpmovmskb %xmm1,%edi
  634f24:	45 84 c9             	test   %r9b,%r9b
  634f27:	49 89 cb             	mov    %rcx,%r11
  634f2a:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
  634f2e:	4d 89 f2             	mov    %r14,%r10
  634f31:	4d 0f 45 de          	cmovne %r14,%r11
  634f35:	4c 0f 45 d1          	cmovne %rcx,%r10
  634f39:	49 ff cb             	dec    %r11
  634f3c:	4d 8b 6d 00          	mov    0x0(%r13),%r13
  634f40:	4d 0f af dd          	imul   %r13,%r11
  634f44:	49 f7 db             	neg    %r11
  634f47:	49 ff c3             	inc    %r11
  634f4a:	4d 85 ed             	test   %r13,%r13
  634f4d:	4c 89 6c 24 58       	mov    %r13,0x58(%rsp)
  634f52:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  634f58:	4d 0f 4f dd          	cmovg  %r13,%r11
  634f5c:	4c 89 9c 24 68 04 00 	mov    %r11,0x468(%rsp)
  634f63:	00 
  634f64:	4c 8b 5d 30          	mov    0x30(%rbp),%r11
  634f68:	4d 8b 2b             	mov    (%r11),%r13
  634f6b:	4d 85 ed             	test   %r13,%r13
  634f6e:	0f 8e ae 13 00 00    	jle    636322 <mkl_blas_avx_xcgemv+0x14c2>
  634f74:	48 c7 84 24 70 04 00 	movq   $0x1,0x470(%rsp)
  634f7b:	00 01 00 00 00 
  634f80:	40 84 ff             	test   %dil,%dil
  634f83:	0f 84 f7 03 00 00    	je     635380 <mkl_blas_avx_xcgemv+0x520>
  634f89:	49 83 fd 01          	cmp    $0x1,%r13
  634f8d:	0f 84 ce 0e 00 00    	je     635e61 <mkl_blas_avx_xcgemv+0x1001>
  634f93:	c5 e8 c2 cb 04       	vcmpneqps %xmm3,%xmm2,%xmm1
  634f98:	c5 79 d7 d9          	vpmovmskb %xmm1,%r11d
  634f9c:	48 c7 44 24 48 01 00 	movq   $0x1,0x48(%rsp)
  634fa3:	00 00 
  634fa5:	45 84 db             	test   %r11b,%r11b
  634fa8:	0f 85 89 01 00 00    	jne    635137 <mkl_blas_avx_xcgemv+0x2d7>
  634fae:	4d 85 d2             	test   %r10,%r10
  634fb1:	0f 8e b9 03 00 00    	jle    635370 <mkl_blas_avx_xcgemv+0x510>
  634fb7:	49 83 fa 08          	cmp    $0x8,%r10
  634fbb:	0f 8c 84 0e 00 00    	jl     635e45 <mkl_blas_avx_xcgemv+0xfe5>
  634fc1:	4d 89 eb             	mov    %r13,%r11
  634fc4:	49 c1 e3 06          	shl    $0x6,%r11
  634fc8:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
  634fcd:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  634fd1:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
  634fd6:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
  634fdb:	49 83 e2 f8          	and    $0xfffffffffffffff8,%r10
  634fdf:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  634fe4:	4e 8d 14 ed 00 00 00 	lea    0x0(,%r13,8),%r10
  634feb:	00 
  634fec:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
  634ff1:	4d 8d 5c fb f8       	lea    -0x8(%r11,%rdi,8),%r11
  634ff6:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  634ffb:	4d 89 eb             	mov    %r13,%r11
  634ffe:	49 c1 e3 05          	shl    $0x5,%r11
  635002:	4f 8d 14 52          	lea    (%r10,%r10,2),%r10
  635006:	4c 89 5c 24 28       	mov    %r11,0x28(%rsp)
  63500b:	4d 89 eb             	mov    %r13,%r11
  63500e:	49 c1 e3 04          	shl    $0x4,%r11
  635012:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  635019:	00 00 
  63501b:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
  635020:	44 89 a4 24 80 04 00 	mov    %r12d,0x480(%rsp)
  635027:	00 
  635028:	44 88 0c 24          	mov    %r9b,(%rsp)
  63502c:	48 89 b4 24 88 04 00 	mov    %rsi,0x488(%rsp)
  635033:	00 
  635034:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  635039:	4c 89 84 24 60 04 00 	mov    %r8,0x460(%rsp)
  635040:	00 
  635041:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  635048:	00 
  635049:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  63504e:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
  635053:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  635058:	4c 89 de             	mov    %r11,%rsi
  63505b:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  635060:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  635065:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  63506a:	4c 8b 5c 24 38       	mov    0x38(%rsp),%r11
  63506f:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  635074:	48 89 84 24 78 04 00 	mov    %rax,0x478(%rsp)
  63507b:	00 
  63507c:	c4 c1 7b 11 18       	vmovsd %xmm3,(%r8)
  635081:	49 8d 04 38          	lea    (%r8,%rdi,1),%rax
  635085:	c4 81 79 17 1c 18    	vmovhpd %xmm3,(%r8,%r11,1)
  63508b:	49 83 c4 08          	add    $0x8,%r12
  63508f:	c4 a1 7b 11 1c 06    	vmovsd %xmm3,(%rsi,%r8,1)
  635095:	c4 a1 79 17 1c 03    	vmovhpd %xmm3,(%rbx,%r8,1)
  63509b:	4d 03 c1             	add    %r9,%r8
  63509e:	c5 fb 11 18          	vmovsd %xmm3,(%rax)
  6350a2:	c4 a1 79 17 1c 18    	vmovhpd %xmm3,(%rax,%r11,1)
  6350a8:	c5 fb 11 1c 06       	vmovsd %xmm3,(%rsi,%rax,1)
  6350ad:	c5 f9 17 1c 03       	vmovhpd %xmm3,(%rbx,%rax,1)
  6350b2:	4c 3b e2             	cmp    %rdx,%r12
  6350b5:	72 c5                	jb     63507c <mkl_blas_avx_xcgemv+0x21c>
  6350b7:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
  6350bc:	44 8b a4 24 80 04 00 	mov    0x480(%rsp),%r12d
  6350c3:	00 
  6350c4:	44 8a 0c 24          	mov    (%rsp),%r9b
  6350c8:	48 8b b4 24 88 04 00 	mov    0x488(%rsp),%rsi
  6350cf:	00 
  6350d0:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  6350d5:	48 8b 84 24 78 04 00 	mov    0x478(%rsp),%rax
  6350dc:	00 
  6350dd:	4c 8b 84 24 60 04 00 	mov    0x460(%rsp),%r8
  6350e4:	00 
  6350e5:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  6350ec:	00 
  6350ed:	4d 89 eb             	mov    %r13,%r11
  6350f0:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  6350f5:	4c 0f af df          	imul   %rdi,%r11
  6350f9:	4c 89 1c 24          	mov    %r11,(%rsp)
  6350fd:	49 3b fa             	cmp    %r10,%rdi
  635100:	0f 83 6a 02 00 00    	jae    635370 <mkl_blas_avx_xcgemv+0x510>
  635106:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  63510a:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
  63510f:	4d 8d 1c fb          	lea    (%r11,%rdi,8),%r11
  635113:	48 8b 3c 24          	mov    (%rsp),%rdi
  635117:	4d 8d 1c fb          	lea    (%r11,%rdi,8),%r11
  63511b:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
  635120:	48 ff c7             	inc    %rdi
  635123:	c4 c1 7b 11 5b f8    	vmovsd %xmm3,-0x8(%r11)
  635129:	4f 8d 1c eb          	lea    (%r11,%r13,8),%r11
  63512d:	49 3b fa             	cmp    %r10,%rdi
  635130:	72 ee                	jb     635120 <mkl_blas_avx_xcgemv+0x2c0>
  635132:	e9 39 02 00 00       	jmpq   635370 <mkl_blas_avx_xcgemv+0x510>
  635137:	4d 85 d2             	test   %r10,%r10
  63513a:	0f 8e 30 02 00 00    	jle    635370 <mkl_blas_avx_xcgemv+0x510>
  635140:	4d 89 eb             	mov    %r13,%r11
  635143:	49 c1 e3 03          	shl    $0x3,%r11
  635147:	4c 89 5c 24 28       	mov    %r11,0x28(%rsp)
  63514c:	0f 84 01 0d 00 00    	je     635e53 <mkl_blas_avx_xcgemv+0xff3>
  635152:	49 83 fa 08          	cmp    $0x8,%r10
  635156:	0f 8c f7 0c 00 00    	jl     635e53 <mkl_blas_avx_xcgemv+0xff3>
  63515c:	4d 89 d3             	mov    %r10,%r11
  63515f:	49 83 e3 f8          	and    $0xfffffffffffffff8,%r11
  635163:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
  635168:	45 33 db             	xor    %r11d,%r11d
  63516b:	4c 89 5c 24 20       	mov    %r11,0x20(%rsp)
  635170:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  635175:	4d 89 eb             	mov    %r13,%r11
  635178:	49 c1 e3 04          	shl    $0x4,%r11
  63517c:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  635181:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
  635186:	4c 8b 5c 24 28       	mov    0x28(%rsp),%r11
  63518b:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
  635190:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  635195:	4a 8d 3c af          	lea    (%rdi,%r13,4),%rdi
  635199:	4f 8d 1c 5b          	lea    (%r11,%r11,2),%r11
  63519d:	44 89 a4 24 80 04 00 	mov    %r12d,0x480(%rsp)
  6351a4:	00 
  6351a5:	44 88 0c 24          	mov    %r9b,(%rsp)
  6351a9:	48 89 b4 24 88 04 00 	mov    %rsi,0x488(%rsp)
  6351b0:	00 
  6351b1:	4c 89 84 24 60 04 00 	mov    %r8,0x460(%rsp)
  6351b8:	00 
  6351b9:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  6351c0:	00 
  6351c1:	c5 fe 16 c8          	vmovshdup %ymm0,%ymm1
  6351c5:	c5 fe 12 c0          	vmovsldup %ymm0,%ymm0
  6351c9:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  6351ce:	48 89 84 24 78 04 00 	mov    %rax,0x478(%rsp)
  6351d5:	00 
  6351d6:	4c 8b 64 24 30       	mov    0x30(%rsp),%r12
  6351db:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
  6351e0:	4c 8b 74 24 10       	mov    0x10(%rsp),%r14
  6351e5:	48 89 fb             	mov    %rdi,%rbx
  6351e8:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  6351ed:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  6351f2:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
  6351f7:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  6351fb:	48 83 c6 08          	add    $0x8,%rsi
  6351ff:	4b 8d 04 30          	lea    (%r8,%r14,1),%rax
  635203:	49 8d 54 c1 f8       	lea    -0x8(%r9,%rax,8),%rdx
  635208:	4b 8d 44 30 ff       	lea    -0x1(%r8,%r14,1),%rax
  63520d:	49 8d 04 c1          	lea    (%r9,%rax,8),%rax
  635211:	c5 fb 10 18          	vmovsd (%rax),%xmm3
  635215:	c5 e1 16 2c 38       	vmovhpd (%rax,%rdi,1),%xmm3,%xmm5
  63521a:	49 03 c7             	add    %r15,%rax
  63521d:	c5 fb 10 20          	vmovsd (%rax),%xmm4
  635221:	c5 d9 16 34 38       	vmovhpd (%rax,%rdi,1),%xmm4,%xmm6
  635226:	c4 e3 55 18 fe 01    	vinsertf128 $0x1,%xmm6,%ymm5,%ymm7
  63522c:	c5 44 c6 c7 b1       	vshufps $0xb1,%ymm7,%ymm7,%ymm8
  635231:	c5 7c 59 cf          	vmulps %ymm7,%ymm0,%ymm9
  635235:	c4 41 74 59 d0       	vmulps %ymm8,%ymm1,%ymm10
  63523a:	c4 41 37 d0 da       	vaddsubps %ymm10,%ymm9,%ymm11
  63523f:	c4 43 7d 19 dc 01    	vextractf128 $0x1,%ymm11,%xmm12
  635245:	c5 7b 11 1a          	vmovsd %xmm11,(%rdx)
  635249:	c5 79 17 1c 3a       	vmovhpd %xmm11,(%rdx,%rdi,1)
  63524e:	c4 41 7b 11 24 17    	vmovsd %xmm12,(%r15,%rdx,1)
  635254:	c4 41 79 17 24 13    	vmovhpd %xmm12,(%r11,%rdx,1)
  63525a:	4a 8d 14 33          	lea    (%rbx,%r14,1),%rdx
  63525e:	49 8d 44 d1 f8       	lea    -0x8(%r9,%rdx,8),%rax
  635263:	4a 8d 54 33 ff       	lea    -0x1(%rbx,%r14,1),%rdx
  635268:	49 8d 14 d1          	lea    (%r9,%rdx,8),%rdx
  63526c:	c5 7b 10 2a          	vmovsd (%rdx),%xmm13
  635270:	4f 8d 34 ee          	lea    (%r14,%r13,8),%r14
  635274:	c5 11 16 3c 3a       	vmovhpd (%rdx,%rdi,1),%xmm13,%xmm15
  635279:	49 03 d7             	add    %r15,%rdx
  63527c:	c5 7b 10 32          	vmovsd (%rdx),%xmm14
  635280:	c5 89 16 1c 3a       	vmovhpd (%rdx,%rdi,1),%xmm14,%xmm3
  635285:	c4 e3 05 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm15,%ymm4
  63528b:	c5 dc c6 ec b1       	vshufps $0xb1,%ymm4,%ymm4,%ymm5
  635290:	c5 fc 59 f4          	vmulps %ymm4,%ymm0,%ymm6
  635294:	c5 f4 59 fd          	vmulps %ymm5,%ymm1,%ymm7
  635298:	c5 4f d0 c7          	vaddsubps %ymm7,%ymm6,%ymm8
  63529c:	c4 43 7d 19 c1 01    	vextractf128 $0x1,%ymm8,%xmm9
  6352a2:	c5 7b 11 00          	vmovsd %xmm8,(%rax)
  6352a6:	c5 79 17 04 38       	vmovhpd %xmm8,(%rax,%rdi,1)
  6352ab:	c4 41 7b 11 0c 07    	vmovsd %xmm9,(%r15,%rax,1)
  6352b1:	c4 41 79 17 0c 03    	vmovhpd %xmm9,(%r11,%rax,1)
  6352b7:	49 3b f4             	cmp    %r12,%rsi
  6352ba:	0f 82 3b ff ff ff    	jb     6351fb <mkl_blas_avx_xcgemv+0x39b>
  6352c0:	4c 89 64 24 30       	mov    %r12,0x30(%rsp)
  6352c5:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
  6352ca:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
  6352cf:	44 8b a4 24 80 04 00 	mov    0x480(%rsp),%r12d
  6352d6:	00 
  6352d7:	44 8a 0c 24          	mov    (%rsp),%r9b
  6352db:	48 8b b4 24 88 04 00 	mov    0x488(%rsp),%rsi
  6352e2:	00 
  6352e3:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  6352e8:	48 8b 84 24 78 04 00 	mov    0x478(%rsp),%rax
  6352ef:	00 
  6352f0:	4c 8b 84 24 60 04 00 	mov    0x460(%rsp),%r8
  6352f7:	00 
  6352f8:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  6352ff:	00 
  635300:	4d 89 eb             	mov    %r13,%r11
  635303:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  635308:	4c 0f af df          	imul   %rdi,%r11
  63530c:	4c 89 1c 24          	mov    %r11,(%rsp)
  635310:	49 3b fa             	cmp    %r10,%rdi
  635313:	73 5b                	jae    635370 <mkl_blas_avx_xcgemv+0x510>
  635315:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  635319:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
  63531e:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  635325:	00 
  635326:	c5 e8 c6 c2 b1       	vshufps $0xb1,%xmm2,%xmm2,%xmm0
  63532b:	4d 8d 1c fb          	lea    (%r11,%rdi,8),%r11
  63532f:	4c 89 db             	mov    %r11,%rbx
  635332:	4c 8b 1c 24          	mov    (%rsp),%r11
  635336:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  63533b:	c4 a1 7b 10 5c db f8 	vmovsd -0x8(%rbx,%r11,8),%xmm3
  635342:	48 ff c7             	inc    %rdi
  635345:	c5 fa 12 cb          	vmovsldup %xmm3,%xmm1
  635349:	c5 fa 16 e3          	vmovshdup %xmm3,%xmm4
  63534d:	c5 f0 59 ea          	vmulps %xmm2,%xmm1,%xmm5
  635351:	c5 d8 59 f0          	vmulps %xmm0,%xmm4,%xmm6
  635355:	c5 d3 d0 fe          	vaddsubps %xmm6,%xmm5,%xmm7
  635359:	c4 a1 7b 11 7c db f8 	vmovsd %xmm7,-0x8(%rbx,%r11,8)
  635360:	4d 03 dd             	add    %r13,%r11
  635363:	49 3b fa             	cmp    %r10,%rdi
  635366:	72 d3                	jb     63533b <mkl_blas_avx_xcgemv+0x4db>
  635368:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  63536f:	00 
  635370:	44 8a 54 24 60       	mov    0x60(%rsp),%r10b
  635375:	45 84 d2             	test   %r10b,%r10b
  635378:	0f 84 af 0a 00 00    	je     635e2d <mkl_blas_avx_xcgemv+0xfcd>
  63537e:	eb 18                	jmp    635398 <mkl_blas_avx_xcgemv+0x538>
  635380:	44 8a 54 24 60       	mov    0x60(%rsp),%r10b
  635385:	45 84 d2             	test   %r10b,%r10b
  635388:	0f 84 9f 0a 00 00    	je     635e2d <mkl_blas_avx_xcgemv+0xfcd>
  63538e:	49 83 fd 01          	cmp    $0x1,%r13
  635392:	0f 84 a7 0d 00 00    	je     63613f <mkl_blas_avx_xcgemv+0x12df>
  635398:	45 33 db             	xor    %r11d,%r11d
  63539b:	45 33 d2             	xor    %r10d,%r10d
  63539e:	45 84 c9             	test   %r9b,%r9b
  6353a1:	4d 89 d1             	mov    %r10,%r9
  6353a4:	0f 84 f4 04 00 00    	je     63589e <mkl_blas_avx_xcgemv+0xa3e>
  6353aa:	4d 85 f6             	test   %r14,%r14
  6353ad:	0f 8e 7a 0a 00 00    	jle    635e2d <mkl_blas_avx_xcgemv+0xfcd>
  6353b3:	49 c1 e7 0a          	shl    $0xa,%r15
  6353b7:	49 8d 7e 7f          	lea    0x7f(%r14),%rdi
  6353bb:	48 c1 ef 07          	shr    $0x7,%rdi
  6353bf:	45 33 e4             	xor    %r12d,%r12d
  6353c2:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  6353c7:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  6353cc:	48 89 84 24 78 04 00 	mov    %rax,0x478(%rsp)
  6353d3:	00 
  6353d4:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  6353d9:	48 89 b4 24 88 04 00 	mov    %rsi,0x488(%rsp)
  6353e0:	00 
  6353e1:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  6353e6:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  6353ed:	00 
  6353ee:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  6353f3:	48 8b bc 24 68 04 00 	mov    0x468(%rsp),%rdi
  6353fa:	00 
  6353fb:	4c 8b 6d 10          	mov    0x10(%rbp),%r13
  6353ff:	48 8b b4 24 70 04 00 	mov    0x470(%rsp),%rsi
  635406:	00 
  635407:	49 8d 92 80 00 00 00 	lea    0x80(%r10),%rdx
  63540e:	4c 3b f2             	cmp    %rdx,%r14
  635411:	49 0f 4c d6          	cmovl  %r14,%rdx
  635415:	49 03 d1             	add    %r9,%rdx
  635418:	48 85 d2             	test   %rdx,%rdx
  63541b:	0f 8e 98 00 00 00    	jle    6354b9 <mkl_blas_avx_xcgemv+0x659>
  635421:	48 83 fa 04          	cmp    $0x4,%rdx
  635425:	0f 8c a8 0e 00 00    	jl     6362d3 <mkl_blas_avx_xcgemv+0x1473>
  63542b:	49 89 d7             	mov    %rdx,%r15
  63542e:	33 db                	xor    %ebx,%ebx
  635430:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  635435:	49 83 e7 fc          	and    $0xfffffffffffffffc,%r15
  635439:	4c 89 84 24 60 04 00 	mov    %r8,0x460(%rsp)
  635440:	00 
  635441:	49 89 fe             	mov    %rdi,%r14
  635444:	49 89 c0             	mov    %rax,%r8
  635447:	4f 8d 5c f5 f8       	lea    -0x8(%r13,%r14,8),%r11
  63544c:	c4 c1 7b 10 03       	vmovsd (%r11),%xmm0
  635451:	4d 8d 34 86          	lea    (%r14,%rax,4),%r14
  635455:	49 c1 e0 04          	shl    $0x4,%r8
  635459:	c4 c1 79 16 0c c3    	vmovhpd (%r11,%rax,8),%xmm0,%xmm1
  63545f:	4d 03 d8             	add    %r8,%r11
  635462:	c4 c1 7b 10 13       	vmovsd (%r11),%xmm2
  635467:	c4 c1 69 16 1c c3    	vmovhpd (%r11,%rax,8),%xmm2,%xmm3
  63546d:	c4 e3 75 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm1,%ymm4
  635473:	c5 fc 11 64 dc 60    	vmovups %ymm4,0x60(%rsp,%rbx,8)
  635479:	48 83 c3 04          	add    $0x4,%rbx
  63547d:	49 3b df             	cmp    %r15,%rbx
  635480:	72 c2                	jb     635444 <mkl_blas_avx_xcgemv+0x5e4>
  635482:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  635487:	4c 8b 84 24 60 04 00 	mov    0x460(%rsp),%r8
  63548e:	00 
  63548f:	49 89 c6             	mov    %rax,%r14
  635492:	4d 0f af f7          	imul   %r15,%r14
  635496:	4c 3b fa             	cmp    %rdx,%r15
  635499:	73 1e                	jae    6354b9 <mkl_blas_avx_xcgemv+0x659>
  63549b:	49 8d 5c fd 00       	lea    0x0(%r13,%rdi,8),%rbx
  6354a0:	4a 8d 1c f3          	lea    (%rbx,%r14,8),%rbx
  6354a4:	4c 8b 73 f8          	mov    -0x8(%rbx),%r14
  6354a8:	48 8d 1c c3          	lea    (%rbx,%rax,8),%rbx
  6354ac:	4e 89 74 fc 60       	mov    %r14,0x60(%rsp,%r15,8)
  6354b1:	49 ff c7             	inc    %r15
  6354b4:	4c 3b fa             	cmp    %rdx,%r15
  6354b7:	72 eb                	jb     6354a4 <mkl_blas_avx_xcgemv+0x644>
  6354b9:	48 85 c9             	test   %rcx,%rcx
  6354bc:	0f 8e 9c 03 00 00    	jle    63585e <mkl_blas_avx_xcgemv+0x9fe>
  6354c2:	48 bb 77 be 9f 1a 2f 	movabs $0x624dd2f1a9fbe77,%rbx
  6354c9:	dd 24 06 
  6354cc:	48 8d 81 e7 03 00 00 	lea    0x3e7(%rcx),%rax
  6354d3:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  6354d8:	45 33 f6             	xor    %r14d,%r14d
  6354db:	48 f7 e3             	mul    %rbx
  6354de:	48 89 c8             	mov    %rcx,%rax
  6354e1:	4f 8d 3c 20          	lea    (%r8,%r12,1),%r15
  6354e5:	48 2b c2             	sub    %rdx,%rax
  6354e8:	48 05 e7 03 00 00    	add    $0x3e7,%rax
  6354ee:	48 d1 e8             	shr    %rax
  6354f1:	48 03 d0             	add    %rax,%rdx
  6354f4:	33 c0                	xor    %eax,%eax
  6354f6:	48 c1 ea 09          	shr    $0x9,%rdx
  6354fa:	33 db                	xor    %ebx,%ebx
  6354fc:	48 89 bc 24 68 04 00 	mov    %rdi,0x468(%rsp)
  635503:	00 
  635504:	49 89 c5             	mov    %rax,%r13
  635507:	48 89 94 24 80 04 00 	mov    %rdx,0x480(%rsp)
  63550e:	00 
  63550f:	4c 89 24 24          	mov    %r12,(%rsp)
  635513:	49 89 f4             	mov    %rsi,%r12
  635516:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  63551b:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
  635520:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  635525:	4c 89 84 24 60 04 00 	mov    %r8,0x460(%rsp)
  63552c:	00 
  63552d:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  635532:	49 8d bd e8 03 00 00 	lea    0x3e8(%r13),%rdi
  635539:	48 3b cf             	cmp    %rdi,%rcx
  63553c:	48 0f 4c f9          	cmovl  %rcx,%rdi
  635540:	48 03 fb             	add    %rbx,%rdi
  635543:	48 89 bc 24 98 04 00 	mov    %rdi,0x498(%rsp)
  63554a:	00 
  63554b:	48 85 ff             	test   %rdi,%rdi
  63554e:	0f 8e 8e 00 00 00    	jle    6355e2 <mkl_blas_avx_xcgemv+0x782>
  635554:	48 83 ff 04          	cmp    $0x4,%rdi
  635558:	0f 8c 6e 0d 00 00    	jl     6362cc <mkl_blas_avx_xcgemv+0x146c>
  63555e:	48 89 fa             	mov    %rdi,%rdx
  635561:	45 33 c9             	xor    %r9d,%r9d
  635564:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
  635568:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  63556c:	4d 89 e0             	mov    %r12,%r8
  63556f:	90                   	nop
  635570:	49 89 c2             	mov    %rax,%r10
  635573:	4e 8d 5c c1 f8       	lea    -0x8(%rcx,%r8,8),%r11
  635578:	c4 c1 7b 10 03       	vmovsd (%r11),%xmm0
  63557d:	4d 8d 04 80          	lea    (%r8,%rax,4),%r8
  635581:	49 c1 e2 04          	shl    $0x4,%r10
  635585:	c4 c1 79 16 0c c3    	vmovhpd (%r11,%rax,8),%xmm0,%xmm1
  63558b:	4d 03 da             	add    %r10,%r11
  63558e:	c4 c1 7b 10 13       	vmovsd (%r11),%xmm2
  635593:	c4 c1 69 16 1c c3    	vmovhpd (%r11,%rax,8),%xmm2,%xmm3
  635599:	c4 e3 75 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm1,%ymm4
  63559f:	c4 a1 7c 11 a4 cc a0 	vmovups %ymm4,0x4a0(%rsp,%r9,8)
  6355a6:	04 00 00 
  6355a9:	49 83 c1 04          	add    $0x4,%r9
  6355ad:	4c 3b ca             	cmp    %rdx,%r9
  6355b0:	72 be                	jb     635570 <mkl_blas_avx_xcgemv+0x710>
  6355b2:	49 89 c2             	mov    %rax,%r10
  6355b5:	4c 0f af d2          	imul   %rdx,%r10
  6355b9:	48 3b d7             	cmp    %rdi,%rdx
  6355bc:	73 24                	jae    6355e2 <mkl_blas_avx_xcgemv+0x782>
  6355be:	4c 8b 45 28          	mov    0x28(%rbp),%r8
  6355c2:	4f 8d 0c e0          	lea    (%r8,%r12,8),%r9
  6355c6:	4f 8d 04 d1          	lea    (%r9,%r10,8),%r8
  6355ca:	4d 8b 48 f8          	mov    -0x8(%r8),%r9
  6355ce:	4d 8d 04 c0          	lea    (%r8,%rax,8),%r8
  6355d2:	4c 89 8c d4 a0 04 00 	mov    %r9,0x4a0(%rsp,%rdx,8)
  6355d9:	00 
  6355da:	48 ff c2             	inc    %rdx
  6355dd:	48 3b d7             	cmp    %rdi,%rdx
  6355e0:	72 e8                	jb     6355ca <mkl_blas_avx_xcgemv+0x76a>
  6355e2:	48 8b 94 24 90 04 00 	mov    0x490(%rsp),%rdx
  6355e9:	00 
  6355ea:	4c 8b 02             	mov    (%rdx),%r8
  6355ed:	4c 89 c7             	mov    %r8,%rdi
  6355f0:	48 c1 ef 3f          	shr    $0x3f,%rdi
  6355f4:	49 03 f8             	add    %r8,%rdi
  6355f7:	48 83 e7 fe          	and    $0xfffffffffffffffe,%rdi
  6355fb:	49 3b f8             	cmp    %r8,%rdi
  6355fe:	75 3b                	jne    63563b <mkl_blas_avx_xcgemv+0x7db>
  635600:	49 89 d0             	mov    %rdx,%r8
  635603:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  635607:	4c 89 f9             	mov    %r15,%rcx
  63560a:	33 c0                	xor    %eax,%eax
  63560c:	4c 8d 94 24 b0 04 00 	lea    0x4b0(%rsp),%r10
  635613:	00 
  635614:	48 8d bc 24 a8 04 00 	lea    0x4a8(%rsp),%rdi
  63561b:	00 
  63561c:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  635621:	4c 89 14 24          	mov    %r10,(%rsp)
  635625:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
  63562a:	48 8b 96 48 04 00 00 	mov    0x448(%rsi),%rdx
  635631:	c5 f8 77             	vzeroupper 
  635634:	e8 37 67 36 02       	callq  299bd70 <mkl_blas_avx_cgemv_n_even>
  635639:	eb 39                	jmp    635674 <mkl_blas_avx_xcgemv+0x814>
  63563b:	49 89 d0             	mov    %rdx,%r8
  63563e:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  635642:	4c 89 f9             	mov    %r15,%rcx
  635645:	33 c0                	xor    %eax,%eax
  635647:	4c 8d 94 24 b0 04 00 	lea    0x4b0(%rsp),%r10
  63564e:	00 
  63564f:	48 8d bc 24 a8 04 00 	lea    0x4a8(%rsp),%rdi
  635656:	00 
  635657:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  63565c:	4c 89 14 24          	mov    %r10,(%rsp)
  635660:	4c 8d 4c 24 70       	lea    0x70(%rsp),%r9
  635665:	48 8b 96 48 04 00 00 	mov    0x448(%rsi),%rdx
  63566c:	c5 f8 77             	vzeroupper 
  63566f:	e8 fc 5a 36 02       	callq  299b170 <mkl_blas_avx_cgemv_n_odd>
  635674:	48 83 c4 10          	add    $0x10,%rsp
  635678:	48 8b 55 30          	mov    0x30(%rbp),%rdx
  63567c:	4c 8b 9c 24 98 04 00 	mov    0x498(%rsp),%r11
  635683:	00 
  635684:	48 8b 02             	mov    (%rdx),%rax
  635687:	4d 85 db             	test   %r11,%r11
  63568a:	0f 8e 5f 01 00 00    	jle    6357ef <mkl_blas_avx_xcgemv+0x98f>
  635690:	49 83 fb 08          	cmp    $0x8,%r11
  635694:	0f 8c 2b 0c 00 00    	jl     6362c5 <mkl_blas_avx_xcgemv+0x1465>
  63569a:	48 8b 55 28          	mov    0x28(%rbp),%rdx
  63569e:	4c 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%r9
  6356a5:	00 
  6356a6:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  6356ad:	00 00 
  6356af:	4b 8d 34 49          	lea    (%r9,%r9,2),%rsi
  6356b3:	4c 89 d9             	mov    %r11,%rcx
  6356b6:	49 89 c0             	mov    %rax,%r8
  6356b9:	49 89 c2             	mov    %rax,%r10
  6356bc:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
  6356c1:	4a 8d 7c e2 f8       	lea    -0x8(%rdx,%r12,8),%rdi
  6356c6:	48 89 c2             	mov    %rax,%rdx
  6356c9:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
  6356cd:	4c 89 64 24 58       	mov    %r12,0x58(%rsp)
  6356d2:	49 c1 e0 06          	shl    $0x6,%r8
  6356d6:	49 c1 e2 05          	shl    $0x5,%r10
  6356da:	48 c1 e2 04          	shl    $0x4,%rdx
  6356de:	49 89 f4             	mov    %rsi,%r12
  6356e1:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
  6356e6:	0f 1f 00             	nopl   (%rax)
  6356e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  6356f0:	c4 a1 7c 10 84 f4 a0 	vmovups 0x4a0(%rsp,%r14,8),%ymm0
  6356f7:	04 00 00 
  6356fa:	4a 8d 34 17          	lea    (%rdi,%r10,1),%rsi
  6356fe:	c4 a1 7c 10 94 f4 c0 	vmovups 0x4c0(%rsp,%r14,8),%ymm2
  635705:	04 00 00 
  635708:	49 83 c6 08          	add    $0x8,%r14
  63570c:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  635712:	c5 fb 11 07          	vmovsd %xmm0,(%rdi)
  635716:	c4 a1 79 17 04 0f    	vmovhpd %xmm0,(%rdi,%r9,1)
  63571c:	c5 fb 11 0c 3a       	vmovsd %xmm1,(%rdx,%rdi,1)
  635721:	c4 c1 79 17 0c 3c    	vmovhpd %xmm1,(%r12,%rdi,1)
  635727:	49 03 f8             	add    %r8,%rdi
  63572a:	c4 e3 7d 19 d3 01    	vextractf128 $0x1,%ymm2,%xmm3
  635730:	c5 fb 11 16          	vmovsd %xmm2,(%rsi)
  635734:	c4 a1 79 17 14 0e    	vmovhpd %xmm2,(%rsi,%r9,1)
  63573a:	c5 fb 11 1c 32       	vmovsd %xmm3,(%rdx,%rsi,1)
  63573f:	c4 c1 79 17 1c 34    	vmovhpd %xmm3,(%r12,%rsi,1)
  635745:	4c 3b f1             	cmp    %rcx,%r14
  635748:	72 a6                	jb     6356f0 <mkl_blas_avx_xcgemv+0x890>
  63574a:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
  63574f:	4c 8b 64 24 58       	mov    0x58(%rsp),%r12
  635754:	48 8d 51 01          	lea    0x1(%rcx),%rdx
  635758:	49 3b d3             	cmp    %r11,%rdx
  63575b:	0f 87 8e 00 00 00    	ja     6357ef <mkl_blas_avx_xcgemv+0x98f>
  635761:	4c 2b d9             	sub    %rcx,%r11
  635764:	49 83 fb 02          	cmp    $0x2,%r11
  635768:	0f 8c 50 0b 00 00    	jl     6362be <mkl_blas_avx_xcgemv+0x145e>
  63576e:	48 89 c7             	mov    %rax,%rdi
  635771:	4c 89 da             	mov    %r11,%rdx
  635774:	48 0f af f9          	imul   %rcx,%rdi
  635778:	48 8b 75 28          	mov    0x28(%rbp),%rsi
  63577c:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  635780:	45 33 c9             	xor    %r9d,%r9d
  635783:	4c 8d 84 cc a0 04 00 	lea    0x4a0(%rsp,%rcx,8),%r8
  63578a:	00 
  63578b:	49 03 fc             	add    %r12,%rdi
  63578e:	c4 81 78 10 04 c8    	vmovups (%r8,%r9,8),%xmm0
  635794:	4c 8d 54 fe f8       	lea    -0x8(%rsi,%rdi,8),%r10
  635799:	49 83 c1 02          	add    $0x2,%r9
  63579d:	48 8d 3c 47          	lea    (%rdi,%rax,2),%rdi
  6357a1:	c4 c1 7b 11 02       	vmovsd %xmm0,(%r10)
  6357a6:	c4 c1 79 17 04 c2    	vmovhpd %xmm0,(%r10,%rax,8)
  6357ac:	4c 3b ca             	cmp    %rdx,%r9
  6357af:	72 dd                	jb     63578e <mkl_blas_avx_xcgemv+0x92e>
  6357b1:	49 89 c0             	mov    %rax,%r8
  6357b4:	4c 0f af c2          	imul   %rdx,%r8
  6357b8:	49 3b d3             	cmp    %r11,%rdx
  6357bb:	73 32                	jae    6357ef <mkl_blas_avx_xcgemv+0x98f>
  6357bd:	49 89 c9             	mov    %rcx,%r9
  6357c0:	4c 0f af c8          	imul   %rax,%r9
  6357c4:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
  6357c8:	4d 03 cc             	add    %r12,%r9
  6357cb:	4e 8d 04 c7          	lea    (%rdi,%r8,8),%r8
  6357cf:	4f 8d 04 c8          	lea    (%r8,%r9,8),%r8
  6357d3:	48 8d bc cc a0 04 00 	lea    0x4a0(%rsp,%rcx,8),%rdi
  6357da:	00 
  6357db:	4c 8b 0c d7          	mov    (%rdi,%rdx,8),%r9
  6357df:	48 ff c2             	inc    %rdx
  6357e2:	4d 89 48 f8          	mov    %r9,-0x8(%r8)
  6357e6:	4d 8d 04 c0          	lea    (%r8,%rax,8),%r8
  6357ea:	49 3b d3             	cmp    %r11,%rdx
  6357ed:	72 ec                	jb     6357db <mkl_blas_avx_xcgemv+0x97b>
  6357ef:	48 69 d0 e8 03 00 00 	imul   $0x3e8,%rax,%rdx
  6357f6:	49 ff c6             	inc    %r14
  6357f9:	48 81 c3 18 fc ff ff 	add    $0xfffffffffffffc18,%rbx
  635800:	49 81 c5 e8 03 00 00 	add    $0x3e8,%r13
  635807:	49 81 c7 40 1f 00 00 	add    $0x1f40,%r15
  63580e:	4c 03 e2             	add    %rdx,%r12
  635811:	4c 3b b4 24 80 04 00 	cmp    0x480(%rsp),%r14
  635818:	00 
  635819:	73 10                	jae    63582b <mkl_blas_avx_xcgemv+0x9cb>
  63581b:	48 8b 94 24 88 04 00 	mov    0x488(%rsp),%rdx
  635822:	00 
  635823:	48 8b 0a             	mov    (%rdx),%rcx
  635826:	e9 07 fd ff ff       	jmpq   635532 <mkl_blas_avx_xcgemv+0x6d2>
  63582b:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  635830:	48 8b 45 18          	mov    0x18(%rbp),%rax
  635834:	4c 8b 6d 10          	mov    0x10(%rbp),%r13
  635838:	48 8b bc 24 68 04 00 	mov    0x468(%rsp),%rdi
  63583f:	00 
  635840:	4c 8b 24 24          	mov    (%rsp),%r12
  635844:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
  635849:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
  63584e:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  635853:	4c 8b 84 24 60 04 00 	mov    0x460(%rsp),%r8
  63585a:	00 
  63585b:	48 8b 00             	mov    (%rax),%rax
  63585e:	48 89 c2             	mov    %rax,%rdx
  635861:	49 ff c3             	inc    %r11
  635864:	48 c1 e2 07          	shl    $0x7,%rdx
  635868:	49 83 c1 80          	add    $0xffffffffffffff80,%r9
  63586c:	4c 03 64 24 38       	add    0x38(%rsp),%r12
  635871:	49 81 c2 80 00 00 00 	add    $0x80,%r10
  635878:	48 03 fa             	add    %rdx,%rdi
  63587b:	4c 3b 5c 24 28       	cmp    0x28(%rsp),%r11
  635880:	0f 83 a7 05 00 00    	jae    635e2d <mkl_blas_avx_xcgemv+0xfcd>
  635886:	48 8b 94 24 88 04 00 	mov    0x488(%rsp),%rdx
  63588d:	00 
  63588e:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
  635893:	48 8b 0a             	mov    (%rdx),%rcx
  635896:	4c 8b 33             	mov    (%rbx),%r14
  635899:	e9 61 fb ff ff       	jmpq   6353ff <mkl_blas_avx_xcgemv+0x59f>
  63589e:	4d 85 f6             	test   %r14,%r14
  6358a1:	0f 8e 86 05 00 00    	jle    635e2d <mkl_blas_avx_xcgemv+0xfcd>
  6358a7:	49 c1 e7 0a          	shl    $0xa,%r15
  6358ab:	49 8d 7e 7f          	lea    0x7f(%r14),%rdi
  6358af:	48 c1 ef 07          	shr    $0x7,%rdi
  6358b3:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  6358ba:	00 
  6358bb:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  6358c0:	48 89 b4 24 88 04 00 	mov    %rsi,0x488(%rsp)
  6358c7:	00 
  6358c8:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  6358cd:	44 89 a4 24 80 04 00 	mov    %r12d,0x480(%rsp)
  6358d4:	00 
  6358d5:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  6358da:	48 89 84 24 78 04 00 	mov    %rax,0x478(%rsp)
  6358e1:	00 
  6358e2:	4c 89 84 24 60 04 00 	mov    %r8,0x460(%rsp)
  6358e9:	00 
  6358ea:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  6358f1:	00 
  6358f2:	48 8b 34 24          	mov    (%rsp),%rsi
  6358f6:	48 8b bc 24 70 04 00 	mov    0x470(%rsp),%rdi
  6358fd:	00 
  6358fe:	48 8b 9c 24 68 04 00 	mov    0x468(%rsp),%rbx
  635905:	00 
  635906:	49 8d 92 80 00 00 00 	lea    0x80(%r10),%rdx
  63590d:	4c 3b f2             	cmp    %rdx,%r14
  635910:	49 0f 4c d6          	cmovl  %r14,%rdx
  635914:	49 03 d1             	add    %r9,%rdx
  635917:	48 85 d2             	test   %rdx,%rdx
  63591a:	0f 8e e6 09 00 00    	jle    636306 <mkl_blas_avx_xcgemv+0x14a6>
  635920:	48 83 fa 04          	cmp    $0x4,%rdx
  635924:	0f 8c d4 09 00 00    	jl     6362fe <mkl_blas_avx_xcgemv+0x149e>
  63592a:	49 89 d4             	mov    %rdx,%r12
  63592d:	45 33 c0             	xor    %r8d,%r8d
  635930:	48 89 bc 24 70 04 00 	mov    %rdi,0x470(%rsp)
  635937:	00 
  635938:	49 83 e4 fc          	and    $0xfffffffffffffffc,%r12
  63593c:	4c 8b 7d 28          	mov    0x28(%rbp),%r15
  635940:	48 89 f8             	mov    %rdi,%rax
  635943:	4c 89 ef             	mov    %r13,%rdi
  635946:	4d 8d 74 c7 f8       	lea    -0x8(%r15,%rax,8),%r14
  63594b:	c4 c1 7b 10 06       	vmovsd (%r14),%xmm0
  635950:	4a 8d 04 a8          	lea    (%rax,%r13,4),%rax
  635954:	48 c1 e7 04          	shl    $0x4,%rdi
  635958:	c4 81 79 16 0c ee    	vmovhpd (%r14,%r13,8),%xmm0,%xmm1
  63595e:	4c 03 f7             	add    %rdi,%r14
  635961:	c4 c1 7b 10 16       	vmovsd (%r14),%xmm2
  635966:	c4 81 69 16 1c ee    	vmovhpd (%r14,%r13,8),%xmm2,%xmm3
  63596c:	c4 e3 75 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm1,%ymm4
  635972:	c4 a1 7c 11 64 c4 60 	vmovups %ymm4,0x60(%rsp,%r8,8)
  635979:	49 83 c0 04          	add    $0x4,%r8
  63597d:	4d 3b c4             	cmp    %r12,%r8
  635980:	72 c1                	jb     635943 <mkl_blas_avx_xcgemv+0xae3>
  635982:	48 8b bc 24 70 04 00 	mov    0x470(%rsp),%rdi
  635989:	00 
  63598a:	4d 89 ef             	mov    %r13,%r15
  63598d:	4d 0f af fc          	imul   %r12,%r15
  635991:	4c 3b e2             	cmp    %rdx,%r12
  635994:	73 37                	jae    6359cd <mkl_blas_avx_xcgemv+0xb6d>
  635996:	4e 8d 34 ed 00 00 00 	lea    0x0(,%r13,8),%r14
  63599d:	00 
  63599e:	49 f7 de             	neg    %r14
  6359a1:	48 8d 04 fd 00 00 00 	lea    0x0(,%rdi,8),%rax
  6359a8:	00 
  6359a9:	4c 03 75 28          	add    0x28(%rbp),%r14
  6359ad:	4e 8d 04 e8          	lea    (%rax,%r13,8),%r8
  6359b1:	4d 03 f0             	add    %r8,%r14
  6359b4:	4b 8d 04 fe          	lea    (%r14,%r15,8),%rax
  6359b8:	4c 8b 40 f8          	mov    -0x8(%rax),%r8
  6359bc:	4a 8d 04 e8          	lea    (%rax,%r13,8),%rax
  6359c0:	4e 89 44 e4 60       	mov    %r8,0x60(%rsp,%r12,8)
  6359c5:	49 ff c4             	inc    %r12
  6359c8:	4c 3b e2             	cmp    %rdx,%r12
  6359cb:	72 eb                	jb     6359b8 <mkl_blas_avx_xcgemv+0xb58>
  6359cd:	48 85 c9             	test   %rcx,%rcx
  6359d0:	0f 8e ce 02 00 00    	jle    635ca4 <mkl_blas_avx_xcgemv+0xe44>
  6359d6:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  6359db:	49 b8 77 be 9f 1a 2f 	movabs $0x624dd2f1a9fbe77,%r8
  6359e2:	dd 24 06 
  6359e5:	48 8d 81 e7 03 00 00 	lea    0x3e7(%rcx),%rax
  6359ec:	49 f7 e0             	mul    %r8
  6359ef:	49 89 ce             	mov    %rcx,%r14
  6359f2:	45 33 e4             	xor    %r12d,%r12d
  6359f5:	4c 2b f2             	sub    %rdx,%r14
  6359f8:	49 81 c6 e7 03 00 00 	add    $0x3e7,%r14
  6359ff:	49 d1 ee             	shr    %r14
  635a02:	4c 8b ac 24 60 04 00 	mov    0x460(%rsp),%r13
  635a09:	00 
  635a0a:	49 03 d6             	add    %r14,%rdx
  635a0d:	48 c1 ea 09          	shr    $0x9,%rdx
  635a11:	45 33 f6             	xor    %r14d,%r14d
  635a14:	48 89 34 24          	mov    %rsi,(%rsp)
  635a18:	45 33 ff             	xor    %r15d,%r15d
  635a1b:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
  635a20:	4c 03 ee             	add    %rsi,%r13
  635a23:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  635a28:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  635a2d:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  635a32:	48 89 bc 24 70 04 00 	mov    %rdi,0x470(%rsp)
  635a39:	00 
  635a3a:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
  635a3f:	4c 8b 55 18          	mov    0x18(%rbp),%r10
  635a43:	49 8d 96 e8 03 00 00 	lea    0x3e8(%r14),%rdx
  635a4a:	48 3b ca             	cmp    %rdx,%rcx
  635a4d:	48 0f 4c d1          	cmovl  %rcx,%rdx
  635a51:	49 03 d7             	add    %r15,%rdx
  635a54:	48 89 94 24 98 04 00 	mov    %rdx,0x498(%rsp)
  635a5b:	00 
  635a5c:	48 85 d2             	test   %rdx,%rdx
  635a5f:	0f 8e a3 00 00 00    	jle    635b08 <mkl_blas_avx_xcgemv+0xca8>
  635a65:	48 83 fa 04          	cmp    $0x4,%rdx
  635a69:	0f 8c 88 08 00 00    	jl     6362f7 <mkl_blas_avx_xcgemv+0x1497>
  635a6f:	48 89 d0             	mov    %rdx,%rax
  635a72:	45 33 c0             	xor    %r8d,%r8d
  635a75:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  635a79:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  635a7d:	48 89 df             	mov    %rbx,%rdi
  635a80:	49 89 f1             	mov    %rsi,%r9
  635a83:	4c 8d 5c f9 f8       	lea    -0x8(%rcx,%rdi,8),%r11
  635a88:	c4 c1 7b 10 03       	vmovsd (%r11),%xmm0
  635a8d:	48 8d 3c b7          	lea    (%rdi,%rsi,4),%rdi
  635a91:	49 c1 e1 04          	shl    $0x4,%r9
  635a95:	c4 c1 79 16 0c f3    	vmovhpd (%r11,%rsi,8),%xmm0,%xmm1
  635a9b:	4d 03 d9             	add    %r9,%r11
  635a9e:	c4 c1 7b 10 13       	vmovsd (%r11),%xmm2
  635aa3:	c4 c1 69 16 1c f3    	vmovhpd (%r11,%rsi,8),%xmm2,%xmm3
  635aa9:	c4 e3 75 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm1,%ymm4
  635aaf:	c4 a1 7c 11 a4 c4 a0 	vmovups %ymm4,0x4a0(%rsp,%r8,8)
  635ab6:	04 00 00 
  635ab9:	49 83 c0 04          	add    $0x4,%r8
  635abd:	4c 3b c0             	cmp    %rax,%r8
  635ac0:	72 be                	jb     635a80 <mkl_blas_avx_xcgemv+0xc20>
  635ac2:	49 89 f3             	mov    %rsi,%r11
  635ac5:	4c 0f af d8          	imul   %rax,%r11
  635ac9:	48 3b c2             	cmp    %rdx,%rax
  635acc:	73 3a                	jae    635b08 <mkl_blas_avx_xcgemv+0xca8>
  635ace:	4c 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%r9
  635ad5:	00 
  635ad6:	49 f7 d9             	neg    %r9
  635ad9:	48 8d 3c dd 00 00 00 	lea    0x0(,%rbx,8),%rdi
  635ae0:	00 
  635ae1:	4c 03 4d 10          	add    0x10(%rbp),%r9
  635ae5:	4c 8d 04 f7          	lea    (%rdi,%rsi,8),%r8
  635ae9:	4d 03 c8             	add    %r8,%r9
  635aec:	4b 8d 3c d9          	lea    (%r9,%r11,8),%rdi
  635af0:	4c 8b 47 f8          	mov    -0x8(%rdi),%r8
  635af4:	48 8d 3c f7          	lea    (%rdi,%rsi,8),%rdi
  635af8:	4c 89 84 c4 a0 04 00 	mov    %r8,0x4a0(%rsp,%rax,8)
  635aff:	00 
  635b00:	48 ff c0             	inc    %rax
  635b03:	48 3b c2             	cmp    %rdx,%rax
  635b06:	72 e8                	jb     635af0 <mkl_blas_avx_xcgemv+0xc90>
  635b08:	48 8b 84 24 90 04 00 	mov    0x490(%rsp),%rax
  635b0f:	00 
  635b10:	48 8b 30             	mov    (%rax),%rsi
  635b13:	48 89 f2             	mov    %rsi,%rdx
  635b16:	48 c1 ea 3f          	shr    $0x3f,%rdx
  635b1a:	48 03 d6             	add    %rsi,%rdx
  635b1d:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  635b21:	48 3b d6             	cmp    %rsi,%rdx
  635b24:	0f 85 83 00 00 00    	jne    635bad <mkl_blas_avx_xcgemv+0xd4d>
  635b2a:	83 bc 24 80 04 00 00 	cmpl   $0x0,0x480(%rsp)
  635b31:	00 
  635b32:	74 3e                	je     635b72 <mkl_blas_avx_xcgemv+0xd12>
  635b34:	49 89 c0             	mov    %rax,%r8
  635b37:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  635b3b:	4c 89 e9             	mov    %r13,%rcx
  635b3e:	33 c0                	xor    %eax,%eax
  635b40:	4c 8d 5c 24 70       	lea    0x70(%rsp),%r11
  635b45:	48 8d bc 24 a8 04 00 	lea    0x4a8(%rsp),%rdi
  635b4c:	00 
  635b4d:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  635b52:	4c 89 1c 24          	mov    %r11,(%rsp)
  635b56:	4c 8d 8c 24 b0 04 00 	lea    0x4b0(%rsp),%r9
  635b5d:	00 
  635b5e:	48 8b 96 48 04 00 00 	mov    0x448(%rsi),%rdx
  635b65:	c5 f8 77             	vzeroupper 
  635b68:	e8 93 4b 36 02       	callq  299a700 <mkl_blas_avx_cgemv_t_even>
  635b6d:	e9 b9 00 00 00       	jmpq   635c2b <mkl_blas_avx_xcgemv+0xdcb>
  635b72:	49 89 c0             	mov    %rax,%r8
  635b75:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  635b79:	4c 89 e9             	mov    %r13,%rcx
  635b7c:	33 c0                	xor    %eax,%eax
  635b7e:	4c 8d 5c 24 70       	lea    0x70(%rsp),%r11
  635b83:	48 8d bc 24 a8 04 00 	lea    0x4a8(%rsp),%rdi
  635b8a:	00 
  635b8b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  635b90:	4c 89 1c 24          	mov    %r11,(%rsp)
  635b94:	4c 8d 8c 24 b0 04 00 	lea    0x4b0(%rsp),%r9
  635b9b:	00 
  635b9c:	48 8b 96 48 04 00 00 	mov    0x448(%rsi),%rdx
  635ba3:	c5 f8 77             	vzeroupper 
  635ba6:	e8 85 78 36 02       	callq  299d430 <mkl_blas_avx_cgemv_c_even>
  635bab:	eb 7e                	jmp    635c2b <mkl_blas_avx_xcgemv+0xdcb>
  635bad:	83 bc 24 80 04 00 00 	cmpl   $0x0,0x480(%rsp)
  635bb4:	00 
  635bb5:	74 3b                	je     635bf2 <mkl_blas_avx_xcgemv+0xd92>
  635bb7:	49 89 c0             	mov    %rax,%r8
  635bba:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  635bbe:	4c 89 e9             	mov    %r13,%rcx
  635bc1:	33 c0                	xor    %eax,%eax
  635bc3:	4c 8d 5c 24 70       	lea    0x70(%rsp),%r11
  635bc8:	48 8d bc 24 a8 04 00 	lea    0x4a8(%rsp),%rdi
  635bcf:	00 
  635bd0:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  635bd5:	4c 89 1c 24          	mov    %r11,(%rsp)
  635bd9:	4c 8d 8c 24 b0 04 00 	lea    0x4b0(%rsp),%r9
  635be0:	00 
  635be1:	48 8b 96 48 04 00 00 	mov    0x448(%rsi),%rdx
  635be8:	c5 f8 77             	vzeroupper 
  635beb:	e8 e0 3f 36 02       	callq  2999bd0 <mkl_blas_avx_cgemv_t_odd>
  635bf0:	eb 39                	jmp    635c2b <mkl_blas_avx_xcgemv+0xdcb>
  635bf2:	49 89 c0             	mov    %rax,%r8
  635bf5:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  635bf9:	4c 89 e9             	mov    %r13,%rcx
  635bfc:	33 c0                	xor    %eax,%eax
  635bfe:	4c 8d 5c 24 70       	lea    0x70(%rsp),%r11
  635c03:	48 8d bc 24 a8 04 00 	lea    0x4a8(%rsp),%rdi
  635c0a:	00 
  635c0b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  635c10:	4c 89 1c 24          	mov    %r11,(%rsp)
  635c14:	4c 8d 8c 24 b0 04 00 	lea    0x4b0(%rsp),%r9
  635c1b:	00 
  635c1c:	48 8b 96 48 04 00 00 	mov    0x448(%rsi),%rdx
  635c23:	c5 f8 77             	vzeroupper 
  635c26:	e8 d5 6c 36 02       	callq  299c900 <mkl_blas_avx_cgemv_c_odd>
  635c2b:	4c 8b 55 18          	mov    0x18(%rbp),%r10
  635c2f:	48 83 c4 10          	add    $0x10,%rsp
  635c33:	49 ff c4             	inc    %r12
  635c36:	49 81 c7 18 fc ff ff 	add    $0xfffffffffffffc18,%r15
  635c3d:	49 8b 32             	mov    (%r10),%rsi
  635c40:	49 81 c6 e8 03 00 00 	add    $0x3e8,%r14
  635c47:	48 69 c6 e8 03 00 00 	imul   $0x3e8,%rsi,%rax
  635c4e:	49 81 c5 40 1f 00 00 	add    $0x1f40,%r13
  635c55:	48 03 d8             	add    %rax,%rbx
  635c58:	4c 3b 64 24 28       	cmp    0x28(%rsp),%r12
  635c5d:	73 10                	jae    635c6f <mkl_blas_avx_xcgemv+0xe0f>
  635c5f:	48 8b 84 24 88 04 00 	mov    0x488(%rsp),%rax
  635c66:	00 
  635c67:	48 8b 08             	mov    (%rax),%rcx
  635c6a:	e9 d4 fd ff ff       	jmpq   635a43 <mkl_blas_avx_xcgemv+0xbe3>
  635c6f:	48 8b 45 30          	mov    0x30(%rbp),%rax
  635c73:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  635c78:	48 89 74 24 58       	mov    %rsi,0x58(%rsp)
  635c7d:	48 8b 34 24          	mov    (%rsp),%rsi
  635c81:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
  635c86:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
  635c8b:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  635c90:	48 8b bc 24 70 04 00 	mov    0x470(%rsp),%rdi
  635c97:	00 
  635c98:	4c 8b 28             	mov    (%rax),%r13
  635c9b:	48 85 d2             	test   %rdx,%rdx
  635c9e:	0f 8e 4d 01 00 00    	jle    635df1 <mkl_blas_avx_xcgemv+0xf91>
  635ca4:	48 83 fa 08          	cmp    $0x8,%rdx
  635ca8:	0f 8c 42 06 00 00    	jl     6362f0 <mkl_blas_avx_xcgemv+0x1490>
  635cae:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
  635cb2:	48 89 d0             	mov    %rdx,%rax
  635cb5:	4d 89 ef             	mov    %r13,%r15
  635cb8:	4e 8d 34 ed 00 00 00 	lea    0x0(,%r13,8),%r14
  635cbf:	00 
  635cc0:	4d 89 e8             	mov    %r13,%r8
  635cc3:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  635cc7:	49 c1 e7 06          	shl    $0x6,%r15
  635ccb:	45 33 e4             	xor    %r12d,%r12d
  635cce:	49 c1 e0 05          	shl    $0x5,%r8
  635cd2:	48 8d 4c f9 f8       	lea    -0x8(%rcx,%rdi,8),%rcx
  635cd7:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  635cdc:	4b 8d 1c 76          	lea    (%r14,%r14,2),%rbx
  635ce0:	48 89 bc 24 70 04 00 	mov    %rdi,0x470(%rsp)
  635ce7:	00 
  635ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  635cef:	00 
  635cf0:	c4 a1 7c 10 44 e4 60 	vmovups 0x60(%rsp,%r12,8),%ymm0
  635cf7:	4c 89 ef             	mov    %r13,%rdi
  635cfa:	c4 a1 7c 10 8c e4 80 	vmovups 0x80(%rsp,%r12,8),%ymm1
  635d01:	00 00 00 
  635d04:	48 c1 e7 04          	shl    $0x4,%rdi
  635d08:	4e 8d 1c 01          	lea    (%rcx,%r8,1),%r11
  635d0c:	49 83 c4 08          	add    $0x8,%r12
  635d10:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  635d16:	c5 fb 11 01          	vmovsd %xmm0,(%rcx)
  635d1a:	c4 a1 79 17 04 31    	vmovhpd %xmm0,(%rcx,%r14,1)
  635d20:	c5 fb 11 14 0f       	vmovsd %xmm2,(%rdi,%rcx,1)
  635d25:	c5 f9 17 14 0b       	vmovhpd %xmm2,(%rbx,%rcx,1)
  635d2a:	49 03 cf             	add    %r15,%rcx
  635d2d:	c4 e3 7d 19 cb 01    	vextractf128 $0x1,%ymm1,%xmm3
  635d33:	c4 c1 7b 11 0b       	vmovsd %xmm1,(%r11)
  635d38:	c4 81 79 17 0c 33    	vmovhpd %xmm1,(%r11,%r14,1)
  635d3e:	c4 a1 7b 11 1c 1f    	vmovsd %xmm3,(%rdi,%r11,1)
  635d44:	c4 a1 79 17 1c 1b    	vmovhpd %xmm3,(%rbx,%r11,1)
  635d4a:	4c 3b e0             	cmp    %rax,%r12
  635d4d:	72 a1                	jb     635cf0 <mkl_blas_avx_xcgemv+0xe90>
  635d4f:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  635d54:	48 8b bc 24 70 04 00 	mov    0x470(%rsp),%rdi
  635d5b:	00 
  635d5c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  635d60:	48 3b ca             	cmp    %rdx,%rcx
  635d63:	0f 87 88 00 00 00    	ja     635df1 <mkl_blas_avx_xcgemv+0xf91>
  635d69:	48 2b d0             	sub    %rax,%rdx
  635d6c:	48 83 fa 02          	cmp    $0x2,%rdx
  635d70:	0f 8c 73 05 00 00    	jl     6362e9 <mkl_blas_avx_xcgemv+0x1489>
  635d76:	4c 89 eb             	mov    %r13,%rbx
  635d79:	48 89 d1             	mov    %rdx,%rcx
  635d7c:	48 0f af d8          	imul   %rax,%rbx
  635d80:	4c 8b 7d 28          	mov    0x28(%rbp),%r15
  635d84:	48 83 e1 fe          	and    $0xfffffffffffffffe,%rcx
  635d88:	45 33 e4             	xor    %r12d,%r12d
  635d8b:	4c 8d 44 c4 60       	lea    0x60(%rsp,%rax,8),%r8
  635d90:	48 03 df             	add    %rdi,%rbx
  635d93:	c4 81 78 10 04 e0    	vmovups (%r8,%r12,8),%xmm0
  635d99:	4d 8d 74 df f8       	lea    -0x8(%r15,%rbx,8),%r14
  635d9e:	49 83 c4 02          	add    $0x2,%r12
  635da2:	4a 8d 1c 6b          	lea    (%rbx,%r13,2),%rbx
  635da6:	c4 c1 7b 11 06       	vmovsd %xmm0,(%r14)
  635dab:	c4 81 79 17 04 ee    	vmovhpd %xmm0,(%r14,%r13,8)
  635db1:	4c 3b e1             	cmp    %rcx,%r12
  635db4:	72 dd                	jb     635d93 <mkl_blas_avx_xcgemv+0xf33>
  635db6:	4d 89 e8             	mov    %r13,%r8
  635db9:	4c 0f af c1          	imul   %rcx,%r8
  635dbd:	48 3b ca             	cmp    %rdx,%rcx
  635dc0:	73 2f                	jae    635df1 <mkl_blas_avx_xcgemv+0xf91>
  635dc2:	49 89 c4             	mov    %rax,%r12
  635dc5:	48 8d 44 c4 60       	lea    0x60(%rsp,%rax,8),%rax
  635dca:	4d 0f af e5          	imul   %r13,%r12
  635dce:	48 8b 5d 28          	mov    0x28(%rbp),%rbx
  635dd2:	4c 03 e7             	add    %rdi,%r12
  635dd5:	4e 8d 04 c3          	lea    (%rbx,%r8,8),%r8
  635dd9:	4b 8d 1c e0          	lea    (%r8,%r12,8),%rbx
  635ddd:	4c 8b 04 c8          	mov    (%rax,%rcx,8),%r8
  635de1:	48 ff c1             	inc    %rcx
  635de4:	4c 89 43 f8          	mov    %r8,-0x8(%rbx)
  635de8:	4a 8d 1c eb          	lea    (%rbx,%r13,8),%rbx
  635dec:	48 3b ca             	cmp    %rdx,%rcx
  635def:	72 ec                	jb     635ddd <mkl_blas_avx_xcgemv+0xf7d>
  635df1:	4c 89 e8             	mov    %r13,%rax
  635df4:	49 ff c3             	inc    %r11
  635df7:	48 c1 e0 07          	shl    $0x7,%rax
  635dfb:	49 83 c1 80          	add    $0xffffffffffffff80,%r9
  635dff:	48 03 74 24 38       	add    0x38(%rsp),%rsi
  635e04:	49 81 c2 80 00 00 00 	add    $0x80,%r10
  635e0b:	48 03 f8             	add    %rax,%rdi
  635e0e:	4c 3b 5c 24 20       	cmp    0x20(%rsp),%r11
  635e13:	73 18                	jae    635e2d <mkl_blas_avx_xcgemv+0xfcd>
  635e15:	48 8b 8c 24 88 04 00 	mov    0x488(%rsp),%rcx
  635e1c:	00 
  635e1d:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  635e22:	48 8b 09             	mov    (%rcx),%rcx
  635e25:	4c 8b 30             	mov    (%rax),%r14
  635e28:	e9 d1 fa ff ff       	jmpq   6358fe <mkl_blas_avx_xcgemv+0xa9e>
  635e2d:	c5 f8 77             	vzeroupper 
  635e30:	48 81 c4 f8 23 00 00 	add    $0x23f8,%rsp
  635e37:	5b                   	pop    %rbx
  635e38:	41 5f                	pop    %r15
  635e3a:	41 5e                	pop    %r14
  635e3c:	41 5d                	pop    %r13
  635e3e:	41 5c                	pop    %r12
  635e40:	48 89 ec             	mov    %rbp,%rsp
  635e43:	5d                   	pop    %rbp
  635e44:	c3                   	retq   
  635e45:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  635e4c:	00 00 
  635e4e:	e9 9a f2 ff ff       	jmpq   6350ed <mkl_blas_avx_xcgemv+0x28d>
  635e53:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  635e5a:	00 00 
  635e5c:	e9 9f f4 ff ff       	jmpq   635300 <mkl_blas_avx_xcgemv+0x4a0>
  635e61:	c5 e8 c2 cb 04       	vcmpneqps %xmm3,%xmm2,%xmm1
  635e66:	c5 79 d7 d9          	vpmovmskb %xmm1,%r11d
  635e6a:	45 84 db             	test   %r11b,%r11b
  635e6d:	0f 85 0c 01 00 00    	jne    635f7f <mkl_blas_avx_xcgemv+0x111f>
  635e73:	4d 85 d2             	test   %r10,%r10
  635e76:	0f 8e b5 02 00 00    	jle    636131 <mkl_blas_avx_xcgemv+0x12d1>
  635e7c:	49 83 fa 08          	cmp    $0x8,%r10
  635e80:	0f 8c 55 04 00 00    	jl     6362db <mkl_blas_avx_xcgemv+0x147b>
  635e86:	4d 89 d3             	mov    %r10,%r11
  635e89:	49 83 e3 f8          	and    $0xfffffffffffffff8,%r11
  635e8d:	c5 f4 57 c9          	vxorps %ymm1,%ymm1,%ymm1
  635e91:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  635e96:	45 33 db             	xor    %r11d,%r11d
  635e99:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  635ea0:	00 
  635ea1:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  635ea6:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
  635eaa:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  635eae:	c4 a1 78 11 04 df    	vmovups %xmm0,(%rdi,%r11,8)
  635eb4:	c4 a1 78 11 44 df 20 	vmovups %xmm0,0x20(%rdi,%r11,8)
  635ebb:	c4 a3 7d 19 4c df 10 	vextractf128 $0x1,%ymm1,0x10(%rdi,%r11,8)
  635ec2:	01 
  635ec3:	c4 a3 7d 19 4c df 30 	vextractf128 $0x1,%ymm1,0x30(%rdi,%r11,8)
  635eca:	01 
  635ecb:	49 83 c3 08          	add    $0x8,%r11
  635ecf:	4c 3b db             	cmp    %rbx,%r11
  635ed2:	72 da                	jb     635eae <mkl_blas_avx_xcgemv+0x104e>
  635ed4:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  635edb:	00 
  635edc:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
  635ee1:	4d 8d 5b 01          	lea    0x1(%r11),%r11
  635ee5:	4d 3b da             	cmp    %r10,%r11
  635ee8:	0f 87 43 02 00 00    	ja     636131 <mkl_blas_avx_xcgemv+0x12d1>
  635eee:	4c 2b 54 24 08       	sub    0x8(%rsp),%r10
  635ef3:	49 83 fa 02          	cmp    $0x2,%r10
  635ef7:	0f 8c 17 04 00 00    	jl     636314 <mkl_blas_avx_xcgemv+0x14b4>
  635efd:	4d 89 d3             	mov    %r10,%r11
  635f00:	49 83 e3 fe          	and    $0xfffffffffffffffe,%r11
  635f04:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  635f08:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  635f0d:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  635f11:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  635f16:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  635f1d:	00 
  635f1e:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  635f25:	00 
  635f26:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  635f2b:	4d 8d 1c fb          	lea    (%r11,%rdi,8),%r11
  635f2f:	48 8b 3c 24          	mov    (%rsp),%rdi
  635f33:	c4 c1 78 11 04 fb    	vmovups %xmm0,(%r11,%rdi,8)
  635f39:	48 83 c7 02          	add    $0x2,%rdi
  635f3d:	48 3b fb             	cmp    %rbx,%rdi
  635f40:	72 f1                	jb     635f33 <mkl_blas_avx_xcgemv+0x10d3>
  635f42:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  635f47:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  635f4e:	00 
  635f4f:	4c 3b 54 24 10       	cmp    0x10(%rsp),%r10
  635f54:	0f 86 d7 01 00 00    	jbe    636131 <mkl_blas_avx_xcgemv+0x12d1>
  635f5a:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  635f5e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  635f63:	4d 8d 1c fb          	lea    (%r11,%rdi,8),%r11
  635f67:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  635f6c:	c4 c1 7b 11 1c fb    	vmovsd %xmm3,(%r11,%rdi,8)
  635f72:	48 ff c7             	inc    %rdi
  635f75:	49 3b fa             	cmp    %r10,%rdi
  635f78:	72 f2                	jb     635f6c <mkl_blas_avx_xcgemv+0x110c>
  635f7a:	e9 b2 01 00 00       	jmpq   636131 <mkl_blas_avx_xcgemv+0x12d1>
  635f7f:	4d 85 d2             	test   %r10,%r10
  635f82:	0f 8e a9 01 00 00    	jle    636131 <mkl_blas_avx_xcgemv+0x12d1>
  635f88:	49 83 fa 08          	cmp    $0x8,%r10
  635f8c:	0f 8c 1e 03 00 00    	jl     6362b0 <mkl_blas_avx_xcgemv+0x1450>
  635f92:	4d 89 d3             	mov    %r10,%r11
  635f95:	49 83 e3 f8          	and    $0xfffffffffffffff8,%r11
  635f99:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  635f9e:	45 33 db             	xor    %r11d,%r11d
  635fa1:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  635fa8:	00 
  635fa9:	c5 fe 16 c8          	vmovshdup %ymm0,%ymm1
  635fad:	c5 fe 12 c0          	vmovsldup %ymm0,%ymm0
  635fb1:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  635fb6:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
  635fba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  635fc0:	c4 a1 78 10 1c df    	vmovups (%rdi,%r11,8),%xmm3
  635fc6:	c4 21 78 10 4c df 20 	vmovups 0x20(%rdi,%r11,8),%xmm9
  635fcd:	c4 a3 65 18 64 df 10 	vinsertf128 $0x1,0x10(%rdi,%r11,8),%ymm3,%ymm4
  635fd4:	01 
  635fd5:	c4 23 35 18 54 df 30 	vinsertf128 $0x1,0x30(%rdi,%r11,8),%ymm9,%ymm10
  635fdc:	01 
  635fdd:	c5 dc c6 ec b1       	vshufps $0xb1,%ymm4,%ymm4,%ymm5
  635fe2:	c4 41 2c c6 da b1    	vshufps $0xb1,%ymm10,%ymm10,%ymm11
  635fe8:	c5 fc 59 f4          	vmulps %ymm4,%ymm0,%ymm6
  635fec:	c5 f4 59 fd          	vmulps %ymm5,%ymm1,%ymm7
  635ff0:	c4 41 7c 59 e2       	vmulps %ymm10,%ymm0,%ymm12
  635ff5:	c4 41 74 59 eb       	vmulps %ymm11,%ymm1,%ymm13
  635ffa:	c5 4f d0 c7          	vaddsubps %ymm7,%ymm6,%ymm8
  635ffe:	c4 41 1f d0 f5       	vaddsubps %ymm13,%ymm12,%ymm14
  636003:	c4 21 78 11 04 df    	vmovups %xmm8,(%rdi,%r11,8)
  636009:	c4 21 78 11 74 df 20 	vmovups %xmm14,0x20(%rdi,%r11,8)
  636010:	c4 23 7d 19 44 df 10 	vextractf128 $0x1,%ymm8,0x10(%rdi,%r11,8)
  636017:	01 
  636018:	c4 23 7d 19 74 df 30 	vextractf128 $0x1,%ymm14,0x30(%rdi,%r11,8)
  63601f:	01 
  636020:	49 83 c3 08          	add    $0x8,%r11
  636024:	4c 3b db             	cmp    %rbx,%r11
  636027:	72 97                	jb     635fc0 <mkl_blas_avx_xcgemv+0x1160>
  636029:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  636030:	00 
  636031:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
  636036:	4d 8d 5b 01          	lea    0x1(%r11),%r11
  63603a:	4d 3b da             	cmp    %r10,%r11
  63603d:	0f 87 ee 00 00 00    	ja     636131 <mkl_blas_avx_xcgemv+0x12d1>
  636043:	4c 2b 54 24 08       	sub    0x8(%rsp),%r10
  636048:	49 83 fa 02          	cmp    $0x2,%r10
  63604c:	0f 8c 50 02 00 00    	jl     6362a2 <mkl_blas_avx_xcgemv+0x1442>
  636052:	4d 89 d3             	mov    %r10,%r11
  636055:	49 83 e3 fe          	and    $0xfffffffffffffffe,%r11
  636059:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
  63605e:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  636062:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  636067:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  63606e:	00 
  63606f:	c5 fb 12 c2          	vmovddup %xmm2,%xmm0
  636073:	48 89 9c 24 90 04 00 	mov    %rbx,0x490(%rsp)
  63607a:	00 
  63607b:	4d 8d 1c fb          	lea    (%r11,%rdi,8),%r11
  63607f:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
  636083:	c5 fa 12 c0          	vmovsldup %xmm0,%xmm0
  636087:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  63608c:	48 8b 3c 24          	mov    (%rsp),%rdi
  636090:	c4 c1 78 10 1b       	vmovups (%r11),%xmm3
  636095:	c5 e0 c6 e3 b1       	vshufps $0xb1,%xmm3,%xmm3,%xmm4
  63609a:	48 83 c7 02          	add    $0x2,%rdi
  63609e:	c5 f8 59 eb          	vmulps %xmm3,%xmm0,%xmm5
  6360a2:	c5 f0 59 f4          	vmulps %xmm4,%xmm1,%xmm6
  6360a6:	c5 d3 d0 fe          	vaddsubps %xmm6,%xmm5,%xmm7
  6360aa:	c4 c1 78 11 3b       	vmovups %xmm7,(%r11)
  6360af:	49 83 c3 10          	add    $0x10,%r11
  6360b3:	48 3b fb             	cmp    %rbx,%rdi
  6360b6:	72 d8                	jb     636090 <mkl_blas_avx_xcgemv+0x1230>
  6360b8:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  6360bd:	48 8b 9c 24 90 04 00 	mov    0x490(%rsp),%rbx
  6360c4:	00 
  6360c5:	4c 3b 54 24 10       	cmp    0x10(%rsp),%r10
  6360ca:	76 65                	jbe    636131 <mkl_blas_avx_xcgemv+0x12d1>
  6360cc:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
  6360d1:	4c 8b 55 28          	mov    0x28(%rbp),%r10
  6360d5:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
  6360da:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  6360df:	c5 e8 c6 c2 b1       	vshufps $0xb1,%xmm2,%xmm2,%xmm0
  6360e4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  6360e9:	4f 8d 2c da          	lea    (%r10,%r11,8),%r13
  6360ed:	49 89 fa             	mov    %rdi,%r10
  6360f0:	4f 8d 54 d5 00       	lea    0x0(%r13,%r10,8),%r10
  6360f5:	4c 89 14 24          	mov    %r10,(%rsp)
  6360f9:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  6360fe:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  636103:	4c 8b 1c 24          	mov    (%rsp),%r11
  636107:	c4 c1 7b 10 1b       	vmovsd (%r11),%xmm3
  63610c:	48 ff c7             	inc    %rdi
  63610f:	c5 fa 12 cb          	vmovsldup %xmm3,%xmm1
  636113:	c5 fa 16 e3          	vmovshdup %xmm3,%xmm4
  636117:	c5 f0 59 ea          	vmulps %xmm2,%xmm1,%xmm5
  63611b:	c5 d8 59 f0          	vmulps %xmm0,%xmm4,%xmm6
  63611f:	c5 d3 d0 fe          	vaddsubps %xmm6,%xmm5,%xmm7
  636123:	c4 c1 7b 11 3b       	vmovsd %xmm7,(%r11)
  636128:	49 83 c3 08          	add    $0x8,%r11
  63612c:	49 3b fa             	cmp    %r10,%rdi
  63612f:	72 d6                	jb     636107 <mkl_blas_avx_xcgemv+0x12a7>
  636131:	44 8a 54 24 60       	mov    0x60(%rsp),%r10b
  636136:	45 84 d2             	test   %r10b,%r10b
  636139:	0f 84 ee fc ff ff    	je     635e2d <mkl_blas_avx_xcgemv+0xfcd>
  63613f:	48 83 7c 24 58 01    	cmpq   $0x1,0x58(%rsp)
  636145:	0f 85 4d f2 ff ff    	jne    635398 <mkl_blas_avx_xcgemv+0x538>
  63614b:	4d 89 fa             	mov    %r15,%r10
  63614e:	49 c1 ea 3f          	shr    $0x3f,%r10
  636152:	4d 03 d7             	add    %r15,%r10
  636155:	49 83 e2 fe          	and    $0xfffffffffffffffe,%r10
  636159:	4d 3b d7             	cmp    %r15,%r10
  63615c:	0f 85 a0 00 00 00    	jne    636202 <mkl_blas_avx_xcgemv+0x13a2>
  636162:	45 84 c9             	test   %r9b,%r9b
  636165:	75 69                	jne    6361d0 <mkl_blas_avx_xcgemv+0x1370>
  636167:	45 85 e4             	test   %r12d,%r12d
  63616a:	74 32                	je     63619e <mkl_blas_avx_xcgemv+0x133e>
  63616c:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  636170:	48 89 f7             	mov    %rsi,%rdi
  636173:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  636177:	48 89 d6             	mov    %rdx,%rsi
  63617a:	48 89 c2             	mov    %rax,%rdx
  63617d:	4c 89 c1             	mov    %r8,%rcx
  636180:	49 89 d8             	mov    %rbx,%r8
  636183:	33 c0                	xor    %eax,%eax
  636185:	4c 89 0c 24          	mov    %r9,(%rsp)
  636189:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
  63618d:	c5 f8 77             	vzeroupper 
  636190:	e8 6b 45 36 02       	callq  299a700 <mkl_blas_avx_cgemv_t_even>
  636195:	48 83 c4 10          	add    $0x10,%rsp
  636199:	e9 8f fc ff ff       	jmpq   635e2d <mkl_blas_avx_xcgemv+0xfcd>
  63619e:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  6361a2:	48 89 f7             	mov    %rsi,%rdi
  6361a5:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  6361a9:	48 89 d6             	mov    %rdx,%rsi
  6361ac:	48 89 c2             	mov    %rax,%rdx
  6361af:	4c 89 c1             	mov    %r8,%rcx
  6361b2:	49 89 d8             	mov    %rbx,%r8
  6361b5:	33 c0                	xor    %eax,%eax
  6361b7:	4c 89 0c 24          	mov    %r9,(%rsp)
  6361bb:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
  6361bf:	c5 f8 77             	vzeroupper 
  6361c2:	e8 69 72 36 02       	callq  299d430 <mkl_blas_avx_cgemv_c_even>
  6361c7:	48 83 c4 10          	add    $0x10,%rsp
  6361cb:	e9 5d fc ff ff       	jmpq   635e2d <mkl_blas_avx_xcgemv+0xfcd>
  6361d0:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  6361d4:	48 89 f7             	mov    %rsi,%rdi
  6361d7:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  6361db:	48 89 d6             	mov    %rdx,%rsi
  6361de:	48 89 c2             	mov    %rax,%rdx
  6361e1:	4c 89 c1             	mov    %r8,%rcx
  6361e4:	49 89 d8             	mov    %rbx,%r8
  6361e7:	33 c0                	xor    %eax,%eax
  6361e9:	4c 89 0c 24          	mov    %r9,(%rsp)
  6361ed:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
  6361f1:	c5 f8 77             	vzeroupper 
  6361f4:	e8 77 5b 36 02       	callq  299bd70 <mkl_blas_avx_cgemv_n_even>
  6361f9:	48 83 c4 10          	add    $0x10,%rsp
  6361fd:	e9 2b fc ff ff       	jmpq   635e2d <mkl_blas_avx_xcgemv+0xfcd>
  636202:	45 84 c9             	test   %r9b,%r9b
  636205:	75 69                	jne    636270 <mkl_blas_avx_xcgemv+0x1410>
  636207:	45 85 e4             	test   %r12d,%r12d
  63620a:	74 32                	je     63623e <mkl_blas_avx_xcgemv+0x13de>
  63620c:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  636210:	48 89 f7             	mov    %rsi,%rdi
  636213:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  636217:	48 89 d6             	mov    %rdx,%rsi
  63621a:	48 89 c2             	mov    %rax,%rdx
  63621d:	4c 89 c1             	mov    %r8,%rcx
  636220:	49 89 d8             	mov    %rbx,%r8
  636223:	33 c0                	xor    %eax,%eax
  636225:	4c 89 0c 24          	mov    %r9,(%rsp)
  636229:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
  63622d:	c5 f8 77             	vzeroupper 
  636230:	e8 9b 39 36 02       	callq  2999bd0 <mkl_blas_avx_cgemv_t_odd>
  636235:	48 83 c4 10          	add    $0x10,%rsp
  636239:	e9 ef fb ff ff       	jmpq   635e2d <mkl_blas_avx_xcgemv+0xfcd>
  63623e:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  636242:	48 89 f7             	mov    %rsi,%rdi
  636245:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  636249:	48 89 d6             	mov    %rdx,%rsi
  63624c:	48 89 c2             	mov    %rax,%rdx
  63624f:	4c 89 c1             	mov    %r8,%rcx
  636252:	49 89 d8             	mov    %rbx,%r8
  636255:	33 c0                	xor    %eax,%eax
  636257:	4c 89 0c 24          	mov    %r9,(%rsp)
  63625b:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
  63625f:	c5 f8 77             	vzeroupper 
  636262:	e8 99 66 36 02       	callq  299c900 <mkl_blas_avx_cgemv_c_odd>
  636267:	48 83 c4 10          	add    $0x10,%rsp
  63626b:	e9 bd fb ff ff       	jmpq   635e2d <mkl_blas_avx_xcgemv+0xfcd>
  636270:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  636274:	48 89 f7             	mov    %rsi,%rdi
  636277:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
  63627b:	48 89 d6             	mov    %rdx,%rsi
  63627e:	48 89 c2             	mov    %rax,%rdx
  636281:	4c 89 c1             	mov    %r8,%rcx
  636284:	49 89 d8             	mov    %rbx,%r8
  636287:	33 c0                	xor    %eax,%eax
  636289:	4c 89 0c 24          	mov    %r9,(%rsp)
  63628d:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
  636291:	c5 f8 77             	vzeroupper 
  636294:	e8 d7 4e 36 02       	callq  299b170 <mkl_blas_avx_cgemv_n_odd>
  636299:	48 83 c4 10          	add    $0x10,%rsp
  63629d:	e9 8b fb ff ff       	jmpq   635e2d <mkl_blas_avx_xcgemv+0xfcd>
  6362a2:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  6362a9:	00 00 
  6362ab:	e9 15 fe ff ff       	jmpq   6360c5 <mkl_blas_avx_xcgemv+0x1265>
  6362b0:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  6362b7:	00 00 
  6362b9:	e9 73 fd ff ff       	jmpq   636031 <mkl_blas_avx_xcgemv+0x11d1>
  6362be:	33 d2                	xor    %edx,%edx
  6362c0:	e9 ec f4 ff ff       	jmpq   6357b1 <mkl_blas_avx_xcgemv+0x951>
  6362c5:	33 c9                	xor    %ecx,%ecx
  6362c7:	e9 88 f4 ff ff       	jmpq   635754 <mkl_blas_avx_xcgemv+0x8f4>
  6362cc:	33 d2                	xor    %edx,%edx
  6362ce:	e9 df f2 ff ff       	jmpq   6355b2 <mkl_blas_avx_xcgemv+0x752>
  6362d3:	45 33 ff             	xor    %r15d,%r15d
  6362d6:	e9 b4 f1 ff ff       	jmpq   63548f <mkl_blas_avx_xcgemv+0x62f>
  6362db:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  6362e2:	00 00 
  6362e4:	e9 f3 fb ff ff       	jmpq   635edc <mkl_blas_avx_xcgemv+0x107c>
  6362e9:	33 c9                	xor    %ecx,%ecx
  6362eb:	e9 c6 fa ff ff       	jmpq   635db6 <mkl_blas_avx_xcgemv+0xf56>
  6362f0:	33 c0                	xor    %eax,%eax
  6362f2:	e9 65 fa ff ff       	jmpq   635d5c <mkl_blas_avx_xcgemv+0xefc>
  6362f7:	33 c0                	xor    %eax,%eax
  6362f9:	e9 c4 f7 ff ff       	jmpq   635ac2 <mkl_blas_avx_xcgemv+0xc62>
  6362fe:	45 33 e4             	xor    %r12d,%r12d
  636301:	e9 84 f6 ff ff       	jmpq   63598a <mkl_blas_avx_xcgemv+0xb2a>
  636306:	48 85 c9             	test   %rcx,%rcx
  636309:	0f 8e e2 fa ff ff    	jle    635df1 <mkl_blas_avx_xcgemv+0xf91>
  63630f:	e9 c2 f6 ff ff       	jmpq   6359d6 <mkl_blas_avx_xcgemv+0xb76>
  636314:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  63631b:	00 00 
  63631d:	e9 2d fc ff ff       	jmpq   635f4f <mkl_blas_avx_xcgemv+0x10ef>
  636322:	4d 89 d3             	mov    %r10,%r11
  636325:	49 f7 db             	neg    %r11
  636328:	49 ff c3             	inc    %r11
  63632b:	4d 0f af dd          	imul   %r13,%r11
  63632f:	49 ff c3             	inc    %r11
  636332:	4c 89 9c 24 70 04 00 	mov    %r11,0x470(%rsp)
  636339:	00 
  63633a:	40 84 ff             	test   %dil,%dil
  63633d:	0f 84 2d f0 ff ff    	je     635370 <mkl_blas_avx_xcgemv+0x510>
  636343:	c5 e8 c2 cb 04       	vcmpneqps %xmm3,%xmm2,%xmm1
  636348:	4c 89 5c 24 48       	mov    %r11,0x48(%rsp)
  63634d:	c5 79 d7 d9          	vpmovmskb %xmm1,%r11d
  636351:	45 84 db             	test   %r11b,%r11b
  636354:	75 2a                	jne    636380 <mkl_blas_avx_xcgemv+0x1520>
  636356:	4d 85 ed             	test   %r13,%r13
  636359:	0f 85 4f ec ff ff    	jne    634fae <mkl_blas_avx_xcgemv+0x14e>
  63635f:	4d 85 d2             	test   %r10,%r10
  636362:	0f 8e 08 f0 ff ff    	jle    635370 <mkl_blas_avx_xcgemv+0x510>
  636368:	4c 8b 55 28          	mov    0x28(%rbp),%r10
  63636c:	4c 8b 9c 24 70 04 00 	mov    0x470(%rsp),%r11
  636373:	00 
  636374:	c4 81 7b 11 5c da f8 	vmovsd %xmm3,-0x8(%r10,%r11,8)
  63637b:	e9 f0 ef ff ff       	jmpq   635370 <mkl_blas_avx_xcgemv+0x510>
  636380:	4d 85 ed             	test   %r13,%r13
  636383:	0f 85 ae ed ff ff    	jne    635137 <mkl_blas_avx_xcgemv+0x2d7>
  636389:	4d 85 d2             	test   %r10,%r10
  63638c:	0f 8e de ef ff ff    	jle    635370 <mkl_blas_avx_xcgemv+0x510>
  636392:	4c 8b 5d 28          	mov    0x28(%rbp),%r11
  636396:	48 8b bc 24 70 04 00 	mov    0x470(%rsp),%rdi
  63639d:	00 
  63639e:	c4 c1 7b 10 4c fb f8 	vmovsd -0x8(%r11,%rdi,8),%xmm1
  6363a5:	49 83 fa 08          	cmp    $0x8,%r10
  6363a9:	0f 8c de 00 00 00    	jl     63648d <mkl_blas_avx_xcgemv+0x162d>
  6363af:	c5 fa 10 1d 29 3b ca 	vmovss 0x3ca3b29(%rip),%xmm3        # 42d9ee0 <__NLITPACK_0.0.1+0x10>
  6363b6:	03 
  6363b7:	4d 89 d3             	mov    %r10,%r11
  6363ba:	c5 f0 16 cb          	vmovlhps %xmm3,%xmm1,%xmm1
  6363be:	49 83 e3 f8          	and    $0xfffffffffffffff8,%r11
  6363c2:	c5 e0 16 e3          	vmovlhps %xmm3,%xmm3,%xmm4
  6363c6:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  6363cd:	00 
  6363ce:	48 8b 3c 24          	mov    (%rsp),%rdi
  6363d2:	c4 e3 75 18 dc 01    	vinsertf128 $0x1,%xmm4,%ymm1,%ymm3
  6363d8:	c5 fe 16 c8          	vmovshdup %ymm0,%ymm1
  6363dc:	c5 fe 12 c0          	vmovsldup %ymm0,%ymm0
  6363e0:	c5 fc 59 e3          	vmulps %ymm3,%ymm0,%ymm4
  6363e4:	48 83 c7 08          	add    $0x8,%rdi
  6363e8:	c5 e4 c6 db b1       	vshufps $0xb1,%ymm3,%ymm3,%ymm3
  6363ed:	c5 f4 59 eb          	vmulps %ymm3,%ymm1,%ymm5
  6363f1:	c5 df d0 f5          	vaddsubps %ymm5,%ymm4,%ymm6
  6363f5:	c5 cc c6 fe b1       	vshufps $0xb1,%ymm6,%ymm6,%ymm7
  6363fa:	c5 7c 59 c6          	vmulps %ymm6,%ymm0,%ymm8
  6363fe:	c5 74 59 cf          	vmulps %ymm7,%ymm1,%ymm9
  636402:	c4 c1 3f d0 d9       	vaddsubps %ymm9,%ymm8,%ymm3
  636407:	49 3b fb             	cmp    %r11,%rdi
  63640a:	72 d4                	jb     6363e0 <mkl_blas_avx_xcgemv+0x1580>
  63640c:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  636412:	c5 e0 c6 eb b1       	vshufps $0xb1,%xmm3,%xmm3,%xmm5
  636417:	c5 fa 12 c1          	vmovsldup %xmm1,%xmm0
  63641b:	c5 fa 16 e1          	vmovshdup %xmm1,%xmm4
  63641f:	c5 f8 59 f3          	vmulps %xmm3,%xmm0,%xmm6
  636423:	c5 d8 59 fd          	vmulps %xmm5,%xmm4,%xmm7
  636427:	c5 4b d0 d7          	vaddsubps %xmm7,%xmm6,%xmm10
  63642b:	c4 41 28 12 ca       	vmovhlps %xmm10,%xmm10,%xmm9
  636430:	c4 41 7a 12 c1       	vmovsldup %xmm9,%xmm8
  636435:	c4 41 7a 16 d9       	vmovshdup %xmm9,%xmm11
  63643a:	c4 41 28 c6 e2 b1    	vshufps $0xb1,%xmm10,%xmm10,%xmm12
  636440:	c4 41 38 59 ea       	vmulps %xmm10,%xmm8,%xmm13
  636445:	c4 41 20 59 f4       	vmulps %xmm12,%xmm11,%xmm14
  63644a:	c4 c1 13 d0 ce       	vaddsubps %xmm14,%xmm13,%xmm1
  63644f:	4d 3b da             	cmp    %r10,%r11
  636452:	73 21                	jae    636475 <mkl_blas_avx_xcgemv+0x1615>
  636454:	c5 e8 c6 c2 b1       	vshufps $0xb1,%xmm2,%xmm2,%xmm0
  636459:	c5 fa 12 d9          	vmovsldup %xmm1,%xmm3
  63645d:	49 ff c3             	inc    %r11
  636460:	c5 fa 16 c9          	vmovshdup %xmm1,%xmm1
  636464:	c5 e0 59 e2          	vmulps %xmm2,%xmm3,%xmm4
  636468:	c5 f0 59 e8          	vmulps %xmm0,%xmm1,%xmm5
  63646c:	c5 db d0 cd          	vaddsubps %xmm5,%xmm4,%xmm1
  636470:	4d 3b da             	cmp    %r10,%r11
  636473:	72 e4                	jb     636459 <mkl_blas_avx_xcgemv+0x15f9>
  636475:	4c 8b 55 28          	mov    0x28(%rbp),%r10
  636479:	4c 8b 9c 24 70 04 00 	mov    0x470(%rsp),%r11
  636480:	00 
  636481:	c4 81 7b 11 4c da f8 	vmovsd %xmm1,-0x8(%r10,%r11,8)
  636488:	e9 e3 ee ff ff       	jmpq   635370 <mkl_blas_avx_xcgemv+0x510>
  63648d:	45 33 db             	xor    %r11d,%r11d
  636490:	eb bd                	jmp    63644f <mkl_blas_avx_xcgemv+0x15ef>
  636492:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  636499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)