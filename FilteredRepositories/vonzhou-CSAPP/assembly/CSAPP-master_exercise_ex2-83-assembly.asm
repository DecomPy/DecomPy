	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_ge               ## -- Begin function float_ge
	.p2align	4, 0x90
_float_ge:                              ## @float_ge
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	movss	dword ptr [rbp - 4], xmm0
	movss	dword ptr [rbp - 8], xmm1
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	al, 1
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	al, 1
	call	_f2u
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax, 31
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 16]
	shr	eax, 31
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, dword ptr [rbp - 16]
	cmp	eax, ecx
	jne	LBB0_3
## %bb.1:
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, dword ptr [rbp - 12]
	cmp	eax, ecx
	jne	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_10
LBB0_3:
	mov	eax, dword ptr [rbp - 20]
	xor	eax, dword ptr [rbp - 24]
	cmp	eax, 0
	je	LBB0_5
## %bb.4:
	cmp	dword ptr [rbp - 20], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 32], ecx ## 4-byte Spill
	jmp	LBB0_9
LBB0_5:
	cmp	dword ptr [rbp - 20], 0
	jne	LBB0_7
## %bb.6:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	setae	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_8
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_8:
	mov	eax, dword ptr [rbp - 36] ## 4-byte Reload
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_9:
	mov	eax, dword ptr [rbp - 32] ## 4-byte Reload
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_10:
	mov	eax, dword ptr [rbp - 28] ## 4-byte Reload
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_float_ge_ans           ## -- Begin function float_ge_ans
	.p2align	4, 0x90
_float_ge_ans:                          ## @float_ge_ans
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movss	dword ptr [rbp - 4], xmm0
	movss	dword ptr [rbp - 8], xmm1
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	al, 1
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	al, 1
	call	_f2u
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax, 31
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 16]
	shr	eax, 31
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 1
	cmp	eax, 0
	jne	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 16]
	shl	eax, 1
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	je	LBB1_11
LBB1_2:
	cmp	dword ptr [rbp - 20], 0
	jne	LBB1_4
## %bb.3:
	cmp	dword ptr [rbp - 24], 0
	mov	al, 1
	mov	byte ptr [rbp - 25], al ## 1-byte Spill
	jne	LBB1_11
LBB1_4:
	cmp	dword ptr [rbp - 20], 0
	jne	LBB1_7
## %bb.5:
	cmp	dword ptr [rbp - 24], 0
	jne	LBB1_7
## %bb.6:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	mov	cl, 1
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jae	LBB1_11
LBB1_7:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 20], 0
	mov	byte ptr [rbp - 26], cl ## 1-byte Spill
	je	LBB1_10
## %bb.8:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 26], cl ## 1-byte Spill
	je	LBB1_10
## %bb.9:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 16]
	setbe	cl
	mov	byte ptr [rbp - 26], cl ## 1-byte Spill
LBB1_10:
	mov	al, byte ptr [rbp - 26] ## 1-byte Reload
	mov	byte ptr [rbp - 25], al ## 1-byte Spill
LBB1_11:
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
