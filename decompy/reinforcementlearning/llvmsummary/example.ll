; ModuleID = 'example.cpp'
source_filename = "example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z7examplei(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 3
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  %22 = load float, float* %4, align 4
  %23 = fpext float %22 to double
  %24 = fadd double %23, 2.343400e+02
  %25 = fptrunc double %24 to float
  store float %25, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

; <label>:26:                                     ; preds = %48, %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %51

; <label>:29:                                     ; preds = %26
  store i32 0, i32* %7, align 4
  br label %30

; <label>:30:                                     ; preds = %44, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %47

; <label>:33:                                     ; preds = %30
  store i32 0, i32* %8, align 4
  br label %34

; <label>:34:                                     ; preds = %40, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %34

; <label>:43:                                     ; preds = %34
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %30

; <label>:47:                                     ; preds = %30
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %26

; <label>:51:                                     ; preds = %26
  store i32 0, i32* %9, align 4
  br label %52

; <label>:52:                                     ; preds = %66, %51
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %69

; <label>:55:                                     ; preds = %52
  store i32 0, i32* %10, align 4
  br label %56

; <label>:56:                                     ; preds = %62, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %65

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %62

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %56

; <label>:65:                                     ; preds = %56
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %52

; <label>:69:                                     ; preds = %52
  store i32 0, i32* %11, align 4
  br label %70

; <label>:70:                                     ; preds = %76, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %79

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %76

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %70

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
