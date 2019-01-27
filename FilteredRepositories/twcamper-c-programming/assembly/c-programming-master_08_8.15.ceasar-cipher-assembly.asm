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
	sub	rsp, 144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 100], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 108], 0
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 101], cl
	movsx	eax, cl
	cmp	eax, 10
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 101]
	movsxd	rcx, dword ptr [rbp - 108]
	mov	byte ptr [rbp + rcx - 96], al
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 108]
	mov	dword ptr [rbp - 112], eax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 116]
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 108], 0
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 108]
	cmp	eax, dword ptr [rbp - 112]
	jge	LBB0_14
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movsxd	rax, dword ptr [rbp - 108]
	mov	cl, byte ptr [rbp + rax - 96]
	mov	byte ptr [rbp - 101], cl
	movsx	edx, byte ptr [rbp - 101]
	cmp	edx, 97
	jl	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movsx	eax, byte ptr [rbp - 101]
	cmp	eax, 122
	jg	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_5 Depth=1
	movsx	eax, byte ptr [rbp - 101]
	sub	eax, 97
	add	eax, dword ptr [rbp - 116]
	cdq
	mov	ecx, 26
	idiv	ecx
	add	edx, 97
	mov	sil, dl
	mov	byte ptr [rbp - 101], sil
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=1
	movsx	eax, byte ptr [rbp - 101]
	cmp	eax, 65
	jl	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_5 Depth=1
	movsx	eax, byte ptr [rbp - 101]
	cmp	eax, 90
	jg	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_5 Depth=1
	movsx	eax, byte ptr [rbp - 101]
	sub	eax, 65
	add	eax, dword ptr [rbp - 116]
	cdq
	mov	ecx, 26
	idiv	ecx
	add	edx, 65
	mov	sil, dl
	mov	byte ptr [rbp - 101], sil
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=1
	movsx	esi, byte ptr [rbp - 101]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
## %bb.13:                              ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB0_5
LBB0_14:
	lea	rdi, [rip + L_.str.5]
	call	_puts
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	jne	LBB0_16
## %bb.15:
	xor	eax, eax
	add	rsp, 144
	pop	rbp
	ret
LBB0_16:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter message to be encrypted: "

L_.str.1:                               ## @.str.1
	.asciz	"Enter shift amount (1-25): "

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"Encrypted message: "

L_.str.4:                               ## @.str.4
	.asciz	"%c"

L_.str.5:                               ## @.str.5
	.space	1


.subsections_via_symbols
