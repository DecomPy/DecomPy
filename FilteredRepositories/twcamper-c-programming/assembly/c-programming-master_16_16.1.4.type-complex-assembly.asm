	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_make_complex           ## -- Begin function make_complex
	.p2align	4, 0x90
_make_complex:                          ## @make_complex
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 24], xmm0
	movsd	qword ptr [rbp - 32], xmm1
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 16], xmm0
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 8] ## xmm1 = mem[0],zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_add_complex            ## -- Begin function add_complex
	.p2align	4, 0x90
_add_complex:                           ## @add_complex
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 32], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movsd	qword ptr [rbp - 48], xmm2
	movsd	qword ptr [rbp - 40], xmm3
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 48] ## xmm1 = mem[0],zero
	addsd	xmm0, xmm1
	movsd	qword ptr [rbp - 16], xmm0
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 40] ## xmm1 = mem[0],zero
	addsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 8] ## xmm1 = mem[0],zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	mov	dword ptr [rbp - 4], 0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
