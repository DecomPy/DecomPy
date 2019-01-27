; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_wrdsp.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_wrdsp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_wrdsp.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ccond_o == (ccond_i & 0x0F)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"outflag_o == outflag_i\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"efi_o == efi_i\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"c_o == c_i\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"scount_o == scount_i\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"pos_o == pos_i\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %16 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4
  %18 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4
  %19 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4
  %20 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4
  %21 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #4
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #4
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4
  %25 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #4
  %26 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #4
  %27 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #4
  %28 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #4
  %29 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #4
  store i32 188, i32* %4, align 4, !tbaa !3
  store i32 27, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  store i32 1, i32* %7, align 4, !tbaa !3
  store i32 15, i32* %8, align 4, !tbaa !3
  store i32 12, i32* %9, align 4, !tbaa !3
  %30 = load i32, i32* %4, align 4, !tbaa !3
  %31 = shl i32 %30, 24
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = shl i32 %32, 16
  %34 = or i32 %31, %33
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = shl i32 %35, 14
  %37 = or i32 %34, %36
  %38 = load i32, i32* %7, align 4, !tbaa !3
  %39 = shl i32 %38, 13
  %40 = or i32 %37, %39
  %41 = load i32, i32* %8, align 4, !tbaa !3
  %42 = shl i32 %41, 7
  %43 = or i32 %40, %42
  %44 = load i32, i32* %9, align 4, !tbaa !3
  %45 = or i32 %43, %44
  store i32 %45, i32* %2, align 4, !tbaa !3
  %46 = load i32, i32* %2, align 4, !tbaa !3
  %47 = call i32 asm "wrdsp $1, 0x3F\0A\09rddsp $0, 0x3F\0A\09", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %46) #2, !srcloc !7
  store i32 %47, i32* %3, align 4, !tbaa !3
  %48 = load i32, i32* %3, align 4, !tbaa !3
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  store i32 %50, i32* %10, align 4, !tbaa !3
  %51 = load i32, i32* %3, align 4, !tbaa !3
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 255
  store i32 %53, i32* %11, align 4, !tbaa !3
  %54 = load i32, i32* %3, align 4, !tbaa !3
  %55 = ashr i32 %54, 14
  %56 = and i32 %55, 1
  store i32 %56, i32* %12, align 4, !tbaa !3
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = ashr i32 %57, 14
  %59 = and i32 %58, 1
  store i32 %59, i32* %13, align 4, !tbaa !3
  %60 = load i32, i32* %3, align 4, !tbaa !3
  %61 = ashr i32 %60, 7
  %62 = and i32 %61, 63
  store i32 %62, i32* %14, align 4, !tbaa !3
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = and i32 %63, 31
  store i32 %64, i32* %15, align 4, !tbaa !3
  %65 = load i32, i32* %10, align 4, !tbaa !3
  %66 = load i32, i32* %4, align 4, !tbaa !3
  %67 = and i32 %66, 15
  %68 = icmp eq i32 %65, %67
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = call i64 @llvm.expect.i64(i64 %71, i64 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %77

; <label>:76:                                     ; preds = %0
  br label %77

; <label>:77:                                     ; preds = %76, %75
  %78 = load i32, i32* %11, align 4, !tbaa !3
  %79 = load i32, i32* %5, align 4, !tbaa !3
  %80 = icmp eq i32 %78, %79
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = call i64 @llvm.expect.i64(i64 %83, i64 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

; <label>:86:                                     ; preds = %77
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %89

; <label>:88:                                     ; preds = %77
  br label %89

; <label>:89:                                     ; preds = %88, %87
  %90 = load i32, i32* %12, align 4, !tbaa !3
  %91 = load i32, i32* %6, align 4, !tbaa !3
  %92 = icmp eq i32 %90, %91
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = call i64 @llvm.expect.i64(i64 %95, i64 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %89
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:100:                                    ; preds = %89
  br label %101

; <label>:101:                                    ; preds = %100, %99
  %102 = load i32, i32* %13, align 4, !tbaa !3
  %103 = load i32, i32* %7, align 4, !tbaa !3
  %104 = icmp eq i32 %102, %103
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = call i64 @llvm.expect.i64(i64 %107, i64 0)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %101
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:112:                                    ; preds = %101
  br label %113

; <label>:113:                                    ; preds = %112, %111
  %114 = load i32, i32* %14, align 4, !tbaa !3
  %115 = load i32, i32* %8, align 4, !tbaa !3
  %116 = icmp eq i32 %114, %115
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = call i64 @llvm.expect.i64(i64 %119, i64 0)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

; <label>:122:                                    ; preds = %113
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %125

; <label>:124:                                    ; preds = %113
  br label %125

; <label>:125:                                    ; preds = %124, %123
  %126 = load i32, i32* %15, align 4, !tbaa !3
  %127 = load i32, i32* %9, align 4, !tbaa !3
  %128 = icmp eq i32 %126, %127
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = sext i32 %130 to i64
  %132 = call i64 @llvm.expect.i64(i64 %131, i64 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %125
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %137

; <label>:136:                                    ; preds = %125
  br label %137

; <label>:137:                                    ; preds = %136, %135
  %138 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #4
  %139 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #4
  %140 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #4
  %141 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #4
  %142 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #4
  %143 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #4
  %144 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %144) #4
  %145 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %145) #4
  %146 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %146) #4
  %147 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %147) #4
  %148 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %148) #4
  %149 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %149) #4
  %150 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %150) #4
  %151 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %151) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 622, i32 639, i32 669}
