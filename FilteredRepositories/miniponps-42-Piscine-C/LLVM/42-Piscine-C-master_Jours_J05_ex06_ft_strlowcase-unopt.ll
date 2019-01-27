; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex06_ft_strlowcase.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex06_ft_strlowcase.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strlowcase(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %42, %1
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %45

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %2, align 8, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 65
  br i1 %20, label %21, label %42

; <label>:21:                                     ; preds = %13
  %22 = load i8*, i8** %2, align 8, !tbaa !3
  %23 = load i32, i32* %3, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 90
  br i1 %28, label %29, label %42

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %2, align 8, !tbaa !3
  %31 = load i32, i32* %3, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, 32
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %2, align 8, !tbaa !3
  %39 = load i32, i32* %3, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1, !tbaa !9
  br label %42

; <label>:42:                                     ; preds = %29, %21, %13
  %43 = load i32, i32* %3, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:45:                                     ; preds = %5
  %46 = load i8*, i8** %2, align 8, !tbaa !3
  %47 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #2
  ret i8* %46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
!9 = !{!5, !5, i64 0}
