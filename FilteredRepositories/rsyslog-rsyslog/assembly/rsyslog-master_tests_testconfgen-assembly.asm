	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_output                 ## -- Begin function output
	.p2align	4, 0x90
_output:                                ## @output
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 4]
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 8]
	lea	rcx, [rip + _arr]
	cmp	dword ptr [rcx + 4*rax], 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 8]
	lea	rcx, [rip + _name]
	mov	rsi, qword ptr [rcx + 8*rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_1
LBB0_6:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_pows                   ## -- Begin function pows
	.p2align	4, 0x90
_pows:                                  ## @pows
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB1_2
## %bb.1:
	mov	edi, dword ptr [rbp - 4]
	call	_output
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	movsxd	rcx, dword ptr [rbp - 8]
	lea	rdx, [rip + _arr]
	mov	dword ptr [rdx + 4*rcx], 0
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	_pows
	movsxd	rcx, dword ptr [rbp - 8]
	lea	rdx, [rip + _arr]
	mov	dword ptr [rdx + 4*rcx], 1
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	_pows
LBB1_3:
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
	sub	rsp, 2624
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 2580], 0
	mov	dword ptr [rbp - 2584], edi
	mov	qword ptr [rbp - 2592], rsi
	mov	dword ptr [rbp - 2596], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + ___stdinp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	call	_feof
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	jne	LBB2_2
	jmp	LBB2_8
LBB2_2:                                 ##   in Loop: Header=BB2_1 Depth=1
	lea	rdx, [rbp - 2576]
	lea	rsi, [rbp - 528]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 2600], eax
	cmp	dword ptr [rbp - 2600], -1
	jne	LBB2_4
## %bb.3:
	jmp	LBB2_8
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	cmp	dword ptr [rbp - 2600], 2
	je	LBB2_6
## %bb.5:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 2596]
	mov	ecx, dword ptr [rbp - 2600]
	lea	rsi, [rip + L_.str.4]
	xor	r8d, r8d
	mov	r9b, r8b
	mov	al, r9b
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 2604], eax ## 4-byte Spill
	call	_exit
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rbp - 528]
	call	_strdup
	lea	rdi, [rbp - 2576]
	movsxd	rcx, dword ptr [rbp - 2596]
	lea	rdx, [rip + _name]
	mov	qword ptr [rdx + 8*rcx], rax
	call	_strdup
	lea	rdx, [rbp - 2576]
	lea	rsi, [rbp - 528]
	movsxd	rcx, dword ptr [rbp - 2596]
	lea	rdi, [rip + _stmt]
	mov	qword ptr [rdi + 8*rcx], rax
	mov	r8d, dword ptr [rbp - 2596]
	add	r8d, 1
	mov	dword ptr [rbp - 2596], r8d
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 2608], eax ## 4-byte Spill
	jmp	LBB2_1
LBB2_8:
	mov	esi, dword ptr [rbp - 2596]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	edi, dword ptr [rbp - 2596]
	mov	esi, dword ptr [rbp - 2596]
	mov	dword ptr [rbp - 2612], eax ## 4-byte Spill
	call	_pows
	mov	eax, dword ptr [rbp - 2580]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 2616], eax ## 4-byte Spill
	jne	LBB2_10
## %bb.9:
	mov	eax, dword ptr [rbp - 2616] ## 4-byte Reload
	add	rsp, 2624
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"name:"

.zerofill __DATA,__bss,_arr,512,4       ## @arr
L_.str.1:                               ## @.str.1
	.asciz	"-%s"

.zerofill __DATA,__bss,_name,1024,4     ## @name
L_.str.2:                               ## @.str.2
	.asciz	"\n"

L_.str.3:                               ## @.str.3
	.asciz	"%s %[^\n]s\n"

L_.str.4:                               ## @.str.4
	.asciz	"problem scanning entry %d, scanned %d\n"

.zerofill __DATA,__bss,_stmt,1024,4     ## @stmt
L_.str.5:                               ## @.str.5
	.asciz	"name: %s, stmt: %s\n"

L_.str.6:                               ## @.str.6
	.asciz	"read %d entries\n"


.subsections_via_symbols
