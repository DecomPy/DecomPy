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
	lea	rdx, [rbp - 23]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 28], 0
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 32]
	lea	rcx, [rbp - 36]
	mov	al, 0
	call	_scanf
	lea	rcx, [rbp - 23]
	mov	esi, dword ptr [rbp - 32]
	mov	edx, dword ptr [rbp - 36]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d%s%d"

L_.str.1:                               ## @.str.1
	.asciz	"i: %d, j: %d, s: |%s|\n"


.subsections_via_symbols
