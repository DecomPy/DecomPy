	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_nlowest_zero           ## -- Begin function nlowest_zero
	.p2align	4, 0x90
_nlowest_zero:                          ## @nlowest_zero
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	ecx, dword ptr [rbp - 4]
                                        ## kill: def $cl killed $ecx
	mov	edi, 1
	shl	edi, cl
	sub	edi, 1
	xor	edi, -1
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_nlowestone_minus_mlowestone ## -- Begin function nlowestone_minus_mlowestone
	.p2align	4, 0x90
_nlowestone_minus_mlowestone:           ## @nlowestone_minus_mlowestone
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 8]
	add	esi, dword ptr [rbp - 4]
	mov	ecx, esi
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	mov	edi, esi
	shl	edi, cl
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	sub	edi, esi
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
