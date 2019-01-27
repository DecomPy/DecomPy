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
	mov	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_10 Depth 2
                                        ##       Child Loop BB0_12 Depth 3
                                        ##       Child Loop BB0_16 Depth 3
                                        ##       Child Loop BB0_20 Depth 3
	cmp	dword ptr [rbp - 8], 16
	jg	LBB0_29
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 8], 16
	jle	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 8], 32
	je	LBB0_7
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 8], 48
	je	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 8], 64
	je	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_28
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 8], 16
	jle	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_10:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_12 Depth 3
                                        ##       Child Loop BB0_16 Depth 3
                                        ##       Child Loop BB0_20 Depth 3
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_25
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=2
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_12:                                ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_10 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	eax, dword ptr [rbp - 16]
	add	eax, 8
	cmp	eax, dword ptr [rbp - 8]
	jg	LBB0_15
## %bb.13:                              ##   in Loop: Header=BB0_12 Depth=3
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
## %bb.14:                              ##   in Loop: Header=BB0_12 Depth=3
	mov	eax, dword ptr [rbp - 16]
	add	eax, 8
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_12
LBB0_15:                                ##   in Loop: Header=BB0_10 Depth=2
	jmp	LBB0_16
LBB0_16:                                ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_10 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_19
## %bb.17:                              ##   in Loop: Header=BB0_16 Depth=3
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
## %bb.18:                              ##   in Loop: Header=BB0_16 Depth=3
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_16
LBB0_19:                                ##   in Loop: Header=BB0_10 Depth=2
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_20:                                ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_10 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB0_23
## %bb.21:                              ##   in Loop: Header=BB0_20 Depth=3
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
## %bb.22:                              ##   in Loop: Header=BB0_20 Depth=3
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_20
LBB0_23:                                ##   in Loop: Header=BB0_10 Depth=2
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
## %bb.24:                              ##   in Loop: Header=BB0_10 Depth=2
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_10
LBB0_25:                                ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.10]
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 8], 16
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	jle	LBB0_27
## %bb.26:                              ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.11]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB0_27:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_28
LBB0_28:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_1
LBB0_29:
	lea	rdi, [rip + L_.str.12]
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
	.asciz	"#ifdef TFM_SMALL_SET\n/* computes x/R == x (mod N) via Montgomery Reduction */\nvoid fp_montgomery_reduce_small(fp_int *a, fp_int *m, fp_digit mp)\n{\n   fp_digit c[FP_SIZE], *_c, *tmpm, mu, cy;\n   int      oldused, x, y, pa;\n\n#if defined(USE_MEMSET)\n   /* now zero the buff */\n   memset(c, 0, sizeof c);\n#endif\n   pa = m->used;\n\n   /* copy the input */\n   oldused = a->used;\n   for (x = 0; x < oldused; x++) {\n       c[x] = a->dp[x];\n   }\n#if !defined(USE_MEMSET)\n   for (; x < 2*pa+3; x++) {\n       c[x] = 0;\n   }\n#endif\n   MONT_START;\n\n   switch (pa) {\n"

L_.str.1:                               ## @.str.1
	.asciz	"#ifdef TFM_HUGE\n"

L_.str.2:                               ## @.str.2
	.asciz	"      case %d:\n"

L_.str.3:                               ## @.str.3
	.asciz	"            x = %d; cy   = 0;\n            LOOP_START;\n            _c   = c + %d;\n            tmpm = m->dp;\n"

L_.str.4:                               ## @.str.4
	.asciz	"#ifdef INNERMUL8\n"

L_.str.5:                               ## @.str.5
	.asciz	"            INNERMUL8; _c += 8; tmpm += 8;\n"

L_.str.6:                               ## @.str.6
	.asciz	"            INNERMUL; ++_c;\n"

L_.str.7:                               ## @.str.7
	.asciz	"#else\n"

L_.str.8:                               ## @.str.8
	.asciz	"#endif\n"

L_.str.9:                               ## @.str.9
	.asciz	"            LOOP_END;\n            while (cy) {\n               PROPCARRY;\n               ++_c;\n            }\n"

L_.str.10:                              ## @.str.10
	.asciz	"         break;\n"

L_.str.11:                              ## @.str.11
	.asciz	"#endif /* TFM_HUGE */\n"

L_.str.12:                              ## @.str.12
	.asciz	"  }\n  /* now copy out */\n  _c   = c + pa;\n  tmpm = a->dp;\n  for (x = 0; x < pa+1; x++) {\n     *tmpm++ = *_c++;\n  }\n\n  for (; x < oldused; x++)   {\n     *tmpm++ = 0;\n  }\n\n  MONT_FINI;\n\n  a->used = pa+1;\n  fp_clamp(a);\n\n  /* if A >= m then A = A - m */\n  if (fp_cmp_mag (a, m) != FP_LT) {\n    s_fp_sub (a, m, a);\n  }\n}\n\n#endif\n"


.subsections_via_symbols
