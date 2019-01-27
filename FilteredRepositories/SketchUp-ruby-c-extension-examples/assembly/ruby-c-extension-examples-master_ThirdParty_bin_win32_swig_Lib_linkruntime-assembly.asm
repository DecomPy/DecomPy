	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_SWIG_ReturnGlobalTypeList ## -- Begin function SWIG_ReturnGlobalTypeList
	.p2align	4, 0x90
_SWIG_ReturnGlobalTypeList:             ## @SWIG_ReturnGlobalTypeList
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rip + _ptr], 0
	jne	LBB0_3
## %bb.1:
	cmp	qword ptr [rbp - 8], 0
	jne	LBB0_3
## %bb.2:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rip + _ptr], rax
LBB0_3:
	mov	rax, qword ptr [rip + _ptr]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_ptr,8,3         ## @ptr

.subsections_via_symbols
