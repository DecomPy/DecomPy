	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_xbyte                  ## -- Begin function xbyte
	.p2align	4, 0x90
_xbyte:                                 ## @xbyte
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, 3
	sub	esi, dword ptr [rbp - 8]
	shl	esi, 3
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 12]
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	shr	esi, 24
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
