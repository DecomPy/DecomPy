	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_int2bin                ## -- Begin function int2bin
	.p2align	4, 0x90
_int2bin:                               ## @int2bin
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	byte ptr [rsi + 32], 0
	mov	dword ptr [rbp - 20], 31
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	jl	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	and	eax, 1
	cmp	eax, 1
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 49
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 48
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	shr	eax, 1
	mov	dword ptr [rbp - 4], eax
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_7:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_char2bin               ## -- Begin function char2bin
	.p2align	4, 0x90
_char2bin:                              ## @char2bin
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	byte ptr [rsi + 8], 0
	mov	dword ptr [rbp - 20], 7
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	jl	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movzx	eax, byte ptr [rbp - 1]
	and	eax, 1
	cmp	eax, 1
	jne	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 49
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	byte ptr [rax + rcx], 48
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movzx	eax, byte ptr [rbp - 1]
	sar	eax, 1
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_7:
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
	sub	rsp, 176
	lea	rax, [rbp - 48]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 116], 0
	mov	dword ptr [rbp - 120], edi
	mov	qword ptr [rbp - 128], rsi
	mov	byte ptr [rbp - 129], 0
	mov	byte ptr [rbp - 130], -6
	mov	byte ptr [rbp - 131], 95
	mov	byte ptr [rbp - 132], 80
	mov	byte ptr [rbp - 133], 80
	mov	dword ptr [rbp - 140], 0
	mov	dword ptr [rbp - 144], 4
	mov	dword ptr [rbp - 148], 5
	mov	dl, byte ptr [rbp - 129]
	movzx	edi, dl
	mov	rsi, rax
	call	_char2bin
	lea	rsi, [rbp - 80]
	movzx	edi, byte ptr [rbp - 129]
	xor	edi, -1
	mov	dl, dil
	movzx	edi, dl
	call	_char2bin
	lea	rdx, [rbp - 80]
	lea	rsi, [rbp - 48]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 48]
	mov	r8b, byte ptr [rbp - 130]
	movzx	edi, r8b
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	call	_char2bin
	lea	rsi, [rbp - 80]
	mov	r8b, byte ptr [rbp - 131]
	movzx	edi, r8b
	call	_char2bin
	lea	rsi, [rbp - 112]
	movzx	eax, byte ptr [rbp - 130]
	movzx	edi, byte ptr [rbp - 131]
	and	eax, edi
	mov	r8b, al
	movzx	edi, r8b
	call	_char2bin
	lea	rcx, [rbp - 112]
	lea	rdx, [rbp - 80]
	lea	rsi, [rbp - 48]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 48]
	mov	r8b, byte ptr [rbp - 130]
	movzx	edi, r8b
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	call	_char2bin
	lea	rsi, [rbp - 80]
	mov	r8b, byte ptr [rbp - 131]
	movzx	edi, r8b
	call	_char2bin
	lea	rsi, [rbp - 112]
	movzx	eax, byte ptr [rbp - 130]
	movzx	edi, byte ptr [rbp - 131]
	or	eax, edi
	mov	r8b, al
	movzx	edi, r8b
	call	_char2bin
	lea	rcx, [rbp - 112]
	lea	rdx, [rbp - 80]
	lea	rsi, [rbp - 48]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 112]
	movzx	r9d, byte ptr [rbp - 130]
	movzx	r10d, byte ptr [rbp - 131]
	xor	r9d, r10d
	mov	r8b, r9b
	movzx	edi, r8b
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
	call	_char2bin
	lea	rcx, [rbp - 112]
	lea	rdx, [rbp - 80]
	lea	rsi, [rbp - 48]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	movzx	r9d, byte ptr [rbp - 130]
	xor	r9d, -1
	mov	r8b, r9b
	mov	byte ptr [rbp - 134], r8b
	movzx	r9d, byte ptr [rbp - 130]
	movzx	r10d, byte ptr [rbp - 131]
	and	r9d, r10d
	mov	r8b, r9b
	mov	byte ptr [rbp - 134], r8b
	movzx	r9d, byte ptr [rbp - 130]
	movzx	r10d, byte ptr [rbp - 131]
	or	r9d, r10d
	mov	r8b, r9b
	mov	byte ptr [rbp - 134], r8b
	movzx	r9d, byte ptr [rbp - 130]
	movzx	r10d, byte ptr [rbp - 131]
	xor	r9d, r10d
	mov	r8b, r9b
	mov	byte ptr [rbp - 134], r8b
	movzx	r9d, byte ptr [rbp - 132]
	and	r9d, 126
	mov	r8b, r9b
	mov	byte ptr [rbp - 134], r8b
	movzx	r9d, byte ptr [rbp - 133]
	or	r9d, 24
	mov	r8b, r9b
	mov	byte ptr [rbp - 134], r8b
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 164], eax ## 4-byte Spill
	jne	LBB2_2
## %bb.1:
	xor	eax, eax
	add	rsp, 176
	pop	rbp
	ret
LBB2_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"~ %s = %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"%s & %s = %s\n"

L_.str.2:                               ## @.str.2
	.asciz	"%s | %s = %s\n"

L_.str.3:                               ## @.str.3
	.asciz	"%s ^ %s = %s\n"


.subsections_via_symbols
