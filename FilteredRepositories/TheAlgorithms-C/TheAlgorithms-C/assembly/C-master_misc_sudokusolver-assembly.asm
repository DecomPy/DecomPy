	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_OKrow                  ## -- Begin function OKrow
	.p2align	4, 0x90
_OKrow:                                 ## @OKrow
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], ecx
	mov	dword ptr [rbp - 32], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 32]
	cmp	ecx, dword ptr [rax]
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 20]
	imul	edx, dword ptr [rax]
	add	edx, dword ptr [rbp - 32]
	movsxd	rax, edx
	mov	edx, dword ptr [rcx + 4*rax]
	cmp	edx, dword ptr [rbp - 28]
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_1
LBB0_6:
	mov	dword ptr [rbp - 4], 1
LBB0_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_OKcol                  ## -- Begin function OKcol
	.p2align	4, 0x90
_OKcol:                                 ## @OKcol
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], ecx
	mov	dword ptr [rbp - 32], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 32]
	cmp	ecx, dword ptr [rax]
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 32]
	imul	edx, dword ptr [rax]
	add	edx, dword ptr [rbp - 24]
	movsxd	rax, edx
	mov	edx, dword ptr [rcx + 4*rax]
	cmp	edx, dword ptr [rbp - 28]
	jne	LBB1_4
## %bb.3:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB1_7
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB1_1
LBB1_6:
	mov	dword ptr [rbp - 4], 1
LBB1_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_OKbox                  ## -- Begin function OKbox
	.p2align	4, 0x90
_OKbox:                                 ## @OKbox
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _C@GOTPCREL]
	mov	r8, qword ptr [rip + _R@GOTPCREL]
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 20]
	mov	qword ptr [rbp - 56], rax ## 8-byte Spill
	mov	eax, ecx
	cdq
	idiv	dword ptr [r8]
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 24]
	cdq
	mov	rdi, qword ptr [rbp - 56] ## 8-byte Reload
	idiv	dword ptr [rdi]
	mov	dword ptr [rbp - 36], eax
	mov	dword ptr [rbp - 40], 0
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	rax, qword ptr [rip + _R@GOTPCREL]
	mov	ecx, dword ptr [rbp - 40]
	cmp	ecx, dword ptr [rax]
	jge	LBB2_10
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 44], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rip + _C@GOTPCREL]
	mov	ecx, dword ptr [rbp - 44]
	cmp	ecx, dword ptr [rax]
	jge	LBB2_8
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rip + _C@GOTPCREL]
	mov	rcx, qword ptr [rip + _N@GOTPCREL]
	mov	rdx, qword ptr [rip + _R@GOTPCREL]
	mov	rsi, qword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 40]
	mov	r8d, dword ptr [rbp - 32]
	imul	r8d, dword ptr [rdx]
	add	edi, r8d
	imul	edi, dword ptr [rcx]
	mov	r8d, dword ptr [rbp - 44]
	mov	r9d, dword ptr [rbp - 36]
	imul	r9d, dword ptr [rax]
	add	r8d, r9d
	add	edi, r8d
	movsxd	rax, edi
	mov	edi, dword ptr [rsi + 4*rax]
	cmp	edi, dword ptr [rbp - 28]
	jne	LBB2_6
## %bb.5:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB2_11
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB2_3
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_9
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB2_1
LBB2_10:
	mov	dword ptr [rbp - 4], 1
LBB2_11:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_OK                     ## -- Begin function OK
	.p2align	4, 0x90
_OK:                                    ## @OK
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	call	_OKrow
	xor	ecx, ecx
	mov	r8b, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 21], r8b ## 1-byte Spill
	je	LBB3_3
## %bb.1:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	call	_OKcol
	xor	ecx, ecx
	mov	r8b, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 21], r8b ## 1-byte Spill
	je	LBB3_3
## %bb.2:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	call	_OKbox
	cmp	eax, 0
	setne	r8b
	mov	byte ptr [rbp - 21], r8b ## 1-byte Spill
LBB3_3:
	mov	al, byte ptr [rbp - 21] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print                  ## -- Begin function print
	.p2align	4, 0x90
_print:                                 ## @print
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_3 Depth 2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 12]
	cmp	ecx, dword ptr [rax]
	jge	LBB4_8
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	dword ptr [rbp - 16], 0
LBB4_3:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 16]
	cmp	ecx, dword ptr [rax]
	jge	LBB4_6
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	imul	edx, dword ptr [rax]
	add	edx, dword ptr [rbp - 16]
	movsxd	rsi, edx
	mov	esi, dword ptr [rcx + 4*rsi]
	mov	edx, dword ptr [rbp - 16]
	mov	edi, dword ptr [rax]
	sub	edi, 1
	cmp	edx, edi
	mov	edx, 10
	mov	edi, 32
	cmove	edi, edx
	lea	rax, [rip + L_.str]
	mov	dword ptr [rbp - 20], edi ## 4-byte Spill
	mov	rdi, rax
	mov	edx, dword ptr [rbp - 20] ## 4-byte Reload
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB4_3
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_7
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB4_1
LBB4_8:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_solve                  ## -- Begin function solve
	.p2align	4, 0x90
_solve:                                 ## @solve
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 32], 0
	mov	dword ptr [rbp - 20], 0
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_3 Depth 2
                                        ##       Child Loop BB5_6 Depth 3
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 20]
	cmp	ecx, dword ptr [rax]
	jge	LBB5_18
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB5_3:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB5_6 Depth 3
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 24]
	cmp	ecx, dword ptr [rax]
	jge	LBB5_16
## %bb.4:                               ##   in Loop: Header=BB5_3 Depth=2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 20]
	imul	edx, dword ptr [rax]
	add	edx, dword ptr [rbp - 24]
	movsxd	rax, edx
	cmp	dword ptr [rcx + 4*rax], 0
	jne	LBB5_14
## %bb.5:                               ##   in Loop: Header=BB5_3 Depth=2
	mov	dword ptr [rbp - 32], 1
	mov	dword ptr [rbp - 28], 1
LBB5_6:                                 ##   Parent Loop BB5_1 Depth=1
                                        ##     Parent Loop BB5_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 28]
	cmp	ecx, dword ptr [rax]
	jg	LBB5_13
## %bb.7:                               ##   in Loop: Header=BB5_6 Depth=3
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 28]
	call	_OK
	cmp	eax, 0
	je	LBB5_11
## %bb.8:                               ##   in Loop: Header=BB5_6 Depth=3
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 28]
	mov	rdx, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	imul	esi, dword ptr [rax]
	add	esi, dword ptr [rbp - 24]
	movsxd	rax, esi
	mov	dword ptr [rdx + 4*rax], ecx
	mov	rdi, qword ptr [rbp - 16]
	call	_solve
	cmp	eax, 0
	je	LBB5_10
## %bb.9:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB5_21
LBB5_10:                                ##   in Loop: Header=BB5_6 Depth=3
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 20]
	imul	edx, dword ptr [rax]
	add	edx, dword ptr [rbp - 24]
	movsxd	rax, edx
	mov	dword ptr [rcx + 4*rax], 0
LBB5_11:                                ##   in Loop: Header=BB5_6 Depth=3
	jmp	LBB5_12
LBB5_12:                                ##   in Loop: Header=BB5_6 Depth=3
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB5_6
LBB5_13:                                ##   in Loop: Header=BB5_3 Depth=2
	jmp	LBB5_14
LBB5_14:                                ##   in Loop: Header=BB5_3 Depth=2
	jmp	LBB5_15
LBB5_15:                                ##   in Loop: Header=BB5_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB5_3
LBB5_16:                                ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_17
LBB5_17:                                ##   in Loop: Header=BB5_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB5_1
LBB5_18:
	cmp	dword ptr [rbp - 32], 0
	jne	LBB5_20
## %bb.19:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB5_21
LBB5_20:
	mov	dword ptr [rbp - 4], 0
LBB5_21:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
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
	sub	rsp, 624
	mov	rsi, qword ptr [rip + _N@GOTPCREL]
	mov	rdx, qword ptr [rip + _R@GOTPCREL]
	mov	rcx, qword ptr [rip + _C@GOTPCREL]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 596], 0
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 600], 0
	mov	dword ptr [rbp - 608], eax ## 4-byte Spill
LBB6_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_3 Depth 2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 600]
	cmp	ecx, dword ptr [rax]
	jge	LBB6_8
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	mov	dword ptr [rbp - 604], 0
LBB6_3:                                 ##   Parent Loop BB6_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 604]
	cmp	ecx, dword ptr [rax]
	jge	LBB6_6
## %bb.4:                               ##   in Loop: Header=BB6_3 Depth=2
	mov	rax, qword ptr [rip + _N@GOTPCREL]
	mov	ecx, dword ptr [rbp - 600]
	imul	ecx, dword ptr [rax]
	add	ecx, dword ptr [rbp - 604]
	movsxd	rax, ecx
	shl	rax, 2
	lea	rdx, [rbp - 592]
	add	rdx, rax
	lea	rdi, [rip + L_.str.2]
	mov	rsi, rdx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 612], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB6_3 Depth=2
	mov	eax, dword ptr [rbp - 604]
	add	eax, 1
	mov	dword ptr [rbp - 604], eax
	jmp	LBB6_3
LBB6_6:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_7
LBB6_7:                                 ##   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [rbp - 600]
	add	eax, 1
	mov	dword ptr [rbp - 600], eax
	jmp	LBB6_1
LBB6_8:
	lea	rdi, [rbp - 592]
	call	_solve
	cmp	eax, 0
	je	LBB6_10
## %bb.9:
	lea	rdi, [rbp - 592]
	call	_print
	jmp	LBB6_11
LBB6_10:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 616], eax ## 4-byte Spill
LBB6_11:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB6_13
## %bb.12:
	xor	eax, eax
	add	rsp, 624
	pop	rbp
	ret
LBB6_13:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_M                      ## @M
	.p2align	2
_M:
	.long	144                     ## 0x90

	.comm	_N,4,2                  ## @N
	.comm	_R,4,2                  ## @R
	.comm	_C,4,2                  ## @C
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d%c"

L_.str.1:                               ## @.str.1
	.asciz	"%d%d%d"

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"Invalid\n"


.subsections_via_symbols
