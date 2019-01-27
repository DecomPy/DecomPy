	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sra                    ## -- Begin function sra
	.p2align	4, 0x90
_sra:                                   ## @sra
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	shr	esi, cl
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rip + _w]
	sub	esi, 1
	sub	esi, dword ptr [rbp - 8]
	mov	ecx, esi
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	mov	edi, esi
	shl	edi, cl
	and	edi, dword ptr [rbp - 12]
	shl	edi, 1
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rip + _w]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
                                        ## kill: def $cl killed $ecx
	mov	edi, esi
	shl	edi, cl
	sub	edi, 1
	xor	edi, -1
	mov	dword ptr [rbp - 20], edi
	mov	edi, dword ptr [rbp - 20]
	mov	eax, dword ptr [rbp - 16]
	mov	edx, dword ptr [rip + _w]
	sub	edx, dword ptr [rbp - 8]
	mov	ecx, edx
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	xor	eax, esi
	add	edi, eax
	mov	dword ptr [rbp - 24], edi
	mov	eax, dword ptr [rbp - 24]
	add	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_srl                    ## -- Begin function srl
	.p2align	4, 0x90
_srl:                                   ## @srl
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        ## kill: def $cl killed $ecx
	sar	esi, cl
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rip + _w]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
                                        ## kill: def $cl killed $ecx
	mov	edi, 1
	shl	edi, cl
	sub	edi, 1
	and	esi, edi
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	2               ## @w
_w:
	.long	32                      ## 0x20


.subsections_via_symbols
