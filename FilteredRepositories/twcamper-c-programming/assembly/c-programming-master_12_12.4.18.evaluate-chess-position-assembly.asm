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
	sub	rsp, 256
	lea	rax, [rbp - 80]
	mov	ecx, 64
	mov	edx, ecx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 212], 0
	mov	rsi, rax
	mov	rdi, rsi
	lea	rsi, [rip + l_main.new]
	mov	qword ptr [rbp - 224], rdx ## 8-byte Spill
	mov	qword ptr [rbp - 232], rax ## 8-byte Spill
	call	_memcpy
	lea	rax, [rbp - 144]
	mov	rdi, rax
	lea	rsi, [rip + l_main.advantage_black]
	mov	rdx, qword ptr [rbp - 224] ## 8-byte Reload
	call	_memcpy
	lea	rax, [rbp - 208]
	mov	rdi, rax
	lea	rsi, [rip + l_main.advantage_white]
	mov	rdx, qword ptr [rbp - 224] ## 8-byte Reload
	call	_memcpy
	mov	rdi, qword ptr [rbp - 232] ## 8-byte Reload
	call	_evaluate_position
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 144]
	mov	dword ptr [rbp - 236], eax ## 4-byte Spill
	call	_evaluate_position
	mov	dword ptr [rbp - 216], eax
	cmp	dword ptr [rbp - 216], 0
	setl	r8b
	and	r8b, 1
	movzx	esi, r8b
	mov	edx, dword ptr [rbp - 216]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 208]
	mov	dword ptr [rbp - 240], eax ## 4-byte Spill
	call	_evaluate_position
	mov	dword ptr [rbp - 216], eax
	cmp	dword ptr [rbp - 216], 0
	setg	r8b
	and	r8b, 1
	movzx	esi, r8b
	mov	edx, dword ptr [rbp - 216]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r9, qword ptr [rbp - 8]
	cmp	rdi, r9
	mov	dword ptr [rbp - 244], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 256
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_evaluate_position      ## -- Begin function evaluate_position
	.p2align	4, 0x90
_evaluate_position:                     ## @evaluate_position
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 12], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 56
	add	rcx, 7
	cmp	rax, rcx
	ja	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	movsx	edi, byte ptr [rax]
	call	_black_value
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
	mov	rcx, qword ptr [rbp - 24]
	movsx	edi, byte ptr [rcx]
	call	_white_value
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB1_1
LBB1_4:
	mov	eax, dword ptr [rbp - 16]
	sub	eax, dword ptr [rbp - 12]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_black_value            ## -- Begin function black_value
	.p2align	4, 0x90
_black_value:                           ## @black_value
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	add	edi, -98
	mov	ecx, edi
	sub	edi, 16
	mov	qword ptr [rbp - 16], rcx ## 8-byte Spill
	mov	dword ptr [rbp - 20], edi ## 4-byte Spill
	ja	LBB2_5
## %bb.7:
	lea	rax, [rip + LJTI2_0]
	mov	rcx, qword ptr [rbp - 16] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB2_1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB2_6
LBB2_2:
	mov	dword ptr [rbp - 4], 5
	jmp	LBB2_6
LBB2_3:
	mov	dword ptr [rbp - 4], 3
	jmp	LBB2_6
LBB2_4:
	mov	dword ptr [rbp - 4], 9
	jmp	LBB2_6
LBB2_5:
	mov	dword ptr [rbp - 4], 0
LBB2_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L2_0_set_3, LBB2_3-LJTI2_0
.set L2_0_set_5, LBB2_5-LJTI2_0
.set L2_0_set_1, LBB2_1-LJTI2_0
.set L2_0_set_4, LBB2_4-LJTI2_0
.set L2_0_set_2, LBB2_2-LJTI2_0
LJTI2_0:
	.long	L2_0_set_3
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_1
	.long	L2_0_set_4
	.long	L2_0_set_2
	.end_data_region
                                        ## -- End function
	.globl	_white_value            ## -- Begin function white_value
	.p2align	4, 0x90
_white_value:                           ## @white_value
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	add	edi, -66
	mov	ecx, edi
	sub	edi, 16
	mov	qword ptr [rbp - 16], rcx ## 8-byte Spill
	mov	dword ptr [rbp - 20], edi ## 4-byte Spill
	ja	LBB3_5
## %bb.7:
	lea	rax, [rip + LJTI3_0]
	mov	rcx, qword ptr [rbp - 16] ## 8-byte Reload
	movsxd	rdx, dword ptr [rax + 4*rcx]
	add	rdx, rax
	jmp	rdx
LBB3_1:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB3_6
LBB3_2:
	mov	dword ptr [rbp - 4], 5
	jmp	LBB3_6
LBB3_3:
	mov	dword ptr [rbp - 4], 3
	jmp	LBB3_6
LBB3_4:
	mov	dword ptr [rbp - 4], 9
	jmp	LBB3_6
LBB3_5:
	mov	dword ptr [rbp - 4], 0
LBB3_6:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L3_0_set_3, LBB3_3-LJTI3_0
.set L3_0_set_5, LBB3_5-LJTI3_0
.set L3_0_set_1, LBB3_1-LJTI3_0
.set L3_0_set_4, LBB3_4-LJTI3_0
.set L3_0_set_2, LBB3_2-LJTI3_0
LJTI3_0:
	.long	L3_0_set_3
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_5
	.long	L3_0_set_1
	.long	L3_0_set_4
	.long	L3_0_set_2
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.new
l_main.new:
	.ascii	"rkbqkbkr"
	.space	8,112
	.space	8,32
	.space	8,32
	.space	8,32
	.space	8,32
	.space	8,80
	.ascii	"RKBQKBKR"

	.p2align	4               ## @main.advantage_black
l_main.advantage_black:
	.ascii	"rk qkbkr"
	.ascii	"p p ppp "
	.ascii	"b     B "
	.ascii	" p      "
	.ascii	"  PpP   "
	.ascii	"      p "
	.ascii	"PP P PP "
	.ascii	"RK  KBK "

	.p2align	4               ## @main.advantage_white
l_main.advantage_white:
	.ascii	" k qk k "
	.ascii	"p p ppB "
	.ascii	"P R  P  "
	.ascii	"       p"
	.ascii	"  P  K  "
	.space	8,32
	.ascii	" P PP PP"
	.ascii	" K QKB R"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"New game: %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"Advantage black? %d : %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"Advantage white? %d : %d\n"


.subsections_via_symbols
