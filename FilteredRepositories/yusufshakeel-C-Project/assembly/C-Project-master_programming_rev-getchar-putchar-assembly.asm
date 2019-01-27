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
	sub	rsp, 288
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 228], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 244], 0
	mov	dword ptr [rbp - 248], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 229], cl
	mov	cl, byte ptr [rbp - 229]
	movsxd	rdx, dword ptr [rbp - 244]
	mov	byte ptr [rbp + rdx - 112], cl
	mov	eax, dword ptr [rbp - 244]
	add	eax, 1
	mov	dword ptr [rbp - 244], eax
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 229]
	cmp	eax, 10
	jne	LBB0_1
## %bb.3:
	mov	eax, 100
	mov	edx, eax
	lea	rsi, [rbp - 112]
	lea	rdi, [rbp - 224]
	mov	eax, dword ptr [rbp - 244]
	add	eax, -1
	mov	dword ptr [rbp - 244], eax
	movsxd	rcx, dword ptr [rbp - 244]
	mov	byte ptr [rbp + rcx - 112], 0
	call	___strcpy_chk
	mov	dword ptr [rbp - 236], 0
	mov	r8d, dword ptr [rbp - 244]
	sub	r8d, 1
	mov	dword ptr [rbp - 240], r8d
	mov	qword ptr [rbp - 256], rax ## 8-byte Spill
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 236]
	cmp	eax, dword ptr [rbp - 240]
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	movsxd	rax, dword ptr [rbp - 236]
	mov	cl, byte ptr [rbp + rax - 112]
	mov	byte ptr [rbp - 229], cl
	movsxd	rax, dword ptr [rbp - 240]
	mov	cl, byte ptr [rbp + rax - 112]
	movsxd	rax, dword ptr [rbp - 236]
	mov	byte ptr [rbp + rax - 112], cl
	mov	cl, byte ptr [rbp - 229]
	movsxd	rax, dword ptr [rbp - 240]
	mov	byte ptr [rbp + rax - 112], cl
	mov	edx, dword ptr [rbp - 236]
	add	edx, 1
	mov	dword ptr [rbp - 236], edx
	mov	edx, dword ptr [rbp - 240]
	add	edx, -1
	mov	dword ptr [rbp - 240], edx
	jmp	LBB0_4
LBB0_6:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 236], 0
	mov	dword ptr [rbp - 260], eax ## 4-byte Spill
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 236]
	cmp	eax, dword ptr [rbp - 244]
	jge	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	movsxd	rax, dword ptr [rbp - 236]
	movsx	edi, byte ptr [rbp + rax - 112]
	call	_putchar
	mov	dword ptr [rbp - 264], eax ## 4-byte Spill
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=1
	mov	eax, dword ptr [rbp - 236]
	add	eax, 1
	mov	dword ptr [rbp - 236], eax
	jmp	LBB0_7
LBB0_10:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 112]
	lea	rdi, [rbp - 224]
	mov	dword ptr [rbp - 268], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_12
## %bb.11:
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 272], eax ## 4-byte Spill
	jmp	LBB0_13
LBB0_12:
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 276], eax ## 4-byte Spill
LBB0_13:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_15
## %bb.14:
	xor	eax, eax
	add	rsp, 288
	pop	rbp
	ret
LBB0_15:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter string: "

L_.str.1:                               ## @.str.1
	.asciz	"Reverse string:\n"

L_.str.2:                               ## @.str.2
	.asciz	"\n"

L_.str.3:                               ## @.str.3
	.asciz	"%s is palindrome!\n"

L_.str.4:                               ## @.str.4
	.asciz	"%s is not palindrome!\n"


.subsections_via_symbols
