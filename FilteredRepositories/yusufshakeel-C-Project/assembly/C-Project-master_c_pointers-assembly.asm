	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4638387916139006731     ## double 123.456789
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_1:
	.long	1095069860              ## float 12.3400002
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
	sub	rsp, 96
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movss	xmm1, dword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 5], 97
	mov	dword ptr [rbp - 12], 123
	movss	dword ptr [rbp - 16], xmm1
	movsd	qword ptr [rbp - 24], xmm0
	lea	rax, [rbp - 5]
	mov	qword ptr [rbp - 32], rax
	lea	rax, [rbp - 12]
	mov	qword ptr [rbp - 40], rax
	lea	rcx, [rbp - 16]
	mov	qword ptr [rbp - 48], rcx
	lea	rcx, [rbp - 24]
	mov	qword ptr [rbp - 56], rcx
	mov	qword ptr [rbp - 64], rax
	mov	rsi, qword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 32]
	movsx	edx, byte ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 40]
	mov	edx, dword ptr [rcx]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 48]
	movss	xmm0, dword ptr [rcx]   ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	rsi, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rbp - 56]
	movsd	xmm0, qword ptr [rcx]   ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	rsi, qword ptr [rbp - 64]
	mov	rcx, qword ptr [rbp - 64]
	mov	edx, dword ptr [rcx]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 96
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"char\taddress: %u\tvalue: %c\n"

L_.str.1:                               ## @.str.1
	.asciz	"int\taddress: %u\tvalue: %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"float\taddress: %u\tvalue: %f\n"

L_.str.3:                               ## @.str.3
	.asciz	"double\taddress: %u\tvalue: %lf\n"

L_.str.4:                               ## @.str.4
	.asciz	"void\taddress: %u\tvalue: %d\n"


.subsections_via_symbols
