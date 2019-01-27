	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _bufp1@GOTPCREL]
	mov	rcx, qword ptr [rip + _buf@GOTPCREL]
	add	rcx, 4
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rip + _bufp0]
	mov	edx, dword ptr [rcx]
	mov	dword ptr [rbp - 4], edx
	mov	rcx, qword ptr [rax]
	mov	edx, dword ptr [rcx]
	mov	rcx, qword ptr [rip + _bufp0]
	mov	dword ptr [rcx], edx
	mov	edx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rax]
	mov	dword ptr [rax], edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_bufp0                  ## @bufp0
	.p2align	3
_bufp0:
	.quad	_buf

	.comm	_bufp1,8,3              ## @bufp1

.subsections_via_symbols
