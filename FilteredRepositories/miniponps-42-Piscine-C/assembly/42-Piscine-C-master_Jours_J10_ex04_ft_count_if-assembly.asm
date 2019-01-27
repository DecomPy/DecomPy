	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_count_if            ## -- Begin function ft_count_if
	.p2align	4, 0x90
_ft_count_if:                           ## @ft_count_if
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	cmp	qword ptr [rax + 8*rcx], 0
	je	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	mov	rdi, qword ptr [rcx + 8*rdx]
	call	rax
	cmp	eax, 1
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_1
LBB0_5:
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
