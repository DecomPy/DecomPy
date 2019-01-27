	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_i2f              ## -- Begin function float_i2f
	.p2align	4, 0x90
_float_i2f:                             ## @float_i2f
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
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_20
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	and	eax, -2147483648
	cmp	eax, -2147483648
	sete	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 0
	je	LBB0_4
## %bb.3:
	mov	eax, dword ptr [rbp - 8]
	xor	eax, -1
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
LBB0_4:
	mov	dword ptr [rbp - 28], 1
	mov	dword ptr [rbp - 32], -2147483648
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 32]
	and	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 32]
	je	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 32]
	shr	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_5
LBB0_8:
	mov	eax, 32
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 28]
	mov	edx, eax
	sub	rcx, rdx
	mov	eax, ecx
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 24]
	add	eax, 127
	mov	dword ptr [rbp - 16], eax
	cmp	dword ptr [rbp - 24], 23
	jbe	LBB0_18
## %bb.9:
	mov	eax, dword ptr [rbp - 24]
	sub	eax, 23
	mov	dword ptr [rbp - 36], eax
	mov	ecx, dword ptr [rbp - 36]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	mov	edx, eax
	shl	edx, cl
	sub	edx, 1
	and	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 40], edx
	mov	edx, dword ptr [rbp - 36]
	sub	edx, 1
	mov	ecx, edx
                                        ## kill: def $cl killed $ecx
	mov	edx, eax
	shl	edx, cl
	mov	dword ptr [rbp - 44], edx
	mov	ecx, dword ptr [rbp - 36]
                                        ## kill: def $cl killed $ecx
	shl	eax, cl
	mov	dword ptr [rbp - 48], eax
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 44]
	mov	cl, 1
	mov	byte ptr [rbp - 53], cl ## 1-byte Spill
	jg	LBB0_13
## %bb.10:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 44]
	mov	byte ptr [rbp - 54], cl ## 1-byte Spill
	jne	LBB0_12
## %bb.11:
	mov	eax, dword ptr [rbp - 8]
	and	eax, dword ptr [rbp - 48]
	cmp	eax, dword ptr [rbp - 48]
	sete	cl
	mov	byte ptr [rbp - 54], cl ## 1-byte Spill
LBB0_12:
	mov	al, byte ptr [rbp - 54] ## 1-byte Reload
	mov	byte ptr [rbp - 53], al ## 1-byte Spill
LBB0_13:
	mov	al, byte ptr [rbp - 53] ## 1-byte Reload
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 52], ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 60], ecx ## 4-byte Spill
	mov	ecx, edx
                                        ## kill: def $cl killed $ecx
	mov	edx, dword ptr [rbp - 60] ## 4-byte Reload
	sar	edx, cl
	and	edx, 8388607
	mov	dword ptr [rbp - 20], edx
	cmp	dword ptr [rbp - 20], 8388607
	jne	LBB0_16
## %bb.14:
	cmp	dword ptr [rbp - 52], 1
	jne	LBB0_16
## %bb.15:
	mov	dword ptr [rbp - 20], 0
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_17
LBB0_16:
	mov	eax, dword ptr [rbp - 52]
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
LBB0_17:
	jmp	LBB0_19
LBB0_18:
	mov	eax, 23
	sub	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 36]
                                        ## kill: def $cl killed $ecx
	shl	eax, cl
	and	eax, 8388607
	mov	dword ptr [rbp - 20], eax
LBB0_19:
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 31
	mov	ecx, dword ptr [rbp - 16]
	shl	ecx, 23
	or	eax, ecx
	or	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
LBB0_20:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
