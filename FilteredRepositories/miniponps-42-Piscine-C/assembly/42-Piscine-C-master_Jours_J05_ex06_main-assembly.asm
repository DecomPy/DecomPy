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
	lea	rsi, [rbp - 32]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + L_main.test]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + L_main.test+8]
	mov	qword ptr [rbp - 24], rax
	mov	cx, word ptr [rip + L_main.test+16]
	mov	word ptr [rbp - 16], cx
	mov	dl, byte ptr [rip + L_main.test+18]
	mov	byte ptr [rbp - 14], dl
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 32]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_ft_strlowcase
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
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
	.p2align	4               ## @main.test
L_main.test:
	.asciz	"SaluT 65 #@ ioul.,"

L_.str:                                 ## @.str
	.asciz	"%s \n"


.subsections_via_symbols
