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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 5], 97
	mov	byte ptr [rbp - 6], 98
	mov	dword ptr [rbp - 12], 10
	mov	dword ptr [rbp - 16], 20
	lea	rdi, [rbp - 5]
	lea	rsi, [rbp - 6]
	call	_funChar
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 12]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_funInt
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 32]
	mov	esi, dword ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_funChar                ## -- Begin function funChar
	.p2align	4, 0x90
_funChar:                               ## @funChar
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rsi]
	cmp	eax, ecx
	jle	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB1_6
LBB1_2:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jle	LBB1_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB1_6
LBB1_4:
	jmp	LBB1_5
LBB1_5:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
LBB1_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_funInt                 ## -- Begin function funInt
	.p2align	4, 0x90
_funInt:                                ## @funInt
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 24]
	cmp	eax, dword ptr [rsi]
	jle	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB2_6
LBB2_2:
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	cmp	ecx, dword ptr [rax]
	jle	LBB2_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB2_6
LBB2_4:
	jmp	LBB2_5
LBB2_5:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
LBB2_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"


.subsections_via_symbols
