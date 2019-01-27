	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_is_sort             ## -- Begin function ft_is_sort
	.p2align	4, 0x90
_ft_is_sort:                            ## @ft_is_sort
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	qword ptr [rbp - 32], rdx
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], 0
	cmp	dword ptr [rbp - 20], 2
	jge	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_15
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 36]
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	cmp	eax, edx
	mov	byte ptr [rbp - 41], cl ## 1-byte Spill
	jge	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	cmp	dword ptr [rbp - 40], 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 41], al ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	al, byte ptr [rbp - 41] ## 1-byte Reload
	test	al, 1
	jne	LBB0_6
	jmp	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 36]
	mov	edi, dword ptr [rcx + 4*rdx]
	mov	rcx, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 36]
	add	esi, 1
	movsxd	rdx, esi
	mov	esi, dword ptr [rcx + 4*rdx]
	call	rax
	cmp	eax, 0
	jle	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	dword ptr [rbp - 40], 1
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_3
LBB0_9:
	mov	dword ptr [rbp - 36], 0
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_14
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 36]
	mov	edi, dword ptr [rcx + 4*rdx]
	mov	rcx, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 36]
	add	esi, 1
	movsxd	rdx, esi
	mov	esi, dword ptr [rcx + 4*rdx]
	call	rax
	cmp	eax, 0
	jge	LBB0_13
## %bb.12:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_15
LBB0_13:                                ##   in Loop: Header=BB0_10 Depth=1
	jmp	LBB0_10
LBB0_14:
	mov	dword ptr [rbp - 4], 1
LBB0_15:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
