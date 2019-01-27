	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_scrambler           ## -- Begin function ft_scrambler
	.p2align	4, 0x90
_ft_scrambler:                          ## @ft_scrambler
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	eax, dword ptr [rcx]
	mov	dword ptr [rbp - 36], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	eax, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 16]
	mov	eax, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	eax, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 16]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
