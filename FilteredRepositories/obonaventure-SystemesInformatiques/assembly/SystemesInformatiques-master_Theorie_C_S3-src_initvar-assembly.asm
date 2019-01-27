	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_init                   ## -- Begin function init
	.p2align	4, 0x90
_init:                                  ## @init
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 8032
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 8020], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8020], 1000
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 8020]
	movsxd	rcx, dword ptr [rbp - 8020]
	mov	qword ptr [rbp + 8*rcx - 8016], rax
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8020]
	add	eax, 1
	mov	dword ptr [rbp - 8020], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_6
## %bb.5:
	add	rsp, 8032
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_read                   ## -- Begin function read
	.p2align	4, 0x90
_read:                                  ## @read
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 8048
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 8024], 0
	mov	dword ptr [rbp - 8028], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8028], 1000
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsxd	rax, dword ptr [rbp - 8028]
	mov	rax, qword ptr [rbp + 8*rax - 8016]
	add	rax, qword ptr [rbp - 8024]
	mov	qword ptr [rbp - 8024], rax
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 8028]
	add	eax, 1
	mov	dword ptr [rbp - 8028], eax
	jmp	LBB1_1
LBB1_4:
	mov	rax, qword ptr [rbp - 8024]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 8040], rax ## 8-byte Spill
	jne	LBB1_6
## %bb.5:
	mov	rax, qword ptr [rbp - 8040] ## 8-byte Reload
	add	rsp, 8048
	pop	rbp
	ret
LBB1_6:
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 5
	cmp	dword ptr [rbp - 8], 2
	jne	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	dword ptr [rbp - 20], eax
LBB2_2:
	call	_read
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_init
	call	_read
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"R\303\251sultat de read() avant init(): %ld\n"

L_.str.1:                               ## @.str.1
	.asciz	"R\303\251sultat de read() apr\303\250s init() : %ld\n"


.subsections_via_symbols
