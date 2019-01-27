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
	sub	rsp, 144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 116], 0
	mov	dword ptr [rbp - 124], 0
	lea	rdi, [rip + L_.str]
	mov	esi, 100
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	xor	ecx, ecx
	mov	dl, cl
	mov	sil, al
	mov	byte ptr [rbp - 117], sil
	movsx	eax, sil
	cmp	eax, 10
	mov	byte ptr [rbp - 129], dl ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 124], 100
	setl	al
	mov	byte ptr [rbp - 129], al ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 129] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 117]
	cmp	eax, 32
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 117]
	movsxd	rcx, dword ptr [rbp - 124]
	mov	byte ptr [rbp + rcx - 112], al
	mov	edx, dword ptr [rbp - 124]
	add	edx, 1
	mov	dword ptr [rbp - 124], edx
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_7:
	lea	rdi, [rbp - 112]
	mov	esi, dword ptr [rbp - 124]
	call	_compute_GPA
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.1]
	mov	al, 1
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
	jne	LBB0_9
## %bb.8:
	xor	eax, eax
	add	rsp, 144
	pop	rbp
	ret
LBB0_9:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function compute_GPA
LCPI1_0:
	.long	1065353216              ## float 1
LCPI1_1:
	.long	1073741824              ## float 2
LCPI1_2:
	.long	1077936128              ## float 3
LCPI1_3:
	.long	1082130432              ## float 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_compute_GPA
	.p2align	4, 0x90
_compute_GPA:                           ## @compute_GPA
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 16], xmm0
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_11
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edi, byte ptr [rax + rcx]
	call	_toupper
	add	eax, -65
	mov	ecx, eax
	sub	eax, 5
	mov	qword ptr [rbp - 32], rcx ## 8-byte Spill
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	ja	LBB1_8
## %bb.12:                              ##   in Loop: Header=BB1_1 Depth=1
	lea	rax, [rip + LJTI1_0]
	mov	rcx, qword ptr [rbp - 32] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	movss	xmm0, dword ptr [rip + LCPI1_3] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 16], xmm0
	jmp	LBB1_9
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movss	xmm0, dword ptr [rip + LCPI1_2] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 16], xmm0
	jmp	LBB1_9
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movss	xmm0, dword ptr [rip + LCPI1_1] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 16], xmm0
	jmp	LBB1_9
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	movss	xmm0, dword ptr [rip + LCPI1_0] ## xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 16], xmm0
	jmp	LBB1_9
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	xorps	xmm0, xmm0
	addss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 16], xmm0
	jmp	LBB1_9
LBB1_8:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	lea	rsi, [rip + L_.str.2]
	xor	r8d, r8d
	mov	r9b, r8b
	mov	al, r9b
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_exit
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_10
LBB1_10:                                ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_11:
	movss	xmm0, dword ptr [rbp - 16] ## xmm0 = mem[0],zero,zero,zero
	mov	eax, dword ptr [rbp - 12]
	cvtsi2ss	xmm1, eax
	divss	xmm0, xmm1
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L1_0_set_3, LBB1_3-LJTI1_0
.set L1_0_set_4, LBB1_4-LJTI1_0
.set L1_0_set_5, LBB1_5-LJTI1_0
.set L1_0_set_6, LBB1_6-LJTI1_0
.set L1_0_set_8, LBB1_8-LJTI1_0
.set L1_0_set_7, LBB1_7-LJTI1_0
LJTI1_0:
	.long	L1_0_set_3
	.long	L1_0_set_4
	.long	L1_0_set_5
	.long	L1_0_set_6
	.long	L1_0_set_8
	.long	L1_0_set_7
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter up to %d letter grades: "

L_.str.1:                               ## @.str.1
	.asciz	"GPA: %.2f\n"

L_.str.2:                               ## @.str.2
	.asciz	"Invalid input: %c\n"


.subsections_via_symbols
