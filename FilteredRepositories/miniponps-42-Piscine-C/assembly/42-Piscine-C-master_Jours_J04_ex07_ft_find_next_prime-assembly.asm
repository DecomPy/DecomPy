	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_is_prime            ## -- Begin function ft_is_prime
	.p2align	4, 0x90
_ft_is_prime:                           ## @ft_is_prime
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], 2
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	ecx, dword ptr [rbp - 16] ## 4-byte Reload
	cmp	ecx, eax
	jge	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_5:
	mov	dword ptr [rbp - 4], 1
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_find_next_prime     ## -- Begin function ft_find_next_prime
	.p2align	4, 0x90
_ft_find_next_prime:                    ## @ft_find_next_prime
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	add	edi, 1
	mov	dword ptr [rbp - 8], edi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	cmp	eax, 0
	je	LBB1_5
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	edi, dword ptr [rbp - 8]
	call	_ft_is_prime
	cmp	eax, 0
	je	LBB1_4
## %bb.3:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_6
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_5:
	mov	dword ptr [rbp - 4], 0
LBB1_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
