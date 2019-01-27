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
	sub	rsp, 224
	mov	dword ptr [rbp - 4], 0
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 80], rax
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	lea	rcx, [rbp - 16]
	lea	r8, [rbp - 20]
	lea	r9, [rbp - 24]
	lea	r10, [rbp - 28]
	mov	qword ptr [rsp], r10
	lea	r10, [rbp - 32]
	mov	qword ptr [rsp + 8], r10
	lea	r10, [rbp - 36]
	mov	qword ptr [rsp + 16], r10
	lea	r10, [rbp - 40]
	mov	qword ptr [rsp + 24], r10
	lea	r10, [rbp - 44]
	mov	qword ptr [rsp + 32], r10
	lea	r10, [rbp - 48]
	mov	qword ptr [rsp + 40], r10
	lea	r10, [rbp - 52]
	mov	qword ptr [rsp + 48], r10
	lea	r10, [rbp - 56]
	mov	qword ptr [rsp + 56], r10
	lea	r10, [rbp - 60]
	mov	qword ptr [rsp + 64], r10
	lea	r10, [rbp - 64]
	mov	qword ptr [rsp + 72], r10
	lea	r10, [rbp - 68]
	mov	qword ptr [rsp + 80], r10
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	rdi, qword ptr [rbp - 80]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 16]
	mov	r8d, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 80]
	mov	esi, dword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 32]
	mov	r8d, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 80]
	mov	esi, dword ptr [rbp - 40]
	mov	edx, dword ptr [rbp - 44]
	mov	ecx, dword ptr [rbp - 48]
	mov	r8d, dword ptr [rbp - 52]
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 80]
	mov	esi, dword ptr [rbp - 56]
	mov	edx, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp - 64]
	mov	r8d, dword ptr [rbp - 68]
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, dword ptr [rbp - 12]
	add	ecx, dword ptr [rbp - 16]
	add	ecx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	add	edx, dword ptr [rbp - 28]
	add	edx, dword ptr [rbp - 32]
	add	edx, dword ptr [rbp - 36]
	mov	esi, dword ptr [rbp - 40]
	add	esi, dword ptr [rbp - 44]
	add	esi, dword ptr [rbp - 48]
	add	esi, dword ptr [rbp - 52]
	mov	r8d, dword ptr [rbp - 56]
	add	r8d, dword ptr [rbp - 60]
	add	r8d, dword ptr [rbp - 64]
	add	r8d, dword ptr [rbp - 68]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 104], esi ## 4-byte Spill
	mov	esi, ecx
	mov	ecx, dword ptr [rbp - 104] ## 4-byte Reload
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, dword ptr [rbp - 24]
	add	ecx, dword ptr [rbp - 40]
	add	ecx, dword ptr [rbp - 56]
	mov	edx, dword ptr [rbp - 12]
	add	edx, dword ptr [rbp - 28]
	add	edx, dword ptr [rbp - 44]
	add	edx, dword ptr [rbp - 60]
	mov	esi, dword ptr [rbp - 16]
	add	esi, dword ptr [rbp - 32]
	add	esi, dword ptr [rbp - 48]
	add	esi, dword ptr [rbp - 64]
	mov	r8d, dword ptr [rbp - 20]
	add	r8d, dword ptr [rbp - 36]
	add	r8d, dword ptr [rbp - 52]
	add	r8d, dword ptr [rbp - 68]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 112], esi ## 4-byte Spill
	mov	esi, ecx
	mov	ecx, dword ptr [rbp - 112] ## 4-byte Reload
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, dword ptr [rbp - 28]
	add	ecx, dword ptr [rbp - 48]
	add	ecx, dword ptr [rbp - 68]
	mov	edx, dword ptr [rbp - 56]
	add	edx, dword ptr [rbp - 44]
	add	edx, dword ptr [rbp - 32]
	add	edx, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.5]
	mov	esi, ecx
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 224
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%2d\t%2d\t%2d\t%2d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Enter the numbers from 1 to 16 in any order:\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d"

L_.str.3:                               ## @.str.3
	.asciz	"Row sums: %2d  %2d  %2d  %2d\n"

L_.str.4:                               ## @.str.4
	.asciz	"Column sums: %2d  %2d  %2d  %2d\n"

L_.str.5:                               ## @.str.5
	.asciz	"Diagonal sums: %2d  %2d\n"


.subsections_via_symbols
