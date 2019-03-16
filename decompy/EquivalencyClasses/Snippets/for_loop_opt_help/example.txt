; ModuleID = 'example.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %test = alloca i32, align 4
  %test2 = alloca i32, align 4
  %i = alloca i32, align 4
  %test3 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %test4 = alloca i32, align 4
  %i2 = alloca i32, align 4
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
  store i32 0, i32* %test3, align 4
  store i32 0, i32* %i1, align 4
  br label %16

; <label>:16                                      ; preds = %23, %15
  %17 = load i32, i32* %i1, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %test3, align 4
  %21 = load i32, i32* %i1, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %test3, align 4
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i1, align 4
  br label %16

; <label>:26                                      ; preds = %16
  store i32 0, i32* %test4, align 4
  store i32 0, i32* %i2, align 4
  br label %27

; <label>:27                                      ; preds = %34, %26
  %28 = load i32, i32* %i2, align 4
  %29 = icmp slt i32 %28, 100
  br i1 %29, label %30, label %37

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %test4, align 4
  %32 = load i32, i32* %i2, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %test4, align 4
  br label %34

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* %i2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i2, align 4
  br label %27

; <label>:37                                      ; preds = %27
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
