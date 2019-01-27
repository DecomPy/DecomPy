	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_div_mod             ## -- Begin function ft_div_mod
	.p2align	4, 0x90
_ft_div_mod:                            ## @ft_div_mod
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 16], rdx
	mov	qword ptr [rbp - 24], rcx
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rcx], edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
