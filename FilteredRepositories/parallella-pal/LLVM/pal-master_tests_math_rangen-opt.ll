; ModuleID = 'Repositories/parallella-pal/Unfiltered/pal-master_tests_math_rangen.c'
source_filename = "Repositories/parallella-pal/Unfiltered/pal-master_tests_math_rangen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"%f,%f,0,0\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i64 @time(i64* null)
  %11 = trunc i64 %10 to i32
  call void @srand(i32 %11)
  store i32 0, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %29, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %32

; <label>:15:                                     ; preds = %12
  %16 = call i32 @rand()
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %17, 0x41D0000000000000
  %19 = fsub float 1.000000e+00, %18
  store float %19, float* %7, align 4
  %20 = call i32 @rand()
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, 0x41D0000000000000
  %23 = fsub float 1.000000e+00, %22
  store float %23, float* %8, align 4
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to double
  %26 = load float, float* %8, align 4
  %27 = fpext float %26 to double
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), double %25, double %27)
  br label %29

; <label>:29:                                     ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12

; <label>:32:                                     ; preds = %12
  ret i32 0
}

declare void @srand(i32) #1

declare i64 @time(i64*) #1

declare i32 @rand() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
