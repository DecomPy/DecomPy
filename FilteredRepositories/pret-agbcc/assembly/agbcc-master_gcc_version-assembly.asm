	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"2.9-arm-000512"

	.section	__DATA,__data
	.globl	_version_string         ## @version_string
	.p2align	3
_version_string:
	.quad	L_.str


.subsections_via_symbols
