; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_precrq_rs_ph_w.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_precrq_rs_ph_w.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [91 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dsp_precrq_rs_ph_w.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"result == rd\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"((dsp >> 22) & 0x01) == 1\00", align 1

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
  store i32 -2023406815, i32* %4, align 4, !tbaa !3
  store i32 305432421, i32* %6, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = call i32 asm "wrdsp $$0\0A\09precrq_rs.ph.w $0, $1, $2\0A\09", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32 %13) #2, !srcloc !7
  store i32 %14, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = icmp eq i32 %15, %16
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = call i64 @llvm.expect.i64(i64 %20, i64 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:25:                                     ; preds = %0
  br label %26

; <label>:26:                                     ; preds = %25, %24
  store i32 2147468920, i32* %3, align 4, !tbaa !3
  store i32 -2041302368, i32* %4, align 4, !tbaa !3
  store i32 2147452500, i32* %6, align 4, !tbaa !3
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = load i32, i32* %4, align 4, !tbaa !3
  %29 = call { i32, i32 } asm "wrdsp $$0\0A\09precrq_rs.ph.w $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %27, i32 %28) #2, !srcloc !8
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  store i32 %30, i32* %2, align 4, !tbaa !3
  store i32 %31, i32* %5, align 4, !tbaa !3
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = ashr i32 %32, 22
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 1
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = call i64 @llvm.expect.i64(i64 %38, i64 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %26
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:43:                                     ; preds = %26
  br label %44

; <label>:44:                                     ; preds = %43, %42
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = load i32, i32* %2, align 4, !tbaa !3
  %47 = icmp eq i32 %45, %46
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = call i64 @llvm.expect.i64(i64 %50, i64 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %44
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %56

; <label>:55:                                     ; preds = %44
  br label %56

; <label>:56:                                     ; preds = %55, %54
  store i32 -1091567891, i32* %3, align 4, !tbaa !3
  store i32 2147450880, i32* %4, align 4, !tbaa !3
  store i32 -1091534849, i32* %6, align 4, !tbaa !3
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = load i32, i32* %4, align 4, !tbaa !3
  %59 = call { i32, i32 } asm "wrdsp $$0\0A\09precrq_rs.ph.w $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %57, i32 %58) #2, !srcloc !9
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = extractvalue { i32, i32 } %59, 1
  store i32 %60, i32* %2, align 4, !tbaa !3
  store i32 %61, i32* %5, align 4, !tbaa !3
  %62 = load i32, i32* %5, align 4, !tbaa !3
  %63 = ashr i32 %62, 22
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 1
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = call i64 @llvm.expect.i64(i64 %68, i64 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %56
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %74

; <label>:73:                                     ; preds = %56
  br label %74

; <label>:74:                                     ; preds = %73, %72
  %75 = load i32, i32* %6, align 4, !tbaa !3
  %76 = load i32, i32* %2, align 4, !tbaa !3
  %77 = icmp eq i32 %75, %76
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = call i64 @llvm.expect.i64(i64 %80, i64 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %74
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:85:                                     ; preds = %74
  br label %86

; <label>:86:                                     ; preds = %85, %84
  %87 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4
  %88 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4
  %89 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4
  %90 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #4
  %91 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4
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
!7 = !{i32 190, i32 201, i32 242}
!8 = !{i32 419, i32 430, i32 471, i32 495}
!9 = !{i32 722, i32 733, i32 774, i32 798}
