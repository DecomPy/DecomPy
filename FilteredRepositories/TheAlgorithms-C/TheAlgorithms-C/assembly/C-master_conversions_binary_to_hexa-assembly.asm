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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 24], 0
	mov	qword ptr [rbp - 32], 1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 16], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, 10
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 16]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 40], rdx
	mov	rdx, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 40]
	imul	rsi, qword ptr [rbp - 32]
	add	rdx, rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rdx, qword ptr [rbp - 32]
	shl	rdx, 1
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rbp - 16]
	mov	rax, rdx
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_1
LBB0_3:
	mov	rsi, qword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the binary number: "

L_.str.1:                               ## @.str.1
	.asciz	"%ld"

L_.str.2:                               ## @.str.2
	.asciz	"THe Equivalent hexadecimal value: %lX"


.subsections_via_symbols
