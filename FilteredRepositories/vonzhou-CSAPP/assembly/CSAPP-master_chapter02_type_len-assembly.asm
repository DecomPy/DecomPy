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
	mov	eax, 1
	mov	esi, eax
	mov	eax, 2
	mov	edx, eax
	mov	eax, 4
	mov	ecx, eax
	mov	eax, 8
	mov	r8d, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 10
	lea	rdi, [rbp - 8]
	mov	qword ptr [rbp - 16], rdi
	lea	rdi, [rip + L_.str]
	mov	qword ptr [rbp - 24], rcx ## 8-byte Spill
	mov	r9, qword ptr [rbp - 24] ## 8-byte Reload
	mov	qword ptr [rsp], 8
	mov	qword ptr [rsp + 8], 8
	mov	al, 0
	call	_printf
	xor	r10d, r10d
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, r10d
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"char=%d, short=%d, int=%d, long=%d, float=%d, double=%d, pointer=%d\n"


.subsections_via_symbols
