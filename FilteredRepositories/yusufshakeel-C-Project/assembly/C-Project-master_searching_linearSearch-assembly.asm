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
	sub	rsp, 80
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], 0
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 40]
	shl	rax, 2
	lea	rcx, [rbp - 32]
	add	rcx, rax
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 44]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 32]
	mov	edx, dword ptr [rbp - 44]
	mov	esi, 5
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	call	_linearSearch
	mov	dword ptr [rbp - 40], eax
	cmp	dword ptr [rbp - 40], -1
	jne	LBB0_6
## %bb.5:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	jmp	LBB0_7
LBB0_6:
	mov	esi, dword ptr [rbp - 40]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_7:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_9
## %bb.8:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB0_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_linearSearch           ## -- Begin function linearSearch
	.p2align	4, 0x90
_linearSearch:                          ## @linearSearch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	eax, ecx
	jg	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	jne	LBB1_4
## %bb.3:
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_7
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_1
LBB1_6:
	mov	dword ptr [rbp - 4], -1
LBB1_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the array elements: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Enter key: "

L_.str.3:                               ## @.str.3
	.asciz	"Key not found.\n"

L_.str.4:                               ## @.str.4
	.asciz	"Key at index: %d\n"


.subsections_via_symbols
