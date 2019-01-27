	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_ultimate_div_mod    ## -- Begin function ft_ultimate_div_mod
	.p2align	4, 0x90
_ft_ultimate_div_mod:                   ## @ft_ultimate_div_mod
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	cdq
	idiv	dword ptr [rsi]
	mov	dword ptr [rbp - 20], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	cdq
	idiv	dword ptr [rsi]
	mov	dword ptr [rbp - 24], edx
	mov	edx, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], edx
	mov	edx, dword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
