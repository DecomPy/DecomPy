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
	sub	rsp, 192
	xor	esi, esi
	mov	eax, 100
	mov	edx, eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 116], 0
	lea	rcx, [rbp - 112]
	mov	rdi, rcx
	call	_memset
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 120], 0
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmp	dword ptr [rbp - 120], 5
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 120]
	add	eax, 1
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 124], 0
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 124], 5
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movsxd	rax, dword ptr [rbp - 120]
	imul	rax, rax, 20
	lea	rcx, [rbp - 112]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 124]
	shl	rax, 2
	add	rcx, rax
	lea	rdi, [rip + L_.str.2]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 120]
	add	eax, 1
	mov	dword ptr [rbp - 120], eax
	jmp	LBB0_1
LBB0_8:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 120], 0
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	cmp	dword ptr [rbp - 120], 5
	jge	LBB0_16
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 120]
	add	eax, 1
	lea	rdi, [rip + L_.str.5]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 132], 0
	mov	dword ptr [rbp - 124], 0
	mov	dword ptr [rbp - 164], eax ## 4-byte Spill
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 124], 5
	jge	LBB0_14
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movsxd	rax, dword ptr [rbp - 120]
	imul	rax, rax, 20
	lea	rcx, [rbp - 112]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 124]
	mov	edx, dword ptr [rcx + 4*rax]
	add	edx, dword ptr [rbp - 132]
	mov	dword ptr [rbp - 132], edx
## %bb.13:                              ##   in Loop: Header=BB0_11 Depth=2
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB0_11
LBB0_14:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 132]
	cdq
	mov	ecx, 5
	idiv	ecx
	mov	ecx, dword ptr [rbp - 132]
	lea	rdi, [rip + L_.str.6]
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 168], eax ## 4-byte Spill
## %bb.15:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 120]
	add	eax, 1
	mov	dword ptr [rbp - 120], eax
	jmp	LBB0_9
LBB0_16:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 172], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 124], 0
	mov	dword ptr [rbp - 176], eax ## 4-byte Spill
LBB0_17:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_19 Depth 2
	cmp	dword ptr [rbp - 124], 5
	jge	LBB0_28
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=1
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	lea	rdi, [rip + L_.str.8]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 132], 0
	mov	dword ptr [rbp - 140], 0
	mov	dword ptr [rbp - 136], 100
	mov	dword ptr [rbp - 120], 0
	mov	dword ptr [rbp - 180], eax ## 4-byte Spill
LBB0_19:                                ##   Parent Loop BB0_17 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 120], 5
	jge	LBB0_26
## %bb.20:                              ##   in Loop: Header=BB0_19 Depth=2
	movsxd	rax, dword ptr [rbp - 120]
	imul	rax, rax, 20
	lea	rcx, [rbp - 112]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 124]
	mov	edx, dword ptr [rcx + 4*rax]
	mov	dword ptr [rbp - 128], edx
	mov	edx, dword ptr [rbp - 128]
	cmp	edx, dword ptr [rbp - 140]
	jle	LBB0_22
## %bb.21:                              ##   in Loop: Header=BB0_19 Depth=2
	mov	eax, dword ptr [rbp - 128]
	mov	dword ptr [rbp - 140], eax
LBB0_22:                                ##   in Loop: Header=BB0_19 Depth=2
	mov	eax, dword ptr [rbp - 128]
	cmp	eax, dword ptr [rbp - 136]
	jge	LBB0_24
## %bb.23:                              ##   in Loop: Header=BB0_19 Depth=2
	mov	eax, dword ptr [rbp - 128]
	mov	dword ptr [rbp - 136], eax
LBB0_24:                                ##   in Loop: Header=BB0_19 Depth=2
	mov	eax, dword ptr [rbp - 128]
	add	eax, dword ptr [rbp - 132]
	mov	dword ptr [rbp - 132], eax
## %bb.25:                              ##   in Loop: Header=BB0_19 Depth=2
	mov	eax, dword ptr [rbp - 120]
	add	eax, 1
	mov	dword ptr [rbp - 120], eax
	jmp	LBB0_19
LBB0_26:                                ##   in Loop: Header=BB0_17 Depth=1
	mov	esi, dword ptr [rbp - 136]
	mov	edx, dword ptr [rbp - 140]
	mov	eax, dword ptr [rbp - 132]
	mov	dword ptr [rbp - 184], edx ## 4-byte Spill
	cdq
	mov	ecx, 5
	idiv	ecx
	lea	rdi, [rip + L_.str.9]
	mov	ecx, dword ptr [rbp - 184] ## 4-byte Reload
	mov	edx, ecx
	mov	ecx, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 188], eax ## 4-byte Spill
## %bb.27:                              ##   in Loop: Header=BB0_17 Depth=1
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB0_17
LBB0_28:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 192], eax ## 4-byte Spill
	jne	LBB0_30
## %bb.29:
	xor	eax, eax
	add	rsp, 192
	pop	rbp
	ret
LBB0_30:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter quiz scores:\n"

L_.str.1:                               ## @.str.1
	.asciz	"Student %d: "

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"Student Stats:\tAverage\tTotal\n"

L_.str.5:                               ## @.str.5
	.asciz	"Student %d:"

L_.str.6:                               ## @.str.6
	.asciz	"\t%4d\t%4d\n"

L_.str.7:                               ## @.str.7
	.asciz	"Quiz Stats:\tLow\tHigh\tAverage\n"

L_.str.8:                               ## @.str.8
	.asciz	"Quiz %d:\t"

L_.str.9:                               ## @.str.9
	.asciz	"\t%4d\t%4d\t%4d\n"


.subsections_via_symbols
