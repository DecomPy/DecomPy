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
	mov	rcx, qword ptr [rip + _g2@GOTPCREL]
	mov	rdx, qword ptr [rip + _s@GOTPCREL]
	mov	rsi, qword ptr [rip + _g@GOTPCREL]
	mov	dword ptr [rsi], 1234
	mov	dword ptr [rcx], 5678
	mov	edi, dword ptr [rsi]
	mov	dword ptr [rdx], edi
	mov	edi, dword ptr [rcx]
	mov	dword ptr [rsi], edi
	mov	edi, dword ptr [rdx]
	mov	dword ptr [rcx], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_g,4,2                  ## @g
	.comm	_g2,4,2                 ## @g2
	.comm	_s,4,2                  ## @s

.subsections_via_symbols
