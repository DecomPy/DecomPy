	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1065353216              ## float 1
LCPI0_1:
	.long	1082130432              ## float 4
LCPI0_2:
	.long	1105199104              ## float 28
LCPI0_3:
	.long	1111490560              ## float 48
LCPI0_4:
	.long	1115425341              ## float 63.0099983
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 20]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jbe	LBB0_2
## %bb.1:
	lea	rax, [rip + L_.str.2]
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_15
LBB0_2:
	movss	xmm0, dword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_4
## %bb.3:
	lea	rax, [rip + L_.str.3]
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_14
LBB0_4:
	movss	xmm0, dword ptr [rip + LCPI0_2] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_6
## %bb.5:
	lea	rax, [rip + L_.str.4]
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_13
LBB0_6:
	movss	xmm0, dword ptr [rip + LCPI0_3] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_8
## %bb.7:
	lea	rax, [rip + L_.str.5]
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_12
LBB0_8:
	movss	xmm0, dword ptr [rip + LCPI0_4] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_10
## %bb.9:
	lea	rax, [rip + L_.str.6]
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_11
LBB0_10:
	lea	rax, [rip + L_.str.7]
	mov	qword ptr [rbp - 16], rax
LBB0_11:
	jmp	LBB0_12
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	jmp	LBB0_14
LBB0_14:
	jmp	LBB0_15
LBB0_15:
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter wind speed (knots): "

L_.str.1:                               ## @.str.1
	.asciz	"%f"

L_.str.2:                               ## @.str.2
	.asciz	"Calm"

L_.str.3:                               ## @.str.3
	.asciz	"Light air"

L_.str.4:                               ## @.str.4
	.asciz	"Breeze"

L_.str.5:                               ## @.str.5
	.asciz	"Gale"

L_.str.6:                               ## @.str.6
	.asciz	"Storm"

L_.str.7:                               ## @.str.7
	.asciz	"Hurricane"

L_.str.8:                               ## @.str.8
	.asciz	"Wind Force: %s\n"


.subsections_via_symbols
