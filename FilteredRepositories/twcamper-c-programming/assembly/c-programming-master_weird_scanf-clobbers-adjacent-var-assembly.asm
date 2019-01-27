	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_play_game              ## -- Begin function play_game
	.p2align	4, 0x90
_play_game:                             ## @play_game
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	_rand
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	eax, edx
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 12], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_play_game
	cmp	eax, 0
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 12]
	add	ecx, 1
	mov	dword ptr [rbp - 12], ecx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB1_4
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rbp - 5]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 121
	mov	cl, 1
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	je	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 89
	sete	cl
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB1_1
## %bb.8:
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Win!\n"

L_.str.1:                               ## @.str.1
	.asciz	"Lose.\n"

L_.str.2:                               ## @.str.2
	.asciz	"Play again? "

L_.str.3:                               ## @.str.3
	.asciz	" %s"

L_.str.4:                               ## @.str.4
	.asciz	"Wins: %d\tLosses: %d\n"


.subsections_via_symbols
