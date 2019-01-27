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
	sub	rsp, 144
	lea	rax, [rip + l_main.scrabble_weights]
	mov	ecx, 104
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 116], 0
	mov	dword ptr [rbp - 120], 0
	lea	rsi, [rbp - 112]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 121], cl
	movsx	eax, cl
	cmp	eax, 10
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	edi, byte ptr [rbp - 121]
	call	_toupper
	sub	eax, 65
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 112]
	add	eax, dword ptr [rbp - 120]
	mov	dword ptr [rbp - 120], eax
	jmp	LBB0_1
LBB0_3:
	mov	esi, dword ptr [rbp - 120]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	jne	LBB0_5
## %bb.4:
	xor	eax, eax
	add	rsp, 144
	pop	rbp
	ret
LBB0_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.scrabble_weights
l_main.scrabble_weights:
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	8                       ## 0x8
	.long	5                       ## 0x5
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	10                      ## 0xa
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	8                       ## 0x8
	.long	4                       ## 0x4
	.long	10                      ## 0xa

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a word: "

L_.str.1:                               ## @.str.1
	.asciz	"Scrabble Value: %d\n"


.subsections_via_symbols
