	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_MurmurHash2            ## -- Begin function MurmurHash2
	.p2align	4, 0x90
_MurmurHash2:                           ## @MurmurHash2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], 1540483477
	mov	dword ptr [rbp - 24], 24
	mov	edx, dword ptr [rbp - 16]
	xor	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 28], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rdi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 4
	jl	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 44], ecx
	imul	ecx, dword ptr [rbp - 44], 1540483477
	mov	dword ptr [rbp - 44], ecx
	mov	ecx, dword ptr [rbp - 44]
	shr	ecx, 24
	xor	ecx, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 44], ecx
	imul	ecx, dword ptr [rbp - 44], 1540483477
	mov	dword ptr [rbp - 44], ecx
	imul	ecx, dword ptr [rbp - 28], 1540483477
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 44]
	xor	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], ecx
	mov	rax, qword ptr [rbp - 40]
	add	rax, 4
	mov	qword ptr [rbp - 40], rax
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 4
	mov	dword ptr [rbp - 12], ecx
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	sub	ecx, 1
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	dword ptr [rbp - 52], ecx ## 4-byte Spill
	je	LBB0_6
	jmp	LBB0_8
LBB0_8:
	mov	eax, dword ptr [rbp - 48] ## 4-byte Reload
	sub	eax, 2
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	je	LBB0_5
	jmp	LBB0_9
LBB0_9:
	mov	eax, dword ptr [rbp - 48] ## 4-byte Reload
	sub	eax, 3
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jne	LBB0_7
	jmp	LBB0_4
LBB0_4:
	mov	rax, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rax + 2]
	shl	ecx, 16
	xor	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], ecx
LBB0_5:
	mov	rax, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rax + 1]
	shl	ecx, 8
	xor	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], ecx
LBB0_6:
	mov	rax, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rax]
	xor	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], ecx
	imul	ecx, dword ptr [rbp - 28], 1540483477
	mov	dword ptr [rbp - 28], ecx
LBB0_7:
	mov	eax, dword ptr [rbp - 28]
	shr	eax, 13
	xor	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	imul	eax, dword ptr [rbp - 28], 1540483477
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	shr	eax, 15
	xor	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
