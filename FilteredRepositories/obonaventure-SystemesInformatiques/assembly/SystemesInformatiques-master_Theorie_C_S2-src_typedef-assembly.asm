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
	xor	eax, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rip + L_main.demi]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rip + L_main.demi+8]
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 36], 2
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	3               ## @main.demi
L_main.demi:
	.quad	4607182418800017408     ## double 1
	.quad	4611686018427387904     ## double 2


.subsections_via_symbols
