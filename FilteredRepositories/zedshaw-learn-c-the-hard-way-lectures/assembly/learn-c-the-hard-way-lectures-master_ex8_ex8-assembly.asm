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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	cmp	dword ptr [rbp - 8], 1
	jne	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_13
LBB0_2:
	cmp	dword ptr [rbp - 8], 1
	jle	LBB0_9
## %bb.3:
	cmp	dword ptr [rbp - 8], 4
	jge	LBB0_9
## %bb.4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rax + 8*rcx]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_5
LBB0_8:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_12
LBB0_9:
	cmp	dword ptr [rbp - 8], 10
	jle	LBB0_11
## %bb.10:
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_11:
	jmp	LBB0_12
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"You only have one argument. You suck.\n"

L_.str.1:                               ## @.str.1
	.asciz	"Here's your arguments:\n"

L_.str.2:                               ## @.str.2
	.asciz	"%s "

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"You have too many arguments. You suck.\n"


.subsections_via_symbols
