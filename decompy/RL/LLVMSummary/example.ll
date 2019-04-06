; ModuleID = 'example.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @_Z7examplei(i32 %a) #0 {
  %1 = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = add nsw i32 %2, 3
  store i32 %3, i32* %b, align 4
  %4 = load i32, i32* %1, align 4
  %5 = add nsw i32 %4, 4
  store i32 %5, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %b, align 4
  %8 = load i32, i32* %b, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %b, align 4
  %10 = load i32, i32* %b, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %b, align 4
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %34, %0
  %13 = load i32, i32* %i, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %37

; <label>:15                                      ; preds = %12
  store i32 0, i32* %j, align 4
  br label %16

; <label>:16                                      ; preds = %30, %15
  %17 = load i32, i32* %j, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %33

; <label>:19                                      ; preds = %16
  store i32 0, i32* %k, align 4
  br label %20

; <label>:20                                      ; preds = %26, %19
  %21 = load i32, i32* %k, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %29

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %b, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %b, align 4
  br label %26

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %k, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %k, align 4
  br label %20

; <label>:29                                      ; preds = %20
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32, i32* %j, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %j, align 4
  br label %16

; <label>:33                                      ; preds = %16
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i32, i32* %i, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4
  br label %12

; <label>:37                                      ; preds = %12
  store i32 0, i32* %i1, align 4
  br label %38

; <label>:38                                      ; preds = %52, %37
  %39 = load i32, i32* %i1, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %55

; <label>:41                                      ; preds = %38
  store i32 0, i32* %j2, align 4
  br label %42

; <label>:42                                      ; preds = %48, %41
  %43 = load i32, i32* %j2, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %51

; <label>:45                                      ; preds = %42
  %46 = load i32, i32* %b, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %b, align 4
  br label %48

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* %j2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %j2, align 4
  br label %42

; <label>:51                                      ; preds = %42
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load i32, i32* %i1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %i1, align 4
  br label %38

; <label>:55                                      ; preds = %38
  store i32 0, i32* %i3, align 4
  br label %56

; <label>:56                                      ; preds = %62, %55
  %57 = load i32, i32* %i3, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %65

; <label>:59                                      ; preds = %56
  %60 = load i32, i32* %b, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %b, align 4
  br label %62

; <label>:62                                      ; preds = %59
  %63 = load i32, i32* %i3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i3, align 4
  br label %56

; <label>:65                                      ; preds = %56
  %66 = load i32, i32* %b, align 4
  ret i32 %66
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
