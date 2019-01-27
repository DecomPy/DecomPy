	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ctime_r                ## -- Begin function ctime_r
	.p2align	4, 0x90
_ctime_r:                               ## @ctime_r
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 72]
	call	_localtime_r
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rbp - 72]
	mov	qword ptr [rbp - 80], rax ## 8-byte Spill
	call	_asctime_r
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
