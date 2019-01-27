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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 16]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	rdi, qword ptr [rbp - 16]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_decimal2Octal
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_decimal2Octal          ## -- Begin function decimal2Octal
	.p2align	4, 0x90
_decimal2Octal:                         ## @decimal2Octal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 464
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 424], rdi
	mov	dword ptr [rbp - 444], 1
	mov	rax, qword ptr [rbp - 424]
	mov	qword ptr [rbp - 440], rax
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 440], 0
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, 8
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 440]
	cqo
	idiv	rcx
	mov	esi, edx
	mov	edi, dword ptr [rbp - 444]
	mov	r8d, edi
	add	r8d, 1
	mov	dword ptr [rbp - 444], r8d
	movsxd	rdx, edi
	mov	dword ptr [rbp + 4*rdx - 416], esi
	mov	rdx, qword ptr [rbp - 440]
	mov	rax, rdx
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 440], rax
	jmp	LBB1_1
LBB1_3:
	mov	eax, dword ptr [rbp - 444]
	sub	eax, 1
	mov	dword ptr [rbp - 448], eax
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 448], 0
	jle	LBB1_7
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=1
	movsxd	rax, dword ptr [rbp - 448]
	mov	esi, dword ptr [rbp + 4*rax - 416]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 452], eax ## 4-byte Spill
## %bb.6:                               ##   in Loop: Header=BB1_4 Depth=1
	mov	eax, dword ptr [rbp - 448]
	add	eax, -1
	mov	dword ptr [rbp - 448], eax
	jmp	LBB1_4
LBB1_7:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 456], eax ## 4-byte Spill
	jne	LBB1_9
## %bb.8:
	add	rsp, 464
	pop	rbp
	ret
LBB1_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the decimal number: "

L_.str.1:                               ## @.str.1
	.asciz	"%ld"

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"\n"


.subsections_via_symbols
