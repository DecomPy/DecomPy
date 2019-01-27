	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sum_array              ## -- Begin function sum_array
	.p2align	4, 0x90
_sum_array:                             ## @sum_array
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
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 12]
	shl	rdx, 2
	add	rcx, rdx
	cmp	rax, rcx
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rax]
	add	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], ecx
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 4
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 16]
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
	sub	rsp, 48
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l_main.numbers]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.numbers+8]
	mov	qword ptr [rbp - 24], rax
	mov	ecx, dword ptr [rip + l_main.numbers+16]
	mov	dword ptr [rbp - 16], ecx
	lea	rax, [rbp - 32]
	add	rax, 8
	mov	rdi, rax
	mov	esi, 2
	call	_sum_array
	mov	dword ptr [rbp - 40], eax
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rdi, rdx
	jne	LBB1_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB1_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.numbers
l_main.numbers:
	.long	12                      ## 0xc
	.long	34                      ## 0x22
	.long	56                      ## 0x38
	.long	78                      ## 0x4e
	.long	99                      ## 0x63


.subsections_via_symbols
