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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store float 3.900000e+01, float* %8, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), float* %3)
  %13 = load float, float* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sitofp i32 %14 to float
  %16 = fmul float %13, %15
  store float %16, float* %5, align 4
  %17 = load float, float* %5, align 4
  %18 = fcmp olt float %17, 2.500000e+03
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %0
  store float 3.000000e+01, float* %7, align 4
  store float 0x3F916872C0000000, float* %6, align 4
  br label %41

; <label>:20:                                     ; preds = %0
  %21 = load float, float* %5, align 4
  %22 = fcmp olt float %21, 6.250000e+03
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  store float 5.600000e+01, float* %7, align 4
  store float 0x3F7B089A00000000, float* %6, align 4
  br label %40

; <label>:24:                                     ; preds = %20
  %25 = load float, float* %5, align 4
  %26 = fcmp olt float %25, 2.000000e+03
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  store float 7.600000e+01, float* %7, align 4
  store float 0x3F6BDA5120000000, float* %6, align 4
  br label %39

; <label>:28:                                     ; preds = %24
  %29 = load float, float* %5, align 4
  %30 = fcmp olt float %29, 5.000000e+04
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  store float 1.000000e+02, float* %7, align 4
  store float 0x3F6205BC00000000, float* %6, align 4
  br label %38

; <label>:32:                                     ; preds = %28
  %33 = load float, float* %5, align 4
  %34 = fcmp olt float %33, 5.000000e+05
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  store float 1.550000e+02, float* %7, align 4
  store float 0x3F5205BC00000000, float* %6, align 4
  br label %37

; <label>:36:                                     ; preds = %32
  store float 2.550000e+02, float* %7, align 4
  store float 0x3F4D7DBF40000000, float* %6, align 4
  br label %37

; <label>:37:                                     ; preds = %36, %35
  br label %38

; <label>:38:                                     ; preds = %37, %31
  br label %39

; <label>:39:                                     ; preds = %38, %27
  br label %40

; <label>:40:                                     ; preds = %39, %23
  br label %41

; <label>:41:                                     ; preds = %40, %19
  %42 = load float, float* %7, align 4
  %43 = load float, float* %6, align 4
  %44 = load float, float* %5, align 4
  %45 = fmul float %43, %44
  %46 = fadd float %42, %45
  store float %46, float* %4, align 4
  %47 = load float, float* %4, align 4
  %48 = load float, float* %8, align 4
  %49 = fcmp olt float %47, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %41
  %51 = load float, float* %8, align 4
  store float %51, float* %4, align 4
  br label %52

; <label>:52:                                     ; preds = %50, %41
  %53 = load float, float* %4, align 4
  %54 = fpext float %53 to double
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), double %54)
  store float 3.300000e+01, float* %7, align 4
  store float 0x3F947AE140000000, float* %6, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp sgt i32 %56, 2000
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %52
  store float 0x3F9EB851E0000000, float* %6, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %52
  %60 = load float, float* %7, align 4
  %61 = load i32, i32* %2, align 4
  %62 = sitofp i32 %61 to float
  %63 = load float, float* %6, align 4
  %64 = fmul float %62, %63
  %65 = fadd float %60, %64
  store float %65, float* %4, align 4
  %66 = load float, float* %4, align 4
  %67 = fpext float %66 to double
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), double %67)
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
