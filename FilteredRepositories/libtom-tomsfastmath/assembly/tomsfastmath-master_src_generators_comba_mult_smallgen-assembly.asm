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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], 1
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_7 Depth 3
                                        ##         Child Loop BB0_9 Depth 4
	cmp	dword ptr [rbp - 20], 16
	jg	LBB0_20
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 20]
	mov	r8d, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_7 Depth 3
                                        ##         Child Loop BB0_9 Depth 4
	mov	eax, dword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB0_18
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	dword ptr [rbp - 28], 0
LBB0_7:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB0_9 Depth 4
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_16
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=3
	mov	dword ptr [rbp - 32], 0
LBB0_9:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ##       Parent Loop BB0_7 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 20]
	jge	LBB0_14
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=4
	mov	eax, dword ptr [rbp - 28]
	add	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 24]
	jne	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=4
	mov	esi, dword ptr [rbp - 28]
	mov	eax, dword ptr [rbp - 32]
	add	eax, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.4]
	mov	edx, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=4
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_9 Depth=4
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB0_9
LBB0_14:                                ##   in Loop: Header=BB0_7 Depth=3
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_7 Depth=3
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_7
LBB0_16:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
## %bb.17:                              ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_3
LBB0_18:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.6]
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
## %bb.19:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_20:
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"#define TFM_DEFINES\n#include \"fp_mul_comba.c\"\n\n#if defined(TFM_SMALL_SET)\nvoid fp_mul_comba_small(fp_int *A, fp_int *B, fp_int *C)\n{\n   fp_digit c0, c1, c2, at[32];\n   switch (MAX(A->used, B->used)) { \n"

L_.str.1:                               ## @.str.1
	.asciz	"\n   case %d:\n      memcpy(at, A->dp, %d * sizeof(fp_digit));\n      memcpy(at+%d, B->dp, %d * sizeof(fp_digit));\n      COMBA_START;\n\n      COMBA_CLEAR;\n"

L_.str.2:                               ## @.str.2
	.asciz	"      /* %d */\n"

L_.str.3:                               ## @.str.3
	.asciz	"      COMBA_FORWARD;\n"

L_.str.4:                               ## @.str.4
	.asciz	"      MULADD(at[%d], at[%d]); "

L_.str.5:                               ## @.str.5
	.asciz	"\n      COMBA_STORE(C->dp[%d]);\n"

L_.str.6:                               ## @.str.6
	.asciz	"      COMBA_STORE2(C->dp[%d]);\n      C->used = %d;\n      C->sign = A->sign ^ B->sign;\n      fp_clamp(C);\n      COMBA_FINI;\n      break;\n"

L_.str.7:                               ## @.str.7
	.asciz	"   }\n}\n\n#endif\n\n\n/* $Source$ */\n/* $Revision$ */\n/* $Date$ */\n"


.subsections_via_symbols
