	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_strlen              ## -- Begin function ft_strlen
	.p2align	4, 0x90
_ft_strlen:                             ## @ft_strlen
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_strrev              ## -- Begin function ft_strrev
	.p2align	4, 0x90
_ft_strrev:                             ## @ft_strrev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 16], 1
	mov	rdi, qword ptr [rbp - 8]
	call	_ft_strlen
	mov	dword ptr [rbp - 12], eax
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 17], sil
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	byte ptr [rax + rdx], sil
	mov	sil, byte ptr [rbp - 17]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	byte ptr [rax + rdx], sil
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	mov	ecx, dword ptr [rbp - 12]
	add	ecx, -1
	mov	dword ptr [rbp - 12], ecx
	jmp	LBB1_1
LBB1_3:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
