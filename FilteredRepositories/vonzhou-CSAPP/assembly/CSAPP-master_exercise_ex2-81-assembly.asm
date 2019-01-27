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
	mov	dword ptr [rbp - 4], 0
	call	_random
	mov	ecx, eax
	mov	dword ptr [rbp - 8], ecx
	call	_random
	xor	ecx, ecx
	mov	edx, eax
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 20], edx
	cmp	dword ptr [rbp - 8], -2147483648
	setg	sil
	and	sil, 1
	movzx	edx, sil
	sub	ecx, dword ptr [rbp - 8]
	cmp	ecx, -2147483648
	setl	sil
	and	sil, 1
	movzx	ecx, sil
	cmp	edx, ecx
	sete	sil
	and	sil, 1
	movzx	esi, sil
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	add	ecx, dword ptr [rbp - 12]
	shl	ecx, 5
	add	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 12]
	imul	edx, dword ptr [rbp - 12], 31
	imul	esi, dword ptr [rbp - 8], 33
	add	edx, esi
	cmp	ecx, edx
	sete	r8b
	and	r8b, 1
	movzx	esi, r8b
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	xor	ecx, -1
	mov	edx, dword ptr [rbp - 12]
	xor	edx, -1
	add	ecx, edx
	mov	edx, dword ptr [rbp - 8]
	add	edx, dword ptr [rbp - 12]
	xor	edx, -1
	cmp	ecx, edx
	sete	r8b
	and	r8b, 1
	movzx	esi, r8b
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 16]
	sub	edx, dword ptr [rbp - 20]
	mov	esi, dword ptr [rbp - 12]
	sub	esi, dword ptr [rbp - 8]
	sub	ecx, esi
	cmp	edx, ecx
	sete	r8b
	and	r8b, 1
	movzx	esi, r8b
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	sar	ecx, 1
	shl	ecx, 1
	cmp	ecx, dword ptr [rbp - 8]
	setle	r8b
	and	r8b, 1
	movzx	esi, r8b
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"(x > INT_MIN) == (-x < -INT_MIN): %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"((x + y) << 5) + x - y == 31 * y + 33 * x: %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"~x + ~y == ~(x + y): %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"(int)(ux - uy) == -(y - x): %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"((x >> 1) << 1) <= x: %d\n"


.subsections_via_symbols
