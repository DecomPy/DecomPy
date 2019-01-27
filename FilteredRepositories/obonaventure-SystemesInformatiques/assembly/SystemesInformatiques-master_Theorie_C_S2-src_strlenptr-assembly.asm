	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_length                 ## -- Begin function length
	.p2align	4, 0x90
_length:                                ## @length
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
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
	lea	rax, [rbp - 24]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, dword ptr [rip + L_main.name1]
	mov	dword ptr [rbp - 24], edi
	mov	rdi, rax
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	call	_length
	lea	rdi, [rip + L_.str]
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	edx, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 10
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsxd	rax, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rbp + rax - 24]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.name1:                           ## @main.name1
	.asciz	"str"

L_.str:                                 ## @.str
	.asciz	"Longueur de name1 [%s] : %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"%c"


.subsections_via_symbols
