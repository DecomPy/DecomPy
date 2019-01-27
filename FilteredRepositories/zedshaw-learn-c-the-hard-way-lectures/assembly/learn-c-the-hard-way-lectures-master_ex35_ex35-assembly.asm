	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_Variant_print          ## -- Begin function Variant_print
	.p2align	4, 0x90
_Variant_print:                         ## @Variant_print
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	je	LBB0_1
	jmp	LBB0_6
LBB0_6:
	mov	eax, dword ptr [rbp - 12] ## 4-byte Reload
	sub	eax, 1
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	je	LBB0_2
	jmp	LBB0_7
LBB0_7:
	mov	eax, dword ptr [rbp - 12] ## 4-byte Reload
	sub	eax, 2
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	je	LBB0_3
	jmp	LBB0_4
LBB0_1:
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_2:
	mov	rax, qword ptr [rbp - 8]
	movss	xmm0, dword ptr [rax + 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.1]
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_3:
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 8]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_5:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI1_0:
	.long	1075188859              ## float 2.34500003
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rip + L_main.a_int]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rip + L_main.a_int+8]
	mov	qword ptr [rbp - 24], rsi
	mov	rsi, qword ptr [rip + L_main.a_float]
	mov	qword ptr [rbp - 48], rsi
	mov	rsi, qword ptr [rip + L_main.a_float+8]
	mov	qword ptr [rbp - 40], rsi
	mov	rsi, qword ptr [rip + l_main.a_string]
	mov	qword ptr [rbp - 64], rsi
	mov	rsi, qword ptr [rip + l_main.a_string+8]
	mov	qword ptr [rbp - 56], rsi
	lea	rdi, [rbp - 32]
	call	_Variant_print
	lea	rdi, [rbp - 48]
	call	_Variant_print
	lea	rdi, [rbp - 64]
	call	_Variant_print
	movss	xmm0, dword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 24], 200
	movss	dword ptr [rbp - 40], xmm0
	lea	rsi, [rip + L_.str.5]
	mov	qword ptr [rbp - 56], rsi
	lea	rdi, [rbp - 32]
	call	_Variant_print
	lea	rdi, [rbp - 48]
	call	_Variant_print
	lea	rdi, [rbp - 64]
	call	_Variant_print
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"INT: %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"FLOAT: %f\n"

L_.str.2:                               ## @.str.2
	.asciz	"STRING: %s\n"

L_.str.3:                               ## @.str.3
	.asciz	"UNKNOWN TYPE: %d"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	3               ## @main.a_int
L_main.a_int:
	.long	0                       ## 0x0
	.space	4
	.long	100                     ## 0x64
	.space	4

	.p2align	3               ## @main.a_float
L_main.a_float:
	.long	1                       ## 0x1
	.space	4
	.long	1120448020              ## float 100.339996
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"YO DUDE!"

	.section	__DATA,__const
	.p2align	3               ## @main.a_string
l_main.a_string:
	.long	2                       ## 0x2
	.space	4
	.quad	L_.str.4

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"Hi there."


.subsections_via_symbols
