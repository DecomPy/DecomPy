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
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 12], 2
	mov	dword ptr [rbp - 16], 3
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	imul	ecx, dword ptr [rbp - 16]
	add	eax, ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
