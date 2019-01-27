	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_bz_internal_error      ## -- Begin function bz_internal_error
	.p2align	4, 0x90
_bz_internal_error:                     ## @bz_internal_error
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rip + L___func__.bz_internal_error]
	lea	rsi, [rip + L_.str]
	lea	rcx, [rip + L_.str.1]
	mov	edx, 7
	call	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___func__.bz_internal_error:           ## @__func__.bz_internal_error
	.asciz	"bz_internal_error"

L_.str:                                 ## @.str
	.asciz	"Repositories/sumatrapdfreader-sumatrapdf/Unfiltered/sumatrapdf-master_ext_bzip2_bz_internal_error.c"

L_.str.1:                               ## @.str.1
	.asciz	"0"


.subsections_via_symbols
