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
	sub	rsp, 32
	mov	rax, qword ptr [rip + _dt@GOTPCREL]
	mov	rcx, rax
	add	rcx, 36
	mov	edx, 4
	mov	esi, edx
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	qword ptr [rbp - 16], rsi ## 8-byte Spill
	mov	rsi, rax
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 16] ## 8-byte Reload
	mov	al, 0
	call	_printf
	xor	r8d, r8d
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, r8d
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%p %p %d\n"

	.comm	_dt,40,4                ## @dt

.subsections_via_symbols
