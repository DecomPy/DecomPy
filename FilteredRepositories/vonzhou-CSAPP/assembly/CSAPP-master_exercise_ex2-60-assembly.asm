	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_replace_byte           ## -- Begin function replace_byte
	.p2align	4, 0x90
_replace_byte:                          ## @replace_byte
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], 3
	mov	edx, dword ptr [rbp - 12]
	and	edx, dword ptr [rbp - 16]
	shl	edx, 3
	mov	dword ptr [rbp - 20], edx
	mov	edx, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 20]
                                        ## kill: def $cl killed $ecx
	mov	esi, 255
	shl	esi, cl
	xor	esi, -1
	and	edx, esi
	mov	dword ptr [rbp - 24], edx
	movzx	edx, byte ptr [rbp - 5]
	mov	ecx, dword ptr [rbp - 20]
                                        ## kill: def $cl killed $ecx
	shl	edx, cl
	mov	dword ptr [rbp - 28], edx
	mov	edx, dword ptr [rbp - 24]
	add	edx, dword ptr [rbp - 28]
	mov	eax, edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
