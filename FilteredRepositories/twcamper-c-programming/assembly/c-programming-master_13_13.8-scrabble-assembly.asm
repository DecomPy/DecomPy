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
	sub	rsp, 160
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 148], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 144]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 144]
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	call	_compute_scrabble_value
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_compute_scrabble_value ## -- Begin function compute_scrabble_value
	.p2align	4, 0x90
_compute_scrabble_value:                ## @compute_scrabble_value
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 144
	lea	rax, [rip + l_compute_scrabble_value.scrabble_weights]
	mov	ecx, 104
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 120], rdi
	lea	rsi, [rbp - 112]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 128], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 120]
	cmp	byte ptr [rax], 0
	je	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 120]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 120], rcx
	movsx	edi, byte ptr [rax]
	call	_toupper
	mov	dl, al
	mov	byte ptr [rbp - 121], dl
	movsx	eax, byte ptr [rbp - 121]
	cmp	eax, 65
	jl	LBB1_5
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rbp - 121]
	cmp	eax, 90
	jg	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_1 Depth=1
	movsx	eax, byte ptr [rbp - 121]
	sub	eax, 65
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 112]
	add	eax, dword ptr [rbp - 128]
	mov	dword ptr [rbp - 128], eax
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_6:
	mov	eax, dword ptr [rbp - 128]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	jne	LBB1_8
## %bb.7:
	mov	eax, dword ptr [rbp - 132] ## 4-byte Reload
	add	rsp, 144
	pop	rbp
	ret
LBB1_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a word: "

L_.str.1:                               ## @.str.1
	.asciz	"%127s"

L_.str.2:                               ## @.str.2
	.asciz	"Scrabble Value: %d\n"

	.section	__TEXT,__const
	.p2align	4               ## @compute_scrabble_value.scrabble_weights
l_compute_scrabble_value.scrabble_weights:
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


.subsections_via_symbols
