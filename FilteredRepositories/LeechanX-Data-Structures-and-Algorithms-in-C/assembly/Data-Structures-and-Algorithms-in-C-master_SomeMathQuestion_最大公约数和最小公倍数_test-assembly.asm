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
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	test	cl, 1
	jne	LBB0_1
	jmp	LBB0_2
LBB0_1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_2:
	mov	dword ptr [rbp - 20], 1
	mov	al, 1
	test	al, 1
	jne	LBB0_3
	jmp	LBB0_4
LBB0_3:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_4:
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 20], 0
	test	cl, 1
	jne	LBB0_6
## %bb.5:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_6:
	mov	dword ptr [rbp - 20], 3
	lea	rdi, [rip + L_.str.3]
	mov	esi, 3
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"n=0\n"

L_.str.1:                               ## @.str.1
	.asciz	"n=1\n"

L_.str.2:                               ## @.str.2
	.asciz	"!(n=0)\n"

L_.str.3:                               ## @.str.3
	.asciz	"%d\n"


.subsections_via_symbols
