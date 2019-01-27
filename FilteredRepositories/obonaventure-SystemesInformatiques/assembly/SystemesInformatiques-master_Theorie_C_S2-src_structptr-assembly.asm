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
	xor	eax, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rsi, [rbp - 24]
	mov	qword ptr [rbp - 40], rsi
	lea	rsi, [rbp - 32]
	mov	qword ptr [rbp - 48], rsi
	mov	rsi, qword ptr [rbp - 40]
	mov	dword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 40]
	mov	dword ptr [rsi + 4], 2
	mov	rsi, qword ptr [rbp - 48]
	mov	dword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 48]
	mov	dword ptr [rsi + 4], 4
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
