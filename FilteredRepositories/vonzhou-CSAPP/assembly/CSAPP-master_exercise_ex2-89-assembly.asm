	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_f2u                    ## -- Begin function f2u
	.p2align	4, 0x90
_f2u:                                   ## @f2u
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 4], xmm0
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 8], xmm0
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_u2f                    ## -- Begin function u2f
	.p2align	4, 0x90
_u2f:                                   ## @u2f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_fpwr2                  ## -- Begin function fpwr2
	.p2align	4, 0x90
_fpwr2:                                 ## @fpwr2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], -149
	jge	LBB2_2
## %bb.1:
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], 0
	jmp	LBB2_9
LBB2_2:
	cmp	dword ptr [rbp - 4], -126
	jge	LBB2_4
## %bb.3:
	mov	dword ptr [rbp - 8], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 149
	mov	ecx, eax
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	mov	dword ptr [rbp - 12], eax
	jmp	LBB2_8
LBB2_4:
	cmp	dword ptr [rbp - 4], 129
	jge	LBB2_6
## %bb.5:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 127
	mov	dword ptr [rbp - 8], eax
	mov	dword ptr [rbp - 12], 0
	jmp	LBB2_7
LBB2_6:
	mov	dword ptr [rbp - 8], 255
	mov	dword ptr [rbp - 12], 0
LBB2_7:
	jmp	LBB2_8
LBB2_8:
	jmp	LBB2_9
LBB2_9:
	mov	eax, dword ptr [rbp - 8]
	shl	eax, 23
	or	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
	mov	edi, dword ptr [rbp - 16]
	call	_u2f
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
