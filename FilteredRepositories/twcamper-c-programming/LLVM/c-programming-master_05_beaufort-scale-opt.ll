; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_beaufort-scale.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_beaufort-scale.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [27 x i8] c"Enter wind speed (knots): \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Calm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Light air\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Breeze\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Gale\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Storm\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Hurricane\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Wind Force: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %3)
  %6 = load float, float* %3, align 4
  %7 = fcmp olt float %6, 1.000000e+00
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8
  br label %30

; <label>:9:                                      ; preds = %0
  %10 = load float, float* %3, align 4
  %11 = fcmp olt float %10, 4.000000e+00
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %2, align 8
  br label %29

; <label>:13:                                     ; preds = %9
  %14 = load float, float* %3, align 4
  %15 = fcmp olt float %14, 2.800000e+01
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %2, align 8
  br label %28

; <label>:17:                                     ; preds = %13
  %18 = load float, float* %3, align 4
  %19 = fcmp olt float %18, 4.800000e+01
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %2, align 8
  br label %27

; <label>:21:                                     ; preds = %17
  %22 = load float, float* %3, align 4
  %23 = fcmp olt float %22, 0x404F8147A0000000
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8** %2, align 8
  br label %26

; <label>:25:                                     ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %2, align 8
  br label %26

; <label>:26:                                     ; preds = %25, %24
  br label %27

; <label>:27:                                     ; preds = %26, %20
  br label %28

; <label>:28:                                     ; preds = %27, %16
  br label %29

; <label>:29:                                     ; preds = %28, %12
  br label %30

; <label>:30:                                     ; preds = %29, %8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* %31)
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
