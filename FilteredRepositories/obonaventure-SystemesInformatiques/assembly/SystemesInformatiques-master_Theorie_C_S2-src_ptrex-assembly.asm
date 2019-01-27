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
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 1
	mov	edi, dword ptr [rip + L_main.str]
	mov	dword ptr [rbp - 37], edi
	mov	al, byte ptr [rip + L_main.str+4]
	mov	byte ptr [rbp - 33], al
	lea	rsi, [rbp - 20]
	mov	qword ptr [rbp - 32], rsi
	mov	esi, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 32]
	mov	edx, dword ptr [rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 32]
	mov	edx, dword ptr [rcx]
	add	edx, 1252
	mov	rcx, qword ptr [rbp - 32]
	mov	dword ptr [rcx], edx
	mov	esi, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 32]
	mov	edx, dword ptr [rcx]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rcx, [rbp - 37]
	mov	qword ptr [rbp - 48], rcx
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	lea	rdi, [rbp - 37]
	movsxd	rax, dword ptr [rbp - 20]
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
	cmp	rdi, rax
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 20]
	movsxd	rax, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rbp + rax - 37]
	mov	ecx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rbp - 48]
	movsxd	rdi, dword ptr [rbp - 20]
	movsx	r8d, byte ptr [rax + rdi]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.str:                             ## @main.str
	.asciz	"Unix"

L_.str:                                 ## @.str
	.asciz	"valeur de i : %d, valeur point\303\251e par ptr_i : %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"valeur de str[%d] : %c, valeur point\303\251e par *(s+%d) : %c\n"


.subsections_via_symbols
