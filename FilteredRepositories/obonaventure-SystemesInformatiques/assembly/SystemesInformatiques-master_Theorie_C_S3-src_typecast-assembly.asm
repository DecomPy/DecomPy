	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	6103021453049119613     ## double 1.0E+100
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_1:
	.long	1621981420              ## float 1.00000002E+20
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
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	movss	xmm1, dword ptr [rip + LCPI0_1] ## xmm1 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 1
	movss	dword ptr [rbp - 24], xmm1
	movsd	qword ptr [rbp - 32], xmm0
	mov	esi, dword ptr [rbp - 20]
	mov	edi, dword ptr [rbp - 20]
	cvtsi2ss	xmm0, edi
	cvtss2sd	xmm0, xmm0
	mov	edi, dword ptr [rbp - 20]
	cvtsi2sd	xmm1, edi
	lea	rdi, [rip + L_.str]
	mov	al, 2
	call	_printf
	cvttss2si	esi, dword ptr [rbp - 24]
	movss	xmm0, dword ptr [rbp - 24] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	movss	xmm1, dword ptr [rbp - 24] ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	xmm1, xmm1
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 2
	call	_printf
	cvttsd2si	esi, qword ptr [rbp - 32]
	movsd	xmm0, qword ptr [rbp - 32] ## xmm0 = mem[0],zero
	cvtsd2ss	xmm0, xmm0
	cvtss2sd	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 32] ## xmm1 = mem[0],zero
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 2
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	esi, 4
	mov	dword ptr [rbp - 44], esi ## 4-byte Spill
	mov	edx, dword ptr [rbp - 44] ## 4-byte Reload
	mov	ecx, 8
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"i [int]: %d, [float]:%f, [double]:%f\n"

L_.str.1:                               ## @.str.1
	.asciz	"f [int]: %d, [float]:%f, [double]:%f\n"

L_.str.2:                               ## @.str.2
	.asciz	"d [int]: %d, [float]:%f, [double]:%f\n"

L_.str.3:                               ## @.str.3
	.asciz	"sizeof -> int:%d float:%d double:%d\n"


.subsections_via_symbols
