	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_binarysearch           ## -- Begin function binarysearch
	.p2align	4, 0x90
_binarysearch:                          ## @binarysearch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 24]
	cmp	ecx, dword ptr [rbp - 20]
	jl	LBB0_6
## %bb.1:
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 24]
	sub	ecx, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	ecx, dword ptr [rbp - 36] ## 4-byte Reload
	add	ecx, eax
	mov	dword ptr [rbp - 32], ecx
	mov	rsi, qword ptr [rbp - 16]
	movsxd	rdi, dword ptr [rbp - 32]
	mov	eax, dword ptr [rsi + 4*rdi]
	cmp	eax, dword ptr [rbp - 28]
	jne	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_7
LBB0_3:
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 28]
	jle	LBB0_5
## %bb.4:
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	mov	eax, dword ptr [rbp - 32]
	sub	eax, 1
	mov	ecx, dword ptr [rbp - 28]
	mov	edx, eax
	call	_binarysearch
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_7
LBB0_5:
	mov	rdi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	edx, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	mov	esi, eax
	call	_binarysearch
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_7
LBB0_6:
	mov	dword ptr [rbp - 4], -1
LBB0_7:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
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
	xor	esi, esi
	lea	rdi, [rbp - 32]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l_main.arr]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.arr+8]
	mov	qword ptr [rbp - 24], rax
	mov	ecx, dword ptr [rip + l_main.arr+16]
	mov	dword ptr [rbp - 16], ecx
	mov	dword ptr [rbp - 40], 5
	mov	dword ptr [rbp - 44], 10
	mov	ecx, dword ptr [rbp - 40]
	sub	ecx, 1
	mov	edx, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 52], edx ## 4-byte Spill
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 52] ## 4-byte Reload
	call	_binarysearch
	mov	dword ptr [rbp - 48], eax
	cmp	dword ptr [rbp - 48], -1
	jne	LBB1_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	mov	esi, dword ptr [rbp - 48]
	lea	rdi, [rip + L_.str.1]
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
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB1_5:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.arr
l_main.arr:
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	10                      ## 0xa
	.long	40                      ## 0x28

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Element is not in the array\n"

L_.str.1:                               ## @.str.1
	.asciz	"Element is present at index %d\n"


.subsections_via_symbols
