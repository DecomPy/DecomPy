	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_lower_bits             ## -- Begin function lower_bits
	.p2align	4, 0x90
_lower_bits:                            ## @lower_bits
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 0
	mov	esi, dword ptr [rbp - 8]
	sub	esi, 1
	mov	dword ptr [rbp - 16], esi
	mov	ecx, dword ptr [rbp - 16]
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	mov	edi, esi
	shl	edi, cl
	sub	edi, 1
	mov	ecx, dword ptr [rbp - 16]
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	add	edi, esi
	mov	dword ptr [rbp - 12], edi
	mov	esi, dword ptr [rbp - 4]
	or	esi, dword ptr [rbp - 12]
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
