	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_asctime_r              ## -- Begin function asctime_r
	.p2align	4, 0x90
_asctime_r:                             ## @asctime_r
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	eax, 26
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rsi ## 8-byte Spill
	mov	rsi, rcx
	lea	rdx, [rip + L_.str]
	mov	rcx, qword ptr [rbp - 24] ## 8-byte Reload
	call	_strftime
	cmp	rax, 0
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 32], rcx ## 8-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
LBB0_3:
	mov	rax, qword ptr [rbp - 32] ## 8-byte Reload
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c\n"


.subsections_via_symbols
