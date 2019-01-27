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
	mov	rax, qword ptr [rip + _ptr@GOTPCREL]
	lea	rcx, [rip + _a]
	mov	qword ptr [rax], rcx
## %bb.1:
	mov	esi, dword ptr [rip + _a]
	mov	edx, dword ptr [rip + _a+4]
	mov	ecx, dword ptr [rip + _a+8]
	movsxd	rax, dword ptr [rip + _a+12]
	lea	rdi, [rip + _a]
	mov	r8d, dword ptr [rdi + 4*rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
## %bb.2:
	mov	rax, qword ptr [rip + _ptr@GOTPCREL]
	mov	rcx, qword ptr [rax]
	mov	esi, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	edx, dword ptr [rcx + 4]
	mov	rcx, qword ptr [rax]
	mov	ecx, dword ptr [rcx + 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rax]
	movsxd	rax, dword ptr [rax + 12]
	mov	r8d, dword ptr [rdi + 4*rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
## %bb.3:
	mov	rax, qword ptr [rip + _ptr@GOTPCREL]
	mov	rcx, qword ptr [rax]
	mov	esi, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	edx, dword ptr [rcx]
	add	edx, 1
	mov	rcx, qword ptr [rax]
	mov	edi, dword ptr [rcx]
	add	edi, 2
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rax]
	movsxd	rax, dword ptr [rax + 12]
	mov	r8d, dword ptr [rcx + 4*rax]
	lea	rax, [rip + L_.str]
	mov	dword ptr [rbp - 16], edi ## 4-byte Spill
	mov	rdi, rax
	mov	ecx, dword ptr [rbp - 16] ## 4-byte Reload
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.4:
	mov	rax, qword ptr [rip + _ptr@GOTPCREL]
	mov	rcx, qword ptr [rax]
	mov	esi, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, 4
	mov	qword ptr [rax], rdx
	mov	edx, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	rdi, rcx
	add	rdi, 4
	mov	qword ptr [rax], rdi
	mov	ecx, dword ptr [rcx]
	mov	rdi, qword ptr [rax]
	mov	r8, qword ptr [rax]
	mov	r9, r8
	add	r9, 4
	mov	qword ptr [rax], r9
	movsxd	rax, dword ptr [r8]
	mov	r8d, dword ptr [rdi + 4*rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.5:
	mov	rax, qword ptr [rip + _ptr@GOTPCREL]
	mov	rcx, qword ptr [rax]
	mov	esi, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	edx, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	ecx, dword ptr [rcx + 4]
	mov	rdi, qword ptr [rax]
	mov	r8d, dword ptr [rdi]
	mov	rax, qword ptr [rax]
	add	r8d, dword ptr [rax + 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
## %bb.6:
	mov	rax, qword ptr [rip + _ptr@GOTPCREL]
	mov	rcx, qword ptr [rax]
	mov	esi, dword ptr [rcx]
	mov	rcx, qword ptr [rax]
	mov	edx, dword ptr [rcx]
	add	edx, 1
	mov	rcx, qword ptr [rax]
	mov	edi, dword ptr [rcx]
	add	edi, 1
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rax]
	movsxd	rax, dword ptr [rax + 12]
	mov	r8d, dword ptr [rcx + 4*rax]
	lea	rax, [rip + L_.str]
	mov	dword ptr [rbp - 32], edi ## 4-byte Spill
	mov	rdi, rax
	mov	ecx, dword ptr [rbp - 32] ## 4-byte Reload
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_a                      ## @a
	.p2align	4
_a:
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.long	8                       ## 0x8

	.comm	_ptr,8,3                ## @ptr
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %d %d %d\n"

	.comm	_b,4,2                  ## @b

.subsections_via_symbols
