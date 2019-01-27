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
	jmp	LBB0_1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rip + _a]
	cmp	eax, dword ptr [rip + _c]
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _c]
	mov	dword ptr [rip + _b], eax
	jmp	LBB0_1
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
	jmp	LBB1_1
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rip + _c]
	cmp	eax, dword ptr [rip + _a]
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _c]
	mov	dword ptr [rip + _b], eax
	jmp	LBB1_1
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
	jmp	LBB2_1
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rip + _c]
	cmp	eax, dword ptr [rip + _a]
	jle	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _c]
	mov	dword ptr [rip + _b], eax
	jmp	LBB2_1
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
	jmp	LBB3_1
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _c]
	mov	dword ptr [rip + _b], eax
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rip + _c]
	cmp	eax, dword ptr [rip + _a]
	jne	LBB3_1
## %bb.3:
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
	jmp	LBB4_1
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rip + _c]
	cmp	eax, dword ptr [rip + _a]
	jne	LBB4_3
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rip + _a]
	add	eax, 1
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _c]
	mov	dword ptr [rip + _b], eax
	jmp	LBB4_1
LBB4_3:
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
