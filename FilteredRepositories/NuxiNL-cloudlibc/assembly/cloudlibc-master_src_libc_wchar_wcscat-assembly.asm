	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcscat                 ## -- Begin function wcscat
	.p2align	4, 0x90
_wcscat:                                ## @wcscat
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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_3:
	jmp	LBB0_4
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 16], rdx
	cmp	dword ptr [rax], 0
	jne	LBB0_6
## %bb.5:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_4
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
