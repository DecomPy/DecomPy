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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L___func__.main]
	lea	rsi, [rip + L_.str]
	lea	rcx, [rip + L_.str.1]
	mov	edx, 8
	call	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___func__.main:                        ## @__func__.main
	.asciz	"main"

L_.str:                                 ## @.str
	.asciz	"Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141204_b.c"

L_.str.1:                               ## @.str.1
	.asciz	"0"


.subsections_via_symbols
