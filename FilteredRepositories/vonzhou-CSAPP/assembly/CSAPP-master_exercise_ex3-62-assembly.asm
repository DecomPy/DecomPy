	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_transpose              ## -- Begin function transpose
	.p2align	4, 0x90
_transpose:                             ## @transpose
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
	mov	dword ptr [rbp - 20], 0
	mov	qword ptr [rbp - 48], rsi ## 8-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rcx, 0
	shl	rdx, 2
	add	rax, rdx
	movsxd	rdx, dword ptr [rbp - 20]
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 24], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	rdx, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	mov	esi, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 36], esi
	mov	rax, qword ptr [rbp - 32]
	mov	esi, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	mov	dword ptr [rax + 4*rcx], esi
	mov	esi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 32]
	movsxd	rcx, esi
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 32], rax
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_8:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
