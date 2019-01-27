; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-66.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-66.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @leftmost_one(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = lshr i32 %3, 1
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = or i32 %5, %4
  store i32 %6, i32* %2, align 4, !tbaa !3
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = lshr i32 %7, 2
  %9 = load i32, i32* %2, align 4, !tbaa !3
  %10 = or i32 %9, %8
  store i32 %10, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = lshr i32 %11, 4
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = or i32 %13, %12
  store i32 %14, i32* %2, align 4, !tbaa !3
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = lshr i32 %15, 8
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4, !tbaa !3
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = lshr i32 %19, 16
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4, !tbaa !3
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = lshr i32 %24, 1
  %26 = sub i32 %23, %25
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define i32 @rightmost_one(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = xor i32 %3, -1
  %5 = add i32 %4, 1
  %6 = load i32, i32* %2, align 4, !tbaa !3
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = add i32 %8, 1
  ret i32 %9
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
