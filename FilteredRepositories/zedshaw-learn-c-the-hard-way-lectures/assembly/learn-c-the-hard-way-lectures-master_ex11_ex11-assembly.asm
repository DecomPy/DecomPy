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
	sub	rsp, 96
	xor	eax, eax
	mov	ecx, 16
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], edi
	mov	qword ptr [rbp - 48], rsi
	lea	rsi, [rbp - 32]
	mov	rdi, rsi
	mov	esi, eax
	call	_memset
	mov	eax, dword ptr [rip + L_main.name]
	mov	dword ptr [rbp - 52], eax
	mov	esi, dword ptr [rbp - 32]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 24]
	mov	r8d, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	movsx	esi, byte ptr [rbp - 52]
	movsx	edx, byte ptr [rbp - 51]
	movsx	ecx, byte ptr [rbp - 50]
	movsx	r8d, byte ptr [rbp - 49]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 52]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], 1
	mov	dword ptr [rbp - 28], 2
	mov	dword ptr [rbp - 24], 3
	mov	dword ptr [rbp - 20], 4
	mov	byte ptr [rbp - 52], 90
	mov	byte ptr [rbp - 51], 101
	mov	byte ptr [rbp - 50], 100
	mov	byte ptr [rbp - 49], 65
	mov	esi, dword ptr [rbp - 32]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 24]
	mov	r8d, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsx	esi, byte ptr [rbp - 52]
	movsx	edx, byte ptr [rbp - 51]
	movsx	ecx, byte ptr [rbp - 50]
	movsx	r8d, byte ptr [rbp - 49]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 52]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rip + L_.str.3]
	mov	qword ptr [rbp - 64], rsi
	mov	rsi, qword ptr [rbp - 64]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 64]
	movsx	esi, byte ptr [rsi]
	mov	rdi, qword ptr [rbp - 64]
	movsx	edx, byte ptr [rdi + 1]
	mov	rdi, qword ptr [rbp - 64]
	movsx	ecx, byte ptr [rdi + 2]
	mov	rdi, qword ptr [rbp - 64]
	movsx	r8d, byte ptr [rdi + 3]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r9, qword ptr [rbp - 8]
	cmp	rdi, r9
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
L_main.name:                            ## @main.name
	.space	4,97

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"numbers: %d %d %d %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"name each: %c %c %c %c\n"

L_.str.2:                               ## @.str.2
	.asciz	"name: %s\n"

L_.str.3:                               ## @.str.3
	.asciz	"Zed"

L_.str.4:                               ## @.str.4
	.asciz	"another: %s\n"

L_.str.5:                               ## @.str.5
	.asciz	"another each: %c %c %c %c\n"


.subsections_via_symbols
