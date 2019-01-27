	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_simp3                  ## -- Begin function simp3
	.p2align	4, 0x90
_simp3:                                 ## @simp3
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rip + L_simp3.f2]
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4631107791820423168     ## double 42
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
	sub	rsp, 560
	mov	eax, 8
	mov	ecx, eax
	lea	rdx, [rbp - 48]
	lea	r8, [rip + l_main.mat]
	mov	eax, 96
	mov	r9d, eax
	mov	r10, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r10, qword ptr [r10]
	mov	qword ptr [rbp - 8], r10
	mov	dword ptr [rbp - 164], 0
	mov	dword ptr [rbp - 168], edi
	mov	qword ptr [rbp - 176], rsi
	mov	rsi, qword ptr [rip + l_main.tab]
	mov	qword ptr [rbp - 48], rsi
	mov	rsi, qword ptr [rip + l_main.tab+8]
	mov	qword ptr [rbp - 40], rsi
	mov	rsi, qword ptr [rip + l_main.tab+16]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rip + l_main.tab+24]
	mov	qword ptr [rbp - 24], rsi
	lea	rsi, [rbp - 144]
	mov	rdi, rsi
	mov	rsi, r8
	mov	qword ptr [rbp - 360], rdx ## 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rbp - 368], rcx ## 8-byte Spill
	call	_memcpy
	mov	rcx, qword ptr [rbp - 360] ## 8-byte Reload
	mov	qword ptr [rbp - 192], rcx
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 368] ## 8-byte Reload
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 184]
	mov	dword ptr [rbp - 372], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 212], 0
	mov	dword ptr [rbp - 376], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 212], 4
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	esi, dword ptr [rbp - 212]
	movsxd	rax, dword ptr [rbp - 212]
	movsd	xmm0, qword ptr [rbp + 8*rax - 48] ## xmm0 = mem[0],zero
	movsxd	rax, dword ptr [rbp - 212]
	shl	rax, 3
	lea	rcx, [rbp - 48]
	add	rcx, rax
	lea	rdi, [rip + L_.str.2]
	mov	rdx, rcx
	mov	al, 1
	call	_printf
	mov	esi, dword ptr [rbp - 212]
	mov	rcx, qword ptr [rbp - 192]
	movsxd	rdx, dword ptr [rbp - 212]
	movsd	xmm0, qword ptr [rcx + 8*rdx] ## xmm0 = mem[0],zero
	mov	rcx, qword ptr [rbp - 192]
	movsxd	rdx, dword ptr [rbp - 212]
	shl	rdx, 3
	add	rcx, rdx
	lea	rdi, [rip + L_.str.2]
	mov	rdx, rcx
	mov	dword ptr [rbp - 380], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	esi, dword ptr [rbp - 212]
	mov	rcx, qword ptr [rbp - 192]
	movsd	xmm0, qword ptr [rcx]   ## xmm0 = mem[0],zero
	mov	r8d, dword ptr [rbp - 212]
	cvtsi2sd	xmm1, r8d
	addsd	xmm0, xmm1
	mov	rcx, qword ptr [rbp - 192]
	movsxd	rdx, dword ptr [rbp - 212]
	shl	rdx, 3
	add	rcx, rdx
	lea	rdi, [rip + L_.str.2]
	mov	rdx, rcx
	mov	dword ptr [rbp - 384], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	esi, dword ptr [rbp - 212]
	mov	rcx, qword ptr [rbp - 192]
	movsd	xmm0, qword ptr [rcx]   ## xmm0 = mem[0],zero
	mov	r8d, dword ptr [rbp - 212]
	cvtsi2sd	xmm1, r8d
	addsd	xmm0, xmm1
	mov	rcx, qword ptr [rbp - 192]
	movsxd	rdx, dword ptr [rbp - 212]
	shl	rdx, 3
	add	rcx, rdx
	lea	rdi, [rip + L_.str.2]
	mov	rdx, rcx
	mov	dword ptr [rbp - 388], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 392], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 212]
	add	eax, 1
	mov	dword ptr [rbp - 212], eax
	jmp	LBB1_1
LBB1_4:
	lea	rax, [rbp - 144]
	mov	qword ptr [rbp - 208], rax
	mov	dword ptr [rbp - 216], 0
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_7 Depth 2
	cmp	dword ptr [rbp - 216], 3
	jge	LBB1_12
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	dword ptr [rbp - 220], 0
LBB1_7:                                 ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 220], 4
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	mov	esi, dword ptr [rbp - 216]
	mov	edx, dword ptr [rbp - 220]
	movsxd	rax, dword ptr [rbp - 216]
	shl	rax, 5
	lea	rcx, [rbp - 144]
	mov	rdi, rcx
	add	rdi, rax
	movsxd	rax, dword ptr [rbp - 220]
	movsd	xmm0, qword ptr [rdi + 8*rax] ## xmm0 = mem[0],zero
	movsxd	rax, dword ptr [rbp - 216]
	shl	rax, 5
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 220]
	shl	rax, 3
	add	rcx, rax
	lea	rdi, [rip + L_.str.3]
	mov	al, 1
	call	_printf
	lea	rcx, [rbp - 144]
	mov	esi, dword ptr [rbp - 216]
	mov	edx, dword ptr [rbp - 220]
	movsxd	rdi, dword ptr [rbp - 216]
	shl	rdi, 5
	mov	r8, rcx
	add	r8, rdi
	movsxd	rdi, dword ptr [rbp - 220]
	movsd	xmm0, qword ptr [r8 + 8*rdi] ## xmm0 = mem[0],zero
	movsxd	rdi, dword ptr [rbp - 216]
	shl	rdi, 5
	mov	r8, rcx
	add	r8, rdi
	movsxd	rdi, dword ptr [rbp - 220]
	shl	rdi, 3
	add	r8, rdi
	sub	r8, rcx
	sar	r8, 3
	lea	rdi, [rip + L_.str.4]
	mov	rcx, r8
	mov	dword ptr [rbp - 396], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	esi, dword ptr [rbp - 216]
	mov	edx, dword ptr [rbp - 220]
	mov	rcx, qword ptr [rbp - 208]
	mov	r9d, dword ptr [rbp - 216]
	shl	r9d, 2
	movsxd	rdi, r9d
	shl	rdi, 3
	add	rcx, rdi
	movsxd	rdi, dword ptr [rbp - 220]
	movsd	xmm0, qword ptr [rcx + 8*rdi] ## xmm0 = mem[0],zero
	mov	rcx, qword ptr [rbp - 208]
	mov	r9d, dword ptr [rbp - 216]
	shl	r9d, 2
	movsxd	rdi, r9d
	shl	rdi, 3
	add	rcx, rdi
	movsxd	rdi, dword ptr [rbp - 220]
	shl	rdi, 3
	add	rcx, rdi
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 400], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 404], eax ## 4-byte Spill
## %bb.9:                               ##   in Loop: Header=BB1_7 Depth=2
	mov	eax, dword ptr [rbp - 220]
	add	eax, 1
	mov	dword ptr [rbp - 220], eax
	jmp	LBB1_7
LBB1_10:                                ##   in Loop: Header=BB1_5 Depth=1
	jmp	LBB1_11
LBB1_11:                                ##   in Loop: Header=BB1_5 Depth=1
	mov	eax, dword ptr [rbp - 216]
	add	eax, 1
	mov	dword ptr [rbp - 216], eax
	jmp	LBB1_5
LBB1_12:
	mov	dword ptr [rbp - 224], 1
	lea	rax, [rbp - 144]
	add	rax, 32
	mov	qword ptr [rbp - 200], rax
	mov	dword ptr [rbp - 228], 0
LBB1_13:                                ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 228], 4
	jge	LBB1_16
## %bb.14:                              ##   in Loop: Header=BB1_13 Depth=1
	mov	esi, dword ptr [rbp - 224]
	mov	edx, dword ptr [rbp - 228]
	movsxd	rax, dword ptr [rbp - 224]
	shl	rax, 5
	lea	rcx, [rbp - 144]
	mov	rdi, rcx
	add	rdi, rax
	movsxd	rax, dword ptr [rbp - 228]
	movsd	xmm0, qword ptr [rdi + 8*rax] ## xmm0 = mem[0],zero
	movsxd	rax, dword ptr [rbp - 224]
	shl	rax, 5
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 228]
	shl	rax, 3
	add	rcx, rax
	lea	rdi, [rip + L_.str.3]
	mov	al, 1
	call	_printf
	mov	esi, dword ptr [rbp - 224]
	mov	edx, dword ptr [rbp - 228]
	mov	rcx, qword ptr [rbp - 200]
	movsxd	rdi, dword ptr [rbp - 228]
	movsd	xmm0, qword ptr [rcx + 8*rdi] ## xmm0 = mem[0],zero
	mov	rcx, qword ptr [rbp - 200]
	movsxd	rdi, dword ptr [rbp - 228]
	shl	rdi, 3
	add	rcx, rdi
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 408], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 412], eax ## 4-byte Spill
## %bb.15:                              ##   in Loop: Header=BB1_13 Depth=1
	mov	eax, dword ptr [rbp - 228]
	add	eax, 1
	mov	dword ptr [rbp - 228], eax
	jmp	LBB1_13
LBB1_16:
	mov	eax, 40
	mov	esi, eax
	movsd	xmm0, qword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero
	mov	byte ptr [rbp - 272], 65
	mov	byte ptr [rbp - 271], 66
	mov	byte ptr [rbp - 270], 67
	movsd	qword ptr [rbp - 264], xmm0
	mov	byte ptr [rbp - 256], 90
	mov	dword ptr [rbp - 248], 2
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.6]
	lea	rsi, [rbp - 272]
	mov	dword ptr [rbp - 416], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 272]
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 420], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 272]
	add	rsi, 8
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 424], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 272]
	add	rsi, 16
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 428], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 272]
	add	rsi, 20
	lea	rdi, [rip + L_.str.10]
	mov	dword ptr [rbp - 432], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 272]
	add	rsi, 4
	add	rsi, 8
	mov	qword ptr [rbp - 280], rsi
	mov	rsi, qword ptr [rbp - 280]
	lea	rdi, [rip + L_.str.11]
	mov	dword ptr [rbp - 436], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 8
	mov	esi, ecx
	mov	dword ptr [rbp - 288], 1
	mov	dword ptr [rbp - 284], 17
	lea	rdi, [rip + L_.str.12]
	mov	dword ptr [rbp - 440], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.13]
	lea	rsi, [rbp - 288]
	mov	dword ptr [rbp - 444], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 288]
	lea	rdi, [rip + L_.str.14]
	mov	dword ptr [rbp - 448], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 288]
	add	rsi, 4
	lea	rdi, [rip + L_.str.15]
	mov	dword ptr [rbp - 452], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 288]
	add	rsi, 4
	lea	rdi, [rip + L_.str.16]
	mov	dword ptr [rbp - 456], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 288]
	mov	dword ptr [rbp - 460], eax ## 4-byte Spill
	call	_simp3
	mov	qword ptr [rbp - 304], rax
	mov	rax, qword ptr [rbp - 304]
	mov	qword ptr [rbp - 296], rax
	mov	esi, dword ptr [rbp - 296]
	mov	edx, dword ptr [rbp - 292]
	lea	rdi, [rip + L_.str.17]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 160]
	mov	dword ptr [rbp - 160], 1
	mov	dword ptr [rbp - 156], 7
	mov	dword ptr [rbp - 152], 2
	mov	dword ptr [rbp - 148], 3
	mov	qword ptr [rbp - 312], rdi
	mov	rdi, qword ptr [rbp - 312]
	mov	esi, dword ptr [rdi + 12]
	lea	rdi, [rip + L_.str.18]
	mov	dword ptr [rbp - 464], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 160]
	lea	rdi, [rip + L_.str.19]
	mov	dword ptr [rbp - 468], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.20]
	lea	rsi, [rbp - 160]
	mov	dword ptr [rbp - 472], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 160]
	lea	rdi, [rip + L_.str.21]
	mov	dword ptr [rbp - 476], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 160]
	add	rsi, 8
	lea	rdi, [rip + L_.str.22]
	mov	dword ptr [rbp - 480], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 168]
	lea	rdi, [rip + L_.str.23]
	mov	dword ptr [rbp - 484], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 316], 0
	mov	dword ptr [rbp - 488], eax ## 4-byte Spill
LBB1_17:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_19 Depth 2
	mov	eax, dword ptr [rbp - 316]
	cmp	eax, dword ptr [rbp - 168]
	jge	LBB1_24
## %bb.18:                              ##   in Loop: Header=BB1_17 Depth=1
	mov	rax, qword ptr [rbp - 176]
	movsxd	rcx, dword ptr [rbp - 316]
	mov	rax, qword ptr [rax + 8*rcx]
	mov	qword ptr [rbp - 328], rax
	mov	esi, dword ptr [rbp - 316]
	mov	rdx, qword ptr [rbp - 328]
	lea	rdi, [rip + L_.str.24]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 332], 0
	mov	dword ptr [rbp - 492], eax ## 4-byte Spill
LBB1_19:                                ##   Parent Loop BB1_17 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsxd	rax, dword ptr [rbp - 332]
	mov	rdi, qword ptr [rbp - 328]
	mov	qword ptr [rbp - 504], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 504] ## 8-byte Reload
	cmp	rdi, rax
	jae	LBB1_22
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	mov	rax, qword ptr [rbp - 328]
	movsxd	rcx, dword ptr [rbp - 332]
	movsx	esi, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 328]
	movsxd	rcx, dword ptr [rbp - 332]
	add	rax, rcx
	lea	rdi, [rip + L_.str.25]
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 508], eax ## 4-byte Spill
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	mov	eax, dword ptr [rbp - 332]
	add	eax, 1
	mov	dword ptr [rbp - 332], eax
	jmp	LBB1_19
LBB1_22:                                ##   in Loop: Header=BB1_17 Depth=1
	jmp	LBB1_23
LBB1_23:                                ##   in Loop: Header=BB1_17 Depth=1
	mov	eax, dword ptr [rbp - 316]
	add	eax, 1
	mov	dword ptr [rbp - 316], eax
	jmp	LBB1_17
LBB1_24:
	lea	rax, [rip + L_.str.26]
	mov	qword ptr [rbp - 344], rax
	mov	ecx, dword ptr [rip + L_main.string2]
	mov	dword ptr [rbp - 351], ecx
	mov	dx, word ptr [rip + L_main.string2+4]
	mov	word ptr [rbp - 347], dx
	mov	sil, byte ptr [rip + L_main.string2+6]
	mov	byte ptr [rbp - 345], sil
	mov	rsi, qword ptr [rbp - 344]
	lea	rdi, [rip + L_.str.27]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 351]
	lea	rdi, [rip + L_.str.27]
	mov	dword ptr [rbp - 512], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 344]
	add	rsi, 2
	lea	rdi, [rip + L_.str.27]
	mov	dword ptr [rbp - 516], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 344]
	movsx	esi, byte ptr [rsi + 3]
	lea	rdi, [rip + L_.str.28]
	mov	dword ptr [rbp - 520], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 344]
	movsx	esi, byte ptr [rdi + 6]
	lea	rdi, [rip + L_.str.28]
	mov	dword ptr [rbp - 524], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.29]
	mov	dword ptr [rbp - 528], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 351]
	mov	byte ptr [rbp - 351], 65
	mov	byte ptr [rbp - 351], 65
	mov	byte ptr [rbp - 346], 70
	mov	qword ptr [rbp - 536], rdi ## 8-byte Spill
	mov	dword ptr [rbp - 540], eax ## 4-byte Spill
	call	_strlen
	mov	byte ptr [rbp + rax - 351], 71
	mov	rdi, qword ptr [rbp - 536] ## 8-byte Reload
	call	_strlen
	mov	byte ptr [rbp + rax - 350], 72
	lea	rdi, [rip + L_.str.27]
	mov	rsi, qword ptr [rbp - 536] ## 8-byte Reload
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 164]
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 544], eax ## 4-byte Spill
	mov	dword ptr [rbp - 548], ecx ## 4-byte Spill
	jne	LBB1_26
## %bb.25:
	mov	eax, dword ptr [rbp - 548] ## 4-byte Reload
	add	rsp, 560
	pop	rbp
	ret
LBB1_26:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	2               ## @simp3.f2
L_simp3.f2:
	.long	1                       ## 0x1
	.long	2                       ## 0x2

	.section	__TEXT,__const
	.p2align	4               ## @main.tab
l_main.tab:
	.quad	4607182418800017408     ## double 1
	.quad	4611686018427387904     ## double 2
	.quad	4613937818241073152     ## double 3
	.quad	4616189618054758400     ## double 4

	.p2align	4               ## @main.mat
l_main.mat:
	.quad	4607182418800017408     ## double 1
	.quad	4611686018427387904     ## double 2
	.quad	4613937818241073152     ## double 3
	.quad	4616189618054758400     ## double 4
	.quad	4617315517961601024     ## double 5
	.quad	4618441417868443648     ## double 6
	.quad	4619567317775286272     ## double 7
	.quad	4620693217682128896     ## double 8
	.quad	4621256167635550208     ## double 9
	.quad	4621819117588971520     ## double 10
	.quad	4622382067542392832     ## double 11
	.quad	4622945017495814144     ## double 12

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"sizeof(d)=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"&d=%p\n"

L_.str.2:                               ## @.str.2
	.asciz	"tab[%d]=%f at address %p\n"

L_.str.3:                               ## @.str.3
	.asciz	"mat[%d][%d]=%f at address %p\n"

L_.str.4:                               ## @.str.4
	.asciz	"mat[%d][%d]=%f at relative address %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"sizeof(test)=%d\n"

L_.str.6:                               ## @.str.6
	.asciz	"&(t1)=%p\n"

L_.str.7:                               ## @.str.7
	.asciz	"&(t1.c[0])=%p\n"

L_.str.8:                               ## @.str.8
	.asciz	"&(t1.num)=%p\n"

L_.str.9:                               ## @.str.9
	.asciz	"&(t1.d)=%p\n"

L_.str.10:                              ## @.str.10
	.asciz	"&(t1.data)=%p\n"

L_.str.11:                              ## @.str.11
	.asciz	"%p\n"

L_.str.12:                              ## @.str.12
	.asciz	"sizeof(fraction)=%d\n"

L_.str.13:                              ## @.str.13
	.asciz	"&(f1)=%p\n"

L_.str.14:                              ## @.str.14
	.asciz	"&(f1.num)=%p\n"

L_.str.15:                              ## @.str.15
	.asciz	"&(f1.num)+1=%p\n"

L_.str.16:                              ## @.str.16
	.asciz	"&(f1.den)=%p\n"

L_.str.17:                              ## @.str.17
	.asciz	"%d/%d\n"

L_.str.18:                              ## @.str.18
	.asciz	"%d \n"

L_.str.19:                              ## @.str.19
	.asciz	"&(tabfract[0])=%p\n"

L_.str.20:                              ## @.str.20
	.asciz	"&(tabfract)=%p\n"

L_.str.21:                              ## @.str.21
	.asciz	"tabfract=%p\n"

L_.str.22:                              ## @.str.22
	.asciz	"&(tabfract[1])=%p\n"

L_.str.23:                              ## @.str.23
	.asciz	"argc=%d\n"

L_.str.24:                              ## @.str.24
	.asciz	"argv[%d]=%s\n"

L_.str.25:                              ## @.str.25
	.asciz	"%c is at %p\n"

L_.str.26:                              ## @.str.26
	.asciz	"abcdef"

L_main.string2:                         ## @main.string2
	.asciz	"abcdef"

L_.str.27:                              ## @.str.27
	.asciz	"%s\n"

L_.str.28:                              ## @.str.28
	.asciz	"%c\n"

L_.str.29:                              ## @.str.29
	.asciz	"test\n"


.subsections_via_symbols
