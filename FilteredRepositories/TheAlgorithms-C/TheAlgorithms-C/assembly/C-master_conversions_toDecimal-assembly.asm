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
	sub	rsp, 176
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 116], 0
	mov	qword ptr [rbp - 136], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 120]
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 124], 0
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	ecx, byte ptr [rbp + rax - 112]
	cmp	ecx, 0
	je	LBB0_15
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	edi, byte ptr [rbp + rax - 112]
	call	_isdigit
	cmp	eax, 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	ecx, byte ptr [rbp + rax - 112]
	sub	ecx, 48
	mov	dl, cl
	mov	byte ptr [rbp + rax - 112], dl
	jmp	LBB0_11
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	edi, byte ptr [rbp + rax - 112]
	call	_isupper
	cmp	eax, 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	ecx, byte ptr [rbp + rax - 112]
	sub	ecx, 55
	mov	dl, cl
	mov	byte ptr [rbp + rax - 112], dl
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	edi, byte ptr [rbp + rax - 112]
	call	_islower
	cmp	eax, 0
	je	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	ecx, byte ptr [rbp + rax - 112]
	sub	ecx, 87
	mov	dl, cl
	mov	byte ptr [rbp + rax - 112], dl
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 120]
	add	eax, 1
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 124]
	mov	byte ptr [rbp + rdx - 112], cl
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	movsx	ecx, byte ptr [rbp + rax - 112]
	cmp	ecx, dword ptr [rbp - 120]
	jle	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB0_1
LBB0_15:
	mov	dword ptr [rbp - 128], 0
LBB0_16:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 128]
	cmp	eax, dword ptr [rbp - 124]
	jge	LBB0_19
## %bb.17:                              ##   in Loop: Header=BB0_16 Depth=1
	movsxd	rax, dword ptr [rbp - 120]
	imul	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
	movsxd	rax, dword ptr [rbp - 128]
	movsx	rax, byte ptr [rbp + rax - 112]
	add	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
## %bb.18:                              ##   in Loop: Header=BB0_16 Depth=1
	mov	eax, dword ptr [rbp - 128]
	add	eax, 1
	mov	dword ptr [rbp - 128], eax
	jmp	LBB0_16
LBB0_19:
	mov	rsi, qword ptr [rbp - 136]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 116]
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
	mov	dword ptr [rbp - 164], ecx ## 4-byte Spill
	jne	LBB0_21
## %bb.20:
	mov	eax, dword ptr [rbp - 164] ## 4-byte Reload
	add	rsp, 176
	pop	rbp
	ret
LBB0_21:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter the base: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Enter the number: "

L_.str.3:                               ## @.str.3
	.asciz	"%s"

L_.str.4:                               ## @.str.4
	.asciz	"invalid number\n"

L_.str.5:                               ## @.str.5
	.asciz	"%lu\n"


.subsections_via_symbols
