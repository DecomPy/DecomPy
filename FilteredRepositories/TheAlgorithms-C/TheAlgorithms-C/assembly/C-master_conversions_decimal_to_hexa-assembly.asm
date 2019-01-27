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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	rdi, qword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_decimal2Hexadecimal
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_decimal2Hexadecimal    ## -- Begin function decimal2Hexadecimal
	.p2align	4, 0x90
_decimal2Hexadecimal:                   ## @decimal2Hexadecimal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 120], rdi
	mov	rax, qword ptr [rbp - 120]
	mov	qword ptr [rbp - 128], rax
	mov	dword ptr [rbp - 152], 0
	mov	rax, qword ptr [rbp - 128]
	mov	qword ptr [rbp - 136], rax
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 136], 0
	je	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, 16
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 136]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 144], rdx
	cmp	qword ptr [rbp - 144], 10
	jge	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 144]
	add	rax, 48
	mov	cl, al
	mov	edx, dword ptr [rbp - 152]
	mov	esi, edx
	add	esi, 1
	mov	dword ptr [rbp - 152], esi
	movsxd	rax, edx
	mov	byte ptr [rbp + rax - 112], cl
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 144]
	add	rax, 55
	mov	cl, al
	mov	edx, dword ptr [rbp - 152]
	mov	esi, edx
	add	esi, 1
	mov	dword ptr [rbp - 152], esi
	movsxd	rax, edx
	mov	byte ptr [rbp + rax - 112], cl
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, 16
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 136]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 136], rax
	jmp	LBB1_1
LBB1_6:
	mov	eax, dword ptr [rbp - 152]
	mov	dword ptr [rbp - 148], eax
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 148], 0
	jl	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=1
	movsxd	rax, dword ptr [rbp - 148]
	movsx	esi, byte ptr [rbp + rax - 112]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
## %bb.9:                               ##   in Loop: Header=BB1_7 Depth=1
	mov	eax, dword ptr [rbp - 148]
	add	eax, -1
	mov	dword ptr [rbp - 148], eax
	jmp	LBB1_7
LBB1_10:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
	jne	LBB1_12
## %bb.11:
	add	rsp, 160
	pop	rbp
	ret
LBB1_12:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter decimal number: "

L_.str.1:                               ## @.str.1
	.asciz	"%ld"

L_.str.2:                               ## @.str.2
	.asciz	"%c"

L_.str.3:                               ## @.str.3
	.asciz	"\n"


.subsections_via_symbols
