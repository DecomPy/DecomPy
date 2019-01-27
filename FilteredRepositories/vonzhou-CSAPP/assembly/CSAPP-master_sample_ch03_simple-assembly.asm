	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_simple                 ## -- Begin function simple
	.p2align	4, 0x90
_simple:                                ## @simple
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi]
	add	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], esi
	mov	esi, dword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
