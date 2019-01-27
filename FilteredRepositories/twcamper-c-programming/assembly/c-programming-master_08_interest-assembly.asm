	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4622945017495814144     ## double 12
LCPI0_1:
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 64]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 68]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 56], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 64]
	add	eax, dword ptr [rbp - 56]
	lea	rdi, [rip + L_.str.4]
	mov	esi, eax
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	movsxd	rdi, dword ptr [rbp - 56]
	movsd	qword ptr [rbp + 8*rdi - 48], xmm0
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 72], 1
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
                                        ##       Child Loop BB0_9 Depth 3
	mov	eax, dword ptr [rbp - 72]
	cmp	eax, dword ptr [rbp - 68]
	jg	LBB0_16
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	esi, dword ptr [rbp - 72]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], 0
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_9 Depth 3
	cmp	dword ptr [rbp - 56], 5
	jge	LBB0_14
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	mov	dword ptr [rbp - 60], 0
LBB0_9:                                 ##   Parent Loop BB0_5 Depth=1
                                        ##     Parent Loop BB0_7 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmp	dword ptr [rbp - 60], 12
	jge	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=3
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero
	mov	eax, dword ptr [rbp - 64]
	add	eax, dword ptr [rbp - 56]
	cvtsi2sd	xmm2, eax
	divsd	xmm2, xmm1
	divsd	xmm2, xmm0
	movsxd	rcx, dword ptr [rbp - 56]
	mulsd	xmm2, qword ptr [rbp + 8*rcx - 48]
	movsxd	rcx, dword ptr [rbp - 56]
	addsd	xmm2, qword ptr [rbp + 8*rcx - 48]
	movsd	qword ptr [rbp + 8*rcx - 48], xmm2
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=3
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB0_9
LBB0_12:                                ##   in Loop: Header=BB0_7 Depth=2
	movsxd	rax, dword ptr [rbp - 56]
	movsd	xmm0, qword ptr [rbp + 8*rax - 48] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.7]
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
## %bb.13:                              ##   in Loop: Header=BB0_7 Depth=2
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_7
LBB0_14:                                ##   in Loop: Header=BB0_5 Depth=1
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
## %bb.15:                              ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 72]
	add	eax, 1
	mov	dword ptr [rbp - 72], eax
	jmp	LBB0_5
LBB0_16:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_18
## %bb.17:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB0_18:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter interest rate: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Enter number of years: "

L_.str.3:                               ## @.str.3
	.asciz	"\nYears"

L_.str.4:                               ## @.str.4
	.asciz	"%6d%%"

L_.str.5:                               ## @.str.5
	.asciz	"\n"

L_.str.6:                               ## @.str.6
	.asciz	"%3d    "

L_.str.7:                               ## @.str.7
	.asciz	"%7.2f"


.subsections_via_symbols
