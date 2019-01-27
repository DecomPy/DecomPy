	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_printInts              ## -- Begin function printInts
	.p2align	4, 0x90
_printInts:                             ## @printInts
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 16], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + _x]
	mov	esi, 3
	call	_printInts
	lea	rdi, [rip + _y1]
	mov	esi, 12
	call	_printInts
	lea	rdi, [rip + _y2]
	mov	esi, 12
	call	_printInts
	lea	rdi, [rip + _z]
	mov	esi, 12
	call	_printInts
	lea	rdi, [rip + _w]
	mov	esi, 4
	call	_printInts
	lea	rdi, [rip + _w]
	add	rdi, 16
	mov	esi, 4
	call	_printInts
	lea	rdi, [rip + _q1]
	mov	esi, 24
	call	_printInts
	lea	rdi, [rip + _q2]
	mov	esi, 24
	call	_printInts
	lea	rdi, [rip + _q3]
	mov	esi, 24
	call	_printInts
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_w                      ## @w
	.p2align	4
_w:
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0

	.globl	_q1                     ## @q1
	.p2align	4
_q1:
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.space	8
	.space	8
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.space	8
	.space	8
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	0                       ## 0x0
	.space	8
	.space	24

	.globl	_q2                     ## @q2
	.p2align	4
_q2:
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.space	8
	.space	8
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.space	8
	.space	8
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	0                       ## 0x0
	.space	8
	.space	24

	.globl	_q3                     ## @q3
	.p2align	4
_q3:
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.space	8
	.space	8
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.space	8
	.space	8
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	0                       ## 0x0
	.space	8
	.space	24

	.globl	_x                      ## @x
	.p2align	2
_x:
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	5                       ## 0x5

	.globl	_y1                     ## @y1
	.p2align	4
_y1:
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	6                       ## 0x6
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	7                       ## 0x7
	.space	12

	.globl	_y2                     ## @y2
	.p2align	4
_y2:
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	6                       ## 0x6
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	7                       ## 0x7
	.space	12

	.globl	_z                      ## @z
	.p2align	4
_z:
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	3                       ## 0x3
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	4                       ## 0x4
	.long	0                       ## 0x0
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols
