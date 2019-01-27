; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-95.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-95.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_i2f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %1
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %115

; <label>:19:                                     ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, -2147483648
  %22 = icmp eq i32 %21, -2147483648
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = xor i32 %27, -1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %26, %19
  store i32 1, i32* %8, align 4
  store i32 -2147483648, i32* %9, align 4
  br label %31

; <label>:31:                                     ; preds = %40, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = lshr i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %31

; <label>:43:                                     ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = sub i64 32, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 127
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ugt i32 %50, 23
  br i1 %51, label %52, label %100

; <label>:52:                                     ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = sub i32 %53, 23
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 1, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %80, label %68

; <label>:68:                                     ; preds = %52
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

; <label>:78:                                     ; preds = %72, %68
  %79 = phi i1 [ false, %68 ], [ %77, %72 ]
  br label %80

; <label>:80:                                     ; preds = %78, %52
  %81 = phi i1 [ true, %52 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %83, %84
  %86 = and i32 %85, 8388607
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 8388607
  br i1 %88, label %89, label %95

; <label>:89:                                     ; preds = %80
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %89
  store i32 0, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %99

; <label>:95:                                     ; preds = %89, %80
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

; <label>:99:                                     ; preds = %95, %92
  br label %107

; <label>:100:                                    ; preds = %43
  %101 = load i32, i32* %7, align 4
  %102 = sub i32 23, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %103, %104
  %106 = and i32 %105, 8388607
  store i32 %106, i32* %6, align 4
  br label %107

; <label>:107:                                    ; preds = %100, %99
  %108 = load i32, i32* %4, align 4
  %109 = shl i32 %108, 31
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 %110, 23
  %112 = or i32 %109, %111
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %2, align 4
  br label %115

; <label>:115:                                    ; preds = %107, %17
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
