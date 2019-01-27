	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_copy_int               ## -- Begin function copy_int
	.p2align	4, 0x90
_copy_int:                              ## @copy_int
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	cmp	dword ptr [rbp - 20], 0
	jle	LBB0_3
## %bb.1:
	movsxd	rax, dword ptr [rbp - 20]
	cmp	rax, 4
	jb	LBB0_3
## %bb.2:
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
LBB0_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
