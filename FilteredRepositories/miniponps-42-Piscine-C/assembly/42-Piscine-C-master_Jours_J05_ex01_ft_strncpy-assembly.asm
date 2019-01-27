	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strncpy             ## -- Begin function ft_strncpy
	.p2align	4, 0x90
_ft_strncpy:                            ## @ft_strncpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 16]
	mov	eax, dword ptr [rbp - 24]
	mov	esi, eax
	movsx	eax, byte ptr [rdx + rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	setb	cl
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
	mov	edx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
	mov	edx, ecx
	mov	byte ptr [rax + rdx], sil
	mov	ecx, dword ptr [rbp - 24]
	add	ecx, 1
	mov	dword ptr [rbp - 24], ecx
	jmp	LBB0_1
LBB0_5:
	jmp	LBB0_6
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 24]
	mov	esi, eax
	movsx	eax, byte ptr [rdx + rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 26], cl ## 1-byte Spill
	je	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	setb	cl
	mov	byte ptr [rbp - 26], cl ## 1-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_6 Depth=1
	mov	al, byte ptr [rbp - 26] ## 1-byte Reload
	test	al, 1
	jne	LBB0_9
	jmp	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
	mov	edx, ecx
	mov	byte ptr [rax + rdx], 0
	mov	ecx, dword ptr [rbp - 24]
	add	ecx, 1
	mov	dword ptr [rbp - 24], ecx
	jmp	LBB0_6
LBB0_10:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
