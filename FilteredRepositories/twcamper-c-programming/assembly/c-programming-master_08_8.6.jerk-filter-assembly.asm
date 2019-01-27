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
	sub	rsp, 320
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 276], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 280], 0
	mov	dword ptr [rbp - 288], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 280], 255
	mov	byte ptr [rbp - 289], cl ## 1-byte Spill
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 281], cl
	movsx	eax, cl
	cmp	eax, 10
	setne	cl
	mov	byte ptr [rbp - 289], cl ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 289] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 281]
	movsxd	rcx, dword ptr [rbp - 280]
	mov	byte ptr [rbp + rcx - 272], al
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 280]
	add	eax, 1
	mov	dword ptr [rbp - 280], eax
	jmp	LBB0_1
LBB0_6:
	movsxd	rax, dword ptr [rbp - 280]
	mov	byte ptr [rbp + rax - 272], 0
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 280], 0
	mov	dword ptr [rbp - 296], eax ## 4-byte Spill
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 280]
	movsx	ecx, byte ptr [rbp + rax - 272]
	cmp	ecx, 0
	je	LBB0_18
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	movsxd	rax, dword ptr [rbp - 280]
	movsx	edi, byte ptr [rbp + rax - 272]
	call	_toupper
	mov	cl, al
	mov	byte ptr [rbp - 281], cl
	movsx	eax, byte ptr [rbp - 281]
	add	eax, -65
	mov	edx, eax
	sub	eax, 18
	mov	qword ptr [rbp - 304], rdx ## 8-byte Spill
	mov	dword ptr [rbp - 308], eax ## 4-byte Spill
	ja	LBB0_16
## %bb.21:                              ##   in Loop: Header=BB0_7 Depth=1
	lea	rax, [rip + LJTI0_0]
	mov	rcx, qword ptr [rbp - 304] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB0_9:                                 ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 52
	jmp	LBB0_16
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 56
	jmp	LBB0_16
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 51
	jmp	LBB0_16
LBB0_12:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 49
	jmp	LBB0_16
LBB0_13:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 49
	jmp	LBB0_16
LBB0_14:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 48
	jmp	LBB0_16
LBB0_15:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	byte ptr [rbp - 281], 53
LBB0_16:                                ##   in Loop: Header=BB0_7 Depth=1
	movsx	esi, byte ptr [rbp - 281]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 312], eax ## 4-byte Spill
## %bb.17:                              ##   in Loop: Header=BB0_7 Depth=1
	mov	eax, dword ptr [rbp - 280]
	add	eax, 1
	mov	dword ptr [rbp - 280], eax
	jmp	LBB0_7
LBB0_18:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 316], eax ## 4-byte Spill
	jne	LBB0_20
## %bb.19:
	xor	eax, eax
	add	rsp, 320
	pop	rbp
	ret
LBB0_20:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_9, LBB0_9-LJTI0_0
.set L0_0_set_10, LBB0_10-LJTI0_0
.set L0_0_set_16, LBB0_16-LJTI0_0
.set L0_0_set_11, LBB0_11-LJTI0_0
.set L0_0_set_12, LBB0_12-LJTI0_0
.set L0_0_set_13, LBB0_13-LJTI0_0
.set L0_0_set_14, LBB0_14-LJTI0_0
.set L0_0_set_15, LBB0_15-LJTI0_0
LJTI0_0:
	.long	L0_0_set_9
	.long	L0_0_set_10
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_11
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_12
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_13
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_14
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_16
	.long	L0_0_set_15
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter message: "

L_.str.1:                               ## @.str.1
	.asciz	"In J3rk-speak: "

L_.str.2:                               ## @.str.2
	.asciz	"%c"

L_.str.3:                               ## @.str.3
	.asciz	"!!!!!!!!!!!!\n"


.subsections_via_symbols
