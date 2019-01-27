; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-73.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-73.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @saturating_add(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -2147483648
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -2147483648
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  br label %25

; <label>:25:                                     ; preds = %21, %17, %2
  %26 = phi i1 [ false, %17 ], [ false, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -2147483648
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, -2147483648
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, -2147483648
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

; <label>:40:                                     ; preds = %35, %31, %25
  %41 = phi i1 [ false, %31 ], [ false, %25 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = sub nsw i32 -2147483648, %45
  %47 = and i32 2147483647, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sub nsw i32 -2147483648, %51
  %53 = and i32 2147483647, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 -2147483648, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 %55, %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
