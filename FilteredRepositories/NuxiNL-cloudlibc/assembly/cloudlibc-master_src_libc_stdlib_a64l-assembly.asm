	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_a64l                   ## -- Begin function a64l
	.p2align	4, 0x90
_a64l:                                  ## @a64l
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
	mov	qword ptr [rbp - 24], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 6
	jae	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 46
	mov	sil, dl
	mov	byte ptr [rbp - 25], sil
	movzx	edx, byte ptr [rbp - 25]
	lea	rdi, [rip + _a64l.chars]
	mov	al, 0
	mov	dword ptr [rbp - 32], edx ## 4-byte Spill
	call	___arraycount
	mov	edx, dword ptr [rbp - 32] ## 4-byte Reload
	cmp	edx, eax
	jge	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movzx	eax, byte ptr [rbp - 25]
	mov	ecx, eax
	lea	rdx, [rip + _a64l.chars]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	jne	LBB0_5
LBB0_4:
	jmp	LBB0_7
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movzx	eax, byte ptr [rbp - 25]
	mov	ecx, eax
	lea	rdx, [rip + _a64l.chars]
	movsx	eax, byte ptr [rdx + rcx]
	sub	eax, 1
	imul	rcx, qword ptr [rbp - 24], 6
	mov	esi, ecx
	mov	ecx, esi
                                        ## kill: def $cl killed $ecx
	shl	eax, cl
	or	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB0_1
LBB0_7:
	movsxd	rax, dword ptr [rbp - 12]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @a64l.chars
_a64l.chars:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\000\000\000\000\000\000\000\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&\000\000\000\000\000\000'()*+,-./0123456789:;<=>?@"


.subsections_via_symbols
