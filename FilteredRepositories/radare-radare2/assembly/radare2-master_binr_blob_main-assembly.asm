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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 20]
	shl	rax, 4
	lea	rcx, [rip + _foo]
	add	rcx, rax
	cmp	qword ptr [rcx], 0
	je	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax]
	movsxd	rax, dword ptr [rbp - 20]
	shl	rax, 4
	lea	rcx, [rip + _foo]
	add	rcx, rax
	mov	rsi, qword ptr [rcx]
	call	_strstr
	cmp	rax, 0
	je	LBB0_4
## %bb.3:
	movsxd	rax, dword ptr [rbp - 20]
	shl	rax, 4
	lea	rcx, [rip + _foo]
	add	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	rax
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_10
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_5:
	mov	dword ptr [rbp - 20], 0
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 20]
	shl	rax, 4
	lea	rcx, [rip + _foo]
	add	rcx, rax
	cmp	qword ptr [rcx], 0
	je	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 20]
	shl	rax, 4
	lea	rcx, [rip + _foo]
	add	rcx, rax
	mov	rsi, qword ptr [rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.8:                               ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_6
LBB0_9:
	mov	dword ptr [rbp - 4], 1
LBB0_10:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	4               ## @foo
_foo:
	.quad	L_.str.1
	.quad	_radare2_main
	.quad	L_.str.2
	.quad	_rax2_main
	.quad	L_.str.3
	.quad	_radiff2_main
	.quad	L_.str.4
	.quad	_rafind2_main
	.quad	L_.str.5
	.quad	_rarun2_main
	.quad	L_.str.6
	.quad	_rasm2_main
	.quad	L_.str.7
	.quad	_ragg2_main
	.quad	L_.str.8
	.quad	_rabin2_main
	.quad	L_.str.9
	.quad	_radare2_main
	.space	16

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\n"

L_.str.1:                               ## @.str.1
	.asciz	"r2"

L_.str.2:                               ## @.str.2
	.asciz	"rax2"

L_.str.3:                               ## @.str.3
	.asciz	"radiff2"

L_.str.4:                               ## @.str.4
	.asciz	"rafind2"

L_.str.5:                               ## @.str.5
	.asciz	"rarun2"

L_.str.6:                               ## @.str.6
	.asciz	"rasm2"

L_.str.7:                               ## @.str.7
	.asciz	"ragg2"

L_.str.8:                               ## @.str.8
	.asciz	"rabin2"

L_.str.9:                               ## @.str.9
	.asciz	"radare2"


.subsections_via_symbols
