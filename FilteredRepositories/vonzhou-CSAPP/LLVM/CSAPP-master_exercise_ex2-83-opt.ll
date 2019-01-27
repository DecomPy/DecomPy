; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-83.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-83.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_ge(float, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %9 = load float, float* %3, align 4
  %10 = fpext float %9 to double
  %11 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %10)
  store i32 %11, i32* %5, align 4
  %12 = load float, float* %4, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 31
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = lshr i32 %17, 31
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %38

; <label>:26:                                     ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  br label %65

; <label>:38:                                     ; preds = %26, %2
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  br label %63

; <label>:48:                                     ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp uge i32 %52, %53
  %55 = zext i1 %54 to i32
  br label %61

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ule i32 %57, %58
  %60 = zext i1 %59 to i32
  br label %61

; <label>:61:                                     ; preds = %56, %51
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  br label %63

; <label>:63:                                     ; preds = %61, %43
  %64 = phi i32 [ %47, %43 ], [ %62, %61 ]
  br label %65

; <label>:65:                                     ; preds = %63, %34
  %66 = phi i32 [ %37, %34 ], [ %64, %63 ]
  ret i32 %66
}

declare i32 @f2u(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_ge_ans(float, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %9 = load float, float* %3, align 4
  %10 = fpext float %9 to double
  %11 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %10)
  store i32 %11, i32* %5, align 4
  %12 = load float, float* %4, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 31
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = lshr i32 %17, 31
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

; <label>:26:                                     ; preds = %22, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

; <label>:32:                                     ; preds = %29, %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %54, label %42

; <label>:42:                                     ; preds = %38, %35, %32
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ule i32 %49, %50
  br label %52

; <label>:52:                                     ; preds = %48, %45, %42
  %53 = phi i1 [ false, %45 ], [ false, %42 ], [ %51, %48 ]
  br label %54

; <label>:54:                                     ; preds = %52, %38, %29, %22
  %55 = phi i1 [ true, %38 ], [ true, %29 ], [ true, %22 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
