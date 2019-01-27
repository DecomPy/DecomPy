	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_localeconv             ## -- Begin function localeconv
	.p2align	4, 0x90
_localeconv:                            ## @localeconv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rax, [rip + _localeconv.lconv]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__const
	.p2align	3               ## @localeconv.lconv
_localeconv.lconv:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.quad	L_.str.1
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.byte	127                     ## 0x7f
	.space	2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"."

L_.str.1:                               ## @.str.1
	.space	1


.subsections_via_symbols
