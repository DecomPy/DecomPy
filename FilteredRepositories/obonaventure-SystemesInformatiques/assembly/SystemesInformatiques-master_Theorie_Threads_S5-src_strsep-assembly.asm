	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_mystrtol               ## -- Begin function mystrtol
	.p2align	4, 0x90
_mystrtol:                              ## @mystrtol
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 32], 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jne	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 33], sil ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edi, byte ptr [rax + rcx]
	call	_isdigit
	cmp	eax, 0
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 32], 1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rcx], rax
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_1
LBB0_7:
	mov	eax, dword ptr [rbp - 24]
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rsi, [rip + L_.str]
	mov	qword ptr [rbp - 32], rsi
	mov	rdi, qword ptr [rbp - 32]
	lea	rsi, [rbp - 24]
	mov	edx, 10
	call	_mystrtol
	movsxd	rsi, eax
	mov	qword ptr [rbp - 40], rsi
	cmp	qword ptr [rbp - 24], 0
	je	LBB1_2
## %bb.1:
	mov	rax, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB1_2:
	mov	rsi, qword ptr [rbp - 32]
	mov	rdx, qword ptr [rbp - 40]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1252m"

L_.str.1:                               ## @.str.1
	.asciz	"Caract\303\250re erronn\303\251 : %c\n"

L_.str.2:                               ## @.str.2
	.asciz	"Valeur convertie : %s -> %ld\n"


.subsections_via_symbols
