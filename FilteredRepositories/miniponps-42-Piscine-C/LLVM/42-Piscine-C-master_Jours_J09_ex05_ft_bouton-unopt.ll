; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex05_ft_bouton.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex05_ft_bouton.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_bouton(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !3
  %8 = load i32, i32* %5, align 4, !tbaa !3
  %9 = load i32, i32* %6, align 4, !tbaa !3
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = load i32, i32* %7, align 4, !tbaa !3
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %11, %3
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !3
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = load i32, i32* %7, align 4, !tbaa !3
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %19, %11
  %24 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %24, i32* %4, align 4
  br label %62

; <label>:25:                                     ; preds = %19, %15
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %6, align 4, !tbaa !3
  %31 = load i32, i32* %7, align 4, !tbaa !3
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %41, label %33

; <label>:33:                                     ; preds = %29, %25
  %34 = load i32, i32* %6, align 4, !tbaa !3
  %35 = load i32, i32* %5, align 4, !tbaa !3
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = load i32, i32* %7, align 4, !tbaa !3
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %37, %29
  %42 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %42, i32* %4, align 4
  br label %62

; <label>:43:                                     ; preds = %37, %33
  %44 = load i32, i32* %7, align 4, !tbaa !3
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %7, align 4, !tbaa !3
  %49 = load i32, i32* %5, align 4, !tbaa !3
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %59, label %51

; <label>:51:                                     ; preds = %47, %43
  %52 = load i32, i32* %7, align 4, !tbaa !3
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %61

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %7, align 4, !tbaa !3
  %57 = load i32, i32* %5, align 4, !tbaa !3
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %55, %47
  %60 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %60, i32* %4, align 4
  br label %62

; <label>:61:                                     ; preds = %55, %51
  store i32 0, i32* %4, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %59, %41, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
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
