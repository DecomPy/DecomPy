	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcsrchr                ## -- Begin function wcsrchr
	.p2align	4, 0x90
_wcsrchr:                               ## @wcsrchr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 12]
	jne	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 8], rcx
	cmp	dword ptr [rax], 0
	jne	LBB0_5
## %bb.4:
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	ret
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
