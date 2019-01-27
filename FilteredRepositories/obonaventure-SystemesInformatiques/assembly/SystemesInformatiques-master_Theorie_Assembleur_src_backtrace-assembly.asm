	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_safechar               ## -- Begin function safechar
	.p2align	4, 0x90
_safechar:                              ## @safechar
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 2], al
	movsx	edi, byte ptr [rbp - 2]
	cmp	edi, 97
	jl	LBB0_3
## %bb.1:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 122
	jg	LBB0_3
## %bb.2:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_3:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 65
	jl	LBB0_6
## %bb.4:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 90
	jg	LBB0_6
## %bb.5:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_6:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 48
	jl	LBB0_9
## %bb.7:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 57
	jg	LBB0_9
## %bb.8:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_9:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 32
	jne	LBB0_11
## %bb.10:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_11:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 46
	jne	LBB0_13
## %bb.12:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_13:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 45
	jne	LBB0_15
## %bb.14:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_15:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 44
	jne	LBB0_17
## %bb.16:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_17:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 40
	jne	LBB0_19
## %bb.18:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_19:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 41
	jne	LBB0_21
## %bb.20:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_21:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 91
	jne	LBB0_23
## %bb.22:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_23:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 93
	jne	LBB0_25
## %bb.24:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_25:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 123
	jne	LBB0_27
## %bb.26:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_27:
	movsx	eax, byte ptr [rbp - 2]
	cmp	eax, 125
	jne	LBB0_29
## %bb.28:
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
	jmp	LBB0_30
LBB0_29:
	mov	byte ptr [rbp - 1], 46
LBB0_30:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print_backtrace        ## -- Begin function print_backtrace
	.p2align	4, 0x90
_print_backtrace:                       ## @print_backtrace
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rbp - 16]
	add	rdi, 8
	mov	qword ptr [rbp - 16], rdi
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jg	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rsi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsxd	rax, dword ptr [rbp - 20]
	cmp	rax, 8
	jae	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edi, byte ptr [rax + rcx]
	call	_safechar
	movsx	esi, al
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 16]
	add	rdi, 8
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB1_1
LBB1_7:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_bar                    ## -- Begin function bar
	.p2align	4, 0x90
_bar:                                   ## @bar
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_print_backtrace
	mov	eax, 42
                                        ## kill: def $rax killed $eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_foo                    ## -- Begin function foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], 42
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rdi
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rdi
	mov	rdi, qword ptr [rbp - 24]
	add	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 40], rdi ## 8-byte Spill
	mov	rdi, rax
	call	_bar
	mov	rdi, qword ptr [rbp - 40] ## 8-byte Reload
	add	rdi, rax
	mov	rax, rdi
	add	rsp, 48
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 8]
	sub	edi, 1
	movsxd	rax, edi
	mov	rax, qword ptr [rsi + 8*rax]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	call	_strlen
	add	rax, 1
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	add	rsi, rax
	mov	rdi, rsi
	call	_foo
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"[%p] %20ld 0x%-16lx "

L_.str.1:                               ## @.str.1
	.asciz	"%c"

L_.str.2:                               ## @.str.2
	.asciz	"\n"


.subsections_via_symbols
