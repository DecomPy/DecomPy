; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_回文素数_huiwenshu.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E5\9B\9E\E6\96\87\E7\B4\A0\E6\95\B0_huiwenshu.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @isPalindrome(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 10, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  br label %62

; <label>:15:                                     ; preds = %1
  br label %16

; <label>:16:                                     ; preds = %20, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = mul i32 %21, 10
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %16

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = udiv i32 %26, 10
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %10, align 4
  br label %32

; <label>:32:                                     ; preds = %46, %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  %39 = udiv i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = urem i32 %40, 10
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %36
  br label %56

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %4, align 4
  %49 = urem i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = udiv i32 %50, 10
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %10, align 4
  %53 = udiv i32 %52, 10
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %32

; <label>:56:                                     ; preds = %45, %32
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %56
  store i32 0, i32* %2, align 4
  br label %62

; <label>:61:                                     ; preds = %56
  store i32 1, i32* %2, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %60, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
