	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_recursive_power     ## -- Begin function ft_recursive_power
	.p2align	4, 0x90
_ft_recursive_power:                    ## @ft_recursive_power
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
LBB0_2:
	cmp	dword ptr [rbp - 8], 0
	jge	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 8], ecx
	cmp	eax, 1
	jle	LBB0_6
## %bb.5:
	mov	eax, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_ft_recursive_power
	mov	esi, dword ptr [rbp - 12] ## 4-byte Reload
	imul	esi, eax
	mov	dword ptr [rbp - 4], esi
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
