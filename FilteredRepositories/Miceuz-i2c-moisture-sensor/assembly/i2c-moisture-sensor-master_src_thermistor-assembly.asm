	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_thermistorLsbToTemperature ## -- Begin function thermistorLsbToTemperature
	.p2align	4, 0x90
_thermistorLsbToTemperature:            ## @thermistorLsbToTemperature
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 12]
	cmp	edi, dword ptr [rip + _thermistorPoints+172]
	jb	LBB0_2
## %bb.1:
	movsxd	rax, dword ptr [rip + _thermistorPoints+168]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_5
LBB0_2:
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rip + _thermistorPoints+4]
	ja	LBB0_4
## %bb.3:
	movsxd	rax, dword ptr [rip + _thermistorPoints]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB0_5
LBB0_4:
	mov	edi, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], edi ## 4-byte Spill
	mov	edi, eax
	call	_searchLsb
	mov	edi, dword ptr [rbp - 16] ## 4-byte Reload
	movzx	esi, al
	call	_interpolateTemperature
	movsxd	rcx, eax
	mov	qword ptr [rbp - 8], rcx
LBB0_5:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function interpolateTemperature
_interpolateTemperature:                ## @interpolateTemperature
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	edi, dword ptr [rbp - 4]
	movzx	esi, byte ptr [rbp - 5]
	sub	esi, 1
	movsxd	rcx, esi
	lea	rdx, [rip + _thermistorPoints]
	mov	esi, dword ptr [rdx + 8*rcx]
	movzx	r8d, byte ptr [rbp - 5]
	mov	ecx, r8d
	mov	r8d, dword ptr [rdx + 8*rcx]
	movzx	r9d, byte ptr [rbp - 5]
	sub	r9d, 1
	movsxd	rcx, r9d
	mov	ecx, dword ptr [rdx + 8*rcx + 4]
	movzx	r9d, byte ptr [rbp - 5]
	mov	r10d, r9d
	mov	r9d, dword ptr [rdx + 8*r10 + 4]
	mov	edx, r8d
	mov	r8d, r9d
	call	_interpolate
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function searchLsb
_searchLsb:                             ## @searchLsb
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	byte ptr [rbp - 9], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 22
	jge	LBB2_6
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movzx	eax, byte ptr [rbp - 9]
	mov	ecx, eax
	lea	rdx, [rip + _thermistorPoints]
	mov	eax, dword ptr [rdx + 8*rcx + 4]
	cmp	eax, dword ptr [rbp - 8]
	jle	LBB2_4
## %bb.3:
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 1], al
	jmp	LBB2_7
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	al, byte ptr [rbp - 9]
	add	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	LBB2_1
LBB2_6:
	mov	byte ptr [rbp - 1], 21
LBB2_7:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function interpolate
_interpolate:                           ## @interpolate
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], ecx
	mov	dword ptr [rbp - 20], r8d
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 4]
	sub	edx, dword ptr [rbp - 16]
	imul	ecx, edx
	mov	edx, dword ptr [rbp - 20]
	sub	edx, dword ptr [rbp - 16]
	mov	eax, ecx
	mov	dword ptr [rbp - 24], edx ## 4-byte Spill
	cdq
	mov	ecx, dword ptr [rbp - 24] ## 4-byte Reload
	idiv	ecx
	add	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	4               ## @thermistorPoints
_thermistorPoints:
	.long	850                     ## 0x352
	.long	129                     ## 0x81
	.long	800                     ## 0x320
	.long	146                     ## 0x92
	.long	750                     ## 0x2ee
	.long	165                     ## 0xa5
	.long	700                     ## 0x2bc
	.long	186                     ## 0xba
	.long	650                     ## 0x28a
	.long	210                     ## 0xd2
	.long	600                     ## 0x258
	.long	236                     ## 0xec
	.long	550                     ## 0x226
	.long	267                     ## 0x10b
	.long	500                     ## 0x1f4
	.long	300                     ## 0x12c
	.long	450                     ## 0x1c2
	.long	337                     ## 0x151
	.long	400                     ## 0x190
	.long	376                     ## 0x178
	.long	350                     ## 0x15e
	.long	419                     ## 0x1a3
	.long	300                     ## 0x12c
	.long	464                     ## 0x1d0
	.long	200                     ## 0xc8
	.long	559                     ## 0x22f
	.long	250                     ## 0xfa
	.long	511                     ## 0x1ff
	.long	150                     ## 0x96
	.long	608                     ## 0x260
	.long	100                     ## 0x64
	.long	656                     ## 0x290
	.long	50                      ## 0x32
	.long	703                     ## 0x2bf
	.long	0                       ## 0x0
	.long	748                     ## 0x2ec
	.long	4294967246              ## 0xffffffce
	.long	789                     ## 0x315
	.long	4294967196              ## 0xffffff9c
	.long	828                     ## 0x33c
	.long	4294967146              ## 0xffffff6a
	.long	862                     ## 0x35e
	.long	4294967096              ## 0xffffff38
	.long	892                     ## 0x37c


.subsections_via_symbols
