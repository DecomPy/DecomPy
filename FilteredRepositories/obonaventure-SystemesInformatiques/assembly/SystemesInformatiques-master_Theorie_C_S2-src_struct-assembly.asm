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
	mov	dword ptr [rbp - 12], edi
	mov	dword ptr [rbp - 16], esi
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 4], esi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_equal                  ## -- Begin function equal
	.p2align	4, 0x90
_equal:                                 ## @equal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 16]
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
	jne	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 12]
	sete	cl
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
LBB1_2:
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_equalptr               ## -- Begin function equalptr
	.p2align	4, 0x90
_equalptr:                              ## @equalptr
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rsi]
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
	jne	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 16]
	cmp	ecx, dword ptr [rax + 4]
	sete	dl
	mov	byte ptr [rbp - 17], dl ## 1-byte Spill
LBB2_2:
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_initptr                ## -- Begin function initptr
	.p2align	4, 0x90
_initptr:                               ## @initptr
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
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], edx
	mov	edx, dword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], edx
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
	sub	rsp, 96
	xor	eax, eax
	mov	ecx, 12
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	lea	rsi, [rbp - 20]
	mov	rdi, rsi
	mov	esi, eax
	call	_memset
	mov	dword ptr [rip + _point], 1
	mov	dword ptr [rip + _point+4], 2
	mov	dword ptr [rip + _point+8], 3
	mov	edi, 1
	mov	esi, 4
	call	_init
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 48], rax
	lea	rdi, [rbp - 56]
	mov	esi, 1
	mov	edx, 3
	call	_initptr
	mov	rdi, qword ptr [rbp - 56]
	mov	rsi, qword ptr [rbp - 48]
	call	_equal
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 56]
	lea	rsi, [rbp - 48]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	call	_equalptr
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _f@GOTPCREL]
	mov	dword ptr [rdi], 1
	mov	dword ptr [rdi + 4], 4
	movsx	esi, byte ptr [rip + _s+6]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 12
	mov	edi, ecx
	lea	r8, [rip + L_.str.3]
	mov	qword ptr [rbp - 80], rdi ## 8-byte Spill
	mov	rdi, r8
	mov	rsi, qword ptr [rbp - 80] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 80] ## 8-byte Reload
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 56
	mov	esi, ecx
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	jne	LBB4_2
## %bb.1:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB4_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_point                  ## @point
	.p2align	2
_point:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3

	.globl	_demi                   ## @demi
	.p2align	2
_demi:
	.long	1                       ## 0x1
	.long	2                       ## 0x2

	.globl	_s                      ## @s
	.p2align	2
_s:
	.long	1                       ## 0x1
	.asciz	"Linus\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Torvalds\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.space	2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"equal(tiers,quart)=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"equalptr(&tiers,&quart)=%d\n"

	.comm	_f,8,2                  ## @f
L_.str.2:                               ## @.str.2
	.asciz	"%c\n"

L_.str.3:                               ## @.str.3
	.asciz	"sizeof int[3]=%ld, sizeof coord=%ld\n"

L_.str.4:                               ## @.str.4
	.asciz	"sizeof student : %ld\n"

	.comm	_p,12,2                 ## @p

.subsections_via_symbols
