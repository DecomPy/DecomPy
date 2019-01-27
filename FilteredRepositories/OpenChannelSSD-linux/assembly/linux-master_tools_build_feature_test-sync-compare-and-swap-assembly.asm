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
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	movsxd	rsi, dword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rsi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _x@GOTPCREL]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	mov	rax, rdx
	mov	rsi, qword ptr [rbp - 40] ## 8-byte Reload
	lock		cmpxchg	qword ptr [rsi], rdx
	sete	dil
	mov	qword ptr [rbp - 24], rax
	mov	byte ptr [rbp - 41], dil ## 1-byte Spill
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	mov	rdx, qword ptr [rip + _x@GOTPCREL]
	lock		cmpxchg	qword ptr [rdx], rcx
	sete	sil
	xor	sil, -1
	test	sil, 1
	mov	qword ptr [rbp - 56], rax ## 8-byte Spill
	jne	LBB0_1
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	cmp	rax, qword ptr [rbp - 32]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_x,8,3                  ## @x

.subsections_via_symbols
