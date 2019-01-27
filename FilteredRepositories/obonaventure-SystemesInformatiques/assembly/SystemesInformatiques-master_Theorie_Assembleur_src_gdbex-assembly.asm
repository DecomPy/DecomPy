	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rip + _g], 3
	mov	edi, dword ptr [rip + _g]
	add	edi, dword ptr [rip + _h]
	mov	dword ptr [rip + _h], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_g                      ## @g
.zerofill __DATA,__common,_g,4,2
	.globl	_h                      ## @h
.zerofill __DATA,__common,_h,4,2

.subsections_via_symbols
