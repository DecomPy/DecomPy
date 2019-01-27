	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_sort_ascii          ## -- Begin function ft_sort_ascii
	.p2align	4, 0x90
_ft_sort_ascii:                         ## @ft_sort_ascii
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_3
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	rax, qword ptr [rax + 8*rcx]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8*rcx]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	movsxd	rcx, edx
	mov	rax, qword ptr [rax + 8*rcx]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 16]
	mov	qword ptr [rcx + 8*rsi], rax
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 16]
	add	edx, 1
	movsxd	rsi, edx
	mov	qword ptr [rcx + 8*rsi], rax
	mov	dword ptr [rbp - 16], -1
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_8:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_sort_wordtab        ## -- Begin function ft_sort_wordtab
	.p2align	4, 0x90
_ft_sort_wordtab:                       ## @ft_sort_wordtab
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	cmp	qword ptr [rax + 8*rcx], 0
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB1_1
LBB1_3:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	_ft_sort_ascii
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
