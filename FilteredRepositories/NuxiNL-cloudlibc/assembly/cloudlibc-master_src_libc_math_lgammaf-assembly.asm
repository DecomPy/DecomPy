	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_lgammaf                ## -- Begin function lgammaf
	.p2align	4, 0x90
_lgammaf:                               ## @lgammaf
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movss	dword ptr [rbp - 4], xmm0
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rbp - 8]
	mov	al, 1
	call	_lgammaf_r
	cvtsi2ss	xmm0, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
