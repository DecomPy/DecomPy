	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_rs_siphash             ## -- Begin function rs_siphash
	.p2align	4, 0x90
_rs_siphash:                            ## @rs_siphash
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	xor	eax, eax
	mov	r9d, eax
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	movabs	rcx, 8317987319222330741
	mov	qword ptr [rbp - 56], rcx
	movabs	rcx, 7237128888997146477
	mov	qword ptr [rbp - 64], rcx
	movabs	rcx, 7816392313619706465
	mov	qword ptr [rbp - 72], rcx
	movabs	rcx, 8387220255154660723
	mov	qword ptr [rbp - 80], rcx
	mov	rcx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rcx]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 1]
	mov	edx, eax
	shl	rdx, 8
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 2]
	mov	edx, eax
	shl	rdx, 16
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 3]
	mov	edx, eax
	shl	rdx, 24
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 4]
	mov	edx, eax
	shl	rdx, 32
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 5]
	mov	edx, eax
	shl	rdx, 40
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 6]
	mov	edx, eax
	shl	rdx, 48
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 7]
	mov	edx, eax
	shl	rdx, 56
	or	rcx, rdx
	mov	qword ptr [rbp - 88], rcx
	mov	rcx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rcx + 8]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 9]
	mov	edx, eax
	shl	rdx, 8
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 10]
	mov	edx, eax
	shl	rdx, 16
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 11]
	mov	edx, eax
	shl	rdx, 24
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 12]
	mov	edx, eax
	shl	rdx, 32
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 13]
	mov	edx, eax
	shl	rdx, 40
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 14]
	mov	edx, eax
	shl	rdx, 48
	or	rcx, rdx
	mov	rdx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rdx + 15]
	mov	edx, eax
	shl	rdx, 56
	or	rcx, rdx
	mov	qword ptr [rbp - 96], rcx
	mov	rcx, qword ptr [rbp - 16]
	add	rcx, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 24]
	and	rdx, 7
	sub	r9, rdx
	add	rcx, r9
	mov	qword ptr [rbp - 120], rcx
	mov	rcx, qword ptr [rbp - 24]
	and	rcx, 7
	mov	eax, ecx
	mov	dword ptr [rbp - 124], eax
	mov	rcx, qword ptr [rbp - 24]
	shl	rcx, 56
	mov	qword ptr [rbp - 136], rcx
	cmp	qword ptr [rbp - 48], 8
	mov	r10b, 1
	mov	byte ptr [rbp - 137], r10b ## 1-byte Spill
	je	LBB0_2
## %bb.1:
	cmp	qword ptr [rbp - 48], 16
	sete	al
	mov	byte ptr [rbp - 137], al ## 1-byte Spill
LBB0_2:
	mov	al, byte ptr [rbp - 137] ## 1-byte Reload
	xor	al, -1
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	LBB0_4
## %bb.3:
	lea	rdi, [rip + L___func__.rs_siphash]
	lea	rsi, [rip + L_.str]
	lea	rcx, [rip + L_.str.1]
	mov	edx, 105
	call	___assert_rtn
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	mov	rax, qword ptr [rbp - 96]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 88]
	xor	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 96]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 88]
	xor	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	cmp	qword ptr [rbp - 48], 16
	jne	LBB0_7
## %bb.6:
	mov	rax, qword ptr [rbp - 64]
	xor	rax, 238
	mov	qword ptr [rbp - 64], rax
LBB0_7:
	jmp	LBB0_8
LBB0_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_10 Depth 2
	mov	rax, qword ptr [rbp - 16]
	cmp	rax, qword ptr [rbp - 120]
	je	LBB0_17
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 1]
	mov	edx, ecx
	shl	rdx, 8
	or	rax, rdx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 2]
	mov	edx, ecx
	shl	rdx, 16
	or	rax, rdx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 3]
	mov	edx, ecx
	shl	rdx, 24
	or	rax, rdx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 4]
	mov	edx, ecx
	shl	rdx, 32
	or	rax, rdx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 5]
	mov	edx, ecx
	shl	rdx, 40
	or	rax, rdx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 6]
	mov	edx, ecx
	shl	rdx, 48
	or	rax, rdx
	mov	rdx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rdx + 7]
	mov	edx, ecx
	shl	rdx, 56
	or	rax, rdx
	mov	qword ptr [rbp - 104], rax
	mov	rax, qword ptr [rbp - 104]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	dword ptr [rbp - 108], 0
LBB0_10:                                ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 108], 2
	jge	LBB0_15
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=2
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_10 Depth=2
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 13
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 51
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 56]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 16
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 48
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 21
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 43
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 17
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 47
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 72]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 72], rax
## %bb.13:                              ##   in Loop: Header=BB0_10 Depth=2
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_10 Depth=2
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB0_10
LBB0_15:                                ##   in Loop: Header=BB0_8 Depth=1
	mov	rax, qword ptr [rbp - 104]
	xor	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
## %bb.16:                              ##   in Loop: Header=BB0_8 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 8
	mov	qword ptr [rbp - 16], rax
	jmp	LBB0_8
LBB0_17:
	mov	eax, dword ptr [rbp - 124]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 7
	mov	qword ptr [rbp - 152], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 160], rdx ## 8-byte Spill
	ja	LBB0_26
## %bb.52:
	lea	rax, [rip + LJTI0_0]
	mov	rcx, qword ptr [rbp - 152] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB0_18:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax + 6]
	mov	eax, ecx
	shl	rax, 48
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
LBB0_19:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax + 5]
	mov	eax, ecx
	shl	rax, 40
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
LBB0_20:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax + 4]
	mov	eax, ecx
	shl	rax, 32
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
LBB0_21:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax + 3]
	mov	eax, ecx
	shl	rax, 24
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
LBB0_22:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax + 2]
	mov	eax, ecx
	shl	rax, 16
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
LBB0_23:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax + 1]
	mov	eax, ecx
	shl	rax, 8
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
LBB0_24:
	mov	rax, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rax]
	mov	eax, ecx
	or	rax, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 136], rax
	jmp	LBB0_27
LBB0_25:
	jmp	LBB0_26
LBB0_26:
	jmp	LBB0_27
LBB0_27:
	mov	rax, qword ptr [rbp - 136]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	dword ptr [rbp - 108], 0
LBB0_28:                                ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 108], 2
	jge	LBB0_33
## %bb.29:                              ##   in Loop: Header=BB0_28 Depth=1
	jmp	LBB0_30
LBB0_30:                                ##   in Loop: Header=BB0_28 Depth=1
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 13
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 51
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 56]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 16
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 48
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 21
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 43
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 17
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 47
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 72]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 72], rax
## %bb.31:                              ##   in Loop: Header=BB0_28 Depth=1
	jmp	LBB0_32
LBB0_32:                                ##   in Loop: Header=BB0_28 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB0_28
LBB0_33:
	mov	rax, qword ptr [rbp - 136]
	xor	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	cmp	qword ptr [rbp - 48], 16
	jne	LBB0_35
## %bb.34:
	mov	rax, qword ptr [rbp - 72]
	xor	rax, 238
	mov	qword ptr [rbp - 72], rax
	jmp	LBB0_36
LBB0_35:
	mov	rax, qword ptr [rbp - 72]
	xor	rax, 255
	mov	qword ptr [rbp - 72], rax
LBB0_36:
	mov	dword ptr [rbp - 108], 0
LBB0_37:                                ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 108], 4
	jge	LBB0_42
## %bb.38:                              ##   in Loop: Header=BB0_37 Depth=1
	jmp	LBB0_39
LBB0_39:                                ##   in Loop: Header=BB0_37 Depth=1
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 13
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 51
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 56]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 16
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 48
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 21
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 43
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 17
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 47
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 72]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 72], rax
## %bb.40:                              ##   in Loop: Header=BB0_37 Depth=1
	jmp	LBB0_41
LBB0_41:                                ##   in Loop: Header=BB0_37 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB0_37
LBB0_42:
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 64]
	xor	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 136], rax
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	shr	ecx, 8
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 1], dl
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	shr	ecx, 16
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 2], dl
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	shr	ecx, 24
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 3], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 4], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 8
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 5], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 16
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 6], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 24
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 7], dl
	cmp	qword ptr [rbp - 48], 8
	jne	LBB0_44
## %bb.43:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_51
LBB0_44:
	mov	rax, qword ptr [rbp - 64]
	xor	rax, 221
	mov	qword ptr [rbp - 64], rax
	mov	dword ptr [rbp - 108], 0
LBB0_45:                                ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 108], 4
	jge	LBB0_50
## %bb.46:                              ##   in Loop: Header=BB0_45 Depth=1
	jmp	LBB0_47
LBB0_47:                                ##   in Loop: Header=BB0_45 Depth=1
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 13
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 51
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 56]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 56]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 16
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 48
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 80]
	shl	rax, 21
	mov	rcx, qword ptr [rbp - 80]
	shr	rcx, 43
	or	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 64]
	add	rax, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 72], rax
	mov	rax, qword ptr [rbp - 64]
	shl	rax, 17
	mov	rcx, qword ptr [rbp - 64]
	shr	rcx, 47
	or	rax, rcx
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 72]
	shl	rax, 32
	mov	rcx, qword ptr [rbp - 72]
	shr	rcx, 32
	or	rax, rcx
	mov	qword ptr [rbp - 72], rax
## %bb.48:                              ##   in Loop: Header=BB0_45 Depth=1
	jmp	LBB0_49
LBB0_49:                                ##   in Loop: Header=BB0_45 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB0_45
LBB0_50:
	mov	rax, qword ptr [rbp - 56]
	xor	rax, qword ptr [rbp - 64]
	xor	rax, qword ptr [rbp - 72]
	xor	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 136], rax
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 8], dl
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	shr	ecx, 8
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 9], dl
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	shr	ecx, 16
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 10], dl
	mov	rax, qword ptr [rbp - 136]
	mov	ecx, eax
	shr	ecx, 24
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 11], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 12], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 8
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 13], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 16
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 14], dl
	mov	rax, qword ptr [rbp - 136]
	shr	rax, 32
	mov	ecx, eax
	shr	ecx, 24
	mov	dl, cl
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 15], dl
	mov	dword ptr [rbp - 4], 0
LBB0_51:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 160
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_25, LBB0_25-LJTI0_0
.set L0_0_set_24, LBB0_24-LJTI0_0
.set L0_0_set_23, LBB0_23-LJTI0_0
.set L0_0_set_22, LBB0_22-LJTI0_0
.set L0_0_set_21, LBB0_21-LJTI0_0
.set L0_0_set_20, LBB0_20-LJTI0_0
.set L0_0_set_19, LBB0_19-LJTI0_0
.set L0_0_set_18, LBB0_18-LJTI0_0
LJTI0_0:
	.long	L0_0_set_25
	.long	L0_0_set_24
	.long	L0_0_set_23
	.long	L0_0_set_22
	.long	L0_0_set_21
	.long	L0_0_set_20
	.long	L0_0_set_19
	.long	L0_0_set_18
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___func__.rs_siphash:                  ## @__func__.rs_siphash
	.asciz	"rs_siphash"

L_.str:                                 ## @.str
	.asciz	"Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_plugins_imfile_siphash.c"

L_.str.1:                               ## @.str.1
	.asciz	"(outlen == 8) || (outlen == 16)"


.subsections_via_symbols
