	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 24]
	mov	dword ptr [rax], 2
	mov	rax, qword ptr [rbp - 32]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	dword ptr [rax], 3
	mov	rax, qword ptr [rbp - 40]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	dword ptr [rax], 4
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 40]
	call	_ft_scrambler
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
