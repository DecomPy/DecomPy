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
	add	eax, dword ptr [rip + _b]
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _b]
	mov	dword ptr [rip + _b], eax
	mov	eax, dword ptr [rip + _b]
	sub	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _c], eax
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
	add	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _b]
	mov	dword ptr [rip + _b], eax
	mov	eax, dword ptr [rip + _b]
	sub	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _c], eax
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
	mov	eax, dword ptr [rip + _b]
	add	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rip + _b], ecx
	mov	dword ptr [rip + _b], eax
	mov	eax, dword ptr [rip + _a]
	sub	eax, dword ptr [rip + _b]
	mov	dword ptr [rip + _c], eax
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
	add	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _c], eax
	mov	eax, dword ptr [rip + _b]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rip + _b], ecx
	mov	dword ptr [rip + _b], eax
	mov	eax, dword ptr [rip + _a]
	sub	eax, dword ptr [rip + _b]
	mov	dword ptr [rip + _a], eax
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
	add	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _b], eax
	mov	eax, dword ptr [rip + _b]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rip + _b], ecx
	mov	dword ptr [rip + _a], eax
	mov	eax, dword ptr [rip + _b]
	sub	eax, dword ptr [rip + _a]
	mov	dword ptr [rip + _c], eax
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
