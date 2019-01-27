	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_num_digits             ## -- Begin function num_digits
	.p2align	4, 0x90
_num_digits:                            ## @num_digits
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 10
	mov	dword ptr [rbp - 12], 1
	cmp	dword ptr [rbp - 4], 0
	jge	LBB0_2
## %bb.1:
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 12]
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	sub	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], eax
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	jl	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	imul	eax, dword ptr [rbp - 8], 10
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_3
LBB0_5:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
