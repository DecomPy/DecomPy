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
	lea	rsi, [rbp - 26]
	lea	rdi, [rbp - 16]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 20], 0
	mov	ecx, dword ptr [rip + L_main.src]
	mov	dword ptr [rbp - 26], ecx
	mov	dx, word ptr [rip + L_main.src+4]
	mov	word ptr [rbp - 22], dx
	mov	rax, qword ptr [rip + L_main.dest]
	mov	qword ptr [rbp - 16], rax
	call	_ft_strcpy
	mov	dword ptr [rbp - 32], 0
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 32], 34
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	movsx	ecx, byte ptr [rbp + rax - 16]
	cmp	ecx, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, 88
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	movsx	ecx, byte ptr [rbp + rax - 16]
	mov	dword ptr [rbp - 44], ecx ## 4-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 44] ## 4-byte Reload
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 32]
	add	esi, 1
	mov	dword ptr [rbp - 32], esi
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_6:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jne	LBB0_8
## %bb.7:
	mov	eax, dword ptr [rbp - 52] ## 4-byte Reload
	add	rsp, 64
	pop	rbp
	ret
LBB0_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.src:                             ## @main.src
	.asciz	"eeeee"

L_main.dest:                            ## @main.dest
	.asciz	"aaaaaaa"

L_.str:                                 ## @.str
	.asciz	"%c\n"


.subsections_via_symbols
