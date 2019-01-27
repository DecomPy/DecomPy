	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_collatz_conjecture  ## -- Begin function ft_collatz_conjecture
	.p2align	4, 0x90
_ft_collatz_conjecture:                 ## @ft_collatz_conjecture
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_7
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 1
	cmp	eax, 0
	je	LBB0_4
## %bb.3:
	imul	eax, dword ptr [rbp - 8], 3
	add	eax, 1
	mov	edi, eax
	call	_ft_collatz_conjecture
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_5
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 1
	mov	edi, eax
	call	_ft_collatz_conjecture
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
LBB0_5:
	jmp	LBB0_6
LBB0_6:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
LBB0_7:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
