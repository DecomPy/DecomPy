	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1159479296              ## float 2500
LCPI0_1:
	.long	1109131264              ## float 39
LCPI0_2:
	.long	1170427904              ## float 6250
LCPI0_3:
	.long	1157234688              ## float 2000
LCPI0_4:
	.long	1195593728              ## float 5.0E+4
LCPI0_5:
	.long	1223959552              ## float 5.0E+5
LCPI0_6:
	.long	980151802               ## float 8.99999984E-4
LCPI0_7:
	.long	1132396544              ## float 255
LCPI0_8:
	.long	982527456               ## float 0.00109999999
LCPI0_9:
	.long	1125842944              ## float 155
LCPI0_10:
	.long	990916064               ## float 0.00219999999
LCPI0_11:
	.long	1120403456              ## float 100
LCPI0_12:
	.long	996070025               ## float 0.00340000005
LCPI0_13:
	.long	1117257728              ## float 76
LCPI0_14:
	.long	1004029136              ## float 0.00659999996
LCPI0_15:
	.long	1113587712              ## float 56
LCPI0_16:
	.long	1015759766              ## float 0.0170000009
LCPI0_17:
	.long	1106247680              ## float 30
LCPI0_18:
	.long	1017370378              ## float 0.0199999996
LCPI0_19:
	.long	1107558400              ## float 33
LCPI0_20:
	.long	1022739087              ## float 0.0299999993
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
	movss	xmm0, dword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	movss	dword ptr [rbp - 32], xmm0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rbp - 12]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	movss	xmm0, dword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 12] ## xmm1 = mem[0],zero,zero,zero
	mov	ecx, dword ptr [rbp - 8]
	cvtsi2ss	xmm2, ecx
	mulss	xmm1, xmm2
	movss	dword ptr [rbp - 20], xmm1
	ucomiss	xmm0, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jbe	LBB0_2
## %bb.1:
	movss	xmm0, dword ptr [rip + LCPI0_16] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_17] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
	jmp	LBB0_15
LBB0_2:
	movss	xmm0, dword ptr [rip + LCPI0_2] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_4
## %bb.3:
	movss	xmm0, dword ptr [rip + LCPI0_14] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_15] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
	jmp	LBB0_14
LBB0_4:
	movss	xmm0, dword ptr [rip + LCPI0_3] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_6
## %bb.5:
	movss	xmm0, dword ptr [rip + LCPI0_12] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_13] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
	jmp	LBB0_13
LBB0_6:
	movss	xmm0, dword ptr [rip + LCPI0_4] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_8
## %bb.7:
	movss	xmm0, dword ptr [rip + LCPI0_10] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_11] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
	jmp	LBB0_12
LBB0_8:
	movss	xmm0, dword ptr [rip + LCPI0_5] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 20]
	jbe	LBB0_10
## %bb.9:
	movss	xmm0, dword ptr [rip + LCPI0_8] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_9] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
	jmp	LBB0_11
LBB0_10:
	movss	xmm0, dword ptr [rip + LCPI0_6] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_7] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
LBB0_11:
	jmp	LBB0_12
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	jmp	LBB0_14
LBB0_14:
	jmp	LBB0_15
LBB0_15:
	movss	xmm0, dword ptr [rbp - 28] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 24] ## xmm1 = mem[0],zero,zero,zero
	mulss	xmm1, dword ptr [rbp - 20]
	addss	xmm0, xmm1
	movss	dword ptr [rbp - 16], xmm0
	movss	xmm0, dword ptr [rbp - 16] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 32] ## xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm1, xmm0
	jbe	LBB0_17
## %bb.16:
	movss	xmm0, dword ptr [rbp - 32] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0
LBB0_17:
	movss	xmm0, dword ptr [rbp - 16] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.4]
	mov	al, 1
	call	_printf
	movss	xmm0, dword ptr [rip + LCPI0_18] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + LCPI0_19] ## xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm1
	movss	dword ptr [rbp - 24], xmm0
	cmp	dword ptr [rbp - 8], 2000
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jle	LBB0_19
## %bb.18:
	movss	xmm0, dword ptr [rip + LCPI0_20] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 24], xmm0
LBB0_19:
	movss	xmm0, dword ptr [rbp - 28] ## xmm0 = mem[0],zero,zero,zero
	mov	eax, dword ptr [rbp - 8]
	cvtsi2ss	xmm1, eax
	mulss	xmm1, dword ptr [rbp - 24]
	addss	xmm0, xmm1
	movss	dword ptr [rbp - 16], xmm0
	movss	xmm0, dword ptr [rbp - 16] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.5]
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Number of shares: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Price per share: "

L_.str.3:                               ## @.str.3
	.asciz	"%f"

L_.str.4:                               ## @.str.4
	.asciz	"Our Commission: $%.2f\n"

L_.str.5:                               ## @.str.5
	.asciz	"Their Commission: $%.2f\n"


.subsections_via_symbols
