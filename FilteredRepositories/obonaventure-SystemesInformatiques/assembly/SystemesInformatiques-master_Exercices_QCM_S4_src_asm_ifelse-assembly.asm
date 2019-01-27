	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_f1                     ## -- Begin function f1
	.p2align	4, 0x90
_f1:                                    ## @f1
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _a]
	cmp	eax, dword ptr [rip + _b]
	jl	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rip + _b]
	add	eax, 1
	mov	dword ptr [rip + _b], eax
LBB0_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f2                     ## -- Begin function f2
	.p2align	4, 0x90
_f2:                                    ## @f2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _b]
	cmp	eax, dword ptr [rip + _a]
	jg	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rip + _b]
	add	eax, 1
	mov	dword ptr [rip + _b], eax
LBB1_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f3                     ## -- Begin function f3
	.p2align	4, 0x90
_f3:                                    ## @f3
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _a]
	cmp	eax, dword ptr [rip + _b]
	jl	LBB2_2
## %bb.1:
	mov	eax, dword ptr [rip + _b]
	add	eax, 1
	mov	dword ptr [rip + _b], eax
	jmp	LBB2_3
LBB2_2:
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
LBB2_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f4                     ## -- Begin function f4
	.p2align	4, 0x90
_f4:                                    ## @f4
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _b]
	cmp	eax, dword ptr [rip + _a]
	jge	LBB3_2
## %bb.1:
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	jmp	LBB3_3
LBB3_2:
	mov	eax, dword ptr [rip + _b]
	add	eax, 1
	mov	dword ptr [rip + _b], eax
LBB3_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f5                     ## -- Begin function f5
	.p2align	4, 0x90
_f5:                                    ## @f5
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _b]
	cmp	eax, dword ptr [rip + _a]
	jle	LBB4_2
## %bb.1:
	mov	eax, dword ptr [rip + _b]
	add	eax, 1
	mov	dword ptr [rip + _b], eax
	jmp	LBB4_3
LBB4_2:
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
LBB4_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f6                     ## -- Begin function f6
	.p2align	4, 0x90
_f6:                                    ## @f6
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _a]
	cmp	eax, dword ptr [rip + _b]
	jl	LBB5_2
## %bb.1:
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
LBB5_2:
	mov	eax, dword ptr [rip + _b]
	add	eax, 1
	mov	dword ptr [rip + _b], eax
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
