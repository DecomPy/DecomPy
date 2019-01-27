	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_a                      ## -- Begin function a
	.p2align	4, 0x90
_a:                                     ## @a
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _k@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	edx, dword ptr [rcx]
	add	edx, 1
	mov	dword ptr [rcx], edx
	mov	edx, dword ptr [rip + _g]
	sub	edx, dword ptr [rip + _h]
	mov	dword ptr [rax], edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_cmp                    ## -- Begin function cmp
	.p2align	4, 0x90
_cmp:                                   ## @cmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _r@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	cmp	dword ptr [rip + _h], 1
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rax], esi
	cmp	dword ptr [rcx], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rip + _g]
	cmp	esi, dword ptr [rip + _h]
	setl	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rcx]
	cmp	esi, dword ptr [rip + _h]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rax], esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_jump                   ## -- Begin function jump
	.p2align	4, 0x90
_jump:                                  ## @jump
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	cmp	dword ptr [rax], 0
	jne	LBB2_2
## %bb.1:
	mov	rax, qword ptr [rip + _r@GOTPCREL]
	mov	dword ptr [rax], 1
LBB2_2:
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rip + _g]
	jle	LBB2_4
## %bb.3:
	mov	rax, qword ptr [rip + _r@GOTPCREL]
	mov	dword ptr [rax], 2
	jmp	LBB2_5
LBB2_4:
	mov	rax, qword ptr [rip + _r@GOTPCREL]
	mov	dword ptr [rax], 3
LBB2_5:
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rip + _g]
	jl	LBB2_7
## %bb.6:
	mov	rax, qword ptr [rip + _r@GOTPCREL]
	mov	dword ptr [rax], 4
LBB2_7:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_while_loop             ## -- Begin function while_loop
	.p2align	4, 0x90
_while_loop:                            ## @while_loop
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	jmp	LBB3_1
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	cmp	dword ptr [rax], 0
	jle	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	ecx, dword ptr [rax]
	sub	ecx, 3
	mov	dword ptr [rax], ecx
	jmp	LBB3_1
LBB3_3:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_for_loop               ## -- Begin function for_loop
	.p2align	4, 0x90
_for_loop:                              ## @for_loop
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	dword ptr [rax], 0
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	cmp	dword ptr [rax], 10
	jge	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rip + _g]
	add	eax, dword ptr [rip + _h]
	mov	dword ptr [rip + _g], eax
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	ecx, dword ptr [rax]
	add	ecx, 1
	mov	dword ptr [rax], ecx
	jmp	LBB4_1
LBB4_4:
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	dword ptr [rax], 9
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	cmp	dword ptr [rax], 0
	jle	LBB4_8
## %bb.6:                               ##   in Loop: Header=BB4_5 Depth=1
	mov	eax, dword ptr [rip + _g]
	sub	eax, dword ptr [rip + _h]
	mov	dword ptr [rip + _g], eax
## %bb.7:                               ##   in Loop: Header=BB4_5 Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	ecx, dword ptr [rax]
	sub	ecx, 1
	mov	dword ptr [rax], ecx
	jmp	LBB4_5
LBB4_8:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_increase               ## -- Begin function increase
	.p2align	4, 0x90
_increase:                              ## @increase
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rip + _g]
	add	eax, dword ptr [rip + _h]
	mov	dword ptr [rip + _g], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_init_g                 ## -- Begin function init_g
	.p2align	4, 0x90
_init_g:                                ## @init_g
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rip + _g], 1252
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_init                   ## -- Begin function init
	.p2align	4, 0x90
_init:                                  ## @init
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rip + _g], edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sumg                   ## -- Begin function sumg
	.p2align	4, 0x90
_sumg:                                  ## @sumg
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	add	esi, dword ptr [rbp - 8]
	mov	dword ptr [rip + _g], esi
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	add	esi, dword ptr [rbp - 8]
	mov	eax, esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_b                      ## -- Begin function b
	.p2align	4, 0x90
_b:                                     ## @b
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _l@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _k@GOTPCREL]
	mov	esi, dword ptr [rip + _g]
	xor	esi, dword ptr [rcx]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rcx]
	or	esi, dword ptr [rdx]
	mov	dword ptr [rcx], esi
	mov	esi, dword ptr [rax]
	shl	esi, 6
	mov	dword ptr [rip + _g], esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_test                   ## -- Begin function test
	.p2align	4, 0x90
_test:                                  ## @test
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rip + _l@GOTPCREL]
	mov	rsi, qword ptr [rip + _k@GOTPCREL]
	mov	rdi, qword ptr [rip + _j2@GOTPCREL]
	mov	r8, qword ptr [rip + _j@GOTPCREL]
	mov	eax, dword ptr [rip + _h]
	xor	eax, -1
	mov	dword ptr [rip + _h], eax
	mov	eax, dword ptr [r8]
	add	eax, 1
	mov	dword ptr [r8], eax
	mov	eax, dword ptr [r8]
	add	eax, 1
	mov	dword ptr [r8], eax
	mov	eax, dword ptr [rip + _g]
	mov	qword ptr [rbp - 8], rdx ## 8-byte Spill
	cdq
	idiv	dword ptr [rip + _h]
	mov	dword ptr [r8], eax
	mov	eax, dword ptr [rip + _g]
	imul	eax, dword ptr [rip + _h]
	mov	dword ptr [rdi], eax
	mov	eax, dword ptr [rip + _g]
	sub	eax, dword ptr [rip + _h]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rip + _g]
	sar	eax, 4
	mov	rsi, qword ptr [rbp - 8] ## 8-byte Reload
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rsi]
	shl	eax, 6
	mov	dword ptr [rip + _g], eax
	cmp	dword ptr [rip + _h], 0
	mov	byte ptr [rbp - 9], cl  ## 1-byte Spill
	je	LBB11_2
## %bb.1:
	cmp	dword ptr [rip + _g], 0
	setne	al
	mov	byte ptr [rbp - 9], al  ## 1-byte Spill
LBB11_2:
	mov	al, byte ptr [rbp - 9]  ## 1-byte Reload
	mov	rcx, qword ptr [rip + _m@GOTPCREL]
	and	al, 1
	movzx	edx, al
	mov	dword ptr [rcx], edx
	mov	eax, dword ptr [rcx]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_add                    ## -- Begin function add
	.p2align	4, 0x90
_add:                                   ## @add
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 1252
	mov	eax, dword ptr [rip + _g]
	add	eax, dword ptr [rip + _h]
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_factorial              ## -- Begin function factorial
	.p2align	4, 0x90
_factorial:                             ## @factorial
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB13_2
## %bb.1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB13_3
LBB13_2:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	edi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_factorial
	mov	ecx, dword ptr [rbp - 12] ## 4-byte Reload
	imul	ecx, eax
	mov	dword ptr [rbp - 4], ecx
LBB13_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
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
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	call	_init_g
	call	_increase
	mov	edi, 1252
	call	_init
	mov	edi, 6
	mov	esi, 7
	call	_sumg
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	edi, eax
	call	_factorial
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_g                      ## @g
	.p2align	2
_g:
	.long	1                       ## 0x1

	.globl	_h                      ## @h
	.p2align	2
_h:
	.long	2                       ## 0x2

	.comm	_j,4,2                  ## @j
	.comm	_k,4,2                  ## @k
	.comm	_r,4,2                  ## @r
	.comm	_l,4,2                  ## @l
	.comm	_j2,4,2                 ## @j2
	.comm	_m,4,2                  ## @m
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
