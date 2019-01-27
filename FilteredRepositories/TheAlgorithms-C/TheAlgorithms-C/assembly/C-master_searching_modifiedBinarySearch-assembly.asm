	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_binarySearch           ## -- Begin function binarySearch
	.p2align	4, 0x90
_binarySearch:                          ## @binarySearch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rax, qword ptr [rip + _m@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], ecx
	mov	dword ptr [rbp - 24], r8d
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 20]
	jg	LBB0_9
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, dword ptr [rbp - 20]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 28], eax
	mov	rsi, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 12]
	mov	r8, qword ptr [rbp - 40] ## 8-byte Reload
	imul	rdi, r8
	shl	rdi, 2
	add	rsi, rdi
	movsxd	rdi, dword ptr [rbp - 28]
	mov	eax, dword ptr [rsi + 4*rdi]
	cmp	eax, dword ptr [rbp - 24]
	jne	LBB0_4
## %bb.3:
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_10
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 28]
	mov	esi, dword ptr [rax + 4*rcx]
	cmp	esi, dword ptr [rbp - 24]
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	sub	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_9:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_10:
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_modifiedBinarySearch   ## -- Begin function modifiedBinarySearch
	.p2align	4, 0x90
_modifiedBinarySearch:                  ## @modifiedBinarySearch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	rax, qword ptr [rip + _m@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], ecx
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	cmp	dword ptr [rbp - 12], 1
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	mov	r8d, dword ptr [rbp - 20]
	mov	esi, eax
	mov	edx, eax
	call	_binarySearch
	jmp	LBB1_27
LBB1_2:
	mov	dword ptr [rbp - 24], 0
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 16]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 32], eax
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB1_11
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, dword ptr [rbp - 28]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 36], eax
	mov	rsi, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 36]
	mov	r8, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdi, r8
	shl	rdi, 2
	add	rsi, rdi
	movsxd	rdi, dword ptr [rbp - 32]
	mov	eax, dword ptr [rsi + 4*rdi]
	cmp	eax, dword ptr [rbp - 20]
	jne	LBB1_6
## %bb.5:
	mov	esi, dword ptr [rbp - 36]
	mov	edx, dword ptr [rbp - 32]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB1_27
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	rdx, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 32]
	mov	esi, dword ptr [rax + 4*rcx]
	cmp	esi, dword ptr [rbp - 20]
	jle	LBB1_8
## %bb.7:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_9
LBB1_8:                                 ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 24], eax
LBB1_9:                                 ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_10
LBB1_10:                                ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_3
LBB1_11:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rcx, rdx
	shl	rcx, 2
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 32]
	mov	esi, dword ptr [rax + 4*rcx]
	cmp	esi, dword ptr [rbp - 20]
	jne	LBB1_13
## %bb.12:
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 32]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jmp	LBB1_27
LBB1_13:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rsi
	shl	rdx, 2
	add	rax, rdx
	movsxd	rdx, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rax + 4*rdx]
	cmp	ecx, dword ptr [rbp - 20]
	jne	LBB1_15
## %bb.14:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	edx, dword ptr [rbp - 32]
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jmp	LBB1_26
LBB1_15:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rsi
	shl	rdx, 2
	add	rcx, rdx
	mov	edi, dword ptr [rbp - 32]
	sub	edi, 1
	movsxd	rdx, edi
	cmp	eax, dword ptr [rcx + 4*rdx]
	jg	LBB1_17
## %bb.16:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	sub	eax, 1
	mov	r8d, dword ptr [rbp - 20]
	mov	ecx, eax
	call	_binarySearch
	jmp	LBB1_25
LBB1_17:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rsi
	shl	rdx, 2
	add	rcx, rdx
	mov	edi, dword ptr [rbp - 32]
	add	edi, 1
	movsxd	rdx, edi
	cmp	eax, dword ptr [rcx + 4*rdx]
	jl	LBB1_20
## %bb.18:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rdx, rsi
	shl	rdx, 2
	add	rcx, rdx
	mov	edi, dword ptr [rbp - 16]
	sub	edi, 1
	movsxd	rdx, edi
	cmp	eax, dword ptr [rcx + 4*rdx]
	jg	LBB1_20
## %bb.19:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	ecx, dword ptr [rbp - 16]
	sub	ecx, 1
	mov	r8d, dword ptr [rbp - 20]
	mov	edx, eax
	call	_binarySearch
	jmp	LBB1_24
LBB1_20:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 24]
	add	edx, 1
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	imul	rsi, rdi
	shl	rsi, 2
	add	rcx, rsi
	mov	edx, dword ptr [rbp - 32]
	sub	edx, 1
	movsxd	rsi, edx
	cmp	eax, dword ptr [rcx + 4*rsi]
	jg	LBB1_22
## %bb.21:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	ecx, dword ptr [rbp - 32]
	sub	ecx, 1
	mov	r8d, dword ptr [rbp - 20]
	mov	esi, eax
	call	_binarySearch
	jmp	LBB1_23
LBB1_22:
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	ecx, dword ptr [rbp - 32]
	add	ecx, 1
	mov	edx, dword ptr [rbp - 16]
	sub	edx, 1
	mov	r8d, dword ptr [rbp - 20]
	mov	esi, eax
	mov	dword ptr [rbp - 64], edx ## 4-byte Spill
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 64] ## 4-byte Reload
	call	_binarySearch
LBB1_23:
	jmp	LBB1_24
LBB1_24:
	jmp	LBB1_25
LBB1_25:
	jmp	LBB1_26
LBB1_26:
	jmp	LBB1_27
LBB1_27:
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	sub	rsp, 112
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str.2]
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	rcx, qword ptr [rip + _m@GOTPCREL]
	xor	edx, edx
	mov	sil, dl
	lea	r8, [rbp - 16]
	mov	byte ptr [rbp - 49], sil ## 1-byte Spill
	mov	rsi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 64], rcx ## 8-byte Spill
	mov	rcx, r8
	mov	r9b, byte ptr [rbp - 49] ## 1-byte Reload
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
	mov	al, r9b
	call	_scanf
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	mov	r10d, dword ptr [rcx]
	mov	edx, r10d
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	r10d, dword ptr [rsi]
	mov	edi, r10d
	mov	r8, rsp
	mov	qword ptr [rbp - 24], r8
	mov	r8, rdx
	imul	r8, rdi
	lea	r8, [4*r8 + 15]
	and	r8, -16
	mov	r11, rsp
	sub	r11, r8
	mov	rsp, r11
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rdi
	mov	dword ptr [rbp - 44], 0
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	qword ptr [rbp - 88], r11 ## 8-byte Spill
	mov	qword ptr [rbp - 96], rdi ## 8-byte Spill
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	rax, qword ptr [rip + _n@GOTPCREL]
	mov	ecx, dword ptr [rbp - 44]
	cmp	ecx, dword ptr [rax]
	jge	LBB2_8
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 48], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rip + _m@GOTPCREL]
	mov	ecx, dword ptr [rbp - 48]
	cmp	ecx, dword ptr [rax]
	jge	LBB2_6
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	movsxd	rax, dword ptr [rbp - 44]
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	imul	rax, rcx
	shl	rax, 2
	mov	rdx, qword ptr [rbp - 88] ## 8-byte Reload
	add	rdx, rax
	movsxd	rax, dword ptr [rbp - 48]
	shl	rax, 2
	add	rdx, rax
	lea	rdi, [rip + L_.str.3]
	mov	rsi, rdx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 48]
	add	eax, 1
	mov	dword ptr [rbp - 48], eax
	jmp	LBB2_3
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB2_1
LBB2_8:
	mov	rax, qword ptr [rip + _m@GOTPCREL]
	mov	rcx, qword ptr [rip + _n@GOTPCREL]
	mov	esi, dword ptr [rcx]
	mov	edx, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 88] ## 8-byte Reload
	call	_modifiedBinarySearch
	mov	dword ptr [rbp - 12], 0
	mov	rax, qword ptr [rbp - 24]
	mov	rsp, rax
	mov	eax, dword ptr [rbp - 12]
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r8, qword ptr [rbp - 8]
	cmp	rdi, r8
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	jne	LBB2_10
## %bb.9:
	mov	eax, dword ptr [rbp - 104] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.comm	_n,4,2                  ## @n
	.comm	_m,4,2                  ## @m
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Found at (%d,%d)\n"

L_.str.1:                               ## @.str.1
	.asciz	"element not found\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d %d %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"%d"


.subsections_via_symbols
