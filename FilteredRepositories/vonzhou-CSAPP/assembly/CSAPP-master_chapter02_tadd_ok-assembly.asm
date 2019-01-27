	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_tadd_ok                ## -- Begin function tadd_ok
	.p2align	4, 0x90
_tadd_ok:                               ## @tadd_ok
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	cl, dl
	mov	edx, dword ptr [rbp - 4]
	add	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], edx
	cmp	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jge	LBB0_3
## %bb.1:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jge	LBB0_3
## %bb.2:
	cmp	dword ptr [rbp - 12], 0
	setge	al
	mov	byte ptr [rbp - 25], al ## 1-byte Spill
LBB0_3:
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 16], ecx
	cmp	dword ptr [rbp - 16], 0
	je	LBB0_5
## %bb.4:
	mov	eax, dword ptr [rbp - 12]
	sub	eax, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.1]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_5:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jl	LBB0_8
## %bb.6:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	jl	LBB0_8
## %bb.7:
	cmp	dword ptr [rbp - 12], 0
	setl	al
	mov	byte ptr [rbp - 33], al ## 1-byte Spill
LBB0_8:
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 20], ecx
	cmp	dword ptr [rbp - 20], 0
	je	LBB0_10
## %bb.9:
	mov	eax, dword ptr [rbp - 12]
	sub	eax, dword ptr [rbp - 4]
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_10:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 16], 0
	mov	byte ptr [rbp - 41], cl ## 1-byte Spill
	jne	LBB0_12
## %bb.11:
	cmp	dword ptr [rbp - 20], 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 41], al ## 1-byte Spill
LBB0_12:
	mov	al, byte ptr [rbp - 41] ## 1-byte Reload
	and	al, 1
	movzx	eax, al
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	edi, 2147483647
	mov	esi, 1
	call	_tadd_ok
	lea	rdi, [rip + L_.str.3]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	edi, 4294967295
	mov	esi, 2147483648
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_tadd_ok
	lea	rdi, [rip + L_.str.3]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x=%d, y=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"negative overflow, sum - x = %d \n"

L_.str.2:                               ## @.str.2
	.asciz	"positive overflow, sum - x = %d \n"

L_.str.3:                               ## @.str.3
	.asciz	"tadd_ok ? = %d\n"


.subsections_via_symbols
