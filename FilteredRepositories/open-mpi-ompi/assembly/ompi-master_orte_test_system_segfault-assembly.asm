	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 32], 0
	mov	rsi, qword ptr [rbp - 32]
	movsx	edi, byte ptr [rsi]
	mov	cl, dil
	cvtsi2sd	xmm0, edi
	movsd	qword ptr [rbp - 24], xmm0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
