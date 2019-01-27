	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap_add               ## -- Begin function swap_add
	.p2align	4, 0x90
_swap_add:                              ## @swap_add
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
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rbp - 20]
	add	eax, dword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_caller                 ## -- Begin function caller
	.p2align	4, 0x90
_caller:                                ## @caller
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 123
	mov	dword ptr [rbp - 8], 456
	lea	rdi, [rbp - 4]
	lea	rsi, [rbp - 8]
	call	_swap_add
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 12]
	imul	eax, dword ptr [rbp - 16]
	add	rsp, 16
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
	call	_caller
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
