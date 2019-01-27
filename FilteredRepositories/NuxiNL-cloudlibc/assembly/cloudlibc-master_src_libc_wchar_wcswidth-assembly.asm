	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcswidth               ## -- Begin function wcswidth
	.p2align	4, 0x90
_wcswidth:                              ## @wcswidth
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 24], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jbe	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 16], rcx
	mov	edi, dword ptr [rax]
	call	_wcwidth
	mov	dword ptr [rbp - 32], eax
	cmp	dword ptr [rbp - 32], -1
	jne	LBB0_6
## %bb.5:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_1
LBB0_7:
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 4], eax
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
