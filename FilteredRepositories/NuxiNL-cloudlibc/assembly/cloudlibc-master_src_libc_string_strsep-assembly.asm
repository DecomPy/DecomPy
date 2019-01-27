	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_strsep                 ## -- Begin function strsep
	.p2align	4, 0x90
_strsep:                                ## @strsep
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 32], rsi
	cmp	qword ptr [rbp - 32], 0
	jne	LBB0_2
## %bb.1:
	mov	qword ptr [rbp - 8], 0
	jmp	LBB0_6
LBB0_2:
	mov	rax, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	call	_strcspn
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	add	rsi, rax
	mov	qword ptr [rbp - 40], rsi
	mov	rax, qword ptr [rbp - 40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rax], 0
	jmp	LBB0_5
LBB0_4:
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rcx], rax
LBB0_5:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 8], rax
LBB0_6:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
