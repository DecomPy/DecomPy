	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_max                    ## -- Begin function max
	.p2align	4, 0x90
_max:                                   ## @max
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jle	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_max2                   ## -- Begin function max2
	.p2align	4, 0x90
_max2:                                  ## @max2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jge	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_max3                   ## -- Begin function max3
	.p2align	4, 0x90
_max3:                                  ## @max3
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	cmp	edi, dword ptr [rbp - 8]
	jge	LBB2_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
LBB2_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_max4                   ## -- Begin function max4
	.p2align	4, 0x90
_max4:                                  ## @max4
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jge	LBB3_2
## %bb.1:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB3_3
LBB3_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB3_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_max5                   ## -- Begin function max5
	.p2align	4, 0x90
_max5:                                  ## @max5
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jge	LBB4_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB4_3
LBB4_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB4_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_a                      ## @a
	.p2align	2
_a:
	.long	1                       ## 0x1

	.globl	_b                      ## @b
	.p2align	2
_b:
	.long	2                       ## 0x2

	.globl	_c                      ## @c
	.p2align	2
_c:
	.long	3                       ## 0x3


.subsections_via_symbols
