	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	-4609118966639786721    ## double -3.1400000000000001
LCPI0_1:
	.quad	4607182418800017408     ## double 1
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
	movsd	xmm1, qword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	movsd	qword ptr [rbp - 24], xmm1
	movsd	qword ptr [rbp - 32], xmm0
	movsd	xmm0, qword ptr [rbp - 24] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 32] ## xmm1 = mem[0],zero
	movaps	xmm2, xmm1
	movaps	xmm3, xmm0
	cmpunordsd	xmm3, xmm3
	movaps	xmm4, xmm3
	andpd	xmm4, xmm2
	maxsd	xmm1, xmm0
	andnpd	xmm3, xmm1
	orpd	xmm3, xmm4
	lea	rdi, [rip + L_.str]
	movaps	xmm0, xmm3
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
	.asciz	"Maximum : %f\n"


.subsections_via_symbols
