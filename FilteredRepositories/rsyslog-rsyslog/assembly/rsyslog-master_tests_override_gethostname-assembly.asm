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
	mov	byte ptr [rsi], 0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function my_init
_my_init:                               ## @my_init
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3
	.quad	_my_init

.subsections_via_symbols
