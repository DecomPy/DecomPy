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
	sub	rsp, 48
	mov	rax, qword ptr [rip + _g@GOTPCREL]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edx, dword ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + _msg@GOTPCREL]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 10
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _msg@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	esi, byte ptr [rax + rcx]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	lea	rcx, [rip + _cours]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	r8d, r8d
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, r8d
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_g_init                 ## @g_init
	.p2align	2
_g_init:
	.long	1252                    ## 0x4e4

	.section	__TEXT,__const
	.globl	_un                     ## @un
	.p2align	2
_un:
	.long	1                       ## 0x1

	.section	__DATA,__data
	.globl	_tab                    ## @tab
	.p2align	2
_tab:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3

	.globl	_cours                  ## @cours
_cours:
	.asciz	"SINF1252"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"g est \303\240 l'adresse %p et initialis\303\251e \303\240 %d\n"

	.comm	_g,4,2                  ## @g
L_.str.1:                               ## @.str.1
	.asciz	"msg est \303\240 l'adresse %p contient les caract\303\250res :"

	.comm	_msg,10,0               ## @msg
L_.str.2:                               ## @.str.2
	.asciz	" %x"

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"Cours est \303\240 l'adresse %p et contient : %s\n"

	.comm	_array,40000,4          ## @array

.subsections_via_symbols
