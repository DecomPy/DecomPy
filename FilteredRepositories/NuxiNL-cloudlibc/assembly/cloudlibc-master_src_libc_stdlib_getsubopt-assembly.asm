	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_getsubopt              ## -- Begin function getsubopt
	.p2align	4, 0x90
_getsubopt:                             ## @getsubopt
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	rdx, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rdx]
	lea	rsi, [rip + L_.str]
	call	_strcspn
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 40]
	mov	esi, 61
	call	_memchr
	mov	qword ptr [rbp - 48], rax
	cmp	qword ptr [rbp - 48], 0
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
LBB0_3:
	mov	rax, qword ptr [rbp - 72] ## 8-byte Reload
	mov	qword ptr [rbp - 56], rax
	cmp	qword ptr [rbp - 56], 0
	jne	LBB0_5
## %bb.4:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_18
LBB0_5:
	mov	dword ptr [rbp - 60], 0
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 60]
	cmp	qword ptr [rax + 8*rcx], 0
	jne	LBB0_8
## %bb.7:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_18
LBB0_8:                                 ##   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 60]
	mov	rdi, qword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 56]
	call	_memcmp
	cmp	eax, 0
	jne	LBB0_11
## %bb.9:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 60]
	mov	rax, qword ptr [rax + 8*rcx]
	mov	rcx, qword ptr [rbp - 56]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	jne	LBB0_11
## %bb.10:
	jmp	LBB0_12
LBB0_11:                                ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 60]
	add	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB0_6
LBB0_12:
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 16]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	LBB0_14
## %bb.13:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax], rdx
	mov	byte ptr [rcx], 0
LBB0_14:
	cmp	qword ptr [rbp - 48], 0
	je	LBB0_16
## %bb.15:
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 80], rax ## 8-byte Spill
	jmp	LBB0_17
LBB0_16:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 80], rcx ## 8-byte Spill
	jmp	LBB0_17
LBB0_17:
	mov	rax, qword ptr [rbp - 80] ## 8-byte Reload
	mov	rcx, qword ptr [rbp - 32]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 4], edx
LBB0_18:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	","


.subsections_via_symbols
