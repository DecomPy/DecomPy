	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_length                 ## -- Begin function length
	.p2align	4, 0x90
_length:                                ## @length
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_plusun                 ## -- Begin function plusun
	.p2align	4, 0x90
_plusun:                                ## @plusun
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, 1
	mov	dword ptr [rax + 4*rcx], edx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print_vecteur          ## -- Begin function print_vecteur
	.p2align	4, 0x90
_print_vecteur:                         ## @print_vecteur
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_1
LBB2_4:
	cmp	dword ptr [rbp - 4], 0
	jle	LBB2_6
## %bb.5:
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	esi, dword ptr [rax + 4*rdx]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB2_7
LBB2_6:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB2_7:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_wrong                  ## -- Begin function wrong
	.p2align	4, 0x90
_wrong:                                 ## @wrong
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	eax, 5
	mov	esi, eax
	lea	rcx, [rbp - 32]
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rip + l_wrong.vecteur]
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rip + l_wrong.vecteur+8]
	mov	qword ptr [rbp - 24], rdx
	mov	eax, dword ptr [rip + l_wrong.vecteur+16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, ecx
	mov	edi, eax
	call	_plusun
	lea	rsi, [rbp - 32]
	mov	edi, 5
	call	_print_vecteur
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	jne	LBB3_2
## %bb.1:
	add	rsp, 32
	pop	rbp
	ret
LBB3_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
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
	lea	rax, [rbp - 32]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], edi
	mov	qword ptr [rbp - 48], rsi
	mov	rcx, qword ptr [rip + l_main.vecteur]
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rip + l_main.vecteur+8]
	mov	qword ptr [rbp - 24], rcx
	mov	edi, dword ptr [rip + l_main.vecteur+16]
	mov	dword ptr [rbp - 16], edi
	mov	edi, 5
	mov	rsi, rax
	call	_plusun
	lea	rsi, [rbp - 32]
	mov	edi, 5
	call	_print_vecteur
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB4_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB4_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"v={"

L_.str.1:                               ## @.str.1
	.asciz	"%d,"

L_.str.2:                               ## @.str.2
	.asciz	"%d}"

L_.str.3:                               ## @.str.3
	.asciz	"}"

	.section	__TEXT,__const
	.p2align	4               ## @wrong.vecteur
l_wrong.vecteur:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5

	.p2align	4               ## @main.vecteur
l_main.vecteur:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5


.subsections_via_symbols
