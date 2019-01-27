	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap_chars             ## -- Begin function swap_chars
	.p2align	4, 0x90
_swap_chars:                            ## @swap_chars
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 17], al
	mov	rsi, qword ptr [rbp - 16]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi], al
	mov	al, byte ptr [rbp - 17]
	mov	rsi, qword ptr [rbp - 16]
	mov	byte ptr [rsi], al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	call	_strlen
	mov	esi, eax
	mov	dword ptr [rbp - 20], esi
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	esi, ecx
	jne	LBB1_2
## %bb.1:
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB1_7
LBB1_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 16]
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	_swap_chars
	mov	rdi, qword ptr [rbp - 8]
	mov	r8d, dword ptr [rbp - 12]
	add	r8d, 1
	mov	esi, r8d
	call	_f
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 16]
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	_swap_chars
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_3
LBB1_6:
	jmp	LBB1_7
LBB1_7:
	add	rsp, 32
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
	sub	rsp, 32
	xor	eax, eax
	lea	rcx, [rbp - 21]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, dword ptr [rip + L_main.s]
	mov	dword ptr [rbp - 21], edi
	mov	dl, byte ptr [rip + L_main.s+4]
	mov	byte ptr [rbp - 17], dl
	mov	rdi, rcx
	mov	esi, eax
	call	_f
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\n"

L_main.s:                               ## @main.s
	.asciz	"ABCD"


.subsections_via_symbols
