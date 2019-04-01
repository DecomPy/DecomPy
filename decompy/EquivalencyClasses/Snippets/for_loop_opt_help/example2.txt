; ModuleID = 'example2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %test3 = alloca i32, align 4
  %i = alloca i32, align 4
  %test4 = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %test3, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %9, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %test3, align 4
  %7 = load i32, i32* %i, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* %test3, align 4
  br label %9

; <label>:9                                       ; preds = %5
  %10 = load i32, i32* %i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %2

; <label>:12                                      ; preds = %2
  store i32 0, i32* %test4, align 4
  store i32 0, i32* %i1, align 4
  br label %13

; <label>:13                                      ; preds = %20, %12
  %14 = load i32, i32* %i1, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %23

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %test4, align 4
  %18 = load i32, i32* %i1, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %test4, align 4
  br label %20

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %i1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %i1, align 4
  br label %13

; <label>:23                                      ; preds = %13
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
