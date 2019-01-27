; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-91.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-91.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.anon = type { float }

@.str = private unnamed_addr constant [14 x i8] c"%f(0x%X): %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_absval(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 8388607
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %23

; <label>:18:                                     ; preds = %13, %1
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 23
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %23

; <label>:23:                                     ; preds = %18, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @f2u(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = bitcast %union.anon* %3 to float*
  store float %4, float* %5, align 4
  %6 = bitcast %union.anon* %3 to i32*
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store float -0.000000e+00, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = call i32 @f2u(float %4)
  store i32 %5, i32* %3, align 4
  %6 = load float, float* %2, align 4
  %7 = fpext float %6 to double
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @float_absval(i32 %9)
  %11 = call float @u2f(i32 %10)
  %12 = fpext float %11 to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %7, i32 %8, double %12)
  store float 0.000000e+00, float* %2, align 4
  %14 = load float, float* %2, align 4
  %15 = call i32 @f2u(float %14)
  store i32 %15, i32* %3, align 4
  %16 = load float, float* %2, align 4
  %17 = fpext float %16 to double
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @float_absval(i32 %19)
  %21 = call float @u2f(i32 %20)
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %17, i32 %18, double %22)
  store float 1.000000e+00, float* %2, align 4
  %24 = load float, float* %2, align 4
  %25 = call i32 @f2u(float %24)
  store i32 %25, i32* %3, align 4
  %26 = load float, float* %2, align 4
  %27 = fpext float %26 to double
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @float_absval(i32 %29)
  %31 = call float @u2f(i32 %30)
  %32 = fpext float %31 to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %27, i32 %28, double %32)
  store float -1.000000e+00, float* %2, align 4
  %34 = load float, float* %2, align 4
  %35 = call i32 @f2u(float %34)
  store i32 %35, i32* %3, align 4
  %36 = load float, float* %2, align 4
  %37 = fpext float %36 to double
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @float_absval(i32 %39)
  %41 = call float @u2f(i32 %40)
  %42 = fpext float %41 to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %37, i32 %38, double %42)
  %44 = call float @u2f(i32 2139095040)
  store float %44, float* %2, align 4
  %45 = load float, float* %2, align 4
  %46 = call i32 @f2u(float %45)
  store i32 %46, i32* %3, align 4
  %47 = load float, float* %2, align 4
  %48 = fpext float %47 to double
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @float_absval(i32 %50)
  %52 = call float @u2f(i32 %51)
  %53 = fpext float %52 to double
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %48, i32 %49, double %53)
  %55 = call float @u2f(i32 -8388608)
  store float %55, float* %2, align 4
  %56 = load float, float* %2, align 4
  %57 = call i32 @f2u(float %56)
  store i32 %57, i32* %3, align 4
  %58 = load float, float* %2, align 4
  %59 = fpext float %58 to double
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @float_absval(i32 %61)
  %63 = call float @u2f(i32 %62)
  %64 = fpext float %63 to double
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %59, i32 %60, double %64)
  %66 = call float @u2f(i32 2139095041)
  store float %66, float* %2, align 4
  %67 = load float, float* %2, align 4
  %68 = call i32 @f2u(float %67)
  store i32 %68, i32* %3, align 4
  %69 = load float, float* %2, align 4
  %70 = fpext float %69 to double
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @float_absval(i32 %72)
  %74 = call float @u2f(i32 %73)
  %75 = fpext float %74 to double
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %70, i32 %71, double %75)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare float @u2f(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
