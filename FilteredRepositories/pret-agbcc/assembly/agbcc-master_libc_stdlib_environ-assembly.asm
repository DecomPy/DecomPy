	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
.zerofill __DATA,__bss,_initial_env,8,3 ## @initial_env
	.section	__DATA,__data
	.globl	_environ                ## @environ
	.p2align	3
_environ:
	.quad	_initial_env


.subsections_via_symbols
