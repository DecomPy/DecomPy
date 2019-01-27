; ModuleID = 'Repositories/SketchUp-ruby-c-extension-examples/Unfiltered/ruby-c-extension-examples-master_ThirdParty_bin_win32_swig_Lib_linkruntime.c'
source_filename = "Repositories/SketchUp-ruby-c-extension-examples/Unfiltered/ruby-c-extension-examples-master_ThirdParty_bin_win32_swig_Lib_linkruntime.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@ptr = internal global i8* null, align 8

; Function Attrs: nounwind ssp uwtable
define i8* @SWIG_ReturnGlobalTypeList(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8, !tbaa !3
  %3 = load i8*, i8** @ptr, align 8, !tbaa !3
  %4 = icmp ne i8* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** %2, align 8, !tbaa !3
  store i8* %9, i8** @ptr, align 8, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %8, %5, %1
  %11 = load i8*, i8** @ptr, align 8, !tbaa !3
  ret i8* %11
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
