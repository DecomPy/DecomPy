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
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	mov	dword ptr [rbp - 20], 16909060
	mov	dword ptr [rbp - 16], 84281096
	mov	dword ptr [rbp - 12], 151653132
	mov	dword ptr [rbp - 44], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 44], 3
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 44]
	mov	esi, dword ptr [rbp + 4*rax - 20]
	movsxd	rax, dword ptr [rbp - 44]
	shl	rax, 2
	lea	rcx, [rbp - 20]
	add	rcx, rax
	lea	rdi, [rip + L_.str]
	mov	rdx, rcx
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB0_1
LBB0_4:
	lea	rax, [rbp - 20]
	mov	qword ptr [rbp - 56], rax
	mov	dword ptr [rbp - 44], 0
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 44], 3
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 56]
	mov	esi, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 56]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rbp - 56]
	add	rdx, 4
	mov	qword ptr [rbp - 56], rdx
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB0_5
LBB0_8:
	lea	rax, [rbp - 20]
	mov	qword ptr [rbp - 64], rax
	mov	rsi, qword ptr [rbp - 64]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], 0
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 44], 4
	jge	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	rax, qword ptr [rbp - 64]
	movzx	esi, byte ptr [rax]
	mov	rdx, qword ptr [rbp - 64]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rbp - 64]
	add	rdx, 1
	mov	qword ptr [rbp - 64], rdx
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB0_9
LBB0_12:
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	jne	LBB0_14
## %bb.13:
	mov	eax, dword ptr [rbp - 84] ## 4-byte Reload
	add	rsp, 96
	pop	rbp
	ret
LBB0_14:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%X est \303\240 l'adresse %p\n"

L_.str.1:                               ## @.str.1
	.asciz	"ptr_char contient %p\n"


.subsections_via_symbols
