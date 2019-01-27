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
	sub	rsp, 160
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 116], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 112]
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 112]
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
	call	_strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 136], ecx
	mov	dword ptr [rbp - 124], 0
	mov	dword ptr [rbp - 128], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_8 Depth 2
	mov	eax, dword ptr [rbp - 128]
	cmp	eax, dword ptr [rbp - 136]
	jge	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 128]
	movsx	edi, byte ptr [rbp + rax - 112]
	call	_isalnum
	cmp	eax, 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 128]
	mov	ecx, dword ptr [rbp - 136]
	sub	ecx, 1
	cmp	eax, ecx
	jne	LBB0_11
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 128]
	mov	ecx, dword ptr [rbp - 136]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 128]
	sub	eax, 1
	mov	dword ptr [rbp - 132], eax
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 128]
	mov	dword ptr [rbp - 132], eax
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 124]
	cmp	eax, dword ptr [rbp - 132]
	jge	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=2
	movsxd	rax, dword ptr [rbp - 124]
	mov	cl, byte ptr [rbp + rax - 112]
	mov	byte ptr [rbp - 117], cl
	movsxd	rax, dword ptr [rbp - 132]
	mov	cl, byte ptr [rbp + rax - 112]
	movsxd	rax, dword ptr [rbp - 124]
	mov	byte ptr [rbp + rax - 112], cl
	mov	cl, byte ptr [rbp - 117]
	movsxd	rax, dword ptr [rbp - 132]
	mov	byte ptr [rbp + rax - 112], cl
	mov	edx, dword ptr [rbp - 124]
	add	edx, 1
	mov	dword ptr [rbp - 124], edx
	mov	edx, dword ptr [rbp - 132]
	add	edx, -1
	mov	dword ptr [rbp - 132], edx
	jmp	LBB0_8
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 128]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 128]
	add	eax, 1
	mov	dword ptr [rbp - 128], eax
	jmp	LBB0_1
LBB0_13:
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	jne	LBB0_15
## %bb.14:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB0_15:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter string:\n"

L_.str.1:                               ## @.str.1
	.asciz	"%[^\n]"

L_.str.2:                               ## @.str.2
	.asciz	"%s\n"


.subsections_via_symbols
