	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_oqs_kem_frodokem_pack  ## -- Begin function oqs_kem_frodokem_pack
	.p2align	4, 0x90
_oqs_kem_frodokem_pack:                 ## @oqs_kem_frodokem_pack
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	al, r8b
	xor	r8d, r8d
	mov	r9, -1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	byte ptr [rbp - 33], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	mov	esi, r8d
	mov	rcx, r9
	call	___memset_chk
	mov	qword ptr [rbp - 48], 0
	mov	qword ptr [rbp - 56], 0
	mov	word ptr [rbp - 58], 0
	mov	byte ptr [rbp - 59], 0
	mov	qword ptr [rbp - 80], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 48]
	cmp	rdx, qword ptr [rbp - 16]
	mov	byte ptr [rbp - 81], cl ## 1-byte Spill
	jae	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 56]
	cmp	rax, qword ptr [rbp - 32]
	mov	cl, 1
	mov	byte ptr [rbp - 82], cl ## 1-byte Spill
	jb	LBB0_6
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 56]
	cmp	rdx, qword ptr [rbp - 32]
	mov	byte ptr [rbp - 83], cl ## 1-byte Spill
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movzx	eax, byte ptr [rbp - 59]
	cmp	eax, 0
	setg	cl
	mov	byte ptr [rbp - 83], cl ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 83] ## 1-byte Reload
	mov	byte ptr [rbp - 82], al ## 1-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 82] ## 1-byte Reload
	mov	byte ptr [rbp - 81], al ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 81] ## 1-byte Reload
	test	al, 1
	jne	LBB0_8
	jmp	LBB0_22
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	byte ptr [rbp - 60], 0
LBB0_9:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzx	eax, byte ptr [rbp - 60]
	cmp	eax, 8
	jge	LBB0_19
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=2
	movzx	eax, byte ptr [rbp - 60]
	mov	ecx, 8
	sub	ecx, eax
	movzx	eax, byte ptr [rbp - 59]
	cmp	ecx, eax
	jge	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=2
	movzx	eax, byte ptr [rbp - 60]
	mov	ecx, 8
	sub	ecx, eax
	mov	dword ptr [rbp - 88], ecx ## 4-byte Spill
	jmp	LBB0_13
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=2
	movzx	eax, byte ptr [rbp - 59]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
LBB0_13:                                ##   in Loop: Header=BB0_9 Depth=2
	mov	eax, dword ptr [rbp - 88] ## 4-byte Reload
	mov	dword ptr [rbp - 64], eax
	mov	ecx, dword ptr [rbp - 64]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	sub	eax, 1
	mov	dx, ax
	mov	word ptr [rbp - 66], dx
	movzx	eax, word ptr [rbp - 58]
	movzx	esi, byte ptr [rbp - 59]
	sub	esi, dword ptr [rbp - 64]
	mov	ecx, esi
                                        ## kill: def $cl killed $ecx
	sar	eax, cl
	movzx	esi, word ptr [rbp - 66]
	and	eax, esi
	mov	cl, al
	mov	byte ptr [rbp - 67], cl
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 48]
	movzx	eax, byte ptr [rdi + r8]
	movzx	esi, byte ptr [rbp - 67]
	movzx	r9d, byte ptr [rbp - 60]
	mov	r10d, 8
	sub	r10d, r9d
	sub	r10d, dword ptr [rbp - 64]
	mov	ecx, r10d
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	add	eax, esi
	mov	cl, al
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 48]
	mov	byte ptr [rdi + r8], cl
	mov	eax, dword ptr [rbp - 64]
	movzx	esi, byte ptr [rbp - 60]
	add	esi, eax
	mov	cl, sil
	mov	byte ptr [rbp - 60], cl
	mov	eax, dword ptr [rbp - 64]
	movzx	esi, byte ptr [rbp - 59]
	sub	esi, eax
	mov	cl, sil
	mov	byte ptr [rbp - 59], cl
	movzx	eax, word ptr [rbp - 66]
	movzx	ecx, byte ptr [rbp - 59]
                                        ## kill: def $cl killed $ecx
	shl	eax, cl
	xor	eax, -1
	movzx	esi, word ptr [rbp - 58]
	and	esi, eax
	mov	dx, si
	mov	word ptr [rbp - 58], dx
	movzx	eax, byte ptr [rbp - 59]
	cmp	eax, 0
	jne	LBB0_18
## %bb.14:                              ##   in Loop: Header=BB0_9 Depth=2
	mov	rax, qword ptr [rbp - 56]
	cmp	rax, qword ptr [rbp - 32]
	jae	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_9 Depth=2
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 56]
	mov	dx, word ptr [rax + 2*rcx]
	mov	word ptr [rbp - 58], dx
	mov	sil, byte ptr [rbp - 33]
	mov	byte ptr [rbp - 59], sil
	mov	rax, qword ptr [rbp - 56]
	add	rax, 1
	mov	qword ptr [rbp - 56], rax
	jmp	LBB0_17
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_19
LBB0_17:                                ##   in Loop: Header=BB0_9 Depth=2
	jmp	LBB0_18
LBB0_18:                                ##   in Loop: Header=BB0_9 Depth=2
	jmp	LBB0_9
LBB0_19:                                ##   in Loop: Header=BB0_1 Depth=1
	movzx	eax, byte ptr [rbp - 60]
	cmp	eax, 8
	jne	LBB0_21
## %bb.20:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_22:
	add	rsp, 96
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_oqs_kem_frodokem_unpack ## -- Begin function oqs_kem_frodokem_unpack
	.p2align	4, 0x90
_oqs_kem_frodokem_unpack:               ## @oqs_kem_frodokem_unpack
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	al, r8b
	xor	r8d, r8d
	mov	r9, -1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	byte ptr [rbp - 33], al
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 1
	mov	rdi, rcx
	mov	esi, r8d
	mov	rcx, r9
	call	___memset_chk
	mov	qword ptr [rbp - 48], 0
	mov	qword ptr [rbp - 56], 0
	mov	byte ptr [rbp - 57], 0
	mov	byte ptr [rbp - 58], 0
	mov	qword ptr [rbp - 80], rax ## 8-byte Spill
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_9 Depth 2
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 48]
	cmp	rdx, qword ptr [rbp - 16]
	mov	byte ptr [rbp - 81], cl ## 1-byte Spill
	jae	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 56]
	cmp	rax, qword ptr [rbp - 32]
	mov	cl, 1
	mov	byte ptr [rbp - 82], cl ## 1-byte Spill
	jb	LBB1_6
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 56]
	cmp	rdx, qword ptr [rbp - 32]
	mov	byte ptr [rbp - 83], cl ## 1-byte Spill
	jne	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_1 Depth=1
	movzx	eax, byte ptr [rbp - 58]
	cmp	eax, 0
	setg	cl
	mov	byte ptr [rbp - 83], cl ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 83] ## 1-byte Reload
	mov	byte ptr [rbp - 82], al ## 1-byte Spill
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 82] ## 1-byte Reload
	mov	byte ptr [rbp - 81], al ## 1-byte Spill
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 81] ## 1-byte Reload
	test	al, 1
	jne	LBB1_8
	jmp	LBB1_22
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	byte ptr [rbp - 59], 0
LBB1_9:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzx	eax, byte ptr [rbp - 59]
	movzx	ecx, byte ptr [rbp - 33]
	cmp	eax, ecx
	jge	LBB1_19
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=2
	movzx	eax, byte ptr [rbp - 33]
	movzx	ecx, byte ptr [rbp - 59]
	sub	eax, ecx
	movzx	ecx, byte ptr [rbp - 58]
	cmp	eax, ecx
	jge	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_9 Depth=2
	movzx	eax, byte ptr [rbp - 33]
	movzx	ecx, byte ptr [rbp - 59]
	sub	eax, ecx
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	jmp	LBB1_13
LBB1_12:                                ##   in Loop: Header=BB1_9 Depth=2
	movzx	eax, byte ptr [rbp - 58]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
LBB1_13:                                ##   in Loop: Header=BB1_9 Depth=2
	mov	eax, dword ptr [rbp - 88] ## 4-byte Reload
	mov	dword ptr [rbp - 64], eax
	mov	ecx, dword ptr [rbp - 64]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	sub	eax, 1
	mov	dx, ax
	mov	word ptr [rbp - 66], dx
	movzx	eax, byte ptr [rbp - 57]
	movzx	esi, byte ptr [rbp - 58]
	sub	esi, dword ptr [rbp - 64]
	mov	ecx, esi
                                        ## kill: def $cl killed $ecx
	sar	eax, cl
	movzx	esi, word ptr [rbp - 66]
	and	eax, esi
	mov	cl, al
	mov	byte ptr [rbp - 67], cl
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 48]
	movzx	eax, word ptr [rdi + 2*r8]
	movzx	esi, byte ptr [rbp - 67]
	movzx	r9d, byte ptr [rbp - 33]
	movzx	r10d, byte ptr [rbp - 59]
	sub	r9d, r10d
	sub	r9d, dword ptr [rbp - 64]
	mov	ecx, r9d
                                        ## kill: def $cl killed $ecx
	shl	esi, cl
	add	eax, esi
	mov	dx, ax
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 48]
	mov	word ptr [rdi + 2*r8], dx
	mov	eax, dword ptr [rbp - 64]
	movzx	esi, byte ptr [rbp - 59]
	add	esi, eax
	mov	cl, sil
	mov	byte ptr [rbp - 59], cl
	mov	eax, dword ptr [rbp - 64]
	movzx	esi, byte ptr [rbp - 58]
	sub	esi, eax
	mov	cl, sil
	mov	byte ptr [rbp - 58], cl
	movzx	eax, word ptr [rbp - 66]
	movzx	ecx, byte ptr [rbp - 58]
                                        ## kill: def $cl killed $ecx
	shl	eax, cl
	xor	eax, -1
	movzx	esi, byte ptr [rbp - 57]
	and	esi, eax
	mov	cl, sil
	mov	byte ptr [rbp - 57], cl
	movzx	eax, byte ptr [rbp - 58]
	cmp	eax, 0
	jne	LBB1_18
## %bb.14:                              ##   in Loop: Header=BB1_9 Depth=2
	mov	rax, qword ptr [rbp - 56]
	cmp	rax, qword ptr [rbp - 32]
	jae	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_9 Depth=2
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 56]
	mov	dl, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 57], dl
	mov	byte ptr [rbp - 58], 8
	mov	rax, qword ptr [rbp - 56]
	add	rax, 1
	mov	qword ptr [rbp - 56], rax
	jmp	LBB1_17
LBB1_16:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_19
LBB1_17:                                ##   in Loop: Header=BB1_9 Depth=2
	jmp	LBB1_18
LBB1_18:                                ##   in Loop: Header=BB1_9 Depth=2
	jmp	LBB1_9
LBB1_19:                                ##   in Loop: Header=BB1_1 Depth=1
	movzx	eax, byte ptr [rbp - 59]
	movzx	ecx, byte ptr [rbp - 33]
	cmp	eax, ecx
	jne	LBB1_21
## %bb.20:                              ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
LBB1_21:                                ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_22:
	add	rsp, 96
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
