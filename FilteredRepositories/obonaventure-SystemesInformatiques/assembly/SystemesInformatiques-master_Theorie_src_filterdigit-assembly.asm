	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_digit                  ## -- Begin function digit
	.p2align	4, 0x90
_digit:                                 ## @digit
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	xor	edi, edi
	mov	cl, dil
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	cmp	edi, 48
	mov	byte ptr [rbp - 2], cl  ## 1-byte Spill
	jl	LBB0_2
## %bb.1:
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 57
	setle	cl
	mov	byte ptr [rbp - 2], cl  ## 1-byte Spill
LBB0_2:
	mov	al, byte ptr [rbp - 2]  ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_usage                  ## -- Begin function usage
	.p2align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	call	_exit
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
	cmp	dword ptr [rbp - 8], 1
	jle	LBB2_2
## %bb.1:
	call	_usage
LBB2_2:
	jmp	LBB2_3
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 17], cl
	movsx	eax, cl
	cmp	eax, -1
	je	LBB2_7
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movsx	edi, byte ptr [rbp - 17]
	call	_digit
	cmp	eax, 0
	je	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	movsx	edi, byte ptr [rbp - 17]
	call	_putchar
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=1
	jmp	LBB2_3
LBB2_7:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Ce programme ne prend pas d'argument\n"


.subsections_via_symbols
