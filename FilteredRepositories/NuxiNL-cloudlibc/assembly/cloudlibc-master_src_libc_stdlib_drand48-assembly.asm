	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function drand48
LCPI0_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI0_1:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_drand48
	.p2align	4, 0x90
_drand48:                               ## @drand48
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	eax, 8
	mov	esi, eax
	lea	rdi, [rbp - 8]
	call	_arc4random_buf
	movaps	xmm0, xmmword ptr [rip + LCPI0_0] ## xmm0 = [1127219200,1160773632,0,0]
	movq	xmm1, qword ptr [rbp - 8] ## xmm1 = mem[0],zero
	punpckldq	xmm1, xmm0      ## xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	xmm0, xmmword ptr [rip + LCPI0_1] ## xmm0 = [4.503600e+15,1.934281e+25]
	subpd	xmm1, xmm0
	haddpd	xmm1, xmm1
	movaps	xmm0, xmm1
	mov	edi, 4294967232
	call	_ldexp
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
