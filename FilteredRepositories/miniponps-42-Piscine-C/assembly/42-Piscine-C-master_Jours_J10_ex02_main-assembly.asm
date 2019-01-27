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
	sub	rsp, 48
	lea	rdi, [rbp - 20]
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 20], 100
	mov	dword ptr [rbp - 16], 200
	mov	dword ptr [rbp - 12], 300
	mov	esi, 3
	lea	rdx, [rip + _ta_mere]
	call	_ft_map
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 36], 3
	jge	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	esi, dword ptr [rbp + 4*rax - 20]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 36]
	add	esi, 1
	mov	dword ptr [rbp - 36], esi
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	mov	dword ptr [rbp - 36], 0
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 36], 3
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	mov	rax, qword ptr [rbp - 32]
	movsxd	rcx, dword ptr [rbp - 36]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 36]
	add	esi, 1
	mov	dword ptr [rbp - 36], esi
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_6:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_8
## %bb.7:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB0_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_ta_mere                ## -- Begin function ta_mere
	.p2align	4, 0x90
_ta_mere:                               ## @ta_mere
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	add	edi, 42
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


.subsections_via_symbols
