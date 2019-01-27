; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex08_ft_str_is_alpha.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex08_ft_str_is_alpha.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_str_is_alpha(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #2
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %8

; <label>:8:                                      ; preds = %38, %1
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  %10 = load i32, i32* %4, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

; <label>:16:                                     ; preds = %8
  %17 = load i8*, i8** %3, align 8, !tbaa !3
  %18 = load i32, i32* %4, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !9
  store i8 %21, i8* %5, align 1, !tbaa !9
  %22 = load i8, i8* %5, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %16
  %26 = load i8, i8* %5, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 90
  br i1 %28, label %38, label %29

; <label>:29:                                     ; preds = %25, %16
  %30 = load i8, i8* %5, align 1, !tbaa !9
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 97
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %5, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 122
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %33, %29
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %42

; <label>:38:                                     ; preds = %33, %25
  %39 = load i32, i32* %4, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4, !tbaa !7
  br label %8

; <label>:41:                                     ; preds = %8
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %42

; <label>:42:                                     ; preds = %41, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #2
  %43 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #2
  %44 = load i32, i32* %2, align 4
  ret i32 %44
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
