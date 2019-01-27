	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_abbreviate             ## -- Begin function abbreviate
	.p2align	4, 0x90
_abbreviate:                            ## @abbreviate
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 224
	mov	eax, 80
	mov	edx, eax
	lea	rcx, [rbp - 96]
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 104], rdi
	mov	rsi, qword ptr [rbp - 104]
	mov	rdi, rcx
	call	___strcpy_chk
	mov	r8d, 80
	mov	edx, r8d
	lea	rcx, [rbp - 96]
	mov	qword ptr [rbp - 112], rcx
	lea	rdi, [rip + _abbreviate.acr]
	lea	rsi, [rip + L_.str]
	mov	qword ptr [rbp - 160], rax ## 8-byte Spill
	call	___strcpy_chk
	mov	dword ptr [rbp - 116], 0
	mov	dword ptr [rbp - 120], 0
	mov	dword ptr [rbp - 124], 0
	mov	qword ptr [rbp - 168], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 112], 0
	mov	byte ptr [rbp - 169], cl ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 124], 80
	setl	al
	mov	byte ptr [rbp - 169], al ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 169] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_9
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 112]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 116]
	add	eax, 1
	mov	dword ptr [rbp - 116], eax
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 124], 80
	jge	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 112]
	add	rax, 1
	mov	qword ptr [rbp - 112], rax
	mov	ecx, dword ptr [rbp - 124]
	add	ecx, 1
	mov	dword ptr [rbp - 124], ecx
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_9:
	mov	dword ptr [rbp - 124], 0
	mov	eax, dword ptr [rbp - 116]
	inc	eax
	mov	dword ptr [rbp - 116], eax
	mov	eax, dword ptr [rbp - 116]
	mov	ecx, eax
	mov	rdx, rsp
	mov	qword ptr [rbp - 136], rdx
	mov	rdx, rcx
	shl	rdx, 4
	lea	rdx, [rdx + 4*rdx]
	mov	rsi, rsp
	sub	rsi, rdx
	mov	rsp, rsi
	mov	qword ptr [rbp - 144], rcx
	mov	dword ptr [rbp - 124], 0
	mov	qword ptr [rbp - 184], rsi ## 8-byte Spill
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 124]
	cmp	eax, dword ptr [rbp - 116]
	jge	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=1
	mov	rdx, -1
	movsxd	rax, dword ptr [rbp - 124]
	imul	rax, rax, 80
	mov	rcx, qword ptr [rbp - 184] ## 8-byte Reload
	add	rcx, rax
	mov	rdi, rcx
	lea	rsi, [rip + L_.str]
	call	___strcpy_chk
	mov	qword ptr [rbp - 192], rax ## 8-byte Spill
## %bb.12:                              ##   in Loop: Header=BB0_10 Depth=1
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB0_10
LBB0_13:
	lea	rax, [rbp - 96]
	mov	qword ptr [rbp - 112], rax
	mov	rax, qword ptr [rbp - 112]
	mov	qword ptr [rbp - 152], rax
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 112], 0
	mov	byte ptr [rbp - 193], cl ## 1-byte Spill
	je	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=1
	cmp	dword ptr [rbp - 124], 80
	setle	al
	mov	byte ptr [rbp - 193], al ## 1-byte Spill
LBB0_16:                                ##   in Loop: Header=BB0_14 Depth=1
	mov	al, byte ptr [rbp - 193] ## 1-byte Reload
	test	al, 1
	jne	LBB0_17
	jmp	LBB0_22
LBB0_17:                                ##   in Loop: Header=BB0_14 Depth=1
	mov	rax, qword ptr [rbp - 112]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 32
	jne	LBB0_19
## %bb.18:                              ##   in Loop: Header=BB0_14 Depth=1
	mov	eax, 80
	mov	edx, eax
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 112]
	mov	byte ptr [rsi], 0
	movsxd	rsi, dword ptr [rbp - 120]
	imul	rsi, rsi, 80
	mov	rdi, qword ptr [rbp - 184] ## 8-byte Reload
	add	rdi, rsi
	mov	rsi, qword ptr [rbp - 152]
	call	___strncat_chk
	mov	r8d, dword ptr [rbp - 120]
	add	r8d, 1
	mov	dword ptr [rbp - 120], r8d
	mov	rcx, qword ptr [rbp - 112]
	add	rcx, 1
	mov	qword ptr [rbp - 152], rcx
	mov	qword ptr [rbp - 208], rax ## 8-byte Spill
LBB0_19:                                ##   in Loop: Header=BB0_14 Depth=1
	cmp	dword ptr [rbp - 124], 80
	jg	LBB0_21
## %bb.20:                              ##   in Loop: Header=BB0_14 Depth=1
	mov	rax, qword ptr [rbp - 112]
	add	rax, 1
	mov	qword ptr [rbp - 112], rax
	mov	ecx, dword ptr [rbp - 124]
	add	ecx, 1
	mov	dword ptr [rbp - 124], ecx
LBB0_21:                                ##   in Loop: Header=BB0_14 Depth=1
	jmp	LBB0_14
LBB0_22:
	mov	eax, 80
	mov	edx, eax
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 112]
	mov	byte ptr [rsi], 0
	movsxd	rsi, dword ptr [rbp - 120]
	imul	rsi, rsi, 80
	mov	rdi, qword ptr [rbp - 184] ## 8-byte Reload
	add	rdi, rsi
	mov	rsi, qword ptr [rbp - 152]
	call	___strncat_chk
	mov	r8d, dword ptr [rbp - 120]
	add	r8d, 1
	mov	dword ptr [rbp - 120], r8d
	mov	dword ptr [rbp - 124], 0
	mov	qword ptr [rbp - 216], rax ## 8-byte Spill
LBB0_23:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 124]
	cmp	eax, dword ptr [rbp - 120]
	jge	LBB0_26
## %bb.24:                              ##   in Loop: Header=BB0_23 Depth=1
	movsxd	rax, dword ptr [rbp - 124]
	imul	rax, rax, 80
	mov	rcx, qword ptr [rbp - 184] ## 8-byte Reload
	add	rcx, rax
	movsx	edi, byte ptr [rcx]
	call	_toupper
	mov	edi, 80
	mov	edx, edi
	mov	sil, al
	movsxd	rcx, dword ptr [rbp - 124]
	imul	rcx, rcx, 80
	mov	r8, qword ptr [rbp - 184] ## 8-byte Reload
	add	r8, rcx
	mov	byte ptr [r8], sil
	movsxd	rcx, dword ptr [rbp - 124]
	imul	rcx, rcx, 80
	mov	r8, qword ptr [rbp - 184] ## 8-byte Reload
	add	r8, rcx
	mov	byte ptr [r8 + 1], 0
	movsxd	rcx, dword ptr [rbp - 124]
	imul	rcx, rcx, 80
	mov	r8, qword ptr [rbp - 184] ## 8-byte Reload
	add	r8, rcx
	lea	rdi, [rip + _abbreviate.acr]
	mov	rsi, r8
	call	___strcat_chk
	mov	qword ptr [rbp - 224], rax ## 8-byte Spill
## %bb.25:                              ##   in Loop: Header=BB0_23 Depth=1
	mov	eax, dword ptr [rbp - 124]
	add	eax, 1
	mov	dword ptr [rbp - 124], eax
	jmp	LBB0_23
LBB0_26:
	mov	rax, qword ptr [rbp - 136]
	mov	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_28
## %bb.27:
	lea	rax, [rip + _abbreviate.acr]
	mov	rsp, rbp
	pop	rbp
	ret
LBB0_28:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_abbreviate.acr,80,4 ## @abbreviate.acr
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.space	1


.subsections_via_symbols
