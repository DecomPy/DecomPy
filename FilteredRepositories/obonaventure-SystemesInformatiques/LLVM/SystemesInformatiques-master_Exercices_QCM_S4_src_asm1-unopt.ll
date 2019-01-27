; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm1.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S4_src_asm1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@g = common global i32 0, align 4
@g2 = common global i32 0, align 4
@s = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  store i32 1234, i32* @g, align 4, !tbaa !3
  store i32 5678, i32* @g2, align 4, !tbaa !3
  %1 = load i32, i32* @g, align 4, !tbaa !3
  store i32 %1, i32* @s, align 4, !tbaa !3
  %2 = load i32, i32* @g2, align 4, !tbaa !3
  store i32 %2, i32* @g, align 4, !tbaa !3
  %3 = load i32, i32* @s, align 4, !tbaa !3
  store i32 %3, i32* @g2, align 4, !tbaa !3
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
