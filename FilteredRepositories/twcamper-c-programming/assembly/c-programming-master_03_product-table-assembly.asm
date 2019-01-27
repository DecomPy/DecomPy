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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rbp - 24]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.5]
	lea	rsi, [rbp - 12]
	lea	rdx, [rbp - 16]
	lea	rcx, [rbp - 20]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.7]
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 8]
	movss	xmm0, dword ptr [rbp - 24] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	edx, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 16]
	mov	r8d, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter item number: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"Enter unit price: "

L_.str.3:                               ## @.str.3
	.asciz	"%f"

L_.str.4:                               ## @.str.4
	.asciz	"Enter purchase date (mm/dd/yyyy): "

L_.str.5:                               ## @.str.5
	.asciz	"%d/%d/%d"

L_.str.6:                               ## @.str.6
	.asciz	"\n"

L_.str.7:                               ## @.str.7
	.asciz	"Item\t\t\tUnit\t\t\tPurchase\n"

L_.str.8:                               ## @.str.8
	.asciz	"    \t\t\tPrice\t\t\tDate\n"

L_.str.9:                               ## @.str.9
	.asciz	"%-d\t\t\t$%4.2f\t\t\t%.2d/%.2d/%4d\n"


.subsections_via_symbols
