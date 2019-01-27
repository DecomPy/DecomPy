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
	sub	rsp, 128
	lea	rax, [rip + l_main.array]
	mov	ecx, 52
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 68], 0
	mov	dword ptr [rbp - 72], edi
	mov	qword ptr [rbp - 80], rsi
	lea	rsi, [rbp - 64]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 84], 9
	mov	dword ptr [rbp - 104], 0
	mov	dword ptr [rbp - 108], 0
	mov	dword ptr [rbp - 88], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 88]
	cmp	eax, dword ptr [rbp - 84]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 88]
	mov	esi, dword ptr [rbp + 4*rax - 64]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 88]
	add	eax, 1
	mov	dword ptr [rbp - 88], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 92], 0
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	mov	eax, dword ptr [rbp - 92]
	mov	ecx, dword ptr [rbp - 84]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_14
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	mov	dword ptr [rbp - 96], 0
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 96]
	mov	ecx, dword ptr [rbp - 84]
	sub	ecx, dword ptr [rbp - 92]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 104]
	add	eax, 1
	mov	dword ptr [rbp - 104], eax
	movsxd	rcx, dword ptr [rbp - 96]
	mov	eax, dword ptr [rbp + 4*rcx - 64]
	mov	edx, dword ptr [rbp - 96]
	add	edx, 1
	movsxd	rcx, edx
	cmp	eax, dword ptr [rbp + 4*rcx - 64]
	jle	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=2
	movsxd	rax, dword ptr [rbp - 96]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	mov	dword ptr [rbp - 100], ecx
	mov	ecx, dword ptr [rbp - 96]
	add	ecx, 1
	movsxd	rax, ecx
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	movsxd	rax, dword ptr [rbp - 96]
	mov	dword ptr [rbp + 4*rax - 64], ecx
	mov	ecx, dword ptr [rbp - 100]
	mov	edx, dword ptr [rbp - 96]
	add	edx, 1
	movsxd	rax, edx
	mov	dword ptr [rbp + 4*rax - 64], ecx
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=2
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 96]
	add	eax, 1
	mov	dword ptr [rbp - 96], eax
	jmp	LBB0_7
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 92]
	add	eax, 1
	mov	dword ptr [rbp - 92], eax
	jmp	LBB0_5
LBB0_14:
	mov	esi, dword ptr [rbp - 84]
	mov	edx, dword ptr [rbp - 108]
	mov	ecx, dword ptr [rbp - 104]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r8, qword ptr [rbp - 8]
	cmp	rdi, r8
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
	jne	LBB0_16
## %bb.15:
	xor	eax, eax
	add	rsp, 128
	pop	rbp
	ret
LBB0_16:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.array
l_main.array:
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	9                       ## 0x9
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	7                       ## 0x7
	.long	6                       ## 0x6
	.long	2                       ## 0x2
	.long	8                       ## 0x8
	.long	5                       ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"n==%d   outer==%d   inner==%d\n"


.subsections_via_symbols
