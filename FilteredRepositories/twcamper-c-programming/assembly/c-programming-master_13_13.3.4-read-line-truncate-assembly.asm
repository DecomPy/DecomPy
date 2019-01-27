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
	sub	rsp, 80
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 68], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	call	_print_header
	lea	rdi, [rbp - 32]
	mov	esi, 20
	call	_read_line
	lea	rdx, [rbp - 32]
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 64]
	mov	esi, 20
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	call	_read_line
	lea	rdx, [rbp - 64]
	lea	rdi, [rip + L_.str.3]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	call	_print_header
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdx, rdi
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_print_header           ## -- Begin function print_header
	.p2align	4, 0x90
_print_header:                          ## @print_header
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
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 2
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB1_1
LBB1_4:
	lea	rdi, [rip + L_.str.5]
	call	_puts
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_read_line              ## -- Begin function read_line
	.p2align	4, 0x90
_read_line:                             ## @read_line
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 20], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	dword ptr [rbp - 16], eax
	mov	edi, eax
	call	_isspace
	cmp	eax, 0
	je	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_3:
	mov	eax, dword ptr [rbp - 16]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 20]
	mov	esi, eax
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	movsxd	rdi, eax
	mov	byte ptr [rdx + rdi], cl
LBB2_4:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 16], eax
	cmp	eax, 10
	mov	byte ptr [rbp - 21], dl ## 1-byte Spill
	je	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_4 Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	setl	cl
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
LBB2_6:                                 ##   in Loop: Header=BB2_4 Depth=1
	mov	al, byte ptr [rbp - 21] ## 1-byte Reload
	test	al, 1
	jne	LBB2_7
	jmp	LBB2_8
LBB2_7:                                 ##   in Loop: Header=BB2_4 Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 20]
	mov	esi, eax
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	movsxd	rdi, eax
	mov	byte ptr [rdx + rdi], cl
	jmp	LBB2_4
LBB2_8:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 0
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a string:\n"

L_.str.1:                               ## @.str.1
	.asciz	"+---------"

L_.str.2:                               ## @.str.2
	.asciz	"String 1 (%d):\n%s\n"

L_.str.3:                               ## @.str.3
	.asciz	"String 2 (%d):\n%s\n"

L_.str.4:                               ## @.str.4
	.asciz	"0123456789"

L_.str.5:                               ## @.str.5
	.space	1


.subsections_via_symbols
