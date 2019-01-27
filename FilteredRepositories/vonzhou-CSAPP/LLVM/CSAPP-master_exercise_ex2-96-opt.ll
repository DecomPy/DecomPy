; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-96.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-96.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_f2i(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = lshr i32 %9, 31
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, 23
  %13 = and i32 %12, 255
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 8388607
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 127
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %1
  store i32 -2147483648, i32* %2, align 4
  br label %82

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %82

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 30
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  store i32 -2147483648, i32* %2, align 4
  br label %82

; <label>:35:                                     ; preds = %31, %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 31
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  store i32 -2147483648, i32* %2, align 4
  br label %82

; <label>:42:                                     ; preds = %38, %35
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 31
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %48
  store i32 -2147483648, i32* %2, align 4
  br label %82

; <label>:52:                                     ; preds = %48, %45, %42
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 23
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 23
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %60, %61
  %63 = add i32 %59, %62
  store i32 %63, i32* %6, align 4
  br label %73

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 23, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = lshr i32 %69, %70
  %72 = add i32 %68, %71
  store i32 %72, i32* %6, align 4
  br label %73

; <label>:73:                                     ; preds = %64, %55
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %77, -1
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

; <label>:80:                                     ; preds = %76, %73
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

; <label>:82:                                     ; preds = %80, %51, %41, %34, %27, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
