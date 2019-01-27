	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_increase               ## -- Begin function increase
	.p2align	4, 0x90
_increase:                              ## @increase
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _g]
	add	eax, dword ptr [rip + _h]
	mov	dword ptr [rip + _g], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_init_g                 ## -- Begin function init_g
	.p2align	4, 0x90
_init_g:                                ## @init_g
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rip + _g], 1252
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	call	_init_g
	call	_increase
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_g                      ## @g
.zerofill __DATA,__common,_g,4,2
	.section	__DATA,__data
	.globl	_h                      ## @h
	.p2align	2
_h:
	.long	2                       ## 0x2


.subsections_via_symbols
