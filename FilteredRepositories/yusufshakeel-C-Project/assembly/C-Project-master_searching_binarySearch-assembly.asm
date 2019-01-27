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
	sub	rsp, 96
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 56], 10
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 56]
	shl	rax, 2
	lea	rcx, [rbp - 48]
	add	rcx, rax
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 60]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 48]
	mov	edx, dword ptr [rbp - 60]
	mov	esi, 10
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	call	_binarySearch
	mov	dword ptr [rbp - 56], eax
	cmp	dword ptr [rbp - 56], -1
	jne	LBB0_6
## %bb.5:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	jmp	LBB0_7
LBB0_6:
	mov	esi, dword ptr [rbp - 56]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
LBB0_7:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_9
## %bb.8:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
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
	mov	dword ptr [rbp - 28], 0
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	mov	dword ptr [rbp - 32], edx
	mov	edx, dword ptr [rbp - 28]
	add	edx, dword ptr [rbp - 32]
	mov	eax, edx
	cdq
	mov	esi, 2
	idiv	esi
	mov	dword ptr [rbp - 36], eax
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	mov	byte ptr [rbp - 37], cl ## 1-byte Spill
	jg	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	setne	sil
	mov	byte ptr [rbp - 37], sil ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 37] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_8
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rcx + 4*rdx]
	jge	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	sub	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 32]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 36], eax
	jmp	LBB1_1
LBB1_8:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 32]
	jle	LBB1_10
## %bb.9:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB1_11
LBB1_10:
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 4], eax
LBB1_11:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter elements of the array: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Enter key: "

L_.str.3:                               ## @.str.3
	.asciz	"Key not found.\n"

L_.str.4:                               ## @.str.4
	.asciz	"Key at index: %d\n"


.subsections_via_symbols
