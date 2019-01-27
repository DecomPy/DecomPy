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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	word ptr [rbp - 18], 1
	mov	word ptr [rbp - 20], 1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], 1
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 24], 10
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, word ptr [rbp - 18]
	imul	eax, eax, 5
	mov	cx, ax
	mov	word ptr [rbp - 18], cx
	mov	esi, dword ptr [rbp - 24]
	movsx	edx, word ptr [rbp - 18]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], 1
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 24], 10
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movzx	eax, word ptr [rbp - 20]
	imul	eax, eax, 10
	mov	cx, ax
	mov	word ptr [rbp - 20], cx
	mov	esi, dword ptr [rbp - 24]
	movzx	edx, word ptr [rbp - 20]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_5
LBB0_8:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nPuissances de 5 en notation sign\303\251e\n"

L_.str.1:                               ## @.str.1
	.asciz	"5^%d=%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"\nPuissances de 10 en notation non sign\303\251e\n"

L_.str.3:                               ## @.str.3
	.asciz	"10^%d=%d\n"


.subsections_via_symbols
