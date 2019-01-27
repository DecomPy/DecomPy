; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-91.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-91.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.anon = type { float }

@.str = private unnamed_addr constant [14 x i8] c"%f(0x%X): %f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @float_absval(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = lshr i32 %8, 23
  %10 = and i32 %9, 255
  store i32 %10, i32* %4, align 4, !tbaa !3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = and i32 %12, 8388607
  store i32 %13, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %26

; <label>:21:                                     ; preds = %16, %1
  %22 = load i32, i32* %4, align 4, !tbaa !3
  %23 = shl i32 %22, 23
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %21, %19
  %27 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @f2u(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  store float %0, float* %2, align 4, !tbaa !7
  %4 = bitcast %union.anon* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = load float, float* %2, align 4, !tbaa !7
  %6 = bitcast %union.anon* %3 to float*
  store float %5, float* %6, align 4, !tbaa !9
  %7 = bitcast %union.anon* %3 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = bitcast %union.anon* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store float -0.000000e+00, float* %2, align 4, !tbaa !7
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = load float, float* %2, align 4, !tbaa !7
  %7 = call i32 @f2u(float %6)
  store i32 %7, i32* %3, align 4, !tbaa !3
  %8 = load float, float* %2, align 4, !tbaa !7
  %9 = fpext float %8 to double
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = call i32 @float_absval(i32 %11)
  %13 = call float @u2f(i32 %12)
  %14 = fpext float %13 to double
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %9, i32 %10, double %14)
  store float 0.000000e+00, float* %2, align 4, !tbaa !7
  %16 = load float, float* %2, align 4, !tbaa !7
  %17 = call i32 @f2u(float %16)
  store i32 %17, i32* %3, align 4, !tbaa !3
  %18 = load float, float* %2, align 4, !tbaa !7
  %19 = fpext float %18 to double
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = call i32 @float_absval(i32 %21)
  %23 = call float @u2f(i32 %22)
  %24 = fpext float %23 to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %19, i32 %20, double %24)
  store float 1.000000e+00, float* %2, align 4, !tbaa !7
  %26 = load float, float* %2, align 4, !tbaa !7
  %27 = call i32 @f2u(float %26)
  store i32 %27, i32* %3, align 4, !tbaa !3
  %28 = load float, float* %2, align 4, !tbaa !7
  %29 = fpext float %28 to double
  %30 = load i32, i32* %3, align 4, !tbaa !3
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = call i32 @float_absval(i32 %31)
  %33 = call float @u2f(i32 %32)
  %34 = fpext float %33 to double
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %29, i32 %30, double %34)
  store float -1.000000e+00, float* %2, align 4, !tbaa !7
  %36 = load float, float* %2, align 4, !tbaa !7
  %37 = call i32 @f2u(float %36)
  store i32 %37, i32* %3, align 4, !tbaa !3
  %38 = load float, float* %2, align 4, !tbaa !7
  %39 = fpext float %38 to double
  %40 = load i32, i32* %3, align 4, !tbaa !3
  %41 = load i32, i32* %3, align 4, !tbaa !3
  %42 = call i32 @float_absval(i32 %41)
  %43 = call float @u2f(i32 %42)
  %44 = fpext float %43 to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %39, i32 %40, double %44)
  %46 = call float @u2f(i32 2139095040)
  store float %46, float* %2, align 4, !tbaa !7
  %47 = load float, float* %2, align 4, !tbaa !7
  %48 = call i32 @f2u(float %47)
  store i32 %48, i32* %3, align 4, !tbaa !3
  %49 = load float, float* %2, align 4, !tbaa !7
  %50 = fpext float %49 to double
  %51 = load i32, i32* %3, align 4, !tbaa !3
  %52 = load i32, i32* %3, align 4, !tbaa !3
  %53 = call i32 @float_absval(i32 %52)
  %54 = call float @u2f(i32 %53)
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %50, i32 %51, double %55)
  %57 = call float @u2f(i32 -8388608)
  store float %57, float* %2, align 4, !tbaa !7
  %58 = load float, float* %2, align 4, !tbaa !7
  %59 = call i32 @f2u(float %58)
  store i32 %59, i32* %3, align 4, !tbaa !3
  %60 = load float, float* %2, align 4, !tbaa !7
  %61 = fpext float %60 to double
  %62 = load i32, i32* %3, align 4, !tbaa !3
  %63 = load i32, i32* %3, align 4, !tbaa !3
  %64 = call i32 @float_absval(i32 %63)
  %65 = call float @u2f(i32 %64)
  %66 = fpext float %65 to double
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %61, i32 %62, double %66)
  %68 = call float @u2f(i32 2139095041)
  store float %68, float* %2, align 4, !tbaa !7
  %69 = load float, float* %2, align 4, !tbaa !7
  %70 = call i32 @f2u(float %69)
  store i32 %70, i32* %3, align 4, !tbaa !3
  %71 = load float, float* %2, align 4, !tbaa !7
  %72 = fpext float %71 to double
  %73 = load i32, i32* %3, align 4, !tbaa !3
  %74 = load i32, i32* %3, align 4, !tbaa !3
  %75 = call i32 @float_absval(i32 %74)
  %76 = call float @u2f(i32 %75)
  %77 = fpext float %76 to double
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %72, i32 %73, double %77)
  %79 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3
  %80 = bitcast float* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

declare float @u2f(i32) #2

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
!8 = !{!"float", !5, i64 0}
!9 = !{!5, !5, i64 0}
