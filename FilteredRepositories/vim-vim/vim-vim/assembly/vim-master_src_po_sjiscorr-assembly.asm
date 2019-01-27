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
	sub	rsp, 1104
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 1044], 0
	mov	dword ptr [rbp - 1048], edi
	mov	qword ptr [rbp - 1056], rsi
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_9 Depth 3
	mov	rax, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rdi, [rbp - 1040]
	mov	rdx, qword ptr [rax]
	mov	esi, 1024
	call	_fgets
	cmp	rax, 0
	je	LBB0_25
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rax, [rbp - 1040]
	mov	qword ptr [rbp - 1064], rax
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_9 Depth 3
	mov	rax, qword ptr [rbp - 1064]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB0_24
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, 13
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 1064]
	lea	rsi, [rip + L_.str]
	call	_strncmp
	cmp	eax, 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, 13
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 1064]
	lea	rsi, [rip + L_.str.1]
	call	_strncmp
	cmp	eax, 0
	jne	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rip + L_.str.2]
	call	_fputs
	mov	rsi, qword ptr [rbp - 1064]
	add	rsi, 12
	mov	qword ptr [rbp - 1064], rsi
	mov	dword ptr [rbp - 1068], eax ## 4-byte Spill
	jmp	LBB0_22
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, 23
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 1064]
	lea	rsi, [rip + L_.str.3]
	call	_strncmp
	cmp	eax, 0
	jne	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rip + L_.str.4]
	call	_fputs
	mov	dword ptr [rbp - 1072], eax ## 4-byte Spill
LBB0_9:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	rax, qword ptr [rbp - 1064]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 10
	je	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=3
	mov	rax, qword ptr [rbp - 1064]
	add	rax, 1
	mov	qword ptr [rbp - 1064], rax
	jmp	LBB0_9
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_21
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 129
	jne	LBB0_15
## %bb.13:                              ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 95
	jne	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_3 Depth=2
	mov	edi, 92
	call	_putchar
	mov	rcx, qword ptr [rbp - 1064]
	add	rcx, 1
	mov	qword ptr [rbp - 1064], rcx
	mov	dword ptr [rbp - 1076], eax ## 4-byte Spill
	jmp	LBB0_20
LBB0_15:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	movsx	ecx, byte ptr [rax]
	and	ecx, 128
	cmp	ecx, 0
	je	LBB0_19
## %bb.16:                              ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 1064], rcx
	movsx	edi, byte ptr [rax]
	call	_putchar
	mov	rcx, qword ptr [rbp - 1064]
	movsx	edi, byte ptr [rcx]
	cmp	edi, 92
	mov	dword ptr [rbp - 1080], eax ## 4-byte Spill
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	movsx	edi, byte ptr [rax]
	call	_putchar
	mov	dword ptr [rbp - 1084], eax ## 4-byte Spill
LBB0_18:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	movsx	edi, byte ptr [rax]
	call	_putchar
	mov	dword ptr [rbp - 1088], eax ## 4-byte Spill
LBB0_20:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_21
LBB0_21:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_22
LBB0_22:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_23
LBB0_23:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rbp - 1064]
	add	rax, 1
	mov	qword ptr [rbp - 1064], rax
	jmp	LBB0_3
LBB0_24:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_25:
	mov	eax, dword ptr [rbp - 1044]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 1092], eax ## 4-byte Spill
	jne	LBB0_27
## %bb.26:
	mov	eax, dword ptr [rbp - 1092] ## 4-byte Reload
	add	rsp, 1104
	pop	rbp
	ret
LBB0_27:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"charset=utf-8"

L_.str.1:                               ## @.str.1
	.asciz	"charset=UTF-8"

L_.str.2:                               ## @.str.2
	.asciz	"charset=cp932"

L_.str.3:                               ## @.str.3
	.asciz	"# Original translations"

L_.str.4:                               ## @.str.4
	.asciz	"# generated from ja.po, DO NOT EDIT"


.subsections_via_symbols
