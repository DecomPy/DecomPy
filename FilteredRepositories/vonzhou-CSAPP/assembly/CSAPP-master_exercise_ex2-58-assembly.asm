	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_is_little_endian       ## -- Begin function is_little_endian
	.p2align	4, 0x90
_is_little_endian:                      ## @is_little_endian
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 1
	lea	rax, [rbp - 4]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rax]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
