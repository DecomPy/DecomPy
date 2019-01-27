	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4608083138725491507     ## double 1.2
LCPI0_1:
	.quad	4678037896599259474     ## double 56789.453200000004
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_2:
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
	sub	rsp, 144
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	movss	xmm1, dword ptr [rip + LCPI0_2] ## xmm1 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 100
	movss	dword ptr [rbp - 24], xmm1
	movsd	qword ptr [rbp - 32], xmm0
	mov	byte ptr [rbp - 33], 65
	mov	edi, dword ptr [rip + L_main.first_name]
	mov	dword ptr [rbp - 37], edi
	mov	edi, dword ptr [rip + L_main.last_name]
	mov	dword ptr [rbp - 42], edi
	mov	al, byte ptr [rip + L_main.last_name+4]
	mov	byte ptr [rbp - 38], al
	mov	byte ptr [rbp - 34], 90
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	movss	xmm0, dword ptr [rbp - 24] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsx	esi, byte ptr [rbp - 33]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 37]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 42]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rcx, [rbp - 42]
	lea	rsi, [rbp - 37]
	movsx	edx, byte ptr [rbp - 33]
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 48], 100
	movsd	qword ptr [rbp - 56], xmm0
	mov	esi, dword ptr [rbp - 48]
	movsd	xmm0, qword ptr [rbp - 56] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	qword ptr [rbp - 64], 1073741824
	mov	rsi, qword ptr [rbp - 64]
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	edx, dword ptr [rbp - 48]
	cvtsi2sd	xmm0, edx
	mulsd	xmm0, qword ptr [rbp - 56]
	movsd	qword ptr [rbp - 72], xmm0
	movsd	xmm0, qword ptr [rbp - 72] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	movsd	xmm0, qword ptr [rbp - 72] ## xmm0 = mem[0],zero
	mov	rcx, qword ptr [rbp - 64]
	cvtsi2sd	xmm1, rcx
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 80], xmm0
	movsd	xmm0, qword ptr [rbp - 80] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.10]
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	byte ptr [rbp - 81], 0
	mov	edx, dword ptr [rbp - 48]
	movsx	r8d, byte ptr [rbp - 81]
	imul	edx, r8d
	mov	dword ptr [rbp - 88], edx
	mov	esi, dword ptr [rbp - 88]
	lea	rdi, [rip + L_.str.11]
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 144
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.first_name:                      ## @main.first_name
	.asciz	"Zed"

L_main.last_name:                       ## @main.last_name
	.asciz	"Shaw"

L_.str:                                 ## @.str
	.asciz	"You are %d miles away.\n"

L_.str.1:                               ## @.str.1
	.asciz	"You have %f levels of power.\n"

L_.str.2:                               ## @.str.2
	.asciz	"You have %f awesome super powers.\n"

L_.str.3:                               ## @.str.3
	.asciz	"I have an initial %c.\n"

L_.str.4:                               ## @.str.4
	.asciz	"I have a first name %s.\n"

L_.str.5:                               ## @.str.5
	.asciz	"I have a last name %s.\n"

L_.str.6:                               ## @.str.6
	.asciz	"My whole name is %s %c. %s.\n"

L_.str.7:                               ## @.str.7
	.asciz	"You have %d bugs at the imaginary rate of %f.\n"

L_.str.8:                               ## @.str.8
	.asciz	"The entire universe has %ld bugs.\n"

L_.str.9:                               ## @.str.9
	.asciz	"You are expected to have %f bugs.\n"

L_.str.10:                              ## @.str.10
	.asciz	"That is only a %e portion of the universe.\n"

L_.str.11:                              ## @.str.11
	.asciz	"Which means you should care %d%%.\n"


.subsections_via_symbols
