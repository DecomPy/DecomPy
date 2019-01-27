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
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 28], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 29], cl
	movsx	eax, cl
	cmp	eax, 10
	je	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	edi, byte ptr [rbp - 29]
	call	_toupper
	add	eax, -65
	mov	ecx, eax
	sub	eax, 25
	mov	qword ptr [rbp - 48], rcx ## 8-byte Spill
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	ja	LBB0_11
## %bb.16:                              ##   in Loop: Header=BB0_1 Depth=1
	lea	rax, [rip + LJTI0_0]
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 50
	jmp	LBB0_12
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 51
	jmp	LBB0_12
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 52
	jmp	LBB0_12
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 53
	jmp	LBB0_12
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 54
	jmp	LBB0_12
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 55
	jmp	LBB0_12
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 56
	jmp	LBB0_12
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rax - 23], 57
	jmp	LBB0_12
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 29]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	byte ptr [rbp + rcx - 23], al
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_1
LBB0_13:
	lea	rsi, [rbp - 23]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jne	LBB0_15
## %bb.14:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB0_15:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_3, LBB0_3-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
.set L0_0_set_5, LBB0_5-LJTI0_0
.set L0_0_set_6, LBB0_6-LJTI0_0
.set L0_0_set_7, LBB0_7-LJTI0_0
.set L0_0_set_8, LBB0_8-LJTI0_0
.set L0_0_set_9, LBB0_9-LJTI0_0
.set L0_0_set_10, LBB0_10-LJTI0_0
LJTI0_0:
	.long	L0_0_set_3
	.long	L0_0_set_3
	.long	L0_0_set_3
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_4
	.long	L0_0_set_5
	.long	L0_0_set_5
	.long	L0_0_set_5
	.long	L0_0_set_6
	.long	L0_0_set_6
	.long	L0_0_set_6
	.long	L0_0_set_7
	.long	L0_0_set_7
	.long	L0_0_set_7
	.long	L0_0_set_8
	.long	L0_0_set_8
	.long	L0_0_set_8
	.long	L0_0_set_8
	.long	L0_0_set_9
	.long	L0_0_set_9
	.long	L0_0_set_9
	.long	L0_0_set_10
	.long	L0_0_set_10
	.long	L0_0_set_10
	.long	L0_0_set_10
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter phone number: "

L_.str.1:                               ## @.str.1
	.asciz	"In numeric form: %s\n"


.subsections_via_symbols
