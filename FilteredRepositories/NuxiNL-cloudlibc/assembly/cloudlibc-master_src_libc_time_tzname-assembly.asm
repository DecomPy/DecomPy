	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"UTC"

	.section	__DATA,__const
	.globl	_tzname                 ## @tzname
	.p2align	4
_tzname:
	.quad	L_.str
	.quad	L_.str


.subsections_via_symbols
