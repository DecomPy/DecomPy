	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_f2i              ## -- Begin function float_f2i
	.p2align	4, 0x90
_float_f2i:                             ## @float_f2i
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
	mov	edi, dword ptr [rbp - 16]
	sub	edi, 127
	mov	dword ptr [rbp - 24], edi
	cmp	dword ptr [rbp - 16], 255
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], -2147483648
	jmp	LBB0_21
LBB0_2:
	cmp	dword ptr [rbp - 16], 0
	je	LBB0_4
## %bb.3:
	cmp	dword ptr [rbp - 24], 0
	jge	LBB0_5
LBB0_4:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_21
LBB0_5:
	cmp	dword ptr [rbp - 12], 0
	jne	LBB0_8
## %bb.6:
	cmp	dword ptr [rbp - 24], 30
	jle	LBB0_8
## %bb.7:
	mov	dword ptr [rbp - 4], -2147483648
	jmp	LBB0_21
LBB0_8:
	cmp	dword ptr [rbp - 12], 1
	jne	LBB0_11
## %bb.9:
	cmp	dword ptr [rbp - 24], 31
	jle	LBB0_11
## %bb.10:
	mov	dword ptr [rbp - 4], -2147483648
	jmp	LBB0_21
LBB0_11:
	cmp	dword ptr [rbp - 12], 1
	jne	LBB0_15
## %bb.12:
	cmp	dword ptr [rbp - 24], 31
	jne	LBB0_15
## %bb.13:
	cmp	dword ptr [rbp - 20], 0
	jbe	LBB0_15
## %bb.14:
	mov	dword ptr [rbp - 4], -2147483648
	jmp	LBB0_21
LBB0_15:
	cmp	dword ptr [rbp - 24], 23
	jle	LBB0_17
## %bb.16:
	mov	eax, dword ptr [rbp - 24]
	sub	eax, 23
	mov	dword ptr [rbp - 28], eax
	mov	ecx, dword ptr [rbp - 24]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 28]
                                        ## kill: def $cl killed $ecx
	shl	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_18
LBB0_17:
	mov	eax, 23
	sub	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax
	mov	ecx, dword ptr [rbp - 24]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 28]
                                        ## kill: def $cl killed $ecx
	shr	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 20], eax
LBB0_18:
	cmp	dword ptr [rbp - 12], 1
	jne	LBB0_20
## %bb.19:
	mov	eax, dword ptr [rbp - 20]
	xor	eax, -1
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB0_20:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB0_21:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
