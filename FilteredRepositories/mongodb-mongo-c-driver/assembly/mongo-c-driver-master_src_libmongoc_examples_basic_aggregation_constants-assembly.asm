	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"things"

	.section	__DATA,__const
	.globl	_COLLECTION_NAME        ## @COLLECTION_NAME
	.p2align	3
_COLLECTION_NAME:
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"function () {this.tags.forEach(function(z) {emit(z, 1);});}"

	.section	__DATA,__const
	.globl	_MAPPER                 ## @MAPPER
	.p2align	3
_MAPPER:
	.quad	L_.str.1

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"function (key, values) {var total = 0;for (var i = 0; i < values.length; i++) {total += values[i];}return total;}"

	.section	__DATA,__const
	.globl	_REDUCER                ## @REDUCER
	.p2align	3
_REDUCER:
	.quad	L_.str.2


.subsections_via_symbols
