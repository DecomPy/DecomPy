	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_tmul_ok_32             ## -- Begin function tmul_ok_32
	.p2align	4, 0x90
_tmul_ok_32:                            ## @tmul_ok_32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	imul	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], esi
	cmp	dword ptr [rbp - 4], 0
	mov	al, 1
	mov	byte ptr [rbp - 13], al ## 1-byte Spill
	je	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 12]
	cdq
	idiv	dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	sete	cl
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
LBB0_2:
	mov	al, byte ptr [rbp - 13] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_largest_factorial_32   ## -- Begin function largest_factorial_32
	.p2align	4, 0x90
_largest_factorial_32:                  ## @largest_factorial_32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 8], 1
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	_tmul_ok_32
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 0
	je	LBB1_3
## %bb.2:
	jmp	LBB1_4
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	imul	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_1
LBB1_4:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_tmul_ok_64             ## -- Begin function tmul_ok_64
	.p2align	4, 0x90
_tmul_ok_64:                            ## @tmul_ok_64
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	imul	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rsi
	cmp	qword ptr [rbp - 8], 0
	mov	al, 1
	mov	byte ptr [rbp - 25], al ## 1-byte Spill
	je	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rbp - 24]
	cqo
	idiv	qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 16]
	sete	cl
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
LBB2_2:
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_largest_factorial_64   ## -- Begin function largest_factorial_64
	.p2align	4, 0x90
_largest_factorial_64:                  ## @largest_factorial_64
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 12], 1
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 12]
	call	_tmul_ok_64
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 16], eax
	cmp	dword ptr [rbp - 16], 0
	je	LBB3_3
## %bb.2:
	jmp	LBB3_4
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	movsxd	rax, dword ptr [rbp - 12]
	imul	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB3_1
LBB3_4:
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
