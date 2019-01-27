	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_twice            ## -- Begin function float_twice
	.p2align	4, 0x90
_float_twice:                           ## @float_twice
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
	cmp	dword ptr [rbp - 16], 254
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 16], 255
	mov	dword ptr [rbp - 20], 0
	jmp	LBB0_11
LBB0_4:
	cmp	dword ptr [rbp - 16], 0
	jbe	LBB0_6
## %bb.5:
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_10
LBB0_6:
	mov	eax, dword ptr [rbp - 20]
	and	eax, 4194304
	cmp	eax, 4194304
	jne	LBB0_8
## %bb.7:
	mov	dword ptr [rbp - 16], 1
	mov	eax, dword ptr [rbp - 20]
	shl	eax, 1
	and	eax, 8388607
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_9
LBB0_8:
	mov	eax, dword ptr [rbp - 20]
	shl	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB0_9:
	jmp	LBB0_10
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
