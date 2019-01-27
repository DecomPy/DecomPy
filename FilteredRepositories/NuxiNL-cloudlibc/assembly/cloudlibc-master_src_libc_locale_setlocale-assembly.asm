	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_setlocale              ## -- Begin function setlocale
	.p2align	4, 0x90
_setlocale:                             ## @setlocale
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	qword ptr [rbp - 16], 0
	mov	al, 1
	mov	byte ptr [rbp - 17], al ## 1-byte Spill
	je	LBB0_4
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	dl, 1
	mov	byte ptr [rbp - 17], dl ## 1-byte Spill
	je	LBB0_4
## %bb.2:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str]
	call	_strcmp
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
	je	LBB0_4
## %bb.3:
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + L_.str.1]
	call	_strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 17], cl ## 1-byte Spill
LBB0_4:
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	xor	ecx, ecx
	mov	edx, ecx
	test	al, 1
	lea	rsi, [rip + L_.str]
	cmovne	rdx, rsi
	mov	rax, rdx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"C"

L_.str.1:                               ## @.str.1
	.asciz	"POSIX"


.subsections_via_symbols
