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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
## %bb.1:
	jmp	LBB0_2
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	mov	esi, dword ptr [rbp - 20]
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rcx + 8*rdx]
	lea	rdi, [rip + L_.str]
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_2
LBB0_4:
	mov	dword ptr [rbp - 20], 0
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	esi, dword ptr [rbp - 20]
	mov	rdx, qword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	mov	rcx, qword ptr [rbp - 32]
	add	rcx, 8
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_7:
	mov	dword ptr [rbp - 20], 0
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=1
	mov	esi, dword ptr [rbp - 20]
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rip + L_.str]
	lea	rdx, [rbp - 40]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	mov	rcx, qword ptr [rbp - 40]
	add	rcx, 8
	mov	qword ptr [rbp - 40], rcx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB0_8
LBB0_10:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %p %s\n"


.subsections_via_symbols
