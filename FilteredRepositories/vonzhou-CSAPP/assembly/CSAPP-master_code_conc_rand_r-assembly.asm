	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_rand_r                 ## -- Begin function rand_r
	.p2align	4, 0x90
_rand_r:                                ## @rand_r
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	imul	eax, dword ptr [rdi], 1103515245
	add	eax, 12345
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	shr	eax, 16
	and	eax, 32767
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
	mov	dword ptr [rbp - 8], 1
	lea	rax, [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 16], rax ## 8-byte Spill
	call	_rand_r
	lea	rdi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 24], rdi ## 8-byte Spill
	mov	esi, eax
	mov	al, dl
	mov	dword ptr [rbp - 28], ecx ## 4-byte Spill
	mov	byte ptr [rbp - 29], dl ## 1-byte Spill
	call	_printf
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_rand_r
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
	mov	esi, eax
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	call	_printf
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_rand_r
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
	mov	esi, eax
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	call	_printf
	mov	edi, dword ptr [rbp - 28] ## 4-byte Reload
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
