	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_lgammal                ## -- Begin function lgammal
	.p2align	4, 0x90
_lgammal:                               ## @lgammal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	fld	tbyte ptr [rbp + 16]
	fstp	tbyte ptr [rbp - 16]
	fld	tbyte ptr [rbp - 16]
	mov	rax, rsp
	fstp	tbyte ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rbp - 20]
	mov	al, dl
	call	_lgammal_r
	mov	dword ptr [rbp - 24], eax
	fild	dword ptr [rbp - 24]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
