; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-59.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-59.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @switch_prob(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %27 [
    i32 42, label %8
    i32 40, label %8
    i32 41, label %11
    i32 43, label %14
    i32 45, label %17
    i32 44, label %22
  ]

; <label>:8:                                      ; preds = %2, %2
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 3
  store i32 %10, i32* %5, align 4
  br label %30

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 17
  store i32 %13, i32* %5, align 4
  br label %30

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %5, align 4
  br label %30

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %20, 17
  store i32 %21, i32* %5, align 4
  br label %30

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 49, %23
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  br label %30

; <label>:27:                                     ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 17
  store i32 %29, i32* %5, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %22, %17, %14, %11, %8
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
