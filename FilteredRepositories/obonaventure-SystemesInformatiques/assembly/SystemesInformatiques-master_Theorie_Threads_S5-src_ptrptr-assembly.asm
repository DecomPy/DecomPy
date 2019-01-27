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
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rsi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	cmp	qword ptr [rax], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 24]
	add	rsi, 8
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Arguments :"

L_.str.1:                               ## @.str.1
	.asciz	" %s"

L_.str.2:                               ## @.str.2
	.asciz	"\n"


.subsections_via_symbols
