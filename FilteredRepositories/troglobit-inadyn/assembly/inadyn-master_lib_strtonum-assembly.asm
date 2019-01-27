	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_strtonum               ## -- Begin function strtonum
	.p2align	4, 0x90
_strtonum:                              ## @strtonum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	xor	eax, eax
	mov	r8d, 64
	mov	r9d, r8d
	mov	r10, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r10, qword ptr [r10]
	mov	qword ptr [rbp - 8], r10
	mov	qword ptr [rbp - 88], rdi
	mov	qword ptr [rbp - 96], rsi
	mov	qword ptr [rbp - 104], rdx
	mov	qword ptr [rbp - 112], rcx
	mov	qword ptr [rbp - 120], 0
	mov	dword ptr [rbp - 124], 0
	lea	rcx, [rbp - 80]
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r9
	call	_memset
	lea	rcx, [rip + L_.str]
	mov	qword ptr [rbp - 64], rcx
	mov	dword ptr [rbp - 56], 22
	lea	rcx, [rip + L_.str.1]
	mov	qword ptr [rbp - 48], rcx
	mov	dword ptr [rbp - 40], 34
	lea	rcx, [rip + L_.str.2]
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 24], 34
	call	___error
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 72], esi
	call	___error
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 104]
	jle	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 124], 1
	jmp	LBB0_16
LBB0_2:
	mov	rdi, qword ptr [rbp - 88]
	lea	rsi, [rbp - 136]
	mov	edx, 10
	call	_strtoll
	mov	qword ptr [rbp - 120], rax
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 136]
	je	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 136]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB0_5
LBB0_4:
	mov	dword ptr [rbp - 124], 1
	jmp	LBB0_15
LBB0_5:
	movabs	rax, -9223372036854775808
	cmp	qword ptr [rbp - 120], rax
	jne	LBB0_7
## %bb.6:
	call	___error
	cmp	dword ptr [rax], 34
	je	LBB0_8
LBB0_7:
	mov	rax, qword ptr [rbp - 120]
	cmp	rax, qword ptr [rbp - 96]
	jge	LBB0_9
LBB0_8:
	mov	dword ptr [rbp - 124], 2
	jmp	LBB0_14
LBB0_9:
	movabs	rax, 9223372036854775807
	cmp	qword ptr [rbp - 120], rax
	jne	LBB0_11
## %bb.10:
	call	___error
	cmp	dword ptr [rax], 34
	je	LBB0_12
LBB0_11:
	mov	rax, qword ptr [rbp - 120]
	cmp	rax, qword ptr [rbp - 104]
	jle	LBB0_13
LBB0_12:
	mov	dword ptr [rbp - 124], 3
LBB0_13:
	jmp	LBB0_14
LBB0_14:
	jmp	LBB0_15
LBB0_15:
	jmp	LBB0_16
LBB0_16:
	cmp	qword ptr [rbp - 112], 0
	je	LBB0_18
## %bb.17:
	movsxd	rax, dword ptr [rbp - 124]
	shl	rax, 4
	lea	rcx, [rbp - 80]
	add	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 112]
	mov	qword ptr [rcx], rax
LBB0_18:
	movsxd	rax, dword ptr [rbp - 124]
	shl	rax, 4
	lea	rcx, [rbp - 80]
	add	rcx, rax
	mov	edx, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 140], edx ## 4-byte Spill
	call	___error
	mov	edx, dword ptr [rbp - 140] ## 4-byte Reload
	mov	dword ptr [rax], edx
	cmp	dword ptr [rbp - 124], 0
	je	LBB0_20
## %bb.19:
	mov	qword ptr [rbp - 120], 0
LBB0_20:
	mov	rax, qword ptr [rbp - 120]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 152], rax ## 8-byte Spill
	jne	LBB0_22
## %bb.21:
	mov	rax, qword ptr [rbp - 152] ## 8-byte Reload
	add	rsp, 160
	pop	rbp
	ret
LBB0_22:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"invalid"

L_.str.1:                               ## @.str.1
	.asciz	"too small"

L_.str.2:                               ## @.str.2
	.asciz	"too large"


.subsections_via_symbols
