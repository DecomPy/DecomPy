	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_match                  ## -- Begin function match
	.p2align	4, 0x90
_match:                                 ## @match
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	dword ptr [rbp - 28], 0
	mov	dword ptr [rbp - 32], 1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 24]
	movsxd	rsi, dword ptr [rbp - 28]
	movsx	eax, byte ptr [rdx + rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 33], cl ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	edx, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 28]
	movsx	esi, byte ptr [rax + rcx]
	cmp	edx, esi
	sete	dil
	mov	byte ptr [rbp - 33], dil ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 33] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_1
LBB0_5:
	mov	rax, qword ptr [rbp - 24]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	byte ptr [rax + rcx], 0
	je	LBB0_7
## %bb.6:
	mov	dword ptr [rbp - 32], 0
LBB0_7:
	mov	eax, dword ptr [rbp - 32]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_if_in_pattern          ## -- Begin function if_in_pattern
	.p2align	4, 0x90
_if_in_pattern:                         ## @if_in_pattern
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	byte ptr [rbp - 13], al
	mov	edx, dword ptr [rbp - 12]
	sub	edx, 1
	mov	dword ptr [rbp - 20], edx
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 20], 0
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
	jl	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	movsx	esi, byte ptr [rbp - 13]
	cmp	edx, esi
	setne	dil
	mov	byte ptr [rbp - 21], dil ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 21] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_5:
	mov	eax, dword ptr [rbp - 20]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sundaymatch            ## -- Begin function sundaymatch
	.p2align	4, 0x90
_sundaymatch:                           ## @sundaymatch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 24], ecx
	mov	dword ptr [rbp - 28], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, dword ptr [rbp - 24]
	add	ecx, 1
	cmp	eax, ecx
	jge	LBB2_11
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	mov	rdx, qword ptr [rbp - 16]
	call	_match
	cmp	eax, 0
	je	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB2_9
## %bb.5:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 28]
	add	ecx, dword ptr [rbp - 24]
	movsxd	rdx, ecx
	mov	sil, byte ptr [rax + rdx]
	mov	byte ptr [rbp - 33], sil
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rbp - 33]
	call	_if_in_pattern
	mov	dword ptr [rbp - 32], eax
	cmp	dword ptr [rbp - 32], 0
	jl	LBB2_7
## %bb.6:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	sub	eax, dword ptr [rbp - 32]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	jmp	LBB2_8
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_10
LBB2_9:
	jmp	LBB2_11
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
LBB2_11:
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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rsi, [rip + L_.str.1]
	mov	qword ptr [rbp - 24], rsi
	lea	rsi, [rip + L_.str.2]
	mov	qword ptr [rbp - 32], rsi
	mov	rdi, qword ptr [rbp - 24]
	call	_strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 36], ecx
	mov	rdi, qword ptr [rbp - 32]
	call	_strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 40], ecx
	mov	rdi, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	edx, dword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 36]
	call	_sundaymatch
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"ababababca"

L_.str.2:                               ## @.str.2
	.asciz	"bacabaabababaababababcabcaababababcabbababababababababcabab"


.subsections_via_symbols
