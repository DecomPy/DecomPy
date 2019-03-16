; ModuleID = 'example1.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %test = alloca i32, align 4
  %test2 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %test, align 4
  store i32 0, i32* %test2, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %12, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %test, align 4
  %7 = load i32, i32* %i, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* %test, align 4
  %9 = load i32, i32* %test, align 4
  %10 = load i32, i32* %i, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %test, align 4
  br label %12

; <label>:12                                      ; preds = %5
  %13 = load i32, i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %2

; <label>:15                                      ; preds = %2
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
