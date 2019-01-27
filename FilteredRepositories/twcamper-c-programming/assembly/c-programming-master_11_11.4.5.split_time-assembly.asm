	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_split_time             ## -- Begin function split_time
	.p2align	4, 0x90
_split_time:                            ## @split_time
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, 60
	mov	r8d, eax
	mov	eax, 3600
	mov	r9d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	rax, qword ptr [rbp - 8]
	cqo
	idiv	r9
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], r10d
	mov	rax, qword ptr [rbp - 8]
	cqo
	idiv	r9
	mov	rax, rdx
	cqo
	idiv	r8
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], r10d
	mov	rax, qword ptr [rbp - 8]
	cqo
	idiv	r8
	mov	r10d, edx
	mov	rcx, qword ptr [rbp - 32]
	mov	dword ptr [rcx], r10d
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 1
	jle	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	movsxd	rdi, eax
	lea	rsi, [rbp - 20]
	lea	rdx, [rbp - 24]
	lea	rcx, [rbp - 28]
	call	_split_time
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB1_2:
	xor	eax, eax
	mov	edi, eax
	call	_time
	mov	rdi, rax
	lea	rsi, [rbp - 20]
	lea	rdx, [rbp - 24]
	lea	rcx, [rbp - 28]
	call	_split_time
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d:%d:%d\n"


.subsections_via_symbols
