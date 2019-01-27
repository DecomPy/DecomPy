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
	sub	rsp, 80
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _str@GOTPCREL]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_gets
	lea	rdi, [rip + L_.str.1]
	mov	qword ptr [rbp - 16], rax ## 8-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _w@GOTPCREL]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_gets
	mov	rdi, qword ptr [rip + _i@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _wcount@GOTPCREL]
	mov	rsi, qword ptr [rip + _wlen@GOTPCREL]
	mov	r8, qword ptr [rip + _slen@GOTPCREL]
	mov	r9, qword ptr [rip + _str@GOTPCREL]
	mov	qword ptr [rbp - 32], rdi ## 8-byte Spill
	mov	rdi, r9
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	mov	qword ptr [rbp - 48], r8 ## 8-byte Spill
	mov	qword ptr [rbp - 56], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 64], rdx ## 8-byte Spill
	mov	qword ptr [rbp - 72], rsi ## 8-byte Spill
	call	_strlen
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 48] ## 8-byte Reload
	mov	dword ptr [rax], r10d
	mov	rdi, qword ptr [rip + _w@GOTPCREL]
	call	_strlen
	mov	r10d, eax
	mov	rax, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rax], r10d
	mov	rcx, qword ptr [rbp - 64] ## 8-byte Reload
	mov	dword ptr [rcx], 0
	mov	rdx, qword ptr [rbp - 56] ## 8-byte Reload
	mov	dword ptr [rdx], 0
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	dword ptr [rsi], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
	mov	rax, qword ptr [rip + _slen@GOTPCREL]
	mov	rcx, qword ptr [rip + _i@GOTPCREL]
	mov	edx, dword ptr [rcx]
	cmp	edx, dword ptr [rax]
	jge	LBB0_18
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _w@GOTPCREL]
	mov	rcx, qword ptr [rip + _str@GOTPCREL]
	mov	rdx, qword ptr [rip + _i@GOTPCREL]
	movsxd	rdx, dword ptr [rdx]
	movsx	esi, byte ptr [rcx + rdx]
	movsx	edi, byte ptr [rax]
	cmp	esi, edi
	jne	LBB0_16
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	dword ptr [rax], 0
LBB0_4:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rip + _wlen@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	edx, dword ptr [rcx]
	cmp	edx, dword ptr [rax]
	jge	LBB0_9
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=2
	mov	rax, qword ptr [rip + _w@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _str@GOTPCREL]
	mov	rsi, qword ptr [rip + _i@GOTPCREL]
	mov	edi, dword ptr [rsi]
	add	edi, dword ptr [rcx]
	movsxd	rsi, edi
	movsx	edi, byte ptr [rdx + rsi]
	movsxd	rcx, dword ptr [rcx]
	movsx	r8d, byte ptr [rax + rcx]
	cmp	edi, r8d
	je	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	call	_gotoNextWord
	jmp	LBB0_9
LBB0_7:                                 ##   in Loop: Header=BB0_4 Depth=2
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=2
	mov	rax, qword ptr [rip + _j@GOTPCREL]
	mov	ecx, dword ptr [rax]
	add	ecx, 1
	mov	dword ptr [rax], ecx
	jmp	LBB0_4
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _wlen@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	edx, dword ptr [rcx]
	cmp	edx, dword ptr [rax]
	jne	LBB0_15
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _str@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _i@GOTPCREL]
	mov	esi, dword ptr [rdx]
	add	esi, dword ptr [rcx]
	movsxd	rcx, esi
	movsx	edi, byte ptr [rax + rcx]
	call	_isspace
	cmp	eax, 0
	jne	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _str@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _i@GOTPCREL]
	mov	esi, dword ptr [rdx]
	add	esi, dword ptr [rcx]
	movsxd	rcx, esi
	movsx	edi, byte ptr [rax + rcx]
	call	_ispunct
	cmp	eax, 0
	jne	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _str@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _i@GOTPCREL]
	mov	esi, dword ptr [rdx]
	add	esi, dword ptr [rcx]
	movsxd	rcx, esi
	movsx	esi, byte ptr [rax + rcx]
	cmp	esi, 0
	jne	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _i@GOTPCREL]
	mov	rcx, qword ptr [rip + _j@GOTPCREL]
	mov	rdx, qword ptr [rip + _wcount@GOTPCREL]
	mov	esi, dword ptr [rdx]
	add	esi, 1
	mov	dword ptr [rdx], esi
	mov	esi, dword ptr [rcx]
	add	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	call	_gotoNextWord
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _i@GOTPCREL]
	mov	ecx, dword ptr [rax]
	add	ecx, 1
	mov	dword ptr [rax], ecx
	jmp	LBB0_1
LBB0_18:
	mov	rax, qword ptr [rip + _wcount@GOTPCREL]
	mov	esi, dword ptr [rax]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_gotoNextWord           ## -- Begin function gotoNextWord
	.p2align	4, 0x90
_gotoNextWord:                          ## @gotoNextWord
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	jmp	LBB1_1
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _str@GOTPCREL]
	mov	rcx, qword ptr [rip + _i@GOTPCREL]
	movsxd	rcx, dword ptr [rcx]
	movsx	edi, byte ptr [rax + rcx]
	call	_isspace
	xor	edi, edi
	mov	dl, dil
	cmp	eax, 0
	mov	byte ptr [rbp - 1], dl  ## 1-byte Spill
	jne	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _str@GOTPCREL]
	mov	rcx, qword ptr [rip + _i@GOTPCREL]
	movsxd	rcx, dword ptr [rcx]
	movsx	edi, byte ptr [rax + rcx]
	call	_ispunct
	xor	edi, edi
	mov	dl, dil
	cmp	eax, 0
	mov	byte ptr [rbp - 1], dl  ## 1-byte Spill
	jne	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _str@GOTPCREL]
	mov	rcx, qword ptr [rip + _i@GOTPCREL]
	movsxd	rcx, dword ptr [rcx]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 1], sil ## 1-byte Spill
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 1]  ## 1-byte Reload
	test	al, 1
	jne	LBB1_5
	jmp	LBB1_6
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _i@GOTPCREL]
	mov	ecx, dword ptr [rax]
	add	ecx, 1
	mov	dword ptr [rax], ecx
	jmp	LBB1_1
LBB1_6:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter string: "

	.comm	_str,200,4              ## @str
L_.str.1:                               ## @.str.1
	.asciz	"Enter word: "

	.comm	_w,20,4                 ## @w
	.comm	_slen,4,2               ## @slen
	.comm	_wlen,4,2               ## @wlen
	.comm	_wcount,4,2             ## @wcount
	.comm	_j,4,2                  ## @j
	.comm	_i,4,2                  ## @i
L_.str.2:                               ## @.str.2
	.asciz	"Word count: %d\n"


.subsections_via_symbols
