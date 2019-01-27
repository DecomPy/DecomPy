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
	mov	al, 0
	call	_f
	mov	esi, dword ptr [rip + _x]
	mov	edx, dword ptr [rip + _y]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_x                      ## @x
	.p2align	2
_x:
	.long	15213                   ## 0x3b6d

	.globl	_y                      ## @y
	.p2align	2
_y:
	.long	15212                   ## 0x3b6c

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x=0x%x, y=0x%x\n"


.subsections_via_symbols
