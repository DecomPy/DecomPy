	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
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
	mov	eax, dword ptr [rsi]
	mov	dword ptr [rbp - 20], eax
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 12
	mov	dword ptr [rbp - 12], 100
	lea	rdi, [rbp - 8]
	lea	rsi, [rbp - 12]
	call	_swap
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
