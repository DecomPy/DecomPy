	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_binarySearch           ## -- Begin function binarySearch
	.p2align	4, 0x90
_binarySearch:                          ## @binarySearch
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
	mov	dword ptr [rbp - 28], -1
	mov	dword ptr [rbp - 40], 0
	mov	dword ptr [rbp - 36], 0
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	mov	dword ptr [rbp - 32], edx
	mov	dword ptr [rbp - 40], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_10
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, dword ptr [rbp - 32]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 28], eax
	mov	rsi, qword ptr [rbp - 16]
	movsxd	rdi, dword ptr [rbp - 28]
	mov	eax, dword ptr [rsi + 4*rdi]
	cmp	eax, dword ptr [rbp - 24]
	jne	LBB0_4
## %bb.3:
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_10
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	sub	eax, 1
	mov	dword ptr [rbp - 32], eax
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_1
LBB0_10:
	mov	eax, dword ptr [rbp - 4]
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
	sub	rsp, 64
	lea	rax, [rbp - 32]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 36], edi
	mov	qword ptr [rbp - 48], rsi
	mov	rcx, qword ptr [rip + l_main.array]
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rip + l_main.array+8]
	mov	qword ptr [rbp - 24], rcx
	mov	edi, dword ptr [rip + l_main.array+16]
	mov	dword ptr [rbp - 16], edi
	mov	rdi, rax
	mov	edx, 5
	mov	esi, edx
	call	_binarySearch
	mov	dword ptr [rbp - 52], eax
	cmp	dword ptr [rbp - 52], 0
	jge	LBB1_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	esi, 5
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	mov	edx, dword ptr [rbp - 52]
	lea	rdi, [rip + L_.str.1]
	mov	esi, 5
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
LBB1_3:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB1_5
## %bb.4:
	add	rsp, 64
	pop	rbp
	ret
LBB1_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.array
l_main.array:
	.long	5                       ## 0x5
	.long	8                       ## 0x8
	.long	10                      ## 0xa
	.long	14                      ## 0xe
	.long	16                      ## 0x10

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The number %d doesnt exist in array\n"

L_.str.1:                               ## @.str.1
	.asciz	"The number %d exist in array at position : %d \n"


.subsections_via_symbols
