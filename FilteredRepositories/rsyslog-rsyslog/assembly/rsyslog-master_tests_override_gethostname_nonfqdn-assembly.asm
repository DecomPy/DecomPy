	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_gethostname            ## -- Begin function gethostname
	.p2align	4, 0x90
_gethostname:                           ## @gethostname
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 110
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 111
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 110
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 102
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 113
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 100
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 110
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rsi], 0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
