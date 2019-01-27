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
	sub	rsp, 80
	lea	rax, [rbp - 48]
	mov	ecx, 40
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 52], 0
	mov	rsi, rax
	mov	rdi, rsi
	lea	rsi, [rip + l_main.t]
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
	call	_memcpy
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_ft_rot42
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.t
l_main.t:
	.asciz	"SazZlut mes 23 amis !\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s"


.subsections_via_symbols
