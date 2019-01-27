	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_count1                 ## -- Begin function count1
	.p2align	4, 0x90
_count1:                                ## @count1
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rax + rcx]
	movsx	esi, byte ptr [rbp - 9]
	cmp	edx, esi
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_5:
	mov	eax, dword ptr [rbp - 20]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_count2                 ## -- Begin function count2
	.p2align	4, 0x90
_count2:                                ## @count2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 16], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	LBB1_5
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 9]
	cmp	ecx, edx
	jne	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	LBB1_1
LBB1_5:
	mov	eax, dword ptr [rbp - 16]
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
	sub	rsp, 80
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 8], rax
	lea	rax, [rip + L_.str.1]
	mov	qword ptr [rbp - 16], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, 97
	mov	qword ptr [rbp - 24], rsi ## 8-byte Spill
	mov	esi, ecx
	call	_count1
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 24] ## 8-byte Reload
	mov	edx, eax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 16]
	mov	ecx, 97
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
	mov	esi, ecx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_count1
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	edx, eax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, 97
	mov	qword ptr [rbp - 48], rsi ## 8-byte Spill
	mov	esi, ecx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	call	_count2
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 48] ## 8-byte Reload
	mov	edx, eax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 16]
	mov	ecx, 97
	mov	qword ptr [rbp - 64], rsi ## 8-byte Spill
	mov	esi, ecx
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	call	_count2
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	edx, eax
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"absbbbsba"

L_.str.1:                               ## @.str.1
	.asciz	"xbbsjjjqiz"

L_.str.2:                               ## @.str.2
	.asciz	"%s -> %d\n"


.subsections_via_symbols
