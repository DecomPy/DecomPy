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
	mov	eax, 4
	mov	edx, eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	mov	dword ptr [rbp - 44], 1252
	mov	rcx, qword ptr [rip + L_main.str]
	mov	qword ptr [rbp - 17], rcx
	mov	r8b, byte ptr [rip + L_main.str+8]
	mov	byte ptr [rbp - 9], r8b
	mov	byte ptr [rbp - 45], 99
	mov	esi, dword ptr [rbp - 44]
	lea	rdi, [rip + L_.str]
	lea	rcx, [rbp - 44]
	mov	al, 0
	call	_printf
	mov	esi, 1
	mov	edx, esi
	movsx	esi, byte ptr [rbp - 45]
	lea	rdi, [rip + L_.str.1]
	lea	rcx, [rbp - 45]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rcx, [rbp - 17]
	lea	rdi, [rip + L_.str.2]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.str:                             ## @main.str
	.asciz	"sinf1252"

L_.str:                                 ## @.str
	.asciz	"i vaut %d, occupe %ld bytes et est stock\303\251 \303\240 l'adresse : %p\n"

L_.str.1:                               ## @.str.1
	.asciz	"c vaut %c, occupe %ld bytes et est stock\303\251 \303\240 l'adresse : %p\n"

L_.str.2:                               ## @.str.2
	.asciz	"str contient \"%s\" et est stock\303\251 \303\240 partir de l'adresse : %p\n"


.subsections_via_symbols
