; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_broker.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_broker.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Number of shares: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Price per share: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Our Commission: $%.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Their Commission: $%.2f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast float* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast float* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store float 3.900000e+01, float* %8, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %19 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), float* %3)
  %20 = load float, float* %3, align 4, !tbaa !3
  %21 = load i32, i32* %2, align 4, !tbaa !7
  %22 = sitofp i32 %21 to float
  %23 = fmul float %20, %22
  store float %23, float* %5, align 4, !tbaa !3
  %24 = load float, float* %5, align 4, !tbaa !3
  %25 = fcmp olt float %24, 2.500000e+03
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %0
  store float 3.000000e+01, float* %7, align 4, !tbaa !3
  store float 0x3F916872C0000000, float* %6, align 4, !tbaa !3
  br label %48

; <label>:27:                                     ; preds = %0
  %28 = load float, float* %5, align 4, !tbaa !3
  %29 = fcmp olt float %28, 6.250000e+03
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  store float 5.600000e+01, float* %7, align 4, !tbaa !3
  store float 0x3F7B089A00000000, float* %6, align 4, !tbaa !3
  br label %47

; <label>:31:                                     ; preds = %27
  %32 = load float, float* %5, align 4, !tbaa !3
  %33 = fcmp olt float %32, 2.000000e+03
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  store float 7.600000e+01, float* %7, align 4, !tbaa !3
  store float 0x3F6BDA5120000000, float* %6, align 4, !tbaa !3
  br label %46

; <label>:35:                                     ; preds = %31
  %36 = load float, float* %5, align 4, !tbaa !3
  %37 = fcmp olt float %36, 5.000000e+04
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %35
  store float 1.000000e+02, float* %7, align 4, !tbaa !3
  store float 0x3F6205BC00000000, float* %6, align 4, !tbaa !3
  br label %45

; <label>:39:                                     ; preds = %35
  %40 = load float, float* %5, align 4, !tbaa !3
  %41 = fcmp olt float %40, 5.000000e+05
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  store float 1.550000e+02, float* %7, align 4, !tbaa !3
  store float 0x3F5205BC00000000, float* %6, align 4, !tbaa !3
  br label %44

; <label>:43:                                     ; preds = %39
  store float 2.550000e+02, float* %7, align 4, !tbaa !3
  store float 0x3F4D7DBF40000000, float* %6, align 4, !tbaa !3
  br label %44

; <label>:44:                                     ; preds = %43, %42
  br label %45

; <label>:45:                                     ; preds = %44, %38
  br label %46

; <label>:46:                                     ; preds = %45, %34
  br label %47

; <label>:47:                                     ; preds = %46, %30
  br label %48

; <label>:48:                                     ; preds = %47, %26
  %49 = load float, float* %7, align 4, !tbaa !3
  %50 = load float, float* %6, align 4, !tbaa !3
  %51 = load float, float* %5, align 4, !tbaa !3
  %52 = fmul float %50, %51
  %53 = fadd float %49, %52
  store float %53, float* %4, align 4, !tbaa !3
  %54 = load float, float* %4, align 4, !tbaa !3
  %55 = load float, float* %8, align 4, !tbaa !3
  %56 = fcmp olt float %54, %55
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %48
  %58 = load float, float* %8, align 4, !tbaa !3
  store float %58, float* %4, align 4, !tbaa !3
  br label %59

; <label>:59:                                     ; preds = %57, %48
  %60 = load float, float* %4, align 4, !tbaa !3
  %61 = fpext float %60 to double
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), double %61)
  store float 3.300000e+01, float* %7, align 4, !tbaa !3
  store float 0x3F947AE140000000, float* %6, align 4, !tbaa !3
  %63 = load i32, i32* %2, align 4, !tbaa !7
  %64 = icmp sgt i32 %63, 2000
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %59
  store float 0x3F9EB851E0000000, float* %6, align 4, !tbaa !3
  br label %66

; <label>:66:                                     ; preds = %65, %59
  %67 = load float, float* %7, align 4, !tbaa !3
  %68 = load i32, i32* %2, align 4, !tbaa !7
  %69 = sitofp i32 %68 to float
  %70 = load float, float* %6, align 4, !tbaa !3
  %71 = fmul float %69, %70
  %72 = fadd float %67, %71
  store float %72, float* %4, align 4, !tbaa !3
  %73 = load float, float* %4, align 4, !tbaa !3
  %74 = fpext float %73 to double
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), double %74)
  %76 = bitcast float* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3
  %77 = bitcast float* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3
  %78 = bitcast float* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3
  %79 = bitcast float* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3
  %80 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3
  %81 = bitcast float* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3
  %82 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
