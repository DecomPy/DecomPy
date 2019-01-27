	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_linearsearch           ## -- Begin function linearsearch
	.p2align	4, 0x90
_linearsearch:                          ## @linearsearch
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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 24]
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_1
LBB0_6:
	mov	dword ptr [rbp - 4], 0
LBB0_7:
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
	sub	rsp, 96
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	mov	byte ptr [rbp - 41], dl ## 1-byte Spill
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 12]
	mov	dl, byte ptr [rbp - 41] ## 1-byte Reload
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, dl
	call	_scanf
	mov	ecx, dword ptr [rbp - 12]
	mov	esi, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 32], rdi
	lea	rdi, [4*rsi + 15]
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 40], rsi
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	mov	qword ptr [rbp - 64], r8 ## 8-byte Spill
	call	_printf
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsxd	rax, dword ptr [rbp - 16]
	shl	rax, 2
	mov	rcx, qword ptr [rbp - 64] ## 8-byte Reload
	add	rcx, rax
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_4:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 20]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 20]
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	call	_linearsearch
	cmp	eax, 0
	je	LBB1_6
## %bb.5:
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	jmp	LBB1_7
LBB1_6:
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
LBB1_7:
	mov	rax, qword ptr [rbp - 32]
	mov	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB1_9
## %bb.8:
	mov	rsp, rbp
	pop	rbp
	ret
LBB1_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the size of the array:\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Enter the contents for an array of size %d:\n"

L_.str.3:                               ## @.str.3
	.asciz	"Enter the value to be searched:\n"

L_.str.4:                               ## @.str.4
	.asciz	"Value %d is in the array.\n"

L_.str.5:                               ## @.str.5
	.asciz	"Value %d is not in the array.\n"


.subsections_via_symbols
