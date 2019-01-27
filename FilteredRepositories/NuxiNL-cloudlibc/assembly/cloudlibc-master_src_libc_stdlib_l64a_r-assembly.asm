	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_l64a_r                 ## -- Begin function l64a_r
	.p2align	4, 0x90
_l64a_r:                                ## @l64a_r
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], edx
	mov	rsi, qword ptr [rbp - 16]
	mov	edx, esi
	mov	dword ptr [rbp - 32], edx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 28], ecx
	cmp	eax, 0
	jle	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 32], 0
	jne	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 24]
	mov	byte ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_6
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	and	eax, 63
	mov	eax, eax
	mov	ecx, eax
	lea	rdx, [rip + L_.str]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 24]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 24], rdx
	mov	byte ptr [rcx], sil
	mov	eax, dword ptr [rbp - 32]
	shr	eax, 6
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_1
LBB0_5:
	mov	dword ptr [rbp - 4], -1
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


.subsections_via_symbols
