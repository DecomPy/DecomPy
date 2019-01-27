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
	sub	rsp, 272
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 228], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 112]
	mov	dword ptr [rbp - 244], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	ecx, 100
	mov	edx, ecx
	lea	rsi, [rbp - 112]
	lea	rdi, [rbp - 224]
	mov	dword ptr [rbp - 248], eax ## 4-byte Spill
	call	___strcpy_chk
	lea	rdi, [rbp - 112]
	mov	dword ptr [rbp - 236], 0
	mov	qword ptr [rbp - 256], rax ## 8-byte Spill
	call	_strlen
	sub	rax, 1
	mov	ecx, eax
	mov	dword ptr [rbp - 240], ecx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 236]
	cmp	eax, dword ptr [rbp - 240]
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
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
	jmp	LBB0_1
LBB0_3:
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 112]
	lea	rdi, [rbp - 224]
	mov	dword ptr [rbp - 260], eax ## 4-byte Spill
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_5
## %bb.4:
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 264], eax ## 4-byte Spill
	jmp	LBB0_6
LBB0_5:
	lea	rsi, [rbp - 112]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 268], eax ## 4-byte Spill
LBB0_6:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_8
## %bb.7:
	xor	eax, eax
	add	rsp, 272
	pop	rbp
	ret
LBB0_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter string: "

L_.str.1:                               ## @.str.1
	.asciz	"%s"

L_.str.2:                               ## @.str.2
	.asciz	"Reverse string: %s\n"

L_.str.3:                               ## @.str.3
	.asciz	"%s is palindrome!\n"

L_.str.4:                               ## @.str.4
	.asciz	"%s is not palindrome!\n"


.subsections_via_symbols
