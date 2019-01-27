	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcslcat                ## -- Begin function wcslcat
	.p2align	4, 0x90
_wcslcat:                               ## @wcslcat
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 32], 0
	mov	byte ptr [rbp - 49], cl ## 1-byte Spill
	jbe	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 49], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 49] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, -1
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	jmp	LBB0_1
LBB0_5:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 1
	jbe	LBB0_10
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 0
	jne	LBB0_9
## %bb.8:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 48]
	sub	rax, rcx
	sar	rax, 2
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_16
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, -1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB0_6
LBB0_10:
	cmp	qword ptr [rbp - 32], 0
	jbe	LBB0_12
## %bb.11:
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], 0
LBB0_12:
	jmp	LBB0_13
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 0
	je	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_13
LBB0_15:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 48]
	sub	rax, rcx
	sar	rax, 2
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
LBB0_16:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
