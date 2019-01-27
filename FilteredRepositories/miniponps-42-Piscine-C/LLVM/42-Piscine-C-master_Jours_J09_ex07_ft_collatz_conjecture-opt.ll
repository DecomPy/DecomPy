; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex07_ft_collatz_conjecture.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex07_ft_collatz_conjecture.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ft_collatz_conjecture(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = urem i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = mul i32 3, %12
  %14 = add i32 %13, 1
  %15 = call i32 @ft_collatz_conjecture(i32 %14)
  %16 = add i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %22

; <label>:17:                                     ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = udiv i32 %18, 2
  %20 = call i32 @ft_collatz_conjecture(i32 %19)
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %22

; <label>:22:                                     ; preds = %17, %11
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %2, align 4
  br label %25

; <label>:25:                                     ; preds = %23, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
