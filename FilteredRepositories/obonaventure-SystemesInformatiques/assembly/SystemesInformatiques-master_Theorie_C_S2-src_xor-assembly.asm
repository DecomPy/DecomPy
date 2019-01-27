	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_usage                  ## -- Begin function usage
	.p2align	4, 0x90
_usage:                                 ## @usage
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rip + L_.str]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_exit
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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 2
	je	LBB1_2
## %bb.1:
	lea	rdi, [rip + L_.str.1]
	call	_usage
LBB1_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 32], 0
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	xor	ecx, ecx
	mov	dl, cl
	mov	sil, al
	mov	byte ptr [rbp - 25], sil
	movsx	eax, sil
	cmp	eax, -1
	mov	byte ptr [rbp - 33], dl ## 1-byte Spill
	je	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	mov	rdi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	cmp	rdi, rax
	setb	cl
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=1
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=1
	movsx	eax, byte ptr [rbp - 25]
	mov	rcx, qword ptr [rbp - 24]
	movsxd	rdx, dword ptr [rbp - 32]
	movsx	esi, byte ptr [rcx + rdx]
	xor	eax, esi
	mov	edi, eax
	call	_putchar
	mov	esi, dword ptr [rbp - 32]
	add	esi, 1
	mov	dword ptr [rbp - 32], esi
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB1_3
LBB1_7:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage : %s\n"

L_.str.1:                               ## @.str.1
	.asciz	"ce programme prend une cl\303\251 comme argument"


.subsections_via_symbols
