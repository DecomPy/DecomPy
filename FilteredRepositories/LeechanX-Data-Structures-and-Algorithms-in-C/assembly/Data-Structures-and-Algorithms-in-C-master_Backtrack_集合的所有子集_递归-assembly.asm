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
	.globl	_subset                 ## -- Begin function subset
	.p2align	4, 0x90
_subset:                                ## @subset
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	cmp	dword ptr [rbp - 20], 5
	jne	LBB1_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 8]
	call	_display_outcome
	jmp	LBB1_7
LBB1_2:
	mov	dword ptr [rbp - 24], 0
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 24], 2
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 20]
	mov	dword ptr [rcx + 4*rdx], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	edx, eax
	call	_subset
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_3
LBB1_6:
	jmp	LBB1_7
LBB1_7:
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
	sub	rsp, 112
	xor	eax, eax
	lea	rcx, [rbp - 64]
	lea	rdx, [rbp - 32]
	mov	r8d, 20
	mov	r9d, r8d
	mov	r10, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r10, qword ptr [r10]
	mov	qword ptr [rbp - 8], r10
	mov	dword ptr [rbp - 68], 0
	mov	dword ptr [rbp - 72], edi
	mov	qword ptr [rbp - 80], rsi
	mov	rsi, qword ptr [rip + l_main.set]
	mov	qword ptr [rbp - 32], rsi
	mov	rsi, qword ptr [rip + l_main.set+8]
	mov	qword ptr [rbp - 24], rsi
	mov	edi, dword ptr [rip + l_main.set+16]
	mov	dword ptr [rbp - 16], edi
	mov	rsi, rcx
	mov	rdi, rsi
	mov	esi, eax
	mov	qword ptr [rbp - 88], rdx ## 8-byte Spill
	mov	rdx, r9
	mov	qword ptr [rbp - 96], rcx ## 8-byte Spill
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	call	_memset
	mov	rdi, qword ptr [rbp - 88] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 96] ## 8-byte Reload
	mov	edx, dword ptr [rbp - 100] ## 4-byte Reload
	call	_subset
	mov	rcx, qword ptr [rip + _num@GOTPCREL]
	mov	esi, dword ptr [rcx]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	jne	LBB2_2
## %bb.1:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB2_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.comm	_num,4,2                ## @num
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"!(%d)\n"

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
