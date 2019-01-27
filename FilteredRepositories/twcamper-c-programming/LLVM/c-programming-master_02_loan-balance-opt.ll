; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_loan-balance.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_loan-balance.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [23 x i8] c"Enter amount of loan: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Enter interest rate: \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Enter monthly payment: \00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Balance after payment 1: $%.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Balance after payment 2: $%.2f\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Balance after payment 3: $%.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %2)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %3)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %6)
  %13 = load float, float* %3, align 4
  %14 = fmul float %13, 0x3F847AE140000000
  %15 = fpext float %14 to double
  %16 = fdiv double %15, 1.200000e+01
  %17 = fptrunc double %16 to float
  store float %17, float* %4, align 4
  %18 = load float, float* %2, align 4
  %19 = load float, float* %4, align 4
  %20 = fmul float %18, %19
  store float %20, float* %5, align 4
  %21 = load float, float* %5, align 4
  %22 = load float, float* %2, align 4
  %23 = fadd float %22, %21
  store float %23, float* %2, align 4
  %24 = load float, float* %2, align 4
  %25 = load float, float* %6, align 4
  %26 = fsub float %24, %25
  store float %26, float* %2, align 4
  %27 = load float, float* %2, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), double %28)
  %30 = load float, float* %2, align 4
  %31 = load float, float* %4, align 4
  %32 = fmul float %30, %31
  store float %32, float* %5, align 4
  %33 = load float, float* %5, align 4
  %34 = load float, float* %2, align 4
  %35 = fadd float %34, %33
  store float %35, float* %2, align 4
  %36 = load float, float* %2, align 4
  %37 = load float, float* %6, align 4
  %38 = fsub float %36, %37
  store float %38, float* %2, align 4
  %39 = load float, float* %2, align 4
  %40 = fpext float %39 to double
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), double %40)
  %42 = load float, float* %2, align 4
  %43 = load float, float* %4, align 4
  %44 = fmul float %42, %43
  store float %44, float* %5, align 4
  %45 = load float, float* %5, align 4
  %46 = load float, float* %2, align 4
  %47 = fadd float %46, %45
  store float %47, float* %2, align 4
  %48 = load float, float* %2, align 4
  %49 = load float, float* %6, align 4
  %50 = fsub float %48, %49
  store float %50, float* %2, align 4
  %51 = load float, float* %2, align 4
  %52 = fpext float %51 to double
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), double %52)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
