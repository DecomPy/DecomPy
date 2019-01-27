	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_arc4random_uniform     ## -- Begin function arc4random_uniform
	.p2align	4, 0x90
_arc4random_uniform:                    ## @arc4random_uniform
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_2
## %bb.1:
	mov	eax, 4
	mov	esi, eax
	lea	rcx, [rbp - 12]
	mov	rdi, rcx
	call	_arc4random_buf
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_6
LBB0_2:
	xor	eax, eax
	sub	eax, dword ptr [rbp - 8]
	xor	edx, edx
	div	dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], edx
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, 4
	mov	esi, eax
	lea	rcx, [rbp - 20]
	mov	rdi, rcx
	call	_arc4random_buf
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 16]
	jb	LBB0_5
## %bb.4:
	mov	eax, dword ptr [rbp - 20]
	xor	edx, edx
	div	dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edx
	jmp	LBB0_6
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_3
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
