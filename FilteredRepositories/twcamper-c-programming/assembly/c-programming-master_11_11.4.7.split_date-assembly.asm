	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_split_date             ## -- Begin function split_date
	.p2align	4, 0x90
_split_date:                            ## @split_date
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	lea	rax, [rip + l_split_date.eom]
	mov	r8d, 52
	mov	r9d, r8d
	mov	r10, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r10, qword ptr [r10]
	mov	qword ptr [rbp - 8], r10
	mov	dword ptr [rbp - 68], edi
	mov	dword ptr [rbp - 72], esi
	mov	qword ptr [rbp - 80], rdx
	mov	qword ptr [rbp - 88], rcx
	lea	rcx, [rbp - 64]
	mov	rdi, rcx
	mov	rsi, rax
	mov	rdx, r9
	call	_memcpy
	mov	eax, dword ptr [rbp - 72]
	cdq
	mov	r8d, 4
	idiv	r8d
	cmp	edx, 0
	jne	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 72]
	cdq
	mov	ecx, 100
	idiv	ecx
	cmp	edx, 0
	jne	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 72]
	cdq
	mov	ecx, 400
	idiv	ecx
	cmp	edx, 0
	jne	LBB0_4
LBB0_3:
	mov	dword ptr [rbp - 56], 29
LBB0_4:
	mov	dword ptr [rbp - 92], 0
	mov	rax, qword ptr [rbp - 80]
	mov	dword ptr [rax], 1
	mov	rax, qword ptr [rbp - 80]
	movsxd	rax, dword ptr [rax]
	mov	ecx, dword ptr [rbp + 4*rax - 64]
	mov	dword ptr [rbp - 96], ecx
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 92]
	mov	byte ptr [rbp - 97], cl ## 1-byte Spill
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 68]
	cmp	eax, dword ptr [rbp - 96]
	setle	cl
	mov	byte ptr [rbp - 97], cl ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=1
	mov	al, byte ptr [rbp - 97] ## 1-byte Reload
	xor	al, -1
	test	al, 1
	jne	LBB0_8
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 96]
	mov	dword ptr [rbp - 92], eax
	mov	rcx, qword ptr [rbp - 80]
	mov	eax, dword ptr [rcx]
	add	eax, 1
	mov	dword ptr [rcx], eax
	movsxd	rcx, eax
	mov	eax, dword ptr [rbp + 4*rcx - 64]
	add	eax, dword ptr [rbp - 96]
	mov	dword ptr [rbp - 96], eax
	jmp	LBB0_5
LBB0_9:
	mov	eax, dword ptr [rbp - 68]
	sub	eax, dword ptr [rbp - 92]
	mov	rcx, qword ptr [rbp - 88]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	jne	LBB0_11
## %bb.10:
	add	rsp, 112
	pop	rbp
	ret
LBB0_11:
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 3
	je	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 4], 1
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	dword ptr [rbp - 20], eax
	mov	rdi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rdi + 16]
	call	_atoi
	mov	dword ptr [rbp - 24], eax
	mov	edi, dword ptr [rbp - 20]
	mov	esi, dword ptr [rbp - 24]
	lea	rdx, [rbp - 28]
	lea	rcx, [rbp - 32]
	call	_split_date
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 28]
	mov	r8d, dword ptr [rbp - 32]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @split_date.eom
l_split_date.eom:
	.long	0                       ## 0x0
	.long	31                      ## 0x1f
	.long	28                      ## 0x1c
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f
	.long	30                      ## 0x1e
	.long	31                      ## 0x1f

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage: $ %s <dd> <yyyy>\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d, %d: %.2d/%.2d\n"


.subsections_via_symbols
