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
	sub	rsp, 320
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 276], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rcx, [rbp - 272]
	mov	rdx, qword ptr [rdi]
	mov	rdi, rcx
	mov	esi, 255
	mov	dword ptr [rbp - 296], eax ## 4-byte Spill
	call	_fgets
	mov	dword ptr [rbp - 280], 0
	mov	qword ptr [rbp - 304], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmp	dword ptr [rbp - 280], 3
	jge	LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 284], 0
	mov	dword ptr [rbp - 292], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 284]
	movsx	eax, byte ptr [rbp + rdx - 272]
	cmp	eax, 10
	mov	byte ptr [rbp - 305], cl ## 1-byte Spill
	je	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	cmp	dword ptr [rbp - 292], 10
	setl	al
	mov	byte ptr [rbp - 305], al ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	al, byte ptr [rbp - 305] ## 1-byte Reload
	test	al, 1
	jne	LBB0_6
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	movsxd	rax, dword ptr [rbp - 284]
	movsx	edi, byte ptr [rbp + rax - 272]
	call	_isdigit
	cmp	eax, 0
	je	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=2
	movsxd	rax, dword ptr [rbp - 284]
	movsx	ecx, byte ptr [rbp + rax - 272]
	sub	ecx, 48
	mov	dword ptr [rbp - 288], ecx
	movsxd	rax, dword ptr [rbp - 288]
	imul	rax, rax, 9
	lea	rdx, [rip + _digit_tables]
	add	rdx, rax
	movsxd	rax, dword ptr [rbp - 280]
	imul	rax, rax, 3
	add	rdx, rax
	lea	rdi, [rip + L_.str.1]
	mov	esi, 3
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 292]
	add	ecx, 1
	mov	dword ptr [rbp - 292], ecx
	mov	dword ptr [rbp - 312], eax ## 4-byte Spill
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 284]
	add	eax, 1
	mov	dword ptr [rbp - 284], eax
	jmp	LBB0_3
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 316], eax ## 4-byte Spill
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 280]
	add	eax, 1
	mov	dword ptr [rbp - 280], eax
	jmp	LBB0_1
LBB0_12:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_14
## %bb.13:
	xor	eax, eax
	add	rsp, 320
	pop	rbp
	ret
LBB0_14:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_digit_tables           ## @digit_tables
	.p2align	4
_digit_tables:
	.ascii	" _ "
	.ascii	"| |"
	.ascii	"|_|"
	.space	3,32
	.ascii	"  |"
	.ascii	"  |"
	.ascii	" _ "
	.ascii	" _|"
	.ascii	"|_ "
	.ascii	" _ "
	.ascii	" _|"
	.ascii	" _|"
	.space	3,32
	.ascii	"|_|"
	.ascii	"  |"
	.ascii	" _ "
	.ascii	"|_ "
	.ascii	" _|"
	.ascii	" _ "
	.ascii	"|_ "
	.ascii	"|_|"
	.ascii	" _ "
	.ascii	"  |"
	.ascii	"  |"
	.ascii	" _ "
	.ascii	"|_|"
	.ascii	"|_|"
	.ascii	" _ "
	.ascii	"|_|"
	.ascii	" _|"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a number up to 10 digits: "

L_.str.1:                               ## @.str.1
	.asciz	" %.*s"

L_.str.2:                               ## @.str.2
	.asciz	"\n"


.subsections_via_symbols
