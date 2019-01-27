	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_set_find               ## -- Begin function set_find
	.p2align	4, 0x90
_set_find:                              ## @set_find
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	sub	esi, 1
	movsxd	rax, esi
	mov	esi, dword ptr [rdi + 4*rax]
	mov	dword ptr [rbp - 24], esi
	mov	esi, dword ptr [rbp - 24]
	cmp	esi, dword ptr [rbp - 20]
	jne	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_3
LBB0_2:
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 24]
	call	_set_find
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	sub	esi, 1
	movsxd	rcx, esi
	mov	dword ptr [rdi + 4*rcx], eax
	mov	rcx, qword ptr [rbp - 16]
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	movsxd	rdi, eax
	mov	eax, dword ptr [rcx + 4*rdi]
	mov	dword ptr [rbp - 4], eax
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_set_union              ## -- Begin function set_union
	.p2align	4, 0x90
_set_union:                             ## @set_union
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], ecx
	mov	rsi, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	ecx, dword ptr [rsi + 4*rdi]
	mov	rsi, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 24]
	sub	edx, 1
	movsxd	rdi, edx
	cmp	ecx, dword ptr [rsi + 4*rdi]
	jge	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	sub	esi, 1
	movsxd	rdx, esi
	mov	dword ptr [rax + 4*rdx], ecx
	jmp	LBB1_5
LBB1_2:
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	rax, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 24]
	sub	esi, 1
	movsxd	rdx, esi
	cmp	ecx, dword ptr [rax + 4*rdx]
	jne	LBB1_4
## %bb.3:
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	add	ecx, -1
	mov	dword ptr [rax + 4*rdx], ecx
LBB1_4:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	sub	esi, 1
	movsxd	rdx, esi
	mov	dword ptr [rax + 4*rdx], ecx
LBB1_5:
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
	sub	rsp, 208
	xor	eax, eax
	mov	ecx, 40
	mov	edx, ecx
	lea	r8, [rip + l_main.set]
	mov	r9, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r9, qword ptr [r9]
	mov	qword ptr [rbp - 8], r9
	mov	dword ptr [rbp - 148], 0
	mov	dword ptr [rbp - 152], edi
	mov	qword ptr [rbp - 160], rsi
	lea	rsi, [rbp - 48]
	mov	rdi, rsi
	mov	rsi, r8
	mov	qword ptr [rbp - 192], rdx ## 8-byte Spill
	mov	dword ptr [rbp - 196], eax ## 4-byte Spill
	call	_memcpy
	mov	dword ptr [rbp - 164], 10
	lea	rdx, [rbp - 96]
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 196] ## 4-byte Reload
	mov	rdx, qword ptr [rbp - 192] ## 8-byte Reload
	call	_memset
	mov	dword ptr [rbp - 168], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 168]
	cmp	eax, dword ptr [rbp - 164]
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 168]
	mov	ecx, dword ptr [rbp + 4*rax - 48]
	movsxd	rax, dword ptr [rbp - 168]
	mov	dword ptr [rbp + 4*rax - 144], ecx
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 168]
	add	eax, 1
	mov	dword ptr [rbp - 168], eax
	jmp	LBB2_1
LBB2_4:
	jmp	LBB2_5
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 172]
	lea	rdx, [rbp - 176]
	mov	al, 0
	call	_scanf
	cmp	eax, 2
	jne	LBB2_10
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	lea	rdi, [rbp - 144]
	mov	esi, dword ptr [rbp - 172]
	call	_set_find
	lea	rdi, [rbp - 144]
	mov	dword ptr [rbp - 180], eax
	mov	esi, dword ptr [rbp - 176]
	call	_set_find
	mov	dword ptr [rbp - 184], eax
	mov	eax, dword ptr [rbp - 180]
	cmp	eax, dword ptr [rbp - 184]
	jne	LBB2_8
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 200], eax ## 4-byte Spill
	jmp	LBB2_9
LBB2_8:                                 ##   in Loop: Header=BB2_5 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 96]
	lea	rdi, [rbp - 144]
	mov	edx, dword ptr [rbp - 180]
	mov	ecx, dword ptr [rbp - 184]
	mov	dword ptr [rbp - 204], eax ## 4-byte Spill
	call	_set_union
LBB2_9:                                 ##   in Loop: Header=BB2_5 Depth=1
	jmp	LBB2_5
LBB2_10:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_12
## %bb.11:
	xor	eax, eax
	add	rsp, 208
	pop	rbp
	ret
LBB2_12:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.set
l_main.set:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	10                      ## 0xa

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d%d"

L_.str.1:                               ## @.str.1
	.asciz	"Already in same set.\n"

L_.str.2:                               ## @.str.2
	.asciz	"Now union set.\n"


.subsections_via_symbols
