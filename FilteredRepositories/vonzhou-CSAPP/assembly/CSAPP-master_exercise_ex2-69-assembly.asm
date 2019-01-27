	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_rotate_right           ## -- Begin function rotate_right
	.p2align	4, 0x90
_rotate_right:                          ## @rotate_right
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 32
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 12]
	sub	edi, dword ptr [rbp - 8]
	sub	edi, 1
	mov	ecx, edi
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	shl	esi, 1
	mov	edi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	shr	edi, cl
	add	esi, edi
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
