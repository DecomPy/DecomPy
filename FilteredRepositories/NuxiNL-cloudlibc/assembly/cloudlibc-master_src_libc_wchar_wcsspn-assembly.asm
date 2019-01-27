	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcsspn                 ## -- Begin function wcsspn
	.p2align	4, 0x90
_wcsspn:                                ## @wcsspn
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rsi
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 32]
	cmp	dword ptr [rax], 0
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	sar	rax, 2
	pop	rbp
	ret
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=2
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 32], rdx
	cmp	ecx, dword ptr [rax]
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=2
	jmp	LBB0_2
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
