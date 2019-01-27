	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_fibonacci           ## -- Begin function ft_fibonacci
	.p2align	4, 0x90
_ft_fibonacci:                          ## @ft_fibonacci
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jge	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_5
LBB0_2:
	cmp	dword ptr [rbp - 8], 1
	jg	LBB0_4
## %bb.3:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_5
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	edi, eax
	call	_ft_fibonacci
	mov	edi, dword ptr [rbp - 8]
	sub	edi, 2
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_fibonacci
	mov	edi, dword ptr [rbp - 12] ## 4-byte Reload
	add	edi, eax
	mov	dword ptr [rbp - 4], edi
LBB0_5:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
