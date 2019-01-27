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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 18]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rsi, [rbp - 18]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 18]
	cmp	eax, 113
	jne	LBB0_1
## %bb.3:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_5
## %bb.4:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Input: "

L_.str.1:                               ## @.str.1
	.asciz	"%s"

L_.str.2:                               ## @.str.2
	.asciz	"Output: %s\n"


.subsections_via_symbols
