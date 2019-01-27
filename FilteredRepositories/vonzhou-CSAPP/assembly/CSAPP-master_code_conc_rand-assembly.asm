	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_rand                   ## -- Begin function rand
	.p2align	4, 0x90
_rand:                                  ## @rand
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	imul	eax, dword ptr [rip + _next], 1103515245
	add	eax, 12345
	mov	dword ptr [rip + _next], eax
	mov	eax, dword ptr [rip + _next]
	shr	eax, 16
	and	eax, 32767
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_srand                  ## -- Begin function srand
	.p2align	4, 0x90
_srand:                                 ## @srand
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rip + _next], edi
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
	mov	edi, 100
	call	_srand
	call	_rand
	lea	rcx, [rip + L_.str]
	xor	edi, edi
	mov	dl, dil
	mov	dword ptr [rbp - 8], edi ## 4-byte Spill
	mov	rdi, rcx
	mov	esi, eax
	mov	al, dl
	mov	byte ptr [rbp - 9], dl  ## 1-byte Spill
	mov	qword ptr [rbp - 24], rcx ## 8-byte Spill
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_rand
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
	mov	esi, eax
	mov	al, byte ptr [rbp - 9]  ## 1-byte Reload
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_rand
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
	mov	esi, eax
	mov	al, byte ptr [rbp - 9]  ## 1-byte Reload
	call	_printf
	mov	edi, dword ptr [rbp - 8] ## 4-byte Reload
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_next                   ## @next
	.p2align	2
_next:
	.long	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
