	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcstok                 ## -- Begin function wcstok
	.p2align	4, 0x90
_wcstok:                                ## @wcstok
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
	mov	qword ptr [rbp - 32], rdx
	cmp	qword ptr [rbp - 16], 0
	jne	LBB0_4
## %bb.1:
	mov	rax, qword ptr [rbp - 32]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 16], rax
	cmp	qword ptr [rbp - 16], 0
	jne	LBB0_3
## %bb.2:
	mov	qword ptr [rbp - 8], 0
	jmp	LBB0_10
LBB0_3:
	jmp	LBB0_4
LBB0_4:
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	call	_wcsspn
	shl	rax, 2
	add	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	jne	LBB0_6
## %bb.5:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	LBB0_10
LBB0_6:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	call	_wcscspn
	shl	rax, 2
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	add	rsi, rax
	mov	qword ptr [rbp - 40], rsi
	mov	rax, qword ptr [rbp - 40]
	cmp	dword ptr [rax], 0
	jne	LBB0_8
## %bb.7:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rax], 0
	jmp	LBB0_9
LBB0_8:
	mov	rax, qword ptr [rbp - 40]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 40]
	add	rax, 4
	mov	rcx, qword ptr [rbp - 32]
	mov	qword ptr [rcx], rax
LBB0_9:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
LBB0_10:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
