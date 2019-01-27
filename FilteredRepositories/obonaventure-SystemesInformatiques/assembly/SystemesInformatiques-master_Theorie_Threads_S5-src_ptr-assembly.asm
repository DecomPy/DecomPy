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
	push	r15
	push	r14
	push	rbx
	sub	rsp, 184
	.cfi_offset rbx, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	mov	dword ptr [rbp - 44], 1252
	mov	dword ptr [rbp - 48], 1
	lea	rsi, [rbp - 44]
	mov	qword ptr [rbp - 56], rsi
	lea	rax, [rbp - 56]
	mov	qword ptr [rbp - 64], rax
	mov	edi, dword ptr [rbp - 44]
	mov	ecx, dword ptr [rbp - 48]
	mov	r9, qword ptr [rbp - 56]
	mov	rax, qword ptr [rbp - 56]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 64]
	mov	r8, qword ptr [rbp - 64]
	mov	r8, qword ptr [r8]
	mov	r10, qword ptr [rbp - 64]
	mov	r10, qword ptr [r10]
	mov	r11d, dword ptr [r10]
	lea	r10, [rip + L_.str]
	mov	dword ptr [rbp - 68], edi ## 4-byte Spill
	mov	rdi, r10
	mov	ebx, dword ptr [rbp - 68] ## 4-byte Reload
	mov	qword ptr [rbp - 80], rsi ## 8-byte Spill
	mov	esi, ebx
	mov	r10, qword ptr [rbp - 80] ## 8-byte Reload
	mov	dword ptr [rbp - 84], edx ## 4-byte Spill
	mov	rdx, r10
	lea	r14, [rbp - 48]
	mov	qword ptr [rbp - 96], r8 ## 8-byte Spill
	mov	r8, r14
	mov	r15d, dword ptr [rbp - 84] ## 4-byte Reload
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 96] ## 8-byte Reload
	mov	qword ptr [rsp + 16], rax
	mov	dword ptr [rsp + 24], r11d
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 44]
	add	ecx, 1
	mov	dword ptr [rbp - 44], ecx
	mov	esi, dword ptr [rbp - 44]
	mov	ecx, dword ptr [rbp - 48]
	mov	r9, qword ptr [rbp - 56]
	mov	rdx, qword ptr [rbp - 56]
	mov	r11d, dword ptr [rdx]
	mov	rdx, qword ptr [rbp - 64]
	mov	rdi, qword ptr [rbp - 64]
	mov	rdi, qword ptr [rdi]
	mov	r8, qword ptr [rbp - 64]
	mov	r8, qword ptr [r8]
	mov	ebx, dword ptr [r8]
	lea	r8, [rip + L_.str]
	mov	qword ptr [rbp - 104], rdi ## 8-byte Spill
	mov	rdi, r8
	lea	r8, [rbp - 44]
	mov	qword ptr [rbp - 112], rdx ## 8-byte Spill
	mov	rdx, r8
	lea	r8, [rbp - 48]
	mov	dword ptr [rsp], r11d
	mov	r10, qword ptr [rbp - 112] ## 8-byte Reload
	mov	qword ptr [rsp + 8], r10
	mov	r10, qword ptr [rbp - 104] ## 8-byte Reload
	mov	qword ptr [rsp + 16], r10
	mov	dword ptr [rsp + 24], ebx
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rbp - 56]
	mov	ecx, dword ptr [rdx]
	add	ecx, 1
	mov	rdx, qword ptr [rbp - 56]
	mov	dword ptr [rdx], ecx
	mov	esi, dword ptr [rbp - 44]
	mov	ecx, dword ptr [rbp - 48]
	mov	r9, qword ptr [rbp - 56]
	mov	rdx, qword ptr [rbp - 56]
	mov	r11d, dword ptr [rdx]
	mov	rdx, qword ptr [rbp - 64]
	mov	rdi, qword ptr [rbp - 64]
	mov	rdi, qword ptr [rdi]
	mov	r8, qword ptr [rbp - 64]
	mov	r8, qword ptr [r8]
	mov	ebx, dword ptr [r8]
	lea	r8, [rip + L_.str]
	mov	qword ptr [rbp - 128], rdi ## 8-byte Spill
	mov	rdi, r8
	lea	r8, [rbp - 44]
	mov	qword ptr [rbp - 136], rdx ## 8-byte Spill
	mov	rdx, r8
	lea	r8, [rbp - 48]
	mov	dword ptr [rsp], r11d
	mov	r10, qword ptr [rbp - 136] ## 8-byte Reload
	mov	qword ptr [rsp + 8], r10
	mov	r10, qword ptr [rbp - 128] ## 8-byte Reload
	mov	qword ptr [rsp + 16], r10
	mov	dword ptr [rsp + 24], ebx
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdx, qword ptr [rbp - 64]
	lea	rdi, [rbp - 48]
	mov	qword ptr [rdx], rdi
	mov	esi, dword ptr [rbp - 44]
	mov	ecx, dword ptr [rbp - 48]
	mov	r9, qword ptr [rbp - 56]
	mov	rdx, qword ptr [rbp - 56]
	mov	r11d, dword ptr [rdx]
	mov	rdx, qword ptr [rbp - 64]
	mov	r8, qword ptr [rbp - 64]
	mov	r8, qword ptr [r8]
	mov	r10, qword ptr [rbp - 64]
	mov	r10, qword ptr [r10]
	mov	ebx, dword ptr [r10]
	lea	r10, [rip + L_.str]
	mov	qword ptr [rbp - 152], rdi ## 8-byte Spill
	mov	rdi, r10
	lea	r10, [rbp - 44]
	mov	qword ptr [rbp - 160], rdx ## 8-byte Spill
	mov	rdx, r10
	mov	r10, qword ptr [rbp - 152] ## 8-byte Reload
	mov	qword ptr [rbp - 168], r8 ## 8-byte Spill
	mov	r8, r10
	mov	dword ptr [rsp], r11d
	mov	r14, qword ptr [rbp - 160] ## 8-byte Reload
	mov	qword ptr [rsp + 8], r14
	mov	r14, qword ptr [rbp - 168] ## 8-byte Reload
	mov	qword ptr [rsp + 16], r14
	mov	dword ptr [rsp + 24], ebx
	mov	dword ptr [rbp - 172], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 176], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 184
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"a=%d [%p], b=%d [%p], p=%p, *p=%d, pp=%p, *pp=%p, **pp=%d\n"


.subsections_via_symbols
