; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-94.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-94.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_twice(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = lshr i32 %7, 31
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = lshr i32 %9, 23
  %11 = and i32 %10, 255
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 8388607
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %49

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 254
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  store i32 255, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %41

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %40

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 4194304
  %31 = icmp eq i32 %30, 4194304
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %28
  store i32 1, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 1
  %35 = and i32 %34, 8388607
  store i32 %35, i32* %6, align 4
  br label %39

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

; <label>:39:                                     ; preds = %36, %32
  br label %40

; <label>:40:                                     ; preds = %39, %25
  br label %41

; <label>:41:                                     ; preds = %40, %21
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 31
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %44, 23
  %46 = or i32 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %2, align 4
  br label %49

; <label>:49:                                     ; preds = %41, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
