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
	sub	rsp, 208
	lea	rax, [rbp - 96]
	mov	ecx, 59
	mov	edx, ecx
	mov	ecx, 88
	mov	esi, ecx
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 164], 0
	mov	rdi, rax
	lea	r8, [rip + L_main.s]
	mov	qword ptr [rbp - 176], rsi ## 8-byte Spill
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 176] ## 8-byte Reload
	mov	qword ptr [rbp - 184], rdx ## 8-byte Spill
	mov	rdx, r8
	mov	qword ptr [rbp - 192], rax ## 8-byte Spill
	call	_memcpy
	lea	rax, [rbp - 160]
	mov	rdi, rax
	lea	rsi, [rip + L_main.s1]
	mov	rdx, qword ptr [rbp - 184] ## 8-byte Reload
	call	_memcpy
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 192] ## 8-byte Reload
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 96]
	lea	rsi, [rip + L_.str.1]
	mov	dword ptr [rbp - 196], eax ## 4-byte Spill
	call	_censor
	lea	rsi, [rbp - 96]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 160]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 200], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 160]
	lea	rsi, [rip + L_.str.3]
	mov	dword ptr [rbp - 204], eax ## 4-byte Spill
	call	_censor
	lea	rdi, [rbp - 160]
	lea	rsi, [rip + L_.str.4]
	call	_censor
	lea	rsi, [rbp - 160]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	mov	dword ptr [rbp - 208], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 208
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_censor                 ## -- Begin function censor
	.p2align	4, 0x90
_censor:                                ## @censor
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rsi ## 8-byte Spill
	call	_strlen
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	add	rsi, rax
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
                                        ##     Child Loop BB1_10 Depth 2
	mov	rax, qword ptr [rbp - 40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB1_18
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 32]
	cmp	rdx, qword ptr [rbp - 24]
	mov	byte ptr [rbp - 49], cl ## 1-byte Spill
	jae	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 40]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	sete	sil
	mov	byte ptr [rbp - 49], sil ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	al, byte ptr [rbp - 49] ## 1-byte Reload
	test	al, 1
	jne	LBB1_6
	jmp	LBB1_8
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	jmp	LBB1_3
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 24]
	jne	LBB1_13
## %bb.9:                               ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_10
LBB1_10:                                ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 16]
	jbe	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_10 Depth=2
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 40]
	mov	rsi, qword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 16]
	sub	rsi, rdi
	sub	rcx, rsi
	mov	byte ptr [rdx + rcx], 120
	mov	rcx, qword ptr [rbp - 32]
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	jmp	LBB1_10
LBB1_12:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_16
LBB1_13:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 16]
	jbe	LBB1_15
## %bb.14:                              ##   in Loop: Header=BB1_1 Depth=1
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 16]
	sub	rdx, rsi
	mov	rsi, qword ptr [rbp - 40]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 40], rsi
LBB1_15:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_16
LBB1_16:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_17
LBB1_17:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	jmp	LBB1_1
LBB1_18:
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @main.s
L_main.s:
	.asciz	"Philo (a.k.a. \"Mr. Fuffoo Pants\") the foolish foodie found tofu profoundly fulfilling.\n"

	.p2align	4               ## @main.s1
L_main.s1:
	.asciz	"Roderick Riddick loved the films of Ernst Lubibitch (sic)."

L_.str:                                 ## @.str
	.asciz	"Before:\013%s\n"

L_.str.1:                               ## @.str.1
	.asciz	"foo"

L_.str.2:                               ## @.str.2
	.asciz	"After: \013%s\n"

L_.str.3:                               ## @.str.3
	.asciz	"dick"

L_.str.4:                               ## @.str.4
	.asciz	"bitch"


.subsections_via_symbols
