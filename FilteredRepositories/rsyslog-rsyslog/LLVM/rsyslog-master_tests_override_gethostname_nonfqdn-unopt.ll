; ModuleID = 'Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_tests_override_gethostname_nonfqdn.c'
source_filename = "Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_tests_override_gethostname_nonfqdn.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @gethostname(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i64 %1, i64* %4, align 8, !tbaa !7
  %5 = load i8*, i8** %3, align 8, !tbaa !3
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %3, align 8, !tbaa !3
  store i8 110, i8* %5, align 1, !tbaa !9
  %7 = load i8*, i8** %3, align 8, !tbaa !3
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %3, align 8, !tbaa !3
  store i8 111, i8* %7, align 1, !tbaa !9
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8, !tbaa !3
  store i8 110, i8* %9, align 1, !tbaa !9
  %11 = load i8*, i8** %3, align 8, !tbaa !3
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8, !tbaa !3
  store i8 102, i8* %11, align 1, !tbaa !9
  %13 = load i8*, i8** %3, align 8, !tbaa !3
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8, !tbaa !3
  store i8 113, i8* %13, align 1, !tbaa !9
  %15 = load i8*, i8** %3, align 8, !tbaa !3
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8, !tbaa !3
  store i8 100, i8* %15, align 1, !tbaa !9
  %17 = load i8*, i8** %3, align 8, !tbaa !3
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8, !tbaa !3
  store i8 110, i8* %17, align 1, !tbaa !9
  %19 = load i8*, i8** %3, align 8, !tbaa !3
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8, !tbaa !3
  store i8 0, i8* %19, align 1, !tbaa !9
  ret i32 0
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
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
