	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_timeval_diff           ## -- Begin function timeval_diff
	.p2align	4, 0x90
_timeval_diff:                          ## @timeval_diff
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rdi], 1000000
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 16]
	movsxd	rdi, dword ptr [rdi + 8]
	mov	rax, qword ptr [rbp - 16]
	imul	rax, qword ptr [rax], 1000000
	add	rdi, rax
	sub	rsi, rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	cmp	dword ptr [rbp - 8], 10000
	jge	LBB1_8
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	dword ptr [rbp - 12], 0
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 12], 10000
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rip + _matrix@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 8]
	imul	rcx, rcx, 40000
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 12]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edx
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB1_1
LBB1_8:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sum2                   ## -- Begin function sum2
	.p2align	4, 0x90
_sum2:                                  ## @sum2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	cmp	dword ptr [rbp - 8], 10000
	jge	LBB2_8
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 12], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 12], 10000
	jge	LBB2_6
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rip + _matrix@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 12]
	imul	rcx, rcx, 40000
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 4*rcx]
	add	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 4], edx
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB2_3
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB2_1
LBB2_8:
	mov	eax, dword ptr [rbp - 4]
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	cmp	dword ptr [rbp - 20], 10000
	jge	LBB3_8
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 24], 10000
	jge	LBB3_6
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	rax, qword ptr [rip + _matrix@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 20]
	imul	rcx, rcx, 40000
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	mov	dword ptr [rax + 4*rcx], 1
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB3_3
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB3_1
LBB3_8:
	call	_sum
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_sum2
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_matrix,400000000,4     ## @matrix
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
