; ModuleID = 'Repositories/libretro-RetroArch/Unfiltered/RetroArch-master_deps_libz_libz-crc32.c'
source_filename = "Repositories/libretro-RetroArch/Unfiltered/RetroArch-master_deps_libz_libz-crc32.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@crc_table = internal constant [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16

; Function Attrs: nounwind ssp uwtable
define i64 @crc32(i64, i8*, i32) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8, !tbaa !3
  store i8* %1, i8** %6, align 8, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !9
  %8 = load i8*, i8** %6, align 8, !tbaa !7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  store i64 0, i64* %4, align 8
  br label %159

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %5, align 8, !tbaa !3
  %13 = xor i64 %12, 4294967295
  store i64 %13, i64* %5, align 8, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %17, %11
  %15 = load i32, i32* %7, align 4, !tbaa !9
  %16 = icmp uge i32 %15, 8
  br i1 %16, label %17, label %132

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %5, align 8, !tbaa !3
  %19 = trunc i64 %18 to i32
  %20 = load i8*, i8** %6, align 8, !tbaa !7
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8, !tbaa !7
  %22 = load i8, i8* %20, align 1, !tbaa !11
  %23 = zext i8 %22 to i32
  %24 = xor i32 %19, %23
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !3
  %29 = load i64, i64* %5, align 8, !tbaa !3
  %30 = lshr i64 %29, 8
  %31 = xor i64 %28, %30
  store i64 %31, i64* %5, align 8, !tbaa !3
  %32 = load i64, i64* %5, align 8, !tbaa !3
  %33 = trunc i64 %32 to i32
  %34 = load i8*, i8** %6, align 8, !tbaa !7
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8, !tbaa !7
  %36 = load i8, i8* %34, align 1, !tbaa !11
  %37 = zext i8 %36 to i32
  %38 = xor i32 %33, %37
  %39 = and i32 %38, 255
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %40
  %42 = load i64, i64* %41, align 8, !tbaa !3
  %43 = load i64, i64* %5, align 8, !tbaa !3
  %44 = lshr i64 %43, 8
  %45 = xor i64 %42, %44
  store i64 %45, i64* %5, align 8, !tbaa !3
  %46 = load i64, i64* %5, align 8, !tbaa !3
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %6, align 8, !tbaa !7
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8, !tbaa !7
  %50 = load i8, i8* %48, align 1, !tbaa !11
  %51 = zext i8 %50 to i32
  %52 = xor i32 %47, %51
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8, !tbaa !3
  %57 = load i64, i64* %5, align 8, !tbaa !3
  %58 = lshr i64 %57, 8
  %59 = xor i64 %56, %58
  store i64 %59, i64* %5, align 8, !tbaa !3
  %60 = load i64, i64* %5, align 8, !tbaa !3
  %61 = trunc i64 %60 to i32
  %62 = load i8*, i8** %6, align 8, !tbaa !7
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8, !tbaa !7
  %64 = load i8, i8* %62, align 1, !tbaa !11
  %65 = zext i8 %64 to i32
  %66 = xor i32 %61, %65
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8, !tbaa !3
  %71 = load i64, i64* %5, align 8, !tbaa !3
  %72 = lshr i64 %71, 8
  %73 = xor i64 %70, %72
  store i64 %73, i64* %5, align 8, !tbaa !3
  %74 = load i64, i64* %5, align 8, !tbaa !3
  %75 = trunc i64 %74 to i32
  %76 = load i8*, i8** %6, align 8, !tbaa !7
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8, !tbaa !7
  %78 = load i8, i8* %76, align 1, !tbaa !11
  %79 = zext i8 %78 to i32
  %80 = xor i32 %75, %79
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %82
  %84 = load i64, i64* %83, align 8, !tbaa !3
  %85 = load i64, i64* %5, align 8, !tbaa !3
  %86 = lshr i64 %85, 8
  %87 = xor i64 %84, %86
  store i64 %87, i64* %5, align 8, !tbaa !3
  %88 = load i64, i64* %5, align 8, !tbaa !3
  %89 = trunc i64 %88 to i32
  %90 = load i8*, i8** %6, align 8, !tbaa !7
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8, !tbaa !7
  %92 = load i8, i8* %90, align 1, !tbaa !11
  %93 = zext i8 %92 to i32
  %94 = xor i32 %89, %93
  %95 = and i32 %94, 255
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8, !tbaa !3
  %99 = load i64, i64* %5, align 8, !tbaa !3
  %100 = lshr i64 %99, 8
  %101 = xor i64 %98, %100
  store i64 %101, i64* %5, align 8, !tbaa !3
  %102 = load i64, i64* %5, align 8, !tbaa !3
  %103 = trunc i64 %102 to i32
  %104 = load i8*, i8** %6, align 8, !tbaa !7
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8, !tbaa !7
  %106 = load i8, i8* %104, align 1, !tbaa !11
  %107 = zext i8 %106 to i32
  %108 = xor i32 %103, %107
  %109 = and i32 %108, 255
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %110
  %112 = load i64, i64* %111, align 8, !tbaa !3
  %113 = load i64, i64* %5, align 8, !tbaa !3
  %114 = lshr i64 %113, 8
  %115 = xor i64 %112, %114
  store i64 %115, i64* %5, align 8, !tbaa !3
  %116 = load i64, i64* %5, align 8, !tbaa !3
  %117 = trunc i64 %116 to i32
  %118 = load i8*, i8** %6, align 8, !tbaa !7
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8, !tbaa !7
  %120 = load i8, i8* %118, align 1, !tbaa !11
  %121 = zext i8 %120 to i32
  %122 = xor i32 %117, %121
  %123 = and i32 %122, 255
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8, !tbaa !3
  %127 = load i64, i64* %5, align 8, !tbaa !3
  %128 = lshr i64 %127, 8
  %129 = xor i64 %126, %128
  store i64 %129, i64* %5, align 8, !tbaa !3
  %130 = load i32, i32* %7, align 4, !tbaa !9
  %131 = sub i32 %130, 8
  store i32 %131, i32* %7, align 4, !tbaa !9
  br label %14

; <label>:132:                                    ; preds = %14
  %133 = load i32, i32* %7, align 4, !tbaa !9
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

; <label>:135:                                    ; preds = %132
  br label %136

; <label>:136:                                    ; preds = %151, %135
  %137 = load i64, i64* %5, align 8, !tbaa !3
  %138 = trunc i64 %137 to i32
  %139 = load i8*, i8** %6, align 8, !tbaa !7
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8, !tbaa !7
  %141 = load i8, i8* %139, align 1, !tbaa !11
  %142 = zext i8 %141 to i32
  %143 = xor i32 %138, %142
  %144 = and i32 %143, 255
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8, !tbaa !3
  %148 = load i64, i64* %5, align 8, !tbaa !3
  %149 = lshr i64 %148, 8
  %150 = xor i64 %147, %149
  store i64 %150, i64* %5, align 8, !tbaa !3
  br label %151

; <label>:151:                                    ; preds = %136
  %152 = load i32, i32* %7, align 4, !tbaa !9
  %153 = add i32 %152, -1
  store i32 %153, i32* %7, align 4, !tbaa !9
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %136, label %155

; <label>:155:                                    ; preds = %151
  br label %156

; <label>:156:                                    ; preds = %155, %132
  %157 = load i64, i64* %5, align 8, !tbaa !3
  %158 = xor i64 %157, 4294967295
  store i64 %158, i64* %4, align 8
  br label %159

; <label>:159:                                    ; preds = %156, %10
  %160 = load i64, i64* %4, align 8
  ret i64 %160
}

; Function Attrs: nounwind ssp uwtable
define i32* @get_crc_table() #0 {
  ret i32* bitcast ([256 x i64]* @crc_table to i32*)
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!5, !5, i64 0}
