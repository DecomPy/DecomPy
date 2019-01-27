	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_int_shifts_are_logical ## -- Begin function int_shifts_are_logical
	.p2align	4, 0x90
_int_shifts_are_logical:                ## @int_shifts_are_logical
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], -1
	cmp	dword ptr [rbp - 4], 2147483647
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
