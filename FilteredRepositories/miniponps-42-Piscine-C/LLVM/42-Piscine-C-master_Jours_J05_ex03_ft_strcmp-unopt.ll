; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex03_ft_strcmp.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex03_ft_strcmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_strcmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %27, %2
  %7 = load i8*, i8** %4, align 8, !tbaa !3
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %4, align 8, !tbaa !3
  %9 = load i8, i8* %7, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = load i8*, i8** %5, align 8, !tbaa !3
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8, !tbaa !3
  %13 = load i8, i8* %11, align 1, !tbaa !7
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %6
  %17 = load i8*, i8** %4, align 8, !tbaa !3
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %5, align 8, !tbaa !3
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

; <label>:27:                                     ; preds = %21, %16
  br label %6

; <label>:28:                                     ; preds = %6
  %29 = load i8*, i8** %4, align 8, !tbaa !3
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %4, align 8, !tbaa !3
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %5, align 8, !tbaa !3
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %5, align 8, !tbaa !3
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %32, %36
  store i32 %37, i32* %3, align 4
  br label %38

; <label>:38:                                     ; preds = %28, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
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
!7 = !{!5, !5, i64 0}
