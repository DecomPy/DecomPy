	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_verify                 ## -- Begin function verify
	.p2align	4, 0x90
_verify:                                ## @verify
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], 0
	mov	qword ptr [rbp - 40], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 24]
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 40]
	movzx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 40]
	movzx	esi, byte ptr [rax + rcx]
	xor	edx, esi
	movsxd	rax, edx
	or	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 32], rax
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	jmp	LBB0_1
LBB0_4:
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 32]
	shr	rcx, 63
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rbp - 32]
	mov	eax, ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_cmov                   ## -- Begin function cmov
	.p2align	4, 0x90
_cmov:                                  ## @cmov
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, cl
	xor	ecx, ecx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	byte ptr [rbp - 25], al
	movzx	r8d, byte ptr [rbp - 25]
	sub	ecx, r8d
	mov	al, cl
	mov	byte ptr [rbp - 25], al
	mov	qword ptr [rbp - 40], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 24]
	jae	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movzx	eax, byte ptr [rbp - 25]
	mov	rcx, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 40]
	movzx	esi, byte ptr [rcx + rdx]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 40]
	movzx	edi, byte ptr [rcx + rdx]
	xor	esi, edi
	and	eax, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 40]
	movzx	esi, byte ptr [rcx + rdx]
	xor	esi, eax
	mov	r8b, sil
	mov	byte ptr [rcx + rdx], r8b
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	jmp	LBB1_1
LBB1_4:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
