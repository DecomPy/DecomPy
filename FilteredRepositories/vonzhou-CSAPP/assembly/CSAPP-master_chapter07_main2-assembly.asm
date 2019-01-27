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
	mov	rdx, qword ptr [rip + _z@GOTPCREL]
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + _x]
	lea	rsi, [rip + _y]
	mov	ecx, 2
	mov	al, 0
	call	_addvec
	mov	rdx, qword ptr [rip + _z@GOTPCREL]
	mov	esi, dword ptr [rdx]
	mov	edx, dword ptr [rdx + 4]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_x                      ## @x
	.p2align	2
_x:
	.long	1                       ## 0x1
	.long	2                       ## 0x2

	.globl	_y                      ## @y
	.p2align	2
_y:
	.long	3                       ## 0x3
	.long	4                       ## 0x4

	.comm	_z,8,2                  ## @z
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"z = [%d %d]\n"


.subsections_via_symbols
