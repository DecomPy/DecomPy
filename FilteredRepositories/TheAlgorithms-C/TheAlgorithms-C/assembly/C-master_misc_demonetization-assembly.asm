	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ways                   ## -- Begin function ways
	.p2align	4, 0x90
_ways:                                  ## @ways
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	cmp	dword ptr [rbp - 8], 0
	jl	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 20], 0
	jge	LBB0_3
LBB0_2:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_8
LBB0_3:
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_5
## %bb.4:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_8
LBB0_5:
	cmp	dword ptr [rbp - 20], 0
	jne	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_8
LBB0_7:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	edx, eax
	call	_ways
	mov	edx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 20]
	sub	edi, 1
	movsxd	rcx, edi
	sub	edx, dword ptr [rsi + 4*rcx]
	mov	rsi, qword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 24], edi ## 4-byte Spill
	mov	edi, edx
	mov	edx, dword ptr [rbp - 24] ## 4-byte Reload
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_ways
	mov	edx, dword ptr [rbp - 28] ## 4-byte Reload
	add	edx, eax
	mov	dword ptr [rbp - 4], edx
LBB0_8:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
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
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	mov	byte ptr [rbp - 45], dl ## 1-byte Spill
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 16]
	mov	dl, byte ptr [rbp - 45] ## 1-byte Reload
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, dl
	call	_scanf
	mov	ecx, dword ptr [rbp - 16]
	mov	esi, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 32], rdi
	lea	rdi, [4*rsi + 15]
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 40], rsi
	mov	dword ptr [rbp - 44], 0
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	qword ptr [rbp - 64], r8 ## 8-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 44]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	movsxd	rdi, dword ptr [rbp - 44]
	shl	rdi, 2
	mov	rcx, qword ptr [rbp - 64] ## 8-byte Reload
	add	rcx, rdi
	lea	rdi, [rip + L_.str.1]
	mov	rsi, rcx
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB1_1
LBB1_4:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	jmp	LBB1_6
LBB1_6:                                 ##   in Loop: Header=BB1_5 Depth=1
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 24]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	cmp	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	jne	LBB1_8
## %bb.7:
	jmp	LBB1_9
LBB1_8:                                 ##   in Loop: Header=BB1_5 Depth=1
	mov	edi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	call	_ways
	lea	rdi, [rip + L_.str.5]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	jmp	LBB1_5
LBB1_9:
	mov	dword ptr [rbp - 12], 0
	mov	rax, qword ptr [rbp - 32]
	mov	rsp, rax
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	jne	LBB1_11
## %bb.10:
	mov	eax, dword ptr [rbp - 92] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB1_11:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Number of coins? "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"coin? "

L_.str.3:                               ## @.str.3
	.asciz	"---- your requests --- \n"

L_.str.4:                               ## @.str.4
	.asciz	"amount? exit(0) "

L_.str.5:                               ## @.str.5
	.asciz	"%d\n"


.subsections_via_symbols
