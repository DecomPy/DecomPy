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
	push	rbx
	sub	rsp, 56
	.cfi_offset rbx, -24
	mov	rax, qword ptr [rip + _M@GOTPCREL]
	mov	rcx, qword ptr [rip + _line@GOTPCREL]
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], edi
	movsx	edi, byte ptr [rip + _E]
	movsxd	rdx, edi
	add	rcx, rdx
	mov	qword ptr [rax], rcx
	lea	rdi, [rip + L_.str]
	lea	rsi, [rbp - 16]
	mov	al, 0
	call	_scanf
	mov	rcx, qword ptr [rip + _line@GOTPCREL]
	mov	rdx, qword ptr [rip + _A@GOTPCREL]
	mov	r8b, al
	mov	byte ptr [rdx], r8b
	mov	byte ptr [rcx], r8b
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	al, byte ptr [rip + _E]
	add	al, -1
	mov	byte ptr [rip + _E], al
	cmp	al, 0
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rip + _line@GOTPCREL]
	mov	rcx, qword ptr [rip + _M@GOTPCREL]
	mov	dl, byte ptr [rip + _E]
	mov	rcx, qword ptr [rcx]
	movsx	rsi, byte ptr [rip + _E]
	mov	byte ptr [rcx + rsi], dl
	movsx	rcx, byte ptr [rip + _E]
	mov	byte ptr [rax + rcx], dl
	jmp	LBB0_1
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rip + _A@GOTPCREL]
	mov	rcx, qword ptr [rip + _Z@GOTPCREL]
	cmp	byte ptr [rcx], 0
	setne	dl
	xor	dl, -1
	and	dl, 1
	movzx	esi, dl
	mov	dl, sil
	mov	byte ptr [rcx], dl
	movsx	esi, dl
	movsx	edi, byte ptr [rax]
	sub	edi, esi
	mov	dl, dil
	mov	byte ptr [rax], dl
	movsx	esi, dl
	cmp	esi, 0
	mov	dl, 1
	mov	byte ptr [rbp - 21], dl ## 1-byte Spill
	jne	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _A@GOTPCREL]
	mov	byte ptr [rdi], 39
	mov	ecx, dword ptr [rbp - 16]
	mov	edx, ecx
	add	edx, -1
	mov	dword ptr [rbp - 16], edx
	cmp	ecx, 0
	setne	sil
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	byte ptr [rbp - 21], sil ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=1
	mov	al, byte ptr [rbp - 21] ## 1-byte Reload
	test	al, 1
	jne	LBB0_8
	jmp	LBB0_17
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rip + _line@GOTPCREL]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rip + _Z@GOTPCREL]
	mov	rdi, qword ptr [rip + _A@GOTPCREL]
	mov	r8b, byte ptr [rsi]
	movsx	ecx, byte ptr [rdi]
	mov	r9b, byte ptr [rdi]
	movsx	r10d, byte ptr [rsi]
	movsxd	rsi, r10d
	sub	rdx, rsi
	add	rax, rdx
	movsx	rdx, r9b
	mov	r9b, byte ptr [rax + rdx]
	mov	byte ptr [rip + _E], r9b
	movsx	r10d, r9b
	sub	ecx, r10d
	cmp	ecx, 0
	mov	byte ptr [rbp - 29], r8b ## 1-byte Spill
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rip + _A@GOTPCREL]
	mov	rcx, qword ptr [rip + _M@GOTPCREL]
	cmp	dword ptr [rbp - 16], 0
	setne	dl
	xor	dl, -1
	and	dl, 1
	movzx	esi, dl
	movsx	edi, byte ptr [rax]
	mov	rcx, qword ptr [rcx]
	movsx	rax, byte ptr [rax]
	movsx	r8d, byte ptr [rcx + rax]
	cmp	edi, r8d
	sete	dl
	and	dl, 1
	movzx	edi, dl
	and	esi, edi
	mov	dword ptr [rbp - 36], esi ## 4-byte Spill
	call	_rand
	mov	esi, 715827882
	cmp	esi, eax
	setl	dl
	and	dl, 1
	movzx	eax, dl
	mov	esi, dword ptr [rbp - 36] ## 4-byte Reload
	or	esi, eax
	cmp	esi, 0
	jne	LBB0_11
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rip + _Z@GOTPCREL]
	cmp	dword ptr [rbp - 16], 0
	setne	cl
	xor	cl, -1
	and	cl, 1
	movzx	edx, cl
	cmp	byte ptr [rax], 0
	setne	cl
	xor	cl, -1
	and	cl, 1
	movzx	esi, cl
	and	edx, esi
	cmp	edx, 0
	je	LBB0_12
LBB0_11:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rip + _line@GOTPCREL]
	mov	rcx, qword ptr [rip + _A@GOTPCREL]
	mov	rdx, qword ptr [rip + _M@GOTPCREL]
	mov	rsi, qword ptr [rip + _Z@GOTPCREL]
	mov	dil, byte ptr [rip + _E]
	mov	r8, qword ptr [rdx]
	movsx	r9, byte ptr [rcx]
	mov	r10b, byte ptr [r8 + r9]
	mov	r8, qword ptr [rdx]
	movsx	r9, byte ptr [rip + _E]
	mov	byte ptr [r8 + r9], r10b
	movsx	r8, r10b
	mov	byte ptr [rax + r8], dil
	mov	dil, byte ptr [rcx]
	movsx	r11d, byte ptr [rcx]
	movsx	ebx, byte ptr [rsi]
	sub	r11d, ebx
	mov	r10b, r11b
	mov	rdx, qword ptr [rdx]
	movsx	rcx, byte ptr [rcx]
	mov	byte ptr [rdx + rcx], r10b
	movsx	rcx, r10b
	mov	byte ptr [rax + rcx], dil
	lea	rax, [rip + L_.str.3]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	jmp	LBB0_13
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=1
	lea	rax, [rip + L_.str.4]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rcx, qword ptr [rip + _T@GOTPCREL]
	mov	rdx, qword ptr [rip + _Z@GOTPCREL]
	mov	sil, byte ptr [rbp - 29] ## 1-byte Reload
	movsx	rdi, sil
	mov	r8b, byte ptr [rax + rdi]
	movsx	rax, byte ptr [rdx]
	mov	byte ptr [rcx + rax], r8b
## %bb.14:                              ##   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rip + _Z@GOTPCREL]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	dl, 1
	mov	byte ptr [rbp - 49], dl ## 1-byte Spill
	jne	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_5 Depth=1
	mov	rdi, qword ptr [rip + _T@GOTPCREL]
	mov	al, 0
	call	_printf
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 49], cl ## 1-byte Spill
LBB0_16:                                ##   in Loop: Header=BB0_5 Depth=1
	mov	al, byte ptr [rbp - 49] ## 1-byte Reload
	mov	byte ptr [rbp - 50], al ## 1-byte Spill
	jmp	LBB0_5
LBB0_17:
	xor	eax, eax
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_E                      ## @E
_E:
	.byte	40                      ## 0x28

	.comm	_line,80,4              ## @line
	.comm	_M,8,3                  ## @M
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

	.comm	_A,1,0                  ## @A
L_.str.1:                               ## @.str.1
	.asciz	"._"

	.comm	_Z,1,0                  ## @Z
L_.str.2:                               ## @.str.2
	.asciz	"\n|"

L_.str.3:                               ## @.str.3
	.asciz	"_."

L_.str.4:                               ## @.str.4
	.asciz	" |"

	.comm	_T,3,0                  ## @T

.subsections_via_symbols
