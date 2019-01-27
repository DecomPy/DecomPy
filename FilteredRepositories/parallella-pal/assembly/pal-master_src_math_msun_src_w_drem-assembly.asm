	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_drem                   ## -- Begin function drem
	.p2align	4, 0x90
_drem:                                  ## @drem
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movsd	qword ptr [rbp - 8], xmm0
	movsd	qword ptr [rbp - 16], xmm1
	movsd	xmm0, qword ptr [rbp - 8] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 16] ## xmm1 = mem[0],zero
	call	_remainder
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
