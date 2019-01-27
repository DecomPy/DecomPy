	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_match                  ## -- Begin function match
	.p2align	4, 0x90
_match:                                 ## @match
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0
	jne	LBB0_3
## %bb.1:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_3
## %bb.2:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_23
LBB0_3:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	LBB0_7
## %bb.4:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 42
	je	LBB0_7
## %bb.5:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 42
	je	LBB0_7
## %bb.6:
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 24]
	add	rcx, 1
	mov	rdi, rax
	mov	rsi, rcx
	call	_match
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_23
LBB0_7:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 42
	jne	LBB0_10
## %bb.8:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 42
	jne	LBB0_10
## %bb.9:
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 24]
	mov	rdi, rax
	call	_match
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_23
LBB0_10:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_13
## %bb.11:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 42
	jne	LBB0_13
## %bb.12:
	mov	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	rsi, rax
	call	_match
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_23
LBB0_13:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 42
	jne	LBB0_18
## %bb.14:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB0_18
## %bb.15:
	mov	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	rsi, rax
	call	_match
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jne	LBB0_17
## %bb.16:
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 24]
	mov	rdi, rax
	call	_match
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
LBB0_17:
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
	jmp	LBB0_23
LBB0_18:
	jmp	LBB0_19
LBB0_19:
	jmp	LBB0_20
LBB0_20:
	jmp	LBB0_21
LBB0_21:
	jmp	LBB0_22
LBB0_22:
	mov	dword ptr [rbp - 4], 0
LBB0_23:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
