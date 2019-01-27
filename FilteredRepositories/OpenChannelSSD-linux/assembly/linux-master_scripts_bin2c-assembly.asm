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
	mov	dword ptr [rbp - 24], 0
	cmp	dword ptr [rbp - 8], 1
	jle	LBB0_5
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rax + 8]
	cmp	dword ptr [rbp - 8], 2
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
	jle	LBB0_3
## %bb.2:
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 16]
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	jmp	LBB0_4
LBB0_3:
	lea	rax, [rip + L_.str.1]
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	jmp	LBB0_4
LBB0_4:
	mov	rax, qword ptr [rbp - 40] ## 8-byte Reload
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB0_5:
	jmp	LBB0_6
LBB0_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_7:                                 ##   Parent Loop BB0_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	call	_getchar
	mov	dword ptr [rbp - 20], eax
	cmp	eax, -1
	je	LBB0_11
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, esi
	cdq
	mov	esi, 16
	idiv	esi
	cmp	edx, 0
	jne	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_6 Depth=1
	jmp	LBB0_11
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=2
	jmp	LBB0_7
LBB0_11:                                ##   in Loop: Header=BB0_6 Depth=1
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
## %bb.12:                              ##   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp - 20], -1
	jne	LBB0_6
## %bb.13:
	cmp	dword ptr [rbp - 8], 1
	jle	LBB0_15
## %bb.14:
	mov	rax, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rax + 8]
	mov	edx, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
LBB0_15:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"const char %s[] %s=\n"

L_.str.1:                               ## @.str.1
	.space	1

L_.str.2:                               ## @.str.2
	.asciz	"\t\""

L_.str.3:                               ## @.str.3
	.asciz	"\\x%02x"

L_.str.4:                               ## @.str.4
	.asciz	"\"\n"

L_.str.5:                               ## @.str.5
	.asciz	"\t;\n\n#include <linux/types.h>\n\nconst size_t %s_size = %d;\n"


.subsections_via_symbols
