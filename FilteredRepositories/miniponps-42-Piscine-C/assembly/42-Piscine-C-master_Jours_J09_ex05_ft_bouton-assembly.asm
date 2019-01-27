	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_bouton              ## -- Begin function ft_bouton
	.p2align	4, 0x90
_ft_bouton:                             ## @ft_bouton
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 8]
	cmp	edx, dword ptr [rbp - 12]
	jl	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 16]
	jle	LBB0_4
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jg	LBB0_5
## %bb.3:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 16]
	jl	LBB0_5
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_16
LBB0_5:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jl	LBB0_7
## %bb.6:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	jle	LBB0_9
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jg	LBB0_10
## %bb.8:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	jl	LBB0_10
LBB0_9:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_16
LBB0_10:
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jl	LBB0_12
## %bb.11:
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jle	LBB0_14
LBB0_12:
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jg	LBB0_15
## %bb.13:
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jl	LBB0_15
LBB0_14:
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_16
LBB0_15:
	mov	dword ptr [rbp - 4], 0
LBB0_16:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
