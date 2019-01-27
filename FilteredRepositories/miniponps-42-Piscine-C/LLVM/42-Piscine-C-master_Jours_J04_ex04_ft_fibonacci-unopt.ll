; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex04_ft_fibonacci.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex04_ft_fibonacci.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_fibonacci(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %20

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %11, i32* %2, align 4
  br label %20

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @ft_fibonacci(i32 %14)
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = sub nsw i32 %16, 2
  %18 = call i32 @ft_fibonacci(i32 %17)
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %2, align 4
  br label %20

; <label>:20:                                     ; preds = %12, %10, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
