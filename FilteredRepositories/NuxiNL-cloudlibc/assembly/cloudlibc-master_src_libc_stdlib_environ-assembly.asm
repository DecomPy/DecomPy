	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__const
	.p2align	3               ## @envvars
_envvars:
	.space	8

	.section	__DATA,__const
	.globl	_environ                ## @environ
	.p2align	3
_environ:
	.quad	_envvars


.subsections_via_symbols
