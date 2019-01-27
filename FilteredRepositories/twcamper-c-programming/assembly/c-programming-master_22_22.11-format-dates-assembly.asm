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
	mov	dword ptr [rbp - 116], 0
	mov	dword ptr [rbp - 120], edi
	mov	qword ptr [rbp - 128], rsi
	cmp	dword ptr [rbp - 120], 2
	jge	LBB0_2
## %bb.1:
	mov	edi, 1
	call	_exit
LBB0_2:
	lea	rax, [rip + l_main.months]
	mov	ecx, 104
	mov	edx, ecx
	lea	rsi, [rbp - 112]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 144], 1
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 144]
	cmp	eax, dword ptr [rbp - 120]
	jge	LBB0_9
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 128]
	movsxd	rcx, dword ptr [rbp - 144]
	mov	rdi, qword ptr [rax + 8*rcx]
	lea	rsi, [rip + L_.str.13]
	lea	rdx, [rbp - 132]
	lea	rcx, [rbp - 136]
	lea	r8, [rbp - 140]
	mov	al, 0
	call	_sscanf
	cmp	dword ptr [rbp - 132], 1
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	jl	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	cmp	dword ptr [rbp - 132], 12
	jle	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 132]
	lea	rsi, [rip + L_.str.14]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	movsxd	rax, dword ptr [rbp - 132]
	mov	rsi, qword ptr [rbp + 8*rax - 112]
	mov	edx, dword ptr [rbp - 136]
	mov	ecx, dword ptr [rbp - 140]
	lea	rdi, [rip + L_.str.15]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 144]
	add	eax, 1
	mov	dword ptr [rbp - 144], eax
	jmp	LBB0_3
LBB0_9:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_11
## %bb.10:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB0_11:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"INVALID"

L_.str.1:                               ## @.str.1
	.asciz	"January"

L_.str.2:                               ## @.str.2
	.asciz	"February"

L_.str.3:                               ## @.str.3
	.asciz	"March"

L_.str.4:                               ## @.str.4
	.asciz	"April"

L_.str.5:                               ## @.str.5
	.asciz	"May"

L_.str.6:                               ## @.str.6
	.asciz	"June"

L_.str.7:                               ## @.str.7
	.asciz	"July"

L_.str.8:                               ## @.str.8
	.asciz	"August"

L_.str.9:                               ## @.str.9
	.asciz	"September"

L_.str.10:                              ## @.str.10
	.asciz	"Octobre"

L_.str.11:                              ## @.str.11
	.asciz	"November"

L_.str.12:                              ## @.str.12
	.asciz	"December"

	.section	__DATA,__const
	.p2align	4               ## @main.months
l_main.months:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11
	.quad	L_.str.12

	.section	__TEXT,__cstring,cstring_literals
L_.str.13:                              ## @.str.13
	.asciz	"%2d%*[-/]%2d%*[-/]%4d"

L_.str.14:                              ## @.str.14
	.asciz	"Invalid month: %d\n"

L_.str.15:                              ## @.str.15
	.asciz	"%s %d, %4d\n"


.subsections_via_symbols
