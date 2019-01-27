	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_mpi_send_1di           ## -- Begin function mpi_send_1di
	.p2align	4, 0x90
_mpi_send_1di:                          ## @mpi_send_1di
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	rax, qword ptr [rbp + 16]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	qword ptr [rbp - 40], r8
	mov	qword ptr [rbp - 48], r9
	mov	rcx, qword ptr [rbp + 16]
	mov	dword ptr [rcx], 0
	mov	dword ptr [rbp - 52], 0
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 52]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	esi, 10
	sub	esi, dword ptr [rbp - 52]
	cmp	edx, esi
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 52]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 52]
	mov	edx, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp + 16]
	mov	dword ptr [rcx], 1
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, 1
	mov	dword ptr [rbp - 52], eax
	jmp	LBB0_1
LBB0_6:
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 10
	je	LBB0_8
## %bb.7:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB0_8:
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 7
	je	LBB0_10
## %bb.9:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB0_10:
	mov	rax, qword ptr [rbp - 32]
	cmp	dword ptr [rax], 59
	je	LBB0_12
## %bb.11:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB0_12:
	mov	rax, qword ptr [rbp - 40]
	cmp	dword ptr [rax], 999
	je	LBB0_14
## %bb.13:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB0_14:
	mov	rax, qword ptr [rbp - 48]
	cmp	dword ptr [rax], 0
	je	LBB0_16
## %bb.15:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB0_16:
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_mpi_send_1di1          ## -- Begin function mpi_send_1di1
	.p2align	4, 0x90
_mpi_send_1di1:                         ## @mpi_send_1di1
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	rax, qword ptr [rbp + 16]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	qword ptr [rbp - 40], r8
	mov	qword ptr [rbp - 48], r9
	mov	rcx, qword ptr [rbp + 16]
	mov	dword ptr [rcx], 0
	mov	dword ptr [rbp - 52], 0
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 52]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 52]
	movsx	edx, byte ptr [rax + rcx]
	mov	esi, dword ptr [rbp - 52]
	add	esi, 1
	cmp	edx, esi
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	esi, dword ptr [rbp - 52]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 52]
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp + 16]
	mov	dword ptr [rcx], 1
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 52]
	add	eax, 1
	mov	dword ptr [rbp - 52], eax
	jmp	LBB1_1
LBB1_6:
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 10
	je	LBB1_8
## %bb.7:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB1_8:
	mov	rax, qword ptr [rbp - 24]
	cmp	dword ptr [rax], 8
	je	LBB1_10
## %bb.9:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB1_10:
	mov	rax, qword ptr [rbp - 32]
	cmp	dword ptr [rax], 59
	je	LBB1_12
## %bb.11:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB1_12:
	mov	rax, qword ptr [rbp - 40]
	cmp	dword ptr [rax], 999
	je	LBB1_14
## %bb.13:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB1_14:
	mov	rax, qword ptr [rbp - 48]
	cmp	dword ptr [rax], 1
	je	LBB1_16
## %bb.15:
	mov	rax, qword ptr [rbp + 16]
	mov	dword ptr [rax], 1
LBB1_16:
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"a[%d] = %d\n"


.subsections_via_symbols
