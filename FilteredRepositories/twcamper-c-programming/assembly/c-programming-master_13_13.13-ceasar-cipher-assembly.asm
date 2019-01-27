	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_encrypt                ## -- Begin function encrypt
	.p2align	4, 0x90
_encrypt:                               ## @encrypt
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	_islower
	cmp	eax, 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 97
	add	ecx, dword ptr [rbp - 12]
	mov	eax, ecx
	cdq
	mov	ecx, 26
	idiv	ecx
	add	edx, 97
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], sil
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	_isupper
	cmp	eax, 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 65
	add	ecx, dword ptr [rbp - 12]
	mov	eax, ecx
	cdq
	mov	ecx, 26
	idiv	ecx
	add	edx, 65
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], sil
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_1
LBB0_8:
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
	sub	rsp, 144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 100], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 108], 0
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 108], 80
	mov	byte ptr [rbp - 117], cl ## 1-byte Spill
	jge	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 101], cl
	movsx	eax, cl
	cmp	eax, 10
	setne	cl
	mov	byte ptr [rbp - 117], cl ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 117] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_6
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 101]
	movsxd	rcx, dword ptr [rbp - 108]
	mov	byte ptr [rbp + rcx - 96], al
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 108]
	add	eax, 1
	mov	dword ptr [rbp - 108], eax
	jmp	LBB1_1
LBB1_6:
	movsxd	rax, dword ptr [rbp - 108]
	mov	byte ptr [rbp + rax - 96], 0
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rbp - 112]
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 96]
	mov	esi, dword ptr [rbp - 112]
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	call	_encrypt
	lea	rsi, [rbp - 96]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, rdi
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	jne	LBB1_8
## %bb.7:
	xor	eax, eax
	add	rsp, 144
	pop	rbp
	ret
LBB1_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter message to be encrypted: "

L_.str.1:                               ## @.str.1
	.asciz	"Enter shift amount (1-25): "

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"Encrypted message: %s\n"


.subsections_via_symbols
