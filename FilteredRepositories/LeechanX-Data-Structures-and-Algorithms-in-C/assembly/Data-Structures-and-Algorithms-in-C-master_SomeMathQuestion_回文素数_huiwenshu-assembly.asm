	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_isPalindrome           ## -- Begin function isPalindrome
	.p2align	4, 0x90
_isPalindrome:                          ## @isPalindrome
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], 10
	mov	dword ptr [rbp - 16], 1
	mov	edi, dword ptr [rbp - 8]
	cmp	edi, dword ptr [rbp - 12]
	jae	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_13
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jbe	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	imul	eax, dword ptr [rbp - 12], 10
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_3
LBB0_5:
	mov	eax, dword ptr [rbp - 12]
	xor	edx, edx
	mov	ecx, 10
	div	ecx
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 16], eax
	mov	dword ptr [rbp - 20], 0
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 36], eax
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB0_10
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 32]
	xor	edx, edx
	div	dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 36]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 10
	div	ecx
	mov	dword ptr [rbp - 28], edx
	mov	ecx, dword ptr [rbp - 24]
	cmp	ecx, dword ptr [rbp - 28]
	je	LBB0_9
## %bb.8:
	jmp	LBB0_10
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 32]
	xor	edx, edx
	div	dword ptr [rbp - 12]
	mov	dword ptr [rbp - 32], edx
	mov	edx, dword ptr [rbp - 12]
	mov	eax, edx
	xor	edx, edx
	mov	ecx, 10
	div	ecx
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 36]
	xor	esi, esi
	mov	edx, esi
	div	ecx
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_6
LBB0_10:
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB0_12
## %bb.11:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_13
LBB0_12:
	mov	dword ptr [rbp - 4], 1
LBB0_13:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
