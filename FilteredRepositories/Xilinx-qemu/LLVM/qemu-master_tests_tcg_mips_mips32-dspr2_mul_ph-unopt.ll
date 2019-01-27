; ModuleID = 'Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_mul_ph.c'
source_filename = "Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_mul_ph.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"Repositories/Xilinx-qemu/Unfiltered/qemu-master_tests_tcg_mips_mips32-dspr2_mul_ph.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rd == result\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dsp == resultdsp\00", align 1

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
  store i32 66785844, i32* %3, align 4, !tbaa !3
  store i32 197935905, i32* %4, align 4, !tbaa !3
  store i32 -184224588, i32* %6, align 4, !tbaa !3
  store i32 1, i32* %7, align 4, !tbaa !3
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = call { i32, i32 } asm "mul.ph $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %14, i32 %15) #2, !srcloc !7
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = extractvalue { i32, i32 } %16, 1
  store i32 %17, i32* %2, align 4, !tbaa !3
  store i32 %18, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = ashr i32 %19, 21
  %21 = and i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !3
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !3
  %24 = icmp eq i32 %22, %23
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = call i64 @llvm.expect.i64(i64 %27, i64 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:32:                                     ; preds = %0
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = load i32, i32* %5, align 4, !tbaa !3
  %35 = load i32, i32* %7, align 4, !tbaa !3
  %36 = icmp eq i32 %34, %35
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = call i64 @llvm.expect.i64(i64 %39, i64 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %33
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:44:                                     ; preds = %33
  br label %45

; <label>:45:                                     ; preds = %44, %43
  store i32 0, i32* %5, align 4, !tbaa !3
  %46 = load i32, i32* %5, align 4, !tbaa !3
  call void asm sideeffect "wrdsp $0\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 %46) #4, !srcloc !8
  store i32 2162704, i32* %3, align 4, !tbaa !3
  store i32 1114117, i32* %4, align 4, !tbaa !3
  store i32 36765776, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %7, align 4, !tbaa !3
  %47 = load i32, i32* %3, align 4, !tbaa !3
  %48 = load i32, i32* %4, align 4, !tbaa !3
  %49 = call { i32, i32 } asm "mul.ph $0, $2, $3\0A\09rddsp $1\0A\09", "=r,=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %47, i32 %48) #2, !srcloc !9
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = extractvalue { i32, i32 } %49, 1
  store i32 %50, i32* %2, align 4, !tbaa !3
  store i32 %51, i32* %5, align 4, !tbaa !3
  %52 = load i32, i32* %5, align 4, !tbaa !3
  %53 = ashr i32 %52, 21
  %54 = and i32 %53, 1
  store i32 %54, i32* %5, align 4, !tbaa !3
  %55 = load i32, i32* %2, align 4, !tbaa !3
  %56 = load i32, i32* %6, align 4, !tbaa !3
  %57 = icmp eq i32 %55, %56
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = call i64 @llvm.expect.i64(i64 %60, i64 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %45
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:65:                                     ; preds = %45
  br label %66

; <label>:66:                                     ; preds = %65, %64
  %67 = load i32, i32* %5, align 4, !tbaa !3
  %68 = load i32, i32* %7, align 4, !tbaa !3
  %69 = icmp eq i32 %67, %68
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = call i64 @llvm.expect.i64(i64 %72, i64 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %66
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %78

; <label>:77:                                     ; preds = %66
  br label %78

; <label>:78:                                     ; preds = %77, %76
  %79 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4
  %80 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #4
  %81 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #4
  %82 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4
  %83 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #4
  %84 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #4
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
!7 = !{i32 212, i32 232, i32 256}
!8 = !{i32 450, i32 461}
!9 = !{i32 613, i32 633, i32 657}
