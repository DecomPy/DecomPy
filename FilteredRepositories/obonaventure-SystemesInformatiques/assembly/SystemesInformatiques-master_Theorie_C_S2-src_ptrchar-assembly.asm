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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	mov	byte ptr [rbp - 41], 90
	mov	rax, qword ptr [rip + L_main.str]
	mov	qword ptr [rbp - 17], rax
	mov	cl, byte ptr [rip + L_main.str+8]
	mov	byte ptr [rbp - 9], cl
	mov	qword ptr [rbp - 56], 0
	lea	rax, [rbp - 41]
	mov	qword ptr [rbp - 56], rax
	movsx	esi, byte ptr [rbp - 41]
	lea	rdi, [rip + L_.str]
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 56]
	mov	rdx, qword ptr [rbp - 56]
	movsx	edx, byte ptr [rdx]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 17]
	mov	qword ptr [rbp - 56], rsi
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 56]
	mov	rdi, qword ptr [rbp - 56]
	movsx	edx, byte ptr [rdi]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], 0
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rbp - 17]
	movsxd	rax, dword ptr [rbp - 60]
	mov	qword ptr [rbp - 88], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 88] ## 8-byte Reload
	cmp	rdi, rax
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 60]
	movsxd	rax, dword ptr [rbp - 60]
	movsx	edx, byte ptr [rbp + rax - 17]
	mov	ecx, dword ptr [rbp - 60]
	mov	rax, qword ptr [rbp - 56]
	movsxd	rdi, dword ptr [rbp - 60]
	movsx	r8d, byte ptr [rax + rdi]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_6
## %bb.5:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.str:                             ## @main.str
	.asciz	"sinf1252"

L_.str:                                 ## @.str
	.asciz	"c vaut %c et est stock\303\251 \303\240 l'adresse : %p\n"

L_.str.1:                               ## @.str.1
	.asciz	"*str_ptr vaut %p et pointe vers %c\n"

L_.str.2:                               ## @.str.2
	.asciz	"apr\303\250s str_ptr=str[];\n"

L_.str.3:                               ## @.str.3
	.asciz	"Contenu du tableau\n"

L_.str.4:                               ## @.str.4
	.asciz	"str[%d]=%c et *(str_ptr+%d) contient %c\n"


.subsections_via_symbols
