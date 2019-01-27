	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_binary_search          ## -- Begin function binary_search
	.p2align	4, 0x90
_binary_search:                         ## @binary_search
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
	mov	dword ptr [rbp - 24], ecx
	mov	ecx, dword ptr [rbp - 24]
	add	ecx, dword ptr [rbp - 20]
	mov	eax, ecx
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 24]
	jne	LBB0_5
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 8]
	jne	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_3:
	mov	eax, 4294967295
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_4:
	mov	eax, dword ptr [rbp - 32] ## 4-byte Reload
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_8
LBB0_5:
	mov	eax, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rcx + 4*rdx]
	jg	LBB0_7
## %bb.6:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 28]
	call	_binary_search
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_8
LBB0_7:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	ecx, dword ptr [rbp - 24]
	mov	edx, eax
	call	_binary_search
	mov	dword ptr [rbp - 4], eax
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
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], 2
	mov	rax, qword ptr [rip + l_main.haystack]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.haystack+8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rip + l_main.haystack+16]
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 44], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 44], 6
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	xor	edx, edx
	lea	rsi, [rbp - 32]
	movsxd	rax, dword ptr [rbp - 44]
	mov	edi, dword ptr [rbp + 4*rax - 32]
	mov	ecx, 5
	call	_binary_search
	mov	dword ptr [rbp - 48], eax
	movsxd	rsi, dword ptr [rbp - 44]
	mov	esi, dword ptr [rbp + 4*rsi - 32]
	mov	edx, dword ptr [rbp - 48]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB1_1
LBB1_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB1_6
## %bb.5:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB1_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.haystack
l_main.haystack:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	10                      ## 0xa
	.long	11                      ## 0xb

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d is at %d\n"


.subsections_via_symbols
