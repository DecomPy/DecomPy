	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strncat             ## -- Begin function ft_strncat
	.p2align	4, 0x90
_ft_strncat:                            ## @ft_strncat
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
	mov	dword ptr [rbp - 28], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_1
LBB0_3:
	mov	dword ptr [rbp - 24], 0
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 29], sil ## 1-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	test	al, 1
	jne	LBB0_7
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	add	esi, dword ptr [rbp - 24]
	movsxd	rcx, esi
	mov	byte ptr [rax + rcx], dl
	mov	esi, dword ptr [rbp - 24]
	add	esi, 1
	mov	dword ptr [rbp - 24], esi
	jmp	LBB0_4
LBB0_8:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, dword ptr [rbp - 24]
	movsxd	rdx, ecx
	mov	byte ptr [rax + rdx], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
