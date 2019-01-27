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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	esi, dword ptr [rip + _demi]
	mov	edx, dword ptr [rip + _demi+4]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rip + _pi]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + _demi]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_pi                     ## @pi
	.p2align	3
_pi:
	.quad	4614256656552045848     ## double 3.1415926535897931

	.globl	_demi                   ## @demi
	.p2align	2
_demi:
	.long	1                       ## 0x1
	.long	2                       ## 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d/%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Adresse de pi :%p\n"

L_.str.2:                               ## @.str.2
	.asciz	"Adresse de demi :%p\n"


.subsections_via_symbols
