	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"January"

L_.str.1:                               ## @.str.1
	.asciz	"February"

L_.str.2:                               ## @.str.2
	.asciz	"March"

L_.str.3:                               ## @.str.3
	.asciz	"April"

L_.str.4:                               ## @.str.4
	.asciz	"May"

L_.str.5:                               ## @.str.5
	.asciz	"June"

L_.str.6:                               ## @.str.6
	.asciz	"July"

L_.str.7:                               ## @.str.7
	.asciz	"August"

L_.str.8:                               ## @.str.8
	.asciz	"September"

L_.str.9:                               ## @.str.9
	.asciz	"October"

L_.str.10:                              ## @.str.10
	.asciz	"November"

L_.str.11:                              ## @.str.11
	.asciz	"December"

	.section	__DATA,__data
	.globl	_m                      ## @m
	.p2align	4
_m:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11


.subsections_via_symbols
