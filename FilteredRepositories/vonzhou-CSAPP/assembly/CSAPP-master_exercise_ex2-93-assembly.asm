	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_half             ## -- Begin function float_half
	.p2align	4, 0x90
_float_half:                            ## @float_half
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	shr	edi, 31
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 8]
	shr	edi, 23
	and	edi, 255
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 8388607
	mov	dword ptr [rbp - 20], edi
	cmp	dword ptr [rbp - 16], 255
	jne	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_12
LBB0_2:
	mov	eax, dword ptr [rbp - 20]
	and	eax, 3
	cmp	eax, 3
	sete	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 24], eax
	cmp	dword ptr [rbp - 16], 1
	jbe	LBB0_4
## %bb.3:
	mov	eax, dword ptr [rbp - 16]
	add	eax, -1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_11
LBB0_4:
	cmp	dword ptr [rbp - 16], 1
	jne	LBB0_9
## %bb.5:
	cmp	dword ptr [rbp - 20], 8388607
	jne	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 20], 0
	jmp	LBB0_8
LBB0_7:
	mov	dword ptr [rbp - 16], 0
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 1
	add	eax, 4194304
	add	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 20], eax
LBB0_8:
	jmp	LBB0_10
LBB0_9:
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 1
	add	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 20], eax
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 31
	mov	ecx, dword ptr [rbp - 16]
	shl	ecx, 23
	or	eax, ecx
	or	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB0_12:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
