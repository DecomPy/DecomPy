	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_DoTest                 ## -- Begin function DoTest
	.p2align	4, 0x90
_DoTest:                                ## @DoTest
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 256
	cmp	dword ptr [rip + _sa], 0
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
LBB0_3:
	cmp	dword ptr [rip + _sa], 0
	jne	LBB0_5
## %bb.4:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	jmp	LBB0_6
LBB0_5:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_6:
	mov	eax, dword ptr [rip + _sa]
	cmp	eax, dword ptr [rip + _sb]
	jne	LBB0_8
## %bb.7:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB0_9
LBB0_8:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
LBB0_9:
	mov	eax, dword ptr [rip + _sa]
	cmp	eax, dword ptr [rip + _sb]
	je	LBB0_11
## %bb.10:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_12
LBB0_11:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_12:
	mov	eax, dword ptr [rip + _sa]
	cmp	eax, dword ptr [rip + _sb]
	jle	LBB0_14
## %bb.13:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_15
LBB0_14:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_15:
	mov	eax, dword ptr [rip + _sa]
	cmp	eax, dword ptr [rip + _sb]
	jge	LBB0_17
## %bb.16:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_18
LBB0_17:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_18:
	mov	eax, dword ptr [rip + _sa]
	cmp	eax, dword ptr [rip + _sb]
	jl	LBB0_20
## %bb.19:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB0_21
LBB0_20:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
LBB0_21:
	mov	eax, dword ptr [rip + _sa]
	cmp	eax, dword ptr [rip + _sb]
	jg	LBB0_23
## %bb.22:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.9]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	jmp	LBB0_24
LBB0_23:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.9]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
LBB0_24:
	cmp	dword ptr [rip + _ua], 0
	je	LBB0_26
## %bb.25:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.10]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
	jmp	LBB0_27
LBB0_26:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.10]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
LBB0_27:
	cmp	dword ptr [rip + _ua], 0
	jne	LBB0_29
## %bb.28:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.11]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	jmp	LBB0_30
LBB0_29:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.11]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
LBB0_30:
	mov	eax, dword ptr [rip + _ua]
	cmp	eax, dword ptr [rip + _ub]
	jne	LBB0_32
## %bb.31:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.12]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	jmp	LBB0_33
LBB0_32:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.12]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
LBB0_33:
	mov	eax, dword ptr [rip + _ua]
	cmp	eax, dword ptr [rip + _ub]
	je	LBB0_35
## %bb.34:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.13]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	jmp	LBB0_36
LBB0_35:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.13]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
LBB0_36:
	mov	eax, dword ptr [rip + _ua]
	cmp	eax, dword ptr [rip + _ub]
	jbe	LBB0_38
## %bb.37:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.14]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	jmp	LBB0_39
LBB0_38:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.14]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
LBB0_39:
	mov	eax, dword ptr [rip + _ua]
	cmp	eax, dword ptr [rip + _ub]
	jae	LBB0_41
## %bb.40:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.15]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 108], eax ## 4-byte Spill
	jmp	LBB0_42
LBB0_41:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.15]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
LBB0_42:
	mov	eax, dword ptr [rip + _ua]
	cmp	eax, dword ptr [rip + _ub]
	jb	LBB0_44
## %bb.43:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.16]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	jmp	LBB0_45
LBB0_44:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.16]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 120], eax ## 4-byte Spill
LBB0_45:
	mov	eax, dword ptr [rip + _ua]
	cmp	eax, dword ptr [rip + _ub]
	ja	LBB0_47
## %bb.46:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.17]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 124], eax ## 4-byte Spill
	jmp	LBB0_48
LBB0_47:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.17]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
LBB0_48:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	xorps	xmm1, xmm1
	ucomiss	xmm0, xmm1
	jne	LBB0_49
	jp	LBB0_49
	jmp	LBB0_50
LBB0_49:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.18]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	jmp	LBB0_51
LBB0_50:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.18]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
LBB0_51:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	xorps	xmm1, xmm1
	ucomiss	xmm0, xmm1
	jne	LBB0_53
	jp	LBB0_53
## %bb.52:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.19]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	jmp	LBB0_54
LBB0_53:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.19]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
LBB0_54:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rip + _fb]
	jne	LBB0_56
	jp	LBB0_56
## %bb.55:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.20]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	jmp	LBB0_57
LBB0_56:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.20]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
LBB0_57:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rip + _fb]
	jne	LBB0_58
	jp	LBB0_58
	jmp	LBB0_59
LBB0_58:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.21]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 156], eax ## 4-byte Spill
	jmp	LBB0_60
LBB0_59:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.21]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 160], eax ## 4-byte Spill
LBB0_60:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rip + _fb]
	jbe	LBB0_62
## %bb.61:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.22]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 164], eax ## 4-byte Spill
	jmp	LBB0_63
LBB0_62:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.22]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 168], eax ## 4-byte Spill
LBB0_63:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + _fb] ## xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm1, xmm0
	jbe	LBB0_65
## %bb.64:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.23]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 172], eax ## 4-byte Spill
	jmp	LBB0_66
LBB0_65:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.23]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 176], eax ## 4-byte Spill
LBB0_66:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rip + _fb]
	jb	LBB0_68
## %bb.67:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.24]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 180], eax ## 4-byte Spill
	jmp	LBB0_69
LBB0_68:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.24]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 184], eax ## 4-byte Spill
LBB0_69:
	movss	xmm0, dword ptr [rip + _fa] ## xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + _fb] ## xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm1, xmm0
	jb	LBB0_71
## %bb.70:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.25]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 188], eax ## 4-byte Spill
	jmp	LBB0_72
LBB0_71:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.25]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 192], eax ## 4-byte Spill
LBB0_72:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	LBB0_73
	jp	LBB0_73
	jmp	LBB0_74
LBB0_73:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.26]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 196], eax ## 4-byte Spill
	jmp	LBB0_75
LBB0_74:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.26]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 200], eax ## 4-byte Spill
LBB0_75:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	LBB0_77
	jp	LBB0_77
## %bb.76:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.27]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 204], eax ## 4-byte Spill
	jmp	LBB0_78
LBB0_77:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.27]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 208], eax ## 4-byte Spill
LBB0_78:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rip + _db]
	jne	LBB0_80
	jp	LBB0_80
## %bb.79:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.28]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 212], eax ## 4-byte Spill
	jmp	LBB0_81
LBB0_80:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.28]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 216], eax ## 4-byte Spill
LBB0_81:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rip + _db]
	jne	LBB0_82
	jp	LBB0_82
	jmp	LBB0_83
LBB0_82:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.29]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 220], eax ## 4-byte Spill
	jmp	LBB0_84
LBB0_83:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.29]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 224], eax ## 4-byte Spill
LBB0_84:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rip + _db]
	jbe	LBB0_86
## %bb.85:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.30]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 228], eax ## 4-byte Spill
	jmp	LBB0_87
LBB0_86:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.30]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 232], eax ## 4-byte Spill
LBB0_87:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + _db] ## xmm1 = mem[0],zero
	ucomisd	xmm1, xmm0
	jbe	LBB0_89
## %bb.88:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.31]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 236], eax ## 4-byte Spill
	jmp	LBB0_90
LBB0_89:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.31]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 240], eax ## 4-byte Spill
LBB0_90:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rip + _db]
	jb	LBB0_92
## %bb.91:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.32]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 244], eax ## 4-byte Spill
	jmp	LBB0_93
LBB0_92:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.32]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 248], eax ## 4-byte Spill
LBB0_93:
	movsd	xmm0, qword ptr [rip + _da] ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + _db] ## xmm1 = mem[0],zero
	ucomisd	xmm1, xmm0
	jb	LBB0_95
## %bb.94:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 1
	lea	rdi, [rip + L_.str]
	lea	rsi, [rip + L_.str.33]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 252], eax ## 4-byte Spill
	jmp	LBB0_96
LBB0_95:
	mov	rax, qword ptr [rip + _result@GOTPCREL]
	mov	dword ptr [rax], 0
	lea	rdi, [rip + L_.str.2]
	lea	rsi, [rip + L_.str.33]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 256], eax ## 4-byte Spill
LBB0_96:
	add	rsp, 256
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	call	_DoTest
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_sa                     ## @sa
	.p2align	2
_sa:
	.long	1                       ## 0x1

	.globl	_sb                     ## @sb
	.p2align	2
_sb:
	.long	2                       ## 0x2

	.globl	_sc                     ## @sc
	.p2align	2
_sc:
	.long	3                       ## 0x3

	.globl	_ua                     ## @ua
	.p2align	2
_ua:
	.long	1                       ## 0x1

	.globl	_ub                     ## @ub
	.p2align	2
_ub:
	.long	2                       ## 0x2

	.globl	_uc                     ## @uc
	.p2align	2
_uc:
	.long	3                       ## 0x3

	.globl	_fa                     ## @fa
	.p2align	2
_fa:
	.long	1073741824              ## float 2

	.globl	_fb                     ## @fb
	.p2align	2
_fb:
	.long	1073741824              ## float 2

	.globl	_fc                     ## @fc
	.p2align	2
_fc:
	.long	1077936128              ## float 3

	.globl	_da                     ## @da
	.p2align	3
_da:
	.quad	4611686018427387904     ## double 2

	.globl	_db                     ## @db
	.p2align	3
_db:
	.quad	4611686018427387904     ## double 2

	.globl	_dc                     ## @dc
	.p2align	3
_dc:
	.quad	4613937818241073152     ## double 3

	.comm	_result,4,2             ## @result
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s is true.\n"

L_.str.1:                               ## @.str.1
	.asciz	"sa"

L_.str.2:                               ## @.str.2
	.asciz	"%s is false.\n"

L_.str.3:                               ## @.str.3
	.asciz	"!sa"

L_.str.4:                               ## @.str.4
	.asciz	"sa == sb"

L_.str.5:                               ## @.str.5
	.asciz	"sa != sb"

L_.str.6:                               ## @.str.6
	.asciz	"sa > sb"

L_.str.7:                               ## @.str.7
	.asciz	"sa < sb"

L_.str.8:                               ## @.str.8
	.asciz	"sa >= sb"

L_.str.9:                               ## @.str.9
	.asciz	"sa <= sb"

L_.str.10:                              ## @.str.10
	.asciz	"ua"

L_.str.11:                              ## @.str.11
	.asciz	"!ua"

L_.str.12:                              ## @.str.12
	.asciz	"ua == ub"

L_.str.13:                              ## @.str.13
	.asciz	"ua != ub"

L_.str.14:                              ## @.str.14
	.asciz	"ua > ub"

L_.str.15:                              ## @.str.15
	.asciz	"ua < ub"

L_.str.16:                              ## @.str.16
	.asciz	"ua >= ub"

L_.str.17:                              ## @.str.17
	.asciz	"ua <= ub"

L_.str.18:                              ## @.str.18
	.asciz	"fa"

L_.str.19:                              ## @.str.19
	.asciz	"!fa"

L_.str.20:                              ## @.str.20
	.asciz	"fa == fb"

L_.str.21:                              ## @.str.21
	.asciz	"fa != fb"

L_.str.22:                              ## @.str.22
	.asciz	"fa > fb"

L_.str.23:                              ## @.str.23
	.asciz	"fa < fb"

L_.str.24:                              ## @.str.24
	.asciz	"fa >= fb"

L_.str.25:                              ## @.str.25
	.asciz	"fa <= fb"

L_.str.26:                              ## @.str.26
	.asciz	"da"

L_.str.27:                              ## @.str.27
	.asciz	"!da"

L_.str.28:                              ## @.str.28
	.asciz	"da == db"

L_.str.29:                              ## @.str.29
	.asciz	"da != db"

L_.str.30:                              ## @.str.30
	.asciz	"da > db"

L_.str.31:                              ## @.str.31
	.asciz	"da < db"

L_.str.32:                              ## @.str.32
	.asciz	"da >= db"

L_.str.33:                              ## @.str.33
	.asciz	"da <= db"


.subsections_via_symbols
