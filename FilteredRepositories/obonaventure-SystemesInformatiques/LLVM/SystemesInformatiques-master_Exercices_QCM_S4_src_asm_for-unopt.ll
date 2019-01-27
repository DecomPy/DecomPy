; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm_for.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm_for.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a = global i32 1, align 4
@b = global i32 2, align 4
@c = global i32 3, align 4

; Function Attrs: nounwind ssp uwtable
define void @f1() #0 {
  store i32 0, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:1:                                      ; preds = %9, %0
  %2 = load i32, i32* @a, align 4, !tbaa !3
  %3 = load i32, i32* @c, align 4, !tbaa !3
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @b, align 4, !tbaa !3
  %7 = load i32, i32* @c, align 4, !tbaa !3
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* @b, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* @a, align 4, !tbaa !3
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:12:                                     ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f2() #0 {
  store i32 0, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:1:                                      ; preds = %9, %0
  %2 = load i32, i32* @c, align 4, !tbaa !3
  %3 = load i32, i32* @a, align 4, !tbaa !3
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @b, align 4, !tbaa !3
  %7 = load i32, i32* @c, align 4, !tbaa !3
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* @b, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* @a, align 4, !tbaa !3
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:12:                                     ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f3() #0 {
  %1 = load i32, i32* @a, align 4, !tbaa !3
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @a, align 4, !tbaa !3
  br label %3

; <label>:3:                                      ; preds = %11, %0
  %4 = load i32, i32* @c, align 4, !tbaa !3
  %5 = load i32, i32* @a, align 4, !tbaa !3
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %3
  %8 = load i32, i32* @b, align 4, !tbaa !3
  %9 = load i32, i32* @c, align 4, !tbaa !3
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* @b, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %7
  store i32 0, i32* @a, align 4, !tbaa !3
  br label %3

; <label>:12:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f4() #0 {
  store i32 0, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:1:                                      ; preds = %9, %0
  %2 = load i32, i32* @a, align 4, !tbaa !3
  %3 = load i32, i32* @c, align 4, !tbaa !3
  %4 = icmp sle i32 %2, %3
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @b, align 4, !tbaa !3
  %7 = load i32, i32* @c, align 4, !tbaa !3
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* @b, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* @a, align 4, !tbaa !3
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:12:                                     ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f5() #0 {
  store i32 0, i32* @a, align 4, !tbaa !3
  %1 = load i32, i32* @a, align 4, !tbaa !3
  %2 = load i32, i32* @c, align 4, !tbaa !3
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %10

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @b, align 4, !tbaa !3
  %6 = load i32, i32* @c, align 4, !tbaa !3
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* @b, align 4, !tbaa !3
  %8 = load i32, i32* @a, align 4, !tbaa !3
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @a, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @f6() #0 {
  br label %1

; <label>:1:                                      ; preds = %9, %0
  %2 = load i32, i32* @a, align 4, !tbaa !3
  %3 = load i32, i32* @c, align 4, !tbaa !3
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  store i32 0, i32* @a, align 4, !tbaa !3
  %6 = load i32, i32* @b, align 4, !tbaa !3
  %7 = load i32, i32* @c, align 4, !tbaa !3
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* @b, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* @a, align 4, !tbaa !3
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @a, align 4, !tbaa !3
  br label %1

; <label>:12:                                     ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  ret i32 0
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
