	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strcpy              ## -- Begin function ft_strcpy
	.p2align	4, 0x90
_ft_strcpy:                             ## @ft_strcpy
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], dl
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
