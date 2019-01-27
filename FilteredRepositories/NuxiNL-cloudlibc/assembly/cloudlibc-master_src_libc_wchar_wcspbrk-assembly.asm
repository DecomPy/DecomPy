	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_wcspbrk                ## -- Begin function wcspbrk
	.p2align	4, 0x90
_wcspbrk:                               ## @wcspbrk
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], 0
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rsi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 32]
	mov	eax, dword ptr [rdx]
	and	eax, 63
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 56], rcx ## 8-byte Spill
	mov	rcx, rdx
                                        ## kill: def $cl killed $rcx
	mov	rdx, qword ptr [rbp - 56] ## 8-byte Reload
	shl	rdx, cl
	or	rdx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 24], rdx
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 32], rcx
	cmp	dword ptr [rax], 0
	jne	LBB0_1
## %bb.3:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
LBB0_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_6 Depth 2
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 40]
	mov	eax, dword ptr [rsi]
	and	eax, 63
	mov	eax, eax
	mov	esi, eax
	mov	qword ptr [rbp - 64], rcx ## 8-byte Spill
	mov	rcx, rsi
                                        ## kill: def $cl killed $rcx
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	LBB0_14
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
LBB0_6:                                 ##   Parent Loop BB0_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 48]
	cmp	ecx, dword ptr [rax]
	jne	LBB0_11
## %bb.7:
	mov	rax, qword ptr [rbp - 40]
	cmp	dword ptr [rax], 0
	je	LBB0_9
## %bb.8:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
	jmp	LBB0_10
LBB0_9:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 72], rcx ## 8-byte Spill
	jmp	LBB0_10
LBB0_10:
	mov	rax, qword ptr [rbp - 72] ## 8-byte Reload
	pop	rbp
	ret
LBB0_11:                                ##   in Loop: Header=BB0_6 Depth=2
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_6 Depth=2
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 48], rcx
	cmp	dword ptr [rax], 0
	jne	LBB0_6
## %bb.13:                              ##   in Loop: Header=BB0_4 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 40]
	add	rax, 4
	mov	qword ptr [rbp - 40], rax
	jmp	LBB0_4
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
