	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 10
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], edx
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sum2                   ## -- Begin function sum2
	.p2align	4, 0x90
_sum2:                                  ## @sum2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 24], edx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
	mov	eax, dword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function max
LCPI2_0:
	.long	2139095039              ## float 3.40282347E+38
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_max
	.p2align	4, 0x90
_max:                                   ## @max
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	movss	xmm0, dword ptr [rip + LCPI2_0] ## xmm0 = mem[0],zero,zero,zero
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rip + l_max.matriceR]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_max.matriceR+8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rip + l_max.matriceR+16]
	mov	qword ptr [rbp - 16], rax
	movss	dword ptr [rbp - 44], xmm0
	mov	dword ptr [rbp - 36], 0
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	cmp	dword ptr [rbp - 36], 2
	jge	LBB2_10
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 40], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 40], 3
	jge	LBB2_8
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	movsxd	rax, dword ptr [rbp - 36]
	imul	rax, rax, 12
	lea	rcx, [rbp - 32]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 40]
	movss	xmm0, dword ptr [rcx + 4*rax] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rbp - 44] ## xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm1, xmm0
	jbe	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	movsxd	rax, dword ptr [rbp - 36]
	imul	rax, rax, 12
	lea	rcx, [rbp - 32]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 40]
	movss	xmm0, dword ptr [rcx + 4*rax] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 44], xmm0
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB2_3
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_9
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB2_1
LBB2_10:
	movss	xmm0, dword ptr [rbp - 44] ## xmm0 = mem[0],zero,zero,zero
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	movss	dword ptr [rbp - 48], xmm0 ## 4-byte Spill
	jne	LBB2_12
## %bb.11:
	movss	xmm0, dword ptr [rbp - 48] ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	add	rsp, 48
	pop	rbp
	ret
LBB2_12:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_max2                   ## -- Begin function max2
	.p2align	4, 0x90
_max2:                                  ## @max2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 28], xmm0
	mov	dword ptr [rbp - 20], 0
	mov	qword ptr [rbp - 40], rsi ## 8-byte Spill
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB3_10
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB3_8
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	movss	xmm0, dword ptr [rax + 4*rcx] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 28]
	jbe	LBB3_6
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	movss	xmm0, dword ptr [rax + 4*rcx] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 28], xmm0
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=2
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB3_3
LBB3_8:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB3_1
LBB3_10:
	movss	xmm0, dword ptr [rbp - 28] ## xmm0 = mem[0],zero,zero,zero
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	sub	rsp, 80
	lea	rax, [rip + l_main.vecteur]
	mov	ecx, 40
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], edi
	mov	qword ptr [rbp - 64], rsi
	lea	rsi, [rbp - 48]
	mov	rdi, rsi
	mov	rsi, rax
	call	_memcpy
	mov	dword ptr [rbp - 72], 0
	mov	dword ptr [rbp - 68], 0
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 68], 10
	jge	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movsxd	rax, dword ptr [rbp - 68]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	add	ecx, dword ptr [rbp - 72]
	mov	dword ptr [rbp - 72], ecx
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	add	eax, 1
	mov	dword ptr [rbp - 68], eax
	jmp	LBB4_1
LBB4_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB4_6
## %bb.5:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB4_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @max.matriceR
l_max.matriceR:
	.long	1065353216              ## float 1
	.long	1073741824              ## float 2
	.long	1077936128              ## float 3
	.long	1082130432              ## float 4
	.long	1084227584              ## float 5
	.long	1086324736              ## float 6

	.p2align	4               ## @main.vecteur
l_main.vecteur:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9

	.comm	_vecteur,40,4           ## @vecteur
	.comm	_matriceC,400,4         ## @matriceC
	.comm	_matriceR,800,4         ## @matriceR

.subsections_via_symbols
