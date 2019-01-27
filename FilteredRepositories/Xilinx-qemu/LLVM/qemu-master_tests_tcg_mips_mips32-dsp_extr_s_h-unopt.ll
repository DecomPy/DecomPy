; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extr_s_h.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extr_s_h.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_extr_s_h.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dsp == 1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result == rt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dsp == 0\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4
  store i32 5, i32* %3, align 4, !tbaa !3
  store i32 46283, i32* %4, align 4, !tbaa !3
  store i32 32767, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 0x03\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13) #2, !srcloc !7
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = extractvalue { i32, i32 } %14, 1
  store i32 %15, i32* %2, align 4, !tbaa !3
  store i32 %16, i32* %5, align 4, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = ashr i32 %17, 23
  %19 = and i32 %18, 1
  store i32 %19, i32* %5, align 4, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = icmp eq i32 %20, 1
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = call i64 @llvm.expect.i64(i64 %24, i64 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:29:                                     ; preds = %0
  br label %30

; <label>:30:                                     ; preds = %29, %28
  %31 = load i32, i32* %6, align 4, !tbaa !3
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = icmp eq i32 %31, %32
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = call i64 @llvm.expect.i64(i64 %36, i64 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %30
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:41:                                     ; preds = %30
  br label %42

; <label>:42:                                     ; preds = %41, %40
  store i32 -1, i32* %3, align 4, !tbaa !3
  store i32 305414945, i32* %4, align 4, !tbaa !3
  store i32 -32768, i32* %6, align 4, !tbaa !3
  %43 = load i32, i32* %3, align 4, !tbaa !3
  %44 = load i32, i32* %4, align 4, !tbaa !3
  %45 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 0x08\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %43, i32 %44) #2, !srcloc !8
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = extractvalue { i32, i32 } %45, 1
  store i32 %46, i32* %2, align 4, !tbaa !3
  store i32 %47, i32* %5, align 4, !tbaa !3
  %48 = load i32, i32* %5, align 4, !tbaa !3
  %49 = ashr i32 %48, 23
  %50 = and i32 %49, 1
  store i32 %50, i32* %5, align 4, !tbaa !3
  %51 = load i32, i32* %5, align 4, !tbaa !3
  %52 = icmp eq i32 %51, 1
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = call i64 @llvm.expect.i64(i64 %55, i64 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %42
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:60:                                     ; preds = %42
  br label %61

; <label>:61:                                     ; preds = %60, %59
  %62 = load i32, i32* %6, align 4, !tbaa !3
  %63 = load i32, i32* %2, align 4, !tbaa !3
  %64 = icmp eq i32 %62, %63
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = call i64 @llvm.expect.i64(i64 %67, i64 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %61
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:72:                                     ; preds = %61
  br label %73

; <label>:73:                                     ; preds = %72, %71
  store i32 0, i32* %5, align 4, !tbaa !3
  %74 = load i32, i32* %5, align 4, !tbaa !3
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %74) #4, !srcloc !9
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 17185, i32* %4, align 4, !tbaa !3
  store i32 1074, i32* %6, align 4, !tbaa !3
  %75 = load i32, i32* %3, align 4, !tbaa !3
  %76 = load i32, i32* %4, align 4, !tbaa !3
  %77 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 0x04\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %75, i32 %76) #2, !srcloc !10
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = extractvalue { i32, i32 } %77, 1
  store i32 %78, i32* %2, align 4, !tbaa !3
  store i32 %79, i32* %5, align 4, !tbaa !3
  %80 = load i32, i32* %5, align 4, !tbaa !3
  %81 = ashr i32 %80, 23
  %82 = and i32 %81, 1
  store i32 %82, i32* %5, align 4, !tbaa !3
  %83 = load i32, i32* %5, align 4, !tbaa !3
  %84 = icmp eq i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = call i64 @llvm.expect.i64(i64 %87, i64 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

; <label>:90:                                     ; preds = %73
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:92:                                     ; preds = %73
  br label %93

; <label>:93:                                     ; preds = %92, %91
  %94 = load i32, i32* %6, align 4, !tbaa !3
  %95 = load i32, i32* %2, align 4, !tbaa !3
  %96 = icmp eq i32 %94, %95
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = call i64 @llvm.expect.i64(i64 %99, i64 0)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

; <label>:102:                                    ; preds = %93
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %105

; <label>:104:                                    ; preds = %93
  br label %105

; <label>:105:                                    ; preds = %104, %103
  store i32 0, i32* %5, align 4, !tbaa !3
  %106 = load i32, i32* %5, align 4, !tbaa !3
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %106) #4, !srcloc !11
  store i32 291, i32* %3, align 4, !tbaa !3
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  store i32 4664, i32* %6, align 4, !tbaa !3
  %107 = load i32, i32* %3, align 4, !tbaa !3
  %108 = load i32, i32* %4, align 4, !tbaa !3
  %109 = call { i32, i32 } asm "mthi $2, $$ac1\0A\09mtlo $3, $$ac1\0A\09extr_s.h $0, $$ac1, 28\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %107, i32 %108) #2, !srcloc !12
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = extractvalue { i32, i32 } %109, 1
  store i32 %110, i32* %2, align 4, !tbaa !3
  store i32 %111, i32* %5, align 4, !tbaa !3
  %112 = load i32, i32* %5, align 4, !tbaa !3
  %113 = ashr i32 %112, 23
  %114 = and i32 %113, 1
  store i32 %114, i32* %5, align 4, !tbaa !3
  %115 = load i32, i32* %5, align 4, !tbaa !3
  %116 = icmp eq i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = call i64 @llvm.expect.i64(i64 %119, i64 0)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

; <label>:122:                                    ; preds = %105
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %125

; <label>:124:                                    ; preds = %105
  br label %125

; <label>:125:                                    ; preds = %124, %123
  %126 = load i32, i32* %6, align 4, !tbaa !3
  %127 = load i32, i32* %2, align 4, !tbaa !3
  %128 = icmp eq i32 %126, %127
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = sext i32 %130 to i64
  %132 = call i64 @llvm.expect.i64(i64 %131, i64 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %125
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %137

; <label>:136:                                    ; preds = %125
  br label %137

; <label>:137:                                    ; preds = %136, %135
  %138 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #4
  %139 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #4
  %140 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #4
  %141 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #4
  %142 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #4
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
!7 = !{i32 175, i32 191, i32 220, i32 259, i32 283}
!8 = !{i32 526, i32 542, i32 571, i32 610, i32 634}
!9 = !{i32 841, i32 852}
!10 = !{i32 972, i32 988, i32 1017, i32 1056, i32 1080}
!11 = !{i32 1287, i32 1298}
!12 = !{i32 1424, i32 1440, i32 1469, i32 1506, i32 1530}
