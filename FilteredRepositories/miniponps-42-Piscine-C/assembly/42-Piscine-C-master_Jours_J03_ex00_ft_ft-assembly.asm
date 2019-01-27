	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_ft                  ## -- Begin function ft_ft
	.p2align	4, 0x90
_ft_ft:                                 ## @ft_ft
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 42
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
