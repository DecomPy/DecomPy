; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wctype_wctrans.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wctype_wctrans.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"tolower\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"toupper\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @wctrans(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 ptrtoint (i32 (i32)* @towlower to i32), i32* %2, align 4
  br label %14

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  store i32 ptrtoint (i32 (i32)* @towupper to i32), i32* %2, align 4
  br label %14

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %2, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @towlower(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__tolower(i32 %3)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @towupper(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__toupper(i32 %3)
  ret i32 %4
}

declare i32 @__tolower(i32) #1

declare i32 @__toupper(i32) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
