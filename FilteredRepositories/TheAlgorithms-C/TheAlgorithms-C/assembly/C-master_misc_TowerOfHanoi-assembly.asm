	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_hanoi                  ## -- Begin function hanoi
	.p2align	4, 0x90
_hanoi:                                 ## @hanoi
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	al, cl
	mov	r8b, dl
	mov	r9b, sil
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], r9b
	mov	byte ptr [rbp - 6], r8b
	mov	byte ptr [rbp - 7], al
	cmp	dword ptr [rbp - 4], 0
	jne	LBB0_2
## %bb.1:
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	cl, byte ptr [rbp - 5]
	mov	dl, byte ptr [rbp - 7]
	mov	edi, eax
	movsx	esi, cl
	movsx	edx, dl
	movsx	ecx, byte ptr [rbp - 6]
	call	_hanoi
	mov	esi, dword ptr [rbp - 4]
	movsx	edx, byte ptr [rbp - 5]
	movsx	ecx, byte ptr [rbp - 6]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 1
	mov	r8b, byte ptr [rbp - 7]
	mov	r9b, byte ptr [rbp - 6]
	mov	edi, ecx
	movsx	esi, r8b
	movsx	edx, r9b
	movsx	ecx, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_hanoi
LBB0_3:
	add	rsp, 16
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
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, 65
	mov	edx, 66
	mov	ecx, 67
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_hanoi
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Move disk : %d from %c to %c\n"

L_.str.1:                               ## @.str.1
	.asciz	"Number of disks: \n"

L_.str.2:                               ## @.str.2
	.asciz	"%d"


.subsections_via_symbols
