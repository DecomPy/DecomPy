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
	sub	rsp, 96
	lea	rax, [rbp - 64]
	mov	ecx, 49
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 68], 0
	mov	rsi, rax
	mov	rdi, rsi
	lea	rsi, [rip + L_main.test]
	mov	qword ptr [rbp - 80], rax ## 8-byte Spill
	call	_memcpy
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 80] ## 8-byte Reload
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 64]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	call	_ft_strcapitalize
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 96
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
	.asciz	"SaluT 65 #@ ioul., 42main tEsT Koooo ,d2 .31d /4"

L_.str:                                 ## @.str
	.asciz	"%s \n"


.subsections_via_symbols
