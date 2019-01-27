	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_cread_alt              ## -- Begin function cread_alt
	.p2align	4, 0x90
_cread_alt:                             ## @cread_alt
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
	cmp	qword ptr [rbp - 8], 0
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	jmp	LBB0_3
LBB0_2:
	lea	rax, [rbp - 12]
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	jmp	LBB0_3
LBB0_3:
	mov	rax, qword ptr [rbp - 24] ## 8-byte Reload
	mov	eax, dword ptr [rax]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
