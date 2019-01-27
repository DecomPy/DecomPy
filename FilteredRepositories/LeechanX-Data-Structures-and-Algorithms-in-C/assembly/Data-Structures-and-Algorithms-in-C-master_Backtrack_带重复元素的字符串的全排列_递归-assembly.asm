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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 8
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	esi, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _count@GOTPCREL]
	mov	ecx, dword ptr [rdi]
	add	ecx, 1
	mov	dword ptr [rdi], ecx
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_create_candidate       ## -- Begin function create_candidate
	.p2align	4, 0x90
_create_candidate:                      ## @create_candidate
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	xor	eax, eax
	mov	r9d, 104
	mov	r10d, r9d
	mov	r11, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r11, qword ptr [r11]
	mov	qword ptr [rbp - 8], r11
	mov	qword ptr [rbp - 120], rdi
	mov	qword ptr [rbp - 128], rsi
	mov	dword ptr [rbp - 132], edx
	mov	qword ptr [rbp - 144], rcx
	mov	qword ptr [rbp - 152], r8
	lea	rcx, [rbp - 112]
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r10
	call	_memset
	mov	dword ptr [rbp - 160], 0
	mov	dword ptr [rbp - 156], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 156], 8
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 120]
	movsxd	rcx, dword ptr [rbp - 156]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 97
	movsxd	rax, edx
	mov	edx, dword ptr [rbp + 4*rax - 112]
	add	edx, 1
	mov	dword ptr [rbp + 4*rax - 112], edx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 156]
	add	eax, 1
	mov	dword ptr [rbp - 156], eax
	jmp	LBB1_1
LBB1_4:
	mov	dword ptr [rbp - 156], 0
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 156]
	cmp	eax, dword ptr [rbp - 132]
	jge	LBB1_8
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	rax, qword ptr [rbp - 128]
	movsxd	rcx, dword ptr [rbp - 156]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 97
	movsxd	rax, edx
	mov	edx, dword ptr [rbp + 4*rax - 112]
	add	edx, -1
	mov	dword ptr [rbp + 4*rax - 112], edx
## %bb.7:                               ##   in Loop: Header=BB1_5 Depth=1
	mov	eax, dword ptr [rbp - 156]
	add	eax, 1
	mov	dword ptr [rbp - 156], eax
	jmp	LBB1_5
LBB1_8:
	mov	dword ptr [rbp - 156], 0
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 156], 26
	jge	LBB1_14
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=1
	movsxd	rax, dword ptr [rbp - 156]
	cmp	dword ptr [rbp + 4*rax - 112], 0
	je	LBB1_12
## %bb.11:                              ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 156]
	add	eax, 97
	mov	cl, al
	mov	rdx, qword ptr [rbp - 144]
	mov	eax, dword ptr [rbp - 160]
	mov	esi, eax
	add	esi, 1
	mov	dword ptr [rbp - 160], esi
	movsxd	rdi, eax
	mov	byte ptr [rdx + rdi], cl
LBB1_12:                                ##   in Loop: Header=BB1_9 Depth=1
	jmp	LBB1_13
LBB1_13:                                ##   in Loop: Header=BB1_9 Depth=1
	mov	eax, dword ptr [rbp - 156]
	add	eax, 1
	mov	dword ptr [rbp - 156], eax
	jmp	LBB1_9
LBB1_14:
	mov	eax, dword ptr [rbp - 160]
	mov	rcx, qword ptr [rbp - 152]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	jne	LBB1_16
## %bb.15:
	add	rsp, 160
	pop	rbp
	ret
LBB1_16:
	call	___stack_chk_fail
	ud2
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
	sub	rsp, 48
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	mov	dword ptr [rbp - 36], edx
	cmp	dword ptr [rbp - 36], 8
	jne	LBB2_2
## %bb.1:
	mov	rdi, qword ptr [rbp - 32]
	call	_display_outcome
	jmp	LBB2_7
LBB2_2:
	lea	rcx, [rbp - 16]
	mov	rdi, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 32]
	mov	edx, dword ptr [rbp - 36]
	lea	r8, [rbp - 40]
	call	_create_candidate
	mov	dword ptr [rbp - 44], 0
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 44]
	cmp	eax, dword ptr [rbp - 40]
	jge	LBB2_6
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=1
	movsxd	rax, dword ptr [rbp - 44]
	mov	cl, byte ptr [rbp + rax - 16]
	mov	rax, qword ptr [rbp - 32]
	movsxd	rdx, dword ptr [rbp - 36]
	mov	byte ptr [rax + rdx], cl
	mov	rdi, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 32]
	mov	r8d, dword ptr [rbp - 36]
	add	r8d, 1
	mov	edx, r8d
	call	_backtrack
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=1
	mov	eax, dword ptr [rbp - 44]
	add	eax, 1
	mov	dword ptr [rbp - 44], eax
	jmp	LBB2_3
LBB2_6:
	jmp	LBB2_7
LBB2_7:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_9
## %bb.8:
	add	rsp, 48
	pop	rbp
	ret
LBB2_9:
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
	xor	edx, edx
	lea	rax, [rbp - 16]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], edi
	mov	qword ptr [rbp - 32], rsi
	lea	rcx, [rip + L_.str.2]
	mov	qword ptr [rbp - 40], rcx
	mov	rdi, qword ptr [rbp - 40]
	mov	rsi, rax
	call	_backtrack
	mov	rax, qword ptr [rip + _count@GOTPCREL]
	mov	esi, dword ptr [rax]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jne	LBB3_2
## %bb.1:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
LBB3_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.comm	_count,4,2              ## @count
L_.str.2:                               ## @.str.2
	.asciz	"leechanx"

L_.str.3:                               ## @.str.3
	.asciz	"%d\n"


.subsections_via_symbols
