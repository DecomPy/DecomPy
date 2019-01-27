; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_subq_s_w.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_subq_s_w.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_subq_s_w.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dsp == resultdsp\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4
  store i32 305419896, i32* %3, align 4, !tbaa !3
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  store i32 2147483647, i32* %6, align 4, !tbaa !3
  store i32 1, i32* %7, align 4, !tbaa !3
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = call { i32, i32 } asm "wrdsp $$0\0A\09subq_s.w $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %14, i32 %15) #2, !srcloc !7
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, i32* %2, align 4, !tbaa !3
  store i32 %18, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = ashr i32 %19, 20
  %21 = and i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !3
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = load i32, i32* %7, align 4, !tbaa !3
  %24 = icmp eq i32 %22, %23
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = call i64 @llvm.expect.i64(i64 %27, i64 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:32:                                     ; preds = %0
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = load i32, i32* %2, align 4, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = icmp eq i32 %34, %35
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = call i64 @llvm.expect.i64(i64 %39, i64 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %33
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:44:                                     ; preds = %33
  br label %45

; <label>:45:                                     ; preds = %44, %43
  store i32 419430, i32* %3, align 4, !tbaa !3
  store i32 349525, i32* %4, align 4, !tbaa !3
  store i32 69905, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  %46 = load i32, i32* %3, align 4, !tbaa !3
  %47 = load i32, i32* %4, align 4, !tbaa !3
  %48 = call { i32, i32 } asm "wrdsp $$0\0A\09subq_s.w $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %46, i32 %47) #2, !srcloc !8
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = extractvalue { i32, i32 } %48, 1
  store i32 %49, i32* %2, align 4, !tbaa !3
  store i32 %50, i32* %5, align 4, !tbaa !3
  %51 = load i32, i32* %5, align 4, !tbaa !3
  %52 = ashr i32 %51, 20
  %53 = and i32 %52, 1
  store i32 %53, i32* %5, align 4, !tbaa !3
  %54 = load i32, i32* %5, align 4, !tbaa !3
  %55 = load i32, i32* %7, align 4, !tbaa !3
  %56 = icmp eq i32 %54, %55
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = call i64 @llvm.expect.i64(i64 %59, i64 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %45
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %65

; <label>:64:                                     ; preds = %45
  br label %65

; <label>:65:                                     ; preds = %64, %63
  %66 = load i32, i32* %2, align 4, !tbaa !3
  %67 = load i32, i32* %6, align 4, !tbaa !3
  %68 = icmp eq i32 %66, %67
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = call i64 @llvm.expect.i64(i64 %71, i64 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %65
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %77

; <label>:76:                                     ; preds = %65
  br label %77

; <label>:77:                                     ; preds = %76, %75
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 -2147483648, i32* %4, align 4, !tbaa !3
  store i32 2147483647, i32* %6, align 4, !tbaa !3
  store i32 1, i32* %7, align 4, !tbaa !3
  %78 = load i32, i32* %3, align 4, !tbaa !3
  %79 = load i32, i32* %4, align 4, !tbaa !3
  %80 = call { i32, i32 } asm "wrdsp $$0\0A\09subq_s.w $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %78, i32 %79) #2, !srcloc !9
  %81 = extractvalue { i32, i32 } %80, 0
  %82 = extractvalue { i32, i32 } %80, 1
  store i32 %81, i32* %2, align 4, !tbaa !3
  store i32 %82, i32* %5, align 4, !tbaa !3
  %83 = load i32, i32* %5, align 4, !tbaa !3
  %84 = ashr i32 %83, 20
  %85 = and i32 %84, 1
  store i32 %85, i32* %5, align 4, !tbaa !3
  %86 = load i32, i32* %5, align 4, !tbaa !3
  %87 = load i32, i32* %7, align 4, !tbaa !3
  %88 = icmp eq i32 %86, %87
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = call i64 @llvm.expect.i64(i64 %91, i64 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %77
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:96:                                     ; preds = %77
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = load i32, i32* %2, align 4, !tbaa !3
  %99 = load i32, i32* %6, align 4, !tbaa !3
  %100 = icmp eq i32 %98, %99
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = call i64 @llvm.expect.i64(i64 %103, i64 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

; <label>:106:                                    ; preds = %97
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %109

; <label>:108:                                    ; preds = %97
  br label %109

; <label>:109:                                    ; preds = %108, %107
  store i32 -2147483648, i32* %3, align 4, !tbaa !3
  store i32 -2147483648, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  %110 = load i32, i32* %3, align 4, !tbaa !3
  %111 = load i32, i32* %4, align 4, !tbaa !3
  %112 = call { i32, i32 } asm "wrdsp $$0\0A\09subq_s.w $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %110, i32 %111) #2, !srcloc !10
  %113 = extractvalue { i32, i32 } %112, 0
  %114 = extractvalue { i32, i32 } %112, 1
  store i32 %113, i32* %2, align 4, !tbaa !3
  store i32 %114, i32* %5, align 4, !tbaa !3
  %115 = load i32, i32* %5, align 4, !tbaa !3
  %116 = ashr i32 %115, 20
  %117 = and i32 %116, 1
  store i32 %117, i32* %5, align 4, !tbaa !3
  %118 = load i32, i32* %5, align 4, !tbaa !3
  %119 = load i32, i32* %7, align 4, !tbaa !3
  %120 = icmp eq i32 %118, %119
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = call i64 @llvm.expect.i64(i64 %123, i64 0)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

; <label>:126:                                    ; preds = %109
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %129

; <label>:128:                                    ; preds = %109
  br label %129

; <label>:129:                                    ; preds = %128, %127
  %130 = load i32, i32* %2, align 4, !tbaa !3
  %131 = load i32, i32* %6, align 4, !tbaa !3
  %132 = icmp eq i32 %130, %131
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = call i64 @llvm.expect.i64(i64 %135, i64 0)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %129
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %141

; <label>:140:                                    ; preds = %129
  br label %141

; <label>:141:                                    ; preds = %140, %139
  %142 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #4
  %143 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #4
  %144 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %144) #4
  %145 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %145) #4
  %146 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %146) #4
  %147 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %147) #4
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
!7 = !{i32 218, i32 229, i32 264, i32 288}
!8 = !{i32 552, i32 563, i32 598, i32 622}
!9 = !{i32 889, i32 900, i32 935, i32 959}
!10 = !{i32 1224, i32 1235, i32 1270, i32 1294}
