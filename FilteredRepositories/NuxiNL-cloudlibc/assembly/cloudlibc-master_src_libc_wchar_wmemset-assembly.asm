	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wmemset                ## -- Begin function wmemset
	.p2align	4, 0x90
_wmemset:                               ## @wmemset
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rdx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 24], rcx
	cmp	rax, 0
	jbe	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rbp - 32]
	mov	rdx, rcx
	add	rdx, 4
	mov	qword ptr [rbp - 32], rdx
	mov	dword ptr [rcx], eax
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
