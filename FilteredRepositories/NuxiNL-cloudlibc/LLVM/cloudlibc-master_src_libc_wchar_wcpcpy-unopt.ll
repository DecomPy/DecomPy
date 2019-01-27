; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcpcpy.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcpcpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wcpcpy(i32* noalias, i32* noalias) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %15, %2
  %6 = load i32*, i32** %4, align 8, !tbaa !3
  %7 = load i32, i32* %6, align 4, !tbaa !7
  %8 = load i32*, i32** %3, align 8, !tbaa !3
  store i32 %7, i32* %8, align 4, !tbaa !7
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8, !tbaa !3
  %11 = load i32, i32* %9, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %5
  %14 = load i32*, i32** %3, align 8, !tbaa !3
  ret i32* %14

; <label>:15:                                     ; preds = %5
  %16 = load i32*, i32** %3, align 8, !tbaa !3
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %3, align 8, !tbaa !3
  br label %5
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
