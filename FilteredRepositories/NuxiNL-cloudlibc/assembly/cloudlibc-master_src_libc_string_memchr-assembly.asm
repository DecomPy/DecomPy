	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_memchr                 ## -- Begin function memchr
	.p2align	4, 0x90
_memchr:                                ## @memchr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rdx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	jbe	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rax]
	mov	edx, dword ptr [rbp - 20]
	mov	sil, dl
	movzx	edx, sil
	cmp	ecx, edx
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	jmp	LBB0_1
LBB0_5:
	mov	qword ptr [rbp - 8], 0
LBB0_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
