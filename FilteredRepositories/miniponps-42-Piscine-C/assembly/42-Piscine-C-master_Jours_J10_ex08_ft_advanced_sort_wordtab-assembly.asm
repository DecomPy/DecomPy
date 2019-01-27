	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_advanced_sort_wordtab ## -- Begin function ft_advanced_sort_wordtab
	.p2align	4, 0x90
_ft_advanced_sort_wordtab:              ## @ft_advanced_sort_wordtab
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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	qword ptr [rax + 8*rcx], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_3:
	mov	dword ptr [rbp - 24], 0
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_8
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	mov	rdi, qword ptr [rcx + 8*rdx]
	mov	rcx, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	add	esi, 1
	movsxd	rdx, esi
	mov	rsi, qword ptr [rcx + 8*rdx]
	call	rax
	cmp	eax, 0
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rax + 8*rcx]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 24]
	add	edx, 1
	movsxd	rcx, edx
	mov	rax, qword ptr [rax + 8*rcx]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 24]
	mov	qword ptr [rcx + 8*rsi], rax
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 24]
	add	edx, 1
	movsxd	rsi, edx
	mov	qword ptr [rcx + 8*rsi], rax
	mov	dword ptr [rbp - 24], -1
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_4
LBB0_8:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
