	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_var_prod_ele           ## -- Begin function var_prod_ele
	.p2align	4, 0x90
_var_prod_ele:                          ## @var_prod_ele
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], ecx
	mov	dword ptr [rbp - 32], r8d
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	dword ptr [rbp - 40], 0
	mov	rax, qword ptr [rbp - 16]
	movsxd	r9, dword ptr [rbp - 28]
	imul	r9, rdx
	shl	r9, 2
	add	rax, r9
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 24]
	imul	rdx, rsi, 0
	shl	rdx, 2
	add	rax, rdx
	movsxd	rdx, dword ptr [rbp - 32]
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 56], rax
	mov	ecx, dword ptr [rbp - 4]
	shl	ecx, 2
	mov	dword ptr [rbp - 60], ecx
	mov	dword ptr [rbp - 36], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 60]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 48]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	edx, dword ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 56]
	movsxd	rcx, dword ptr [rbp - 60]
	imul	edx, dword ptr [rax + rcx]
	add	edx, dword ptr [rbp - 40]
	mov	dword ptr [rbp - 40], edx
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 4
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 40]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
