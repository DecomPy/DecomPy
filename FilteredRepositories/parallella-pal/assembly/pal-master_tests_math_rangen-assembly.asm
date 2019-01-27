	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1065353216              ## float 1
LCPI0_1:
	.long	1317011456              ## float 1.07374182E+9
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, rcx
	call	_time
	mov	edx, eax
	mov	edi, edx
	call	_srand
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 100
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	call	_rand
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero,zero,zero
	cvtsi2ss	xmm2, eax
	divss	xmm2, xmm1
	subss	xmm0, xmm2
	movss	dword ptr [rbp - 24], xmm0
	call	_rand
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero,zero,zero
	cvtsi2ss	xmm2, eax
	divss	xmm2, xmm1
	subss	xmm0, xmm2
	movss	dword ptr [rbp - 28], xmm0
	movss	xmm0, dword ptr [rbp - 24] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movss	xmm1, dword ptr [rbp - 28] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	lea	rdi, [rip + L_.str]
	mov	al, 2
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f,%f,0,0\n"


.subsections_via_symbols
