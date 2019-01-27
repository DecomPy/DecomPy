	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ffs                    ## -- Begin function ffs
	.p2align	4, 0x90
_ffs:                                   ## @ffs
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_6
LBB0_2:
	mov	dword ptr [rbp - 12], 0
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	mov	ecx, eax
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	and	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	je	LBB0_5
## %bb.4:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_6
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_3
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
