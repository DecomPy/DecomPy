	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_arith                  ## -- Begin function arith
	.p2align	4, 0x90
_arith:                                 ## @arith
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 4]
	add	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], edx
	imul	edx, dword ptr [rbp - 12], 48
	mov	dword ptr [rbp - 20], edx
	mov	edx, dword ptr [rbp - 16]
	and	edx, 65535
	mov	dword ptr [rbp - 24], edx
	mov	edx, dword ptr [rbp - 20]
	imul	edx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], edx
	mov	eax, dword ptr [rbp - 28]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
