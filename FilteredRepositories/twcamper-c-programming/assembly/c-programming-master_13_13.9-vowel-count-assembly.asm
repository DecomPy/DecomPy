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
	sub	rsp, 1072
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 1044], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rcx, [rbp - 1040]
	mov	rdx, qword ptr [rdi]
	mov	rdi, rcx
	mov	esi, 1025
	mov	dword ptr [rbp - 1048], eax ## 4-byte Spill
	call	_fgets
	lea	rdi, [rbp - 1040]
	mov	qword ptr [rbp - 1056], rax ## 8-byte Spill
	call	_count_vowels
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 1060], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 1072
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_count_vowels           ## -- Begin function count_vowels
	.p2align	4, 0x90
_count_vowels:                          ## @count_vowels
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	LBB1_5
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 8], rcx
	movsx	edi, byte ptr [rax]
	call	_tolower
	mov	edi, eax
	sub	eax, 97
	mov	dword ptr [rbp - 16], edi ## 4-byte Spill
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_6
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	sub	eax, 101
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	sub	eax, 105
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_8
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	sub	eax, 111
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_9
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	sub	eax, 117
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jne	LBB1_4
	jmp	LBB1_3
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_5:
	mov	eax, dword ptr [rbp - 12]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a sentence: "

L_.str.1:                               ## @.str.1
	.asciz	"Vowel count: %d\n"


.subsections_via_symbols
