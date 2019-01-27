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
	sub	rsp, 80
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 2
	je	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_17
LBB0_2:
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 20], 0
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_16
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 21], dl
	movsx	esi, byte ptr [rbp - 21]
	add	esi, -65
	mov	eax, esi
	sub	esi, 56
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	mov	dword ptr [rbp - 44], esi ## 4-byte Spill
	ja	LBB0_13
## %bb.18:                              ##   in Loop: Header=BB0_3 Depth=1
	lea	rax, [rip + LJTI0_0]
	mov	rcx, qword ptr [rbp - 40] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jmp	LBB0_14
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB0_14
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jmp	LBB0_14
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jmp	LBB0_14
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	jmp	LBB0_14
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	cmp	dword ptr [rbp - 20], 2
	jle	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_3 Depth=1
	mov	esi, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rbp - 21]
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
LBB0_14:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_3
LBB0_16:
	mov	dword ptr [rbp - 4], 0
LBB0_17:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_5, LBB0_5-LJTI0_0
.set L0_0_set_13, LBB0_13-LJTI0_0
.set L0_0_set_6, LBB0_6-LJTI0_0
.set L0_0_set_7, LBB0_7-LJTI0_0
.set L0_0_set_8, LBB0_8-LJTI0_0
.set L0_0_set_9, LBB0_9-LJTI0_0
.set L0_0_set_10, LBB0_10-LJTI0_0
LJTI0_0:
	.long	L0_0_set_5
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_6
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_7
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_8
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_9
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_10
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_5
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_6
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_7
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_8
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_9
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_13
	.long	L0_0_set_10
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"ERROR: You need one argument.\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d: 'A'\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d: 'E'\n"

L_.str.3:                               ## @.str.3
	.asciz	"%d: 'I'\n"

L_.str.4:                               ## @.str.4
	.asciz	"%d: 'O'\n"

L_.str.5:                               ## @.str.5
	.asciz	"%d: 'U'\n"

L_.str.6:                               ## @.str.6
	.asciz	"%d: 'Y'\n"

L_.str.7:                               ## @.str.7
	.asciz	"%d: %c is not a vowel\n"


.subsections_via_symbols
