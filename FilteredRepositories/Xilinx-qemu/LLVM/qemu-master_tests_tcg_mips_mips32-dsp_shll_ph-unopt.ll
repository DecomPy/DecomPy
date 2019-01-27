; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shll_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shll_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [84 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_shll_ph.c\00", align 1
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
  store i32 305419896, i32* %3, align 4, !tbaa !3
  store i32 -1610563584, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = call { i32, i32 } asm "wrdsp $$0\0A\09shll.ph $0, $2, 0x0B\0A\09rddsp $1\0A\09", "=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %12) #2, !srcloc !7
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  store i32 %14, i32* %2, align 4, !tbaa !3
  store i32 %15, i32* %4, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = ashr i32 %16, 22
  %18 = and i32 %17, 1
  store i32 %18, i32* %4, align 4, !tbaa !3
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = load i32, i32* %6, align 4, !tbaa !3
  %21 = icmp eq i32 %19, %20
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = call i64 @llvm.expect.i64(i64 %24, i64 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:29:                                     ; preds = %0
  br label %30

; <label>:30:                                     ; preds = %29, %28
  %31 = load i32, i32* %2, align 4, !tbaa !3
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = icmp eq i32 %31, %32
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = call i64 @llvm.expect.i64(i64 %36, i64 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %30
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:41:                                     ; preds = %30
  br label %42

; <label>:42:                                     ; preds = %41, %40
  store i32 2147450880, i32* %3, align 4, !tbaa !3
  store i32 -131072, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  %43 = load i32, i32* %3, align 4, !tbaa !3
  %44 = call { i32, i32 } asm "wrdsp $$0\0A\09shll.ph $0, $2, 0x01\0A\09rddsp $1\0A\09", "=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %43) #2, !srcloc !8
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = extractvalue { i32, i32 } %44, 1
  store i32 %45, i32* %2, align 4, !tbaa !3
  store i32 %46, i32* %4, align 4, !tbaa !3
  %47 = load i32, i32* %4, align 4, !tbaa !3
  %48 = ashr i32 %47, 22
  %49 = and i32 %48, 1
  store i32 %49, i32* %4, align 4, !tbaa !3
  %50 = load i32, i32* %4, align 4, !tbaa !3
  %51 = load i32, i32* %6, align 4, !tbaa !3
  %52 = icmp eq i32 %50, %51
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = call i64 @llvm.expect.i64(i64 %55, i64 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %42
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:60:                                     ; preds = %42
  br label %61

; <label>:61:                                     ; preds = %60, %59
  %62 = load i32, i32* %2, align 4, !tbaa !3
  %63 = load i32, i32* %5, align 4, !tbaa !3
  %64 = icmp eq i32 %62, %63
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = call i64 @llvm.expect.i64(i64 %67, i64 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %61
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:72:                                     ; preds = %61
  br label %73

; <label>:73:                                     ; preds = %72, %71
  store i32 1, i32* %3, align 4, !tbaa !3
  store i32 32768, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  %74 = load i32, i32* %3, align 4, !tbaa !3
  %75 = call { i32, i32 } asm "wrdsp $$0\0A\09shll.ph $0, $2, 0x0F\0A\09rddsp $1\0A\09", "=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %74) #2, !srcloc !9
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = extractvalue { i32, i32 } %75, 1
  store i32 %76, i32* %2, align 4, !tbaa !3
  store i32 %77, i32* %4, align 4, !tbaa !3
  %78 = load i32, i32* %4, align 4, !tbaa !3
  %79 = ashr i32 %78, 22
  %80 = and i32 %79, 1
  store i32 %80, i32* %4, align 4, !tbaa !3
  %81 = load i32, i32* %4, align 4, !tbaa !3
  %82 = load i32, i32* %6, align 4, !tbaa !3
  %83 = icmp eq i32 %81, %82
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = call i64 @llvm.expect.i64(i64 %86, i64 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %73
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %92

; <label>:91:                                     ; preds = %73
  br label %92

; <label>:92:                                     ; preds = %91, %90
  %93 = load i32, i32* %2, align 4, !tbaa !3
  %94 = load i32, i32* %5, align 4, !tbaa !3
  %95 = icmp eq i32 %93, %94
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = call i64 @llvm.expect.i64(i64 %98, i64 0)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %92
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i32 0, i32 0), i32 52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %104

; <label>:103:                                    ; preds = %92
  br label %104

; <label>:104:                                    ; preds = %103, %102
  %105 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #4
  %106 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #4
  %107 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #4
  %108 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #4
  %109 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #4
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
!7 = !{i32 197, i32 208, i32 244, i32 268}
!8 = !{i32 516, i32 527, i32 563, i32 587}
!9 = !{i32 835, i32 846, i32 882, i32 906}
