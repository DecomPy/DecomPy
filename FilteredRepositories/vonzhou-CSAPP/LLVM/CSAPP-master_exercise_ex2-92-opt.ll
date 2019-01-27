; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-92.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @float_negate(i32) #0 {
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
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %2, align 4
  br label %30

; <label>:21:                                     ; preds = %16, %1
  %22 = load i32, i32* %4, align 4
  %23 = xor i32 %22, -1
  %24 = shl i32 %23, 31
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 23
  %27 = or i32 %24, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

; <label>:30:                                     ; preds = %21, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
