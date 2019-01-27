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
	lea	rsi, [rbp - 18]
	lea	rdi, [rbp - 11]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 1
	mov	ax, word ptr [rip + L_main.dest]
	mov	word ptr [rbp - 11], ax
	mov	cl, byte ptr [rip + L_main.dest+2]
	mov	byte ptr [rbp - 9], cl
	mov	edx, dword ptr [rip + L_main.src]
	mov	dword ptr [rbp - 18], edx
	mov	ax, word ptr [rip + L_main.src+4]
	mov	word ptr [rbp - 14], ax
	mov	cl, byte ptr [rip + L_main.src+6]
	mov	byte ptr [rbp - 12], cl
	mov	dword ptr [rbp - 24], 0
	mov	edx, dword ptr [rbp - 8]
	call	_ft_strncpy
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 24], 10
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 24]
	movsx	ecx, byte ptr [rbp + rax - 11]
	cmp	ecx, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, 88
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 24]
	movsx	ecx, byte ptr [rbp + rax - 11]
	mov	dword ptr [rbp - 36], ecx ## 4-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 36] ## 4-byte Reload
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 24]
	add	esi, 1
	mov	dword ptr [rbp - 24], esi
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_6:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.dest:                            ## @main.dest
	.asciz	"gg"

L_main.src:                             ## @main.src
	.asciz	"aaaaaa"

L_.str:                                 ## @.str
	.asciz	"%c\n"


.subsections_via_symbols
