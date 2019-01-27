	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fred                   ## -- Begin function fred
	.p2align	4, 0x90
_fred:                                  ## @fred
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_joe                    ## -- Begin function joe
	.p2align	4, 0x90
_joe:                                   ## @joe
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	ecx, 1
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
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
	mov	dword ptr [rbp - 4], 0
	call	_fred
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 5], dl  ## 1-byte Spill
	je	LBB2_2
## %bb.1:
	call	_joe
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 5], cl  ## 1-byte Spill
LBB2_2:
	mov	al, byte ptr [rbp - 5]  ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_fred
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
	jne	LBB2_4
## %bb.3:
	call	_joe
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 13], cl ## 1-byte Spill
LBB2_4:
	mov	al, byte ptr [rbp - 13] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_joe
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
	je	LBB2_6
## %bb.5:
	call	_fred
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 21], cl ## 1-byte Spill
LBB2_6:
	mov	al, byte ptr [rbp - 21] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_joe
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
	jne	LBB2_8
## %bb.7:
	call	_fred
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 29], cl ## 1-byte Spill
LBB2_8:
	mov	al, byte ptr [rbp - 29] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_fred
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 37], cl ## 1-byte Spill
	je	LBB2_10
## %bb.9:
	call	_joe
	add	eax, 1
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 37], cl ## 1-byte Spill
LBB2_10:
	mov	al, byte ptr [rbp - 37] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_fred
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 45], cl ## 1-byte Spill
	jne	LBB2_12
## %bb.11:
	call	_joe
	add	eax, 0
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 45], cl ## 1-byte Spill
LBB2_12:
	mov	al, byte ptr [rbp - 45] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	call	_joe
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 53], cl ## 1-byte Spill
	je	LBB2_14
## %bb.13:
	call	_fred
	add	eax, 0
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 53], cl ## 1-byte Spill
LBB2_14:
	mov	al, byte ptr [rbp - 53] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	call	_joe
	cmp	eax, 0
	mov	cl, 1
	mov	byte ptr [rbp - 61], cl ## 1-byte Spill
	jne	LBB2_16
## %bb.15:
	call	_fred
	add	eax, 1
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 61], cl ## 1-byte Spill
LBB2_16:
	mov	al, byte ptr [rbp - 61] ## 1-byte Reload
	and	al, 1
	movzx	esi, al
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"fred\n"

L_.str.1:                               ## @.str.1
	.asciz	"joe\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d\n"


.subsections_via_symbols
