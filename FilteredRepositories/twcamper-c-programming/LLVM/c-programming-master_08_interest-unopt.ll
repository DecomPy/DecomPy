; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_interest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_interest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [22 x i8] c"Enter interest rate: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Enter number of years: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\0AYears\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%6d%%\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%3d    \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%7.2f\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x double], align 16
  store i32 0, i32* %1, align 4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast [5 x double]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %13) #3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %4)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %5)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %30, %0
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = add nsw i32 %23, %24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %25)
  %27 = load i32, i32* %2, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 %28
  store double 1.000000e+02, double* %29, align 8, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %2, align 4, !tbaa !3
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4, !tbaa !3
  br label %19

; <label>:33:                                     ; preds = %19
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %35

; <label>:35:                                     ; preds = %80, %33
  %36 = load i32, i32* %6, align 4, !tbaa !3
  %37 = load i32, i32* %5, align 4, !tbaa !3
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %83

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %6, align 4, !tbaa !3
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %40)
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %42

; <label>:42:                                     ; preds = %75, %39
  %43 = load i32, i32* %2, align 4, !tbaa !3
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %78

; <label>:45:                                     ; preds = %42
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %46

; <label>:46:                                     ; preds = %66, %45
  %47 = load i32, i32* %3, align 4, !tbaa !3
  %48 = icmp slt i32 %47, 12
  br i1 %48, label %49, label %69

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %4, align 4, !tbaa !3
  %51 = load i32, i32* %2, align 4, !tbaa !3
  %52 = add nsw i32 %50, %51
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 1.000000e+02
  %55 = fdiv double %54, 1.200000e+01
  %56 = load i32, i32* %2, align 4, !tbaa !3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 %57
  %59 = load double, double* %58, align 8, !tbaa !7
  %60 = fmul double %55, %59
  %61 = load i32, i32* %2, align 4, !tbaa !3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 %62
  %64 = load double, double* %63, align 8, !tbaa !7
  %65 = fadd double %64, %60
  store double %65, double* %63, align 8, !tbaa !7
  br label %66

; <label>:66:                                     ; preds = %49
  %67 = load i32, i32* %3, align 4, !tbaa !3
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4, !tbaa !3
  br label %46

; <label>:69:                                     ; preds = %46
  %70 = load i32, i32* %2, align 4, !tbaa !3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !7
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), double %73)
  br label %75

; <label>:75:                                     ; preds = %69
  %76 = load i32, i32* %2, align 4, !tbaa !3
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4, !tbaa !3
  br label %42

; <label>:78:                                     ; preds = %42
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %80

; <label>:80:                                     ; preds = %78
  %81 = load i32, i32* %6, align 4, !tbaa !3
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4, !tbaa !3
  br label %35

; <label>:83:                                     ; preds = %35
  %84 = bitcast [5 x double]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %84) #3
  %85 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #3
  %86 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3
  %87 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
