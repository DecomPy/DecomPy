	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_crc32                  ## -- Begin function crc32
	.p2align	4, 0x90
_crc32:                                 ## @crc32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], edx
	cmp	qword ptr [rbp - 24], 0
	jne	LBB0_2
## %bb.1:
	mov	qword ptr [rbp - 8], 0
	jmp	LBB0_11
LBB0_2:
	mov	eax, 4294967295
	mov	ecx, eax
	xor	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rcx
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 8
	jb	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 24], rdx
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	lea	rdx, [rip + _crc_table]
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdi, qword ptr [rbp - 16]
	shr	rdi, 8
	xor	rax, rdi
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdi, rax
	add	rdi, 1
	mov	qword ptr [rbp - 24], rdi
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdx, qword ptr [rbp - 16]
	shr	rdx, 8
	xor	rax, rdx
	mov	qword ptr [rbp - 16], rax
	mov	ecx, dword ptr [rbp - 28]
	sub	ecx, 8
	mov	dword ptr [rbp - 28], ecx
	jmp	LBB0_3
LBB0_5:
	cmp	dword ptr [rbp - 28], 0
	je	LBB0_10
## %bb.6:
	jmp	LBB0_7
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 24]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 24], rdx
	movzx	esi, byte ptr [rax]
	xor	ecx, esi
	and	ecx, 255
	movsxd	rax, ecx
	lea	rdx, [rip + _crc_table]
	mov	rax, qword ptr [rdx + 8*rax]
	mov	rdx, qword ptr [rbp - 16]
	shr	rdx, 8
	xor	rax, rdx
	mov	qword ptr [rbp - 16], rax
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, -1
	mov	dword ptr [rbp - 28], eax
	cmp	eax, 0
	jne	LBB0_7
## %bb.9:
	jmp	LBB0_10
LBB0_10:
	mov	eax, 4294967295
	mov	ecx, eax
	xor	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rcx
LBB0_11:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_get_crc_table          ## -- Begin function get_crc_table
	.p2align	4, 0x90
_get_crc_table:                         ## @get_crc_table
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rax, [rip + _crc_table]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @crc_table
_crc_table:
	.quad	0                       ## 0x0
	.quad	1996959894              ## 0x77073096
	.quad	3993919788              ## 0xee0e612c
	.quad	2567524794              ## 0x990951ba
	.quad	124634137               ## 0x76dc419
	.quad	1886057615              ## 0x706af48f
	.quad	3915621685              ## 0xe963a535
	.quad	2657392035              ## 0x9e6495a3
	.quad	249268274               ## 0xedb8832
	.quad	2044508324              ## 0x79dcb8a4
	.quad	3772115230              ## 0xe0d5e91e
	.quad	2547177864              ## 0x97d2d988
	.quad	162941995               ## 0x9b64c2b
	.quad	2125561021              ## 0x7eb17cbd
	.quad	3887607047              ## 0xe7b82d07
	.quad	2428444049              ## 0x90bf1d91
	.quad	498536548               ## 0x1db71064
	.quad	1789927666              ## 0x6ab020f2
	.quad	4089016648              ## 0xf3b97148
	.quad	2227061214              ## 0x84be41de
	.quad	450548861               ## 0x1adad47d
	.quad	1843258603              ## 0x6ddde4eb
	.quad	4107580753              ## 0xf4d4b551
	.quad	2211677639              ## 0x83d385c7
	.quad	325883990               ## 0x136c9856
	.quad	1684777152              ## 0x646ba8c0
	.quad	4251122042              ## 0xfd62f97a
	.quad	2321926636              ## 0x8a65c9ec
	.quad	335633487               ## 0x14015c4f
	.quad	1661365465              ## 0x63066cd9
	.quad	4195302755              ## 0xfa0f3d63
	.quad	2366115317              ## 0x8d080df5
	.quad	997073096               ## 0x3b6e20c8
	.quad	1281953886              ## 0x4c69105e
	.quad	3579855332              ## 0xd56041e4
	.quad	2724688242              ## 0xa2677172
	.quad	1006888145              ## 0x3c03e4d1
	.quad	1258607687              ## 0x4b04d447
	.quad	3524101629              ## 0xd20d85fd
	.quad	2768942443              ## 0xa50ab56b
	.quad	901097722               ## 0x35b5a8fa
	.quad	1119000684              ## 0x42b2986c
	.quad	3686517206              ## 0xdbbbc9d6
	.quad	2898065728              ## 0xacbcf940
	.quad	853044451               ## 0x32d86ce3
	.quad	1172266101              ## 0x45df5c75
	.quad	3705015759              ## 0xdcd60dcf
	.quad	2882616665              ## 0xabd13d59
	.quad	651767980               ## 0x26d930ac
	.quad	1373503546              ## 0x51de003a
	.quad	3369554304              ## 0xc8d75180
	.quad	3218104598              ## 0xbfd06116
	.quad	565507253               ## 0x21b4f4b5
	.quad	1454621731              ## 0x56b3c423
	.quad	3485111705              ## 0xcfba9599
	.quad	3099436303              ## 0xb8bda50f
	.quad	671266974               ## 0x2802b89e
	.quad	1594198024              ## 0x5f058808
	.quad	3322730930              ## 0xc60cd9b2
	.quad	2970347812              ## 0xb10be924
	.quad	795835527               ## 0x2f6f7c87
	.quad	1483230225              ## 0x58684c11
	.quad	3244367275              ## 0xc1611dab
	.quad	3060149565              ## 0xb6662d3d
	.quad	1994146192              ## 0x76dc4190
	.quad	31158534                ## 0x1db7106
	.quad	2563907772              ## 0x98d220bc
	.quad	4023717930              ## 0xefd5102a
	.quad	1907459465              ## 0x71b18589
	.quad	112637215               ## 0x6b6b51f
	.quad	2680153253              ## 0x9fbfe4a5
	.quad	3904427059              ## 0xe8b8d433
	.quad	2013776290              ## 0x7807c9a2
	.quad	251722036               ## 0xf00f934
	.quad	2517215374              ## 0x9609a88e
	.quad	3775830040              ## 0xe10e9818
	.quad	2137656763              ## 0x7f6a0dbb
	.quad	141376813               ## 0x86d3d2d
	.quad	2439277719              ## 0x91646c97
	.quad	3865271297              ## 0xe6635c01
	.quad	1802195444              ## 0x6b6b51f4
	.quad	476864866               ## 0x1c6c6162
	.quad	2238001368              ## 0x856530d8
	.quad	4066508878              ## 0xf262004e
	.quad	1812370925              ## 0x6c0695ed
	.quad	453092731               ## 0x1b01a57b
	.quad	2181625025              ## 0x8208f4c1
	.quad	4111451223              ## 0xf50fc457
	.quad	1706088902              ## 0x65b0d9c6
	.quad	314042704               ## 0x12b7e950
	.quad	2344532202              ## 0x8bbeb8ea
	.quad	4240017532              ## 0xfcb9887c
	.quad	1658658271              ## 0x62dd1ddf
	.quad	366619977               ## 0x15da2d49
	.quad	2362670323              ## 0x8cd37cf3
	.quad	4224994405              ## 0xfbd44c65
	.quad	1303535960              ## 0x4db26158
	.quad	984961486               ## 0x3ab551ce
	.quad	2747007092              ## 0xa3bc0074
	.quad	3569037538              ## 0xd4bb30e2
	.quad	1256170817              ## 0x4adfa541
	.quad	1037604311              ## 0x3dd895d7
	.quad	2765210733              ## 0xa4d1c46d
	.quad	3554079995              ## 0xd3d6f4fb
	.quad	1131014506              ## 0x4369e96a
	.quad	879679996               ## 0x346ed9fc
	.quad	2909243462              ## 0xad678846
	.quad	3663771856              ## 0xda60b8d0
	.quad	1141124467              ## 0x44042d73
	.quad	855842277               ## 0x33031de5
	.quad	2852801631              ## 0xaa0a4c5f
	.quad	3708648649              ## 0xdd0d7cc9
	.quad	1342533948              ## 0x5005713c
	.quad	654459306               ## 0x270241aa
	.quad	3188396048              ## 0xbe0b1010
	.quad	3373015174              ## 0xc90c2086
	.quad	1466479909              ## 0x5768b525
	.quad	544179635               ## 0x206f85b3
	.quad	3110523913              ## 0xb966d409
	.quad	3462522015              ## 0xce61e49f
	.quad	1591671054              ## 0x5edef90e
	.quad	702138776               ## 0x29d9c998
	.quad	2966460450              ## 0xb0d09822
	.quad	3352799412              ## 0xc7d7a8b4
	.quad	1504918807              ## 0x59b33d17
	.quad	783551873               ## 0x2eb40d81
	.quad	3082640443              ## 0xb7bd5c3b
	.quad	3233442989              ## 0xc0ba6cad
	.quad	3988292384              ## 0xedb88320
	.quad	2596254646              ## 0x9abfb3b6
	.quad	62317068                ## 0x3b6e20c
	.quad	1957810842              ## 0x74b1d29a
	.quad	3939845945              ## 0xead54739
	.quad	2647816111              ## 0x9dd277af
	.quad	81470997                ## 0x4db2615
	.quad	1943803523              ## 0x73dc1683
	.quad	3814918930              ## 0xe3630b12
	.quad	2489596804              ## 0x94643b84
	.quad	225274430               ## 0xd6d6a3e
	.quad	2053790376              ## 0x7a6a5aa8
	.quad	3826175755              ## 0xe40ecf0b
	.quad	2466906013              ## 0x9309ff9d
	.quad	167816743               ## 0xa00ae27
	.quad	2097651377              ## 0x7d079eb1
	.quad	4027552580              ## 0xf00f9344
	.quad	2265490386              ## 0x8708a3d2
	.quad	503444072               ## 0x1e01f268
	.quad	1762050814              ## 0x6906c2fe
	.quad	4150417245              ## 0xf762575d
	.quad	2154129355              ## 0x806567cb
	.quad	426522225               ## 0x196c3671
	.quad	1852507879              ## 0x6e6b06e7
	.quad	4275313526              ## 0xfed41b76
	.quad	2312317920              ## 0x89d32be0
	.quad	282753626               ## 0x10da7a5a
	.quad	1742555852              ## 0x67dd4acc
	.quad	4189708143              ## 0xf9b9df6f
	.quad	2394877945              ## 0x8ebeeff9
	.quad	397917763               ## 0x17b7be43
	.quad	1622183637              ## 0x60b08ed5
	.quad	3604390888              ## 0xd6d6a3e8
	.quad	2714866558              ## 0xa1d1937e
	.quad	953729732               ## 0x38d8c2c4
	.quad	1340076626              ## 0x4fdff252
	.quad	3518719985              ## 0xd1bb67f1
	.quad	2797360999              ## 0xa6bc5767
	.quad	1068828381              ## 0x3fb506dd
	.quad	1219638859              ## 0x48b2364b
	.quad	3624741850              ## 0xd80d2bda
	.quad	2936675148              ## 0xaf0a1b4c
	.quad	906185462               ## 0x36034af6
	.quad	1090812512              ## 0x41047a60
	.quad	3747672003              ## 0xdf60efc3
	.quad	2825379669              ## 0xa867df55
	.quad	829329135               ## 0x316e8eef
	.quad	1181335161              ## 0x4669be79
	.quad	3412177804              ## 0xcb61b38c
	.quad	3160834842              ## 0xbc66831a
	.quad	628085408               ## 0x256fd2a0
	.quad	1382605366              ## 0x5268e236
	.quad	3423369109              ## 0xcc0c7795
	.quad	3138078467              ## 0xbb0b4703
	.quad	570562233               ## 0x220216b9
	.quad	1426400815              ## 0x5505262f
	.quad	3317316542              ## 0xc5ba3bbe
	.quad	2998733608              ## 0xb2bd0b28
	.quad	733239954               ## 0x2bb45a92
	.quad	1555261956              ## 0x5cb36a04
	.quad	3268935591              ## 0xc2d7ffa7
	.quad	3050360625              ## 0xb5d0cf31
	.quad	752459403               ## 0x2cd99e8b
	.quad	1541320221              ## 0x5bdeae1d
	.quad	2607071920              ## 0x9b64c2b0
	.quad	3965973030              ## 0xec63f226
	.quad	1969922972              ## 0x756aa39c
	.quad	40735498                ## 0x26d930a
	.quad	2617837225              ## 0x9c0906a9
	.quad	3943577151              ## 0xeb0e363f
	.quad	1913087877              ## 0x72076785
	.quad	83908371                ## 0x5005713
	.quad	2512341634              ## 0x95bf4a82
	.quad	3803740692              ## 0xe2b87a14
	.quad	2075208622              ## 0x7bb12bae
	.quad	213261112               ## 0xcb61b38
	.quad	2463272603              ## 0x92d28e9b
	.quad	3855990285              ## 0xe5d5be0d
	.quad	2094854071              ## 0x7cdcefb7
	.quad	198958881               ## 0xbdbdf21
	.quad	2262029012              ## 0x86d3d2d4
	.quad	4057260610              ## 0xf1d4e242
	.quad	1759359992              ## 0x68ddb3f8
	.quad	534414190               ## 0x1fda836e
	.quad	2176718541              ## 0x81be16cd
	.quad	4139329115              ## 0xf6b9265b
	.quad	1873836001              ## 0x6fb077e1
	.quad	414664567               ## 0x18b74777
	.quad	2282248934              ## 0x88085ae6
	.quad	4279200368              ## 0xff0f6a70
	.quad	1711684554              ## 0x66063bca
	.quad	285281116               ## 0x11010b5c
	.quad	2405801727              ## 0x8f659eff
	.quad	4167216745              ## 0xf862ae69
	.quad	1634467795              ## 0x616bffd3
	.quad	376229701               ## 0x166ccf45
	.quad	2685067896              ## 0xa00ae278
	.quad	3608007406              ## 0xd70dd2ee
	.quad	1308918612              ## 0x4e048354
	.quad	956543938               ## 0x3903b3c2
	.quad	2808555105              ## 0xa7672661
	.quad	3495958263              ## 0xd06016f7
	.quad	1231636301              ## 0x4969474d
	.quad	1047427035              ## 0x3e6e77db
	.quad	2932959818              ## 0xaed16a4a
	.quad	3654703836              ## 0xd9d65adc
	.quad	1088359270              ## 0x40df0b66
	.quad	936918000               ## 0x37d83bf0
	.quad	2847714899              ## 0xa9bcae53
	.quad	3736837829              ## 0xdebb9ec5
	.quad	1202900863              ## 0x47b2cf7f
	.quad	817233897               ## 0x30b5ffe9
	.quad	3183342108              ## 0xbdbdf21c
	.quad	3401237130              ## 0xcabac28a
	.quad	1404277552              ## 0x53b39330
	.quad	615818150               ## 0x24b4a3a6
	.quad	3134207493              ## 0xbad03605
	.quad	3453421203              ## 0xcdd70693
	.quad	1423857449              ## 0x54de5729
	.quad	601450431               ## 0x23d967bf
	.quad	3009837614              ## 0xb3667a2e
	.quad	3294710456              ## 0xc4614ab8
	.quad	1567103746              ## 0x5d681b02
	.quad	711928724               ## 0x2a6f2b94
	.quad	3020668471              ## 0xb40bbe37
	.quad	3272380065              ## 0xc30c8ea1
	.quad	1510334235              ## 0x5a05df1b
	.quad	755167117               ## 0x2d02ef8d


.subsections_via_symbols
