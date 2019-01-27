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
	lea	rax, [rbp - 33]
	lea	rdi, [rbp - 32]
	xor	esi, esi
	mov	ecx, 1
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	r8, qword ptr [rip + L_main.str]
	mov	qword ptr [rbp - 32], r8
	mov	r8, qword ptr [rip + L_main.str+8]
	mov	qword ptr [rbp - 24], r8
	mov	ecx, dword ptr [rip + L_main.str+16]
	mov	dword ptr [rbp - 16], ecx
	mov	r9w, word ptr [rip + L_main.str+20]
	mov	word ptr [rbp - 12], r9w
	mov	r8, rax
	mov	qword ptr [rbp - 56], rdi ## 8-byte Spill
	mov	rdi, r8
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
	call	_memset
	mov	rdi, qword ptr [rbp - 56] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_ft_strstr
	mov	qword ptr [rbp - 48], rax
	mov	rsi, qword ptr [rbp - 48]
	lea	rdi, [rip + L_.str]
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
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @main.str
L_main.str:
	.asciz	"bonjaur, tu va bien ?"

L_.str:                                 ## @.str
	.asciz	"la repond : %s"


.subsections_via_symbols
