; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-93.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-93.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_half(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = lshr i32 %8, 31
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %10, 23
  %12 = and i32 %11, 255
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 8388607
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %1
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %57

; <label>:19:                                     ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 3
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %5, align 4
  br label %49

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %43

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 8388607
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  store i32 0, i32* %6, align 4
  br label %42

; <label>:36:                                     ; preds = %32
  store i32 0, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = lshr i32 %37, 1
  %39 = add i32 4194304, %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %39, %40
  store i32 %41, i32* %6, align 4
  br label %42

; <label>:42:                                     ; preds = %36, %35
  br label %48

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 1
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %48

; <label>:48:                                     ; preds = %43, %42
  br label %49

; <label>:49:                                     ; preds = %48, %26
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 31
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 23
  %54 = or i32 %51, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %2, align 4
  br label %57

; <label>:57:                                     ; preds = %49, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
