; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wmemchr.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wmemchr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wmemchr(i32*, i32, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i64 %2, i64* %7, align 8, !tbaa !9
  br label %8

; <label>:8:                                      ; preds = %19, %3
  %9 = load i64, i64* %7, align 8, !tbaa !9
  %10 = add i64 %9, -1
  store i64 %10, i64* %7, align 8, !tbaa !9
  %11 = icmp ugt i64 %9, 0
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %8
  %13 = load i32*, i32** %5, align 8, !tbaa !3
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %12
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %18, i32** %4, align 8
  br label %23

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** %5, align 8, !tbaa !3
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8, !tbaa !3
  br label %8

; <label>:22:                                     ; preds = %8
  store i32* null, i32** %4, align 8
  br label %23

; <label>:23:                                     ; preds = %22, %17
  %24 = load i32*, i32** %4, align 8
  ret i32* %24
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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
