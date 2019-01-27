	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_strdel                 ## -- Begin function strdel
	.p2align	4, 0x90
_strdel:                                ## @strdel
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 12]
	add	edx, -1
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 12]
	add	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], edx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	sub	esi, dword ptr [rbp - 16]
	movsxd	rcx, esi
	mov	byte ptr [rax + rcx], dl
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, dword ptr [rbp - 16]
	movsxd	rdx, ecx
	mov	byte ptr [rax + rdx], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
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
	sub	rsp, 128
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 64]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	call	_gets
	lea	rdi, [rip + L_.str.1]
	mov	qword ptr [rbp - 88], rax ## 8-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 68]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 72]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 64]
	mov	esi, dword ptr [rbp - 68]
	mov	edx, dword ptr [rbp - 72]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	call	_strdel
	lea	rsi, [rbp - 64]
	lea	rdi, [rip + L_.str.4]
	mov	qword ptr [rbp - 112], rax ## 8-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	add	rsp, 128
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nPlease input original string:"

L_.str.1:                               ## @.str.1
	.asciz	"\nPlease input delete position:"

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"\nPlease input delete length:"

L_.str.4:                               ## @.str.4
	.asciz	"\nThe final string:%s"


.subsections_via_symbols
