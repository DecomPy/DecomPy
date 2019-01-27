	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_display_outcome        ## -- Begin function display_outcome
	.p2align	4, 0x90
_display_outcome:                       ## @display_outcome
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, qword ptr [rip + _num@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	ecx, dword ptr [rax]
	add	ecx, 1
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 5
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	add	esi, 1
	mov	dword ptr [rbp - 24], esi
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_6:
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_condition              ## -- Begin function condition
	.p2align	4, 0x90
_condition:                             ## @condition
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], ecx
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 24], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_1
LBB1_6:
	cmp	dword ptr [rbp - 20], 0
	je	LBB1_8
## %bb.7:
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB1_8:
	mov	eax, dword ptr [rbp - 28]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_getsizeok              ## -- Begin function getsizeok
	.p2align	4, 0x90
_getsizeok:                             ## @getsizeok
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 5
	jge	LBB2_6
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	dword ptr [rax + 4*rcx], 0
	je	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_1
LBB2_6:
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_backtrack              ## -- Begin function backtrack
	.p2align	4, 0x90
_backtrack:                             ## @backtrack
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 72], rdi
	mov	dword ptr [rbp - 76], esi
	mov	dword ptr [rbp - 80], 0
	movsxd	rax, dword ptr [rbp - 80]
	mov	dword ptr [rbp + 4*rax - 64], -1
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	cmp	dword ptr [rbp - 80], 0
	jl	LBB3_16
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movsxd	rax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 64], ecx
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 80]
	cmp	dword ptr [rbp + 4*rdx - 64], 2
	mov	byte ptr [rbp - 81], cl ## 1-byte Spill
	jge	LBB3_5
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	lea	rdi, [rbp - 32]
	mov	esi, dword ptr [rbp - 76]
	mov	edx, dword ptr [rbp - 80]
	movsxd	rax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	call	_condition
	cmp	eax, dword ptr [rbp - 76]
	setg	r8b
	mov	byte ptr [rbp - 81], r8b ## 1-byte Spill
LBB3_5:                                 ##   in Loop: Header=BB3_3 Depth=2
	mov	al, byte ptr [rbp - 81] ## 1-byte Reload
	test	al, 1
	jne	LBB3_6
	jmp	LBB3_7
LBB3_6:                                 ##   in Loop: Header=BB3_3 Depth=2
	movsxd	rax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 64], ecx
	jmp	LBB3_3
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	movsxd	rax, dword ptr [rbp - 80]
	cmp	dword ptr [rbp + 4*rax - 64], 2
	jl	LBB3_9
## %bb.8:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 80]
	add	eax, -1
	mov	dword ptr [rbp - 80], eax
	jmp	LBB3_15
LBB3_9:                                 ##   in Loop: Header=BB3_1 Depth=1
	cmp	dword ptr [rbp - 80], 4
	jne	LBB3_13
## %bb.10:                              ##   in Loop: Header=BB3_1 Depth=1
	lea	rdi, [rbp - 32]
	movsxd	rax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	movsxd	rax, dword ptr [rbp - 80]
	mov	dword ptr [rbp + 4*rax - 32], ecx
	mov	esi, dword ptr [rbp - 76]
	call	_getsizeok
	cmp	eax, 0
	je	LBB3_12
## %bb.11:                              ##   in Loop: Header=BB3_1 Depth=1
	lea	rdi, [rbp - 32]
	mov	rsi, qword ptr [rbp - 72]
	call	_display_outcome
LBB3_12:                                ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_14
LBB3_13:                                ##   in Loop: Header=BB3_1 Depth=1
	movsxd	rax, dword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	movsxd	rax, dword ptr [rbp - 80]
	mov	dword ptr [rbp + 4*rax - 32], ecx
	mov	ecx, dword ptr [rbp - 80]
	add	ecx, 1
	mov	dword ptr [rbp - 80], ecx
	movsxd	rax, dword ptr [rbp - 80]
	mov	dword ptr [rbp + 4*rax - 64], -1
LBB3_14:                                ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_15
LBB3_15:                                ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_1
LBB3_16:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB3_18
## %bb.17:
	add	rsp, 96
	pop	rbp
	ret
LBB3_18:
	call	___stack_chk_fail
	ud2
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
	sub	rsp, 64
	lea	rax, [rbp - 32]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], edi
	mov	qword ptr [rbp - 48], rsi
	mov	rcx, qword ptr [rip + l_main.set]
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rip + l_main.set+8]
	mov	qword ptr [rbp - 24], rcx
	mov	edi, dword ptr [rip + l_main.set+16]
	mov	dword ptr [rbp - 16], edi
	mov	rdi, rax
	mov	esi, 3
	call	_backtrack
	mov	rax, qword ptr [rip + _num@GOTPCREL]
	mov	esi, dword ptr [rax]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jne	LBB4_2
## %bb.1:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB4_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.comm	_num,4,2                ## @num
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"(%d)\n"

	.section	__TEXT,__const
	.p2align	4               ## @main.set
l_main.set:
	.long	93                      ## 0x5d
	.long	12                      ## 0xc
	.long	43                      ## 0x2b
	.long	9                       ## 0x9
	.long	87                      ## 0x57

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"subset size=%d\n"


.subsections_via_symbols
