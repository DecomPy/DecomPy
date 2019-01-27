	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4638387916139006731     ## double 123.456789
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
	sub	rsp, 48
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 4], 0
	movsd	qword ptr [rbp - 16], xmm0
	lea	rax, [rbp - 16]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 24]
	movsd	xmm0, qword ptr [rax]   ## xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str]
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%lf"


.subsections_via_symbols
