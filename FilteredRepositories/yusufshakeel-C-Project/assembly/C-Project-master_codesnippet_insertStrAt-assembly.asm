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
	sub	rsp, 48
	lea	r8, [rbp - 23]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 28], 0
	mov	rax, qword ptr [rip + l_main.str]
	mov	qword ptr [rbp - 23], rax
	mov	ecx, dword ptr [rip + l_main.str+8]
	mov	dword ptr [rbp - 15], ecx
	mov	dx, word ptr [rip + l_main.str+12]
	mov	word ptr [rbp - 11], dx
	mov	sil, byte ptr [rip + l_main.str+14]
	mov	byte ptr [rbp - 9], sil
	lea	rdi, [rip + L_.str]
	mov	ecx, 1
	mov	esi, ecx
	mov	edx, ecx
	mov	ecx, 15
	call	_insertStrAt
	lea	rsi, [rbp - 23]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
l_main.str:                             ## @main.str
	.asciz	"ab\000\000\000\000\000\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"c"

L_.str.1:                               ## @.str.1
	.asciz	"%s"


.subsections_via_symbols
