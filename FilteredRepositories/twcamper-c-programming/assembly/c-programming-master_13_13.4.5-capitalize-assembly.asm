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
	lea	rax, [rbp - 48]
	mov	ecx, 33
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 52], 0
	mov	rsi, rax
	mov	rdi, rsi
	lea	rsi, [rip + L_main.s]
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
	call	_memcpy
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 48]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	call	_capitalize
	lea	rsi, [rbp - 48]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
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
	.globl	_capitalize             ## -- Begin function capitalize
	.p2align	4, 0x90
_capitalize:                            ## @capitalize
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	edi, byte ptr [rax]
	call	_toupper
	mov	cl, al
	mov	rdx, qword ptr [rbp - 16]
	mov	byte ptr [rdx], cl
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	jmp	LBB1_1
LBB1_4:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @main.s
L_main.s:
	.asciz	"what is wrong with you, lucille?"

L_.str:                                 ## @.str
	.asciz	"before:\013%s\n"

L_.str.1:                               ## @.str.1
	.asciz	"after:\013%s\n"


.subsections_via_symbols
