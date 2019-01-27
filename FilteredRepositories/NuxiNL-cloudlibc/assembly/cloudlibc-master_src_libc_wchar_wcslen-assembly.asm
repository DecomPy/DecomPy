	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcslen                 ## -- Begin function wcslen
	.p2align	4, 0x90
_wcslen:                                ## @wcslen
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	sar	rax, 2
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
