	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_int_size_is_32         ## -- Begin function int_size_is_32
	.p2align	4, 0x90
_int_size_is_32:                        ## @int_size_is_32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], -2147483648
	cmp	dword ptr [rbp - 4], -2147483648
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_int_size_is_at_least_32 ## -- Begin function int_size_is_at_least_32
	.p2align	4, 0x90
_int_size_is_at_least_32:               ## @int_size_is_at_least_32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], -2147483648
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_int_size_is_at_least_16 ## -- Begin function int_size_is_at_least_16
	.p2align	4, 0x90
_int_size_is_at_least_16:               ## @int_size_is_at_least_16
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 32768
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
