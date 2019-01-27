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
	sub	rsp, 128
	lea	rax, [rbp - 80]
	mov	rcx, qword ptr [rip + _n@GOTPCREL]
	lea	rdx, [rip + l_main.arr]
	mov	esi, 64
	mov	edi, esi
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	r8, rax
	mov	qword ptr [rbp - 96], rdi ## 8-byte Spill
	mov	rdi, r8
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 96] ## 8-byte Reload
	mov	qword ptr [rbp - 104], rax ## 8-byte Spill
	mov	qword ptr [rbp - 112], rcx ## 8-byte Spill
	call	_memcpy
	mov	rax, qword ptr [rbp - 112] ## 8-byte Reload
	mov	dword ptr [rax], 16
	mov	dword ptr [rbp - 84], 55
	mov	esi, dword ptr [rbp - 84]
	mov	rdi, qword ptr [rbp - 104] ## 8-byte Reload
	call	_jump_search
	mov	dword ptr [rbp - 88], eax
	mov	esi, dword ptr [rbp - 84]
	mov	edx, dword ptr [rbp - 88]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 128
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_jump_search            ## -- Begin function jump_search
	.p2align	4, 0x90
_jump_search:                           ## @jump_search
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	esi, dword ptr [rax]
	cvtsi2sd	xmm0, esi
	sqrtsd	xmm0, xmm0
	roundsd	xmm0, xmm0, 9
	cvttsd2si	esi, xmm0
	mov	dword ptr [rbp - 24], esi
	mov	dword ptr [rbp - 28], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 24]
	cmp	edx, dword ptr [rax]
	mov	qword ptr [rbp - 40], rcx ## 8-byte Spill
	jge	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB1_4
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 44], ecx ## 4-byte Spill
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 44] ## 4-byte Reload
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	mov	eax, dword ptr [rdx + 4*rcx]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB1_8
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rax]
	cvtsi2sd	xmm0, ecx
	sqrtsd	xmm0, xmm0
	roundsd	xmm0, xmm0, 9
	mov	ecx, dword ptr [rbp - 24]
	cvtsi2sd	xmm1, ecx
	addsd	xmm1, xmm0
	cvttsd2si	ecx, xmm1
	mov	dword ptr [rbp - 24], ecx
	mov	ecx, dword ptr [rbp - 28]
	cmp	ecx, dword ptr [rax]
	jl	LBB1_7
## %bb.6:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB1_16
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_8:
	jmp	LBB1_9
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 20]
	jge	LBB1_13
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, 1
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 28]
	cvtsi2sd	xmm0, ecx
	mov	ecx, dword ptr [rbp - 24]
	cvtsi2sd	xmm1, ecx
	mov	ecx, dword ptr [rax]
	cvtsi2sd	xmm2, ecx
	movaps	xmm3, xmm2
	movaps	xmm4, xmm1
	cmpunordsd	xmm4, xmm4
	movaps	xmm5, xmm4
	andpd	xmm5, xmm3
	minsd	xmm2, xmm1
	andnpd	xmm4, xmm2
	orpd	xmm4, xmm5
	ucomisd	xmm0, xmm4
	jne	LBB1_12
	jp	LBB1_12
## %bb.11:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB1_16
LBB1_12:                                ##   in Loop: Header=BB1_9 Depth=1
	jmp	LBB1_9
LBB1_13:
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 20]
	jne	LBB1_15
## %bb.14:
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_16
LBB1_15:
	mov	dword ptr [rbp - 4], -1
LBB1_16:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.arr
l_main.arr:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	8                       ## 0x8
	.long	13                      ## 0xd
	.long	21                      ## 0x15
	.long	34                      ## 0x22
	.long	55                      ## 0x37
	.long	89                      ## 0x59
	.long	144                     ## 0x90
	.long	233                     ## 0xe9
	.long	377                     ## 0x179
	.long	610                     ## 0x262

	.comm	_n,4,2                  ## @n
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nNumber %d is at index %d\n"


.subsections_via_symbols
