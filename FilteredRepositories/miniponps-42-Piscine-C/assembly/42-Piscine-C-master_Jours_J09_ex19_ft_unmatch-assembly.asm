	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ft_unmatch             ## -- Begin function ft_unmatch
	.p2align	4, 0x90
_ft_unmatch:                            ## @ft_unmatch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_10
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 32], 0
	mov	dword ptr [rbp - 28], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 20]
	jge	LBB0_7
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	cmp	edx, dword ptr [rax + 4*rcx]
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_3
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	cdq
	mov	ecx, 2
	idiv	ecx
	cmp	edx, 0
	je	LBB0_9
## %bb.8:
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 4], edx
	jmp	LBB0_11
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_1
LBB0_10:
	mov	dword ptr [rbp - 4], 0
LBB0_11:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
