	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_good_echo              ## -- Begin function good_echo
	.p2align	4, 0x90
_good_echo:                             ## @good_echo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rdi, [rbp - 9]
	mov	rdx, qword ptr [rax]
	mov	esi, 5
	call	_fgets
	mov	qword ptr [rbp - 24], rax
	cmp	qword ptr [rbp - 24], 0
	jne	LBB0_4
## %bb.1:
	mov	rax, qword ptr [rip + ___stdinp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	call	_feof
	cmp	eax, 0
	jne	LBB0_3
## %bb.2:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_8
LBB0_3:
	jmp	LBB0_7
LBB0_4:
	mov	rax, qword ptr [rip + ___stdoutp@GOTPCREL]
	lea	rdi, [rbp - 9]
	mov	rsi, qword ptr [rax]
	call	_fputs
	mov	dword ptr [rbp - 28], eax
	cmp	dword ptr [rbp - 28], -1
	jne	LBB0_6
## %bb.5:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_8
LBB0_6:
	jmp	LBB0_7
LBB0_7:
	mov	dword ptr [rbp - 4], 0
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
