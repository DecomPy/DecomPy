; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex01_ft_strncpy.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex01_ft_strncpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strncpy(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %23, %3
  %10 = load i8*, i8** %5, align 8, !tbaa !3
  %11 = load i32, i32* %7, align 4, !tbaa !7
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %7, align 4, !tbaa !7
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = icmp ult i32 %18, %19
  br label %21

; <label>:21:                                     ; preds = %17, %9
  %22 = phi i1 [ false, %9 ], [ %20, %17 ]
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %21
  %24 = load i8*, i8** %5, align 8, !tbaa !3
  %25 = load i32, i32* %7, align 4, !tbaa !7
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = load i8*, i8** %4, align 8, !tbaa !3
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %28, i8* %32, align 1, !tbaa !9
  %33 = load i32, i32* %7, align 4, !tbaa !7
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4, !tbaa !7
  br label %9

; <label>:35:                                     ; preds = %21
  br label %36

; <label>:36:                                     ; preds = %50, %35
  %37 = load i8*, i8** %4, align 8, !tbaa !3
  %38 = load i32, i32* %7, align 4, !tbaa !7
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !9
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %7, align 4, !tbaa !7
  %46 = load i32, i32* %6, align 4, !tbaa !7
  %47 = icmp ult i32 %45, %46
  br label %48

; <label>:48:                                     ; preds = %44, %36
  %49 = phi i1 [ false, %36 ], [ %47, %44 ]
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %48
  %51 = load i8*, i8** %4, align 8, !tbaa !3
  %52 = load i32, i32* %7, align 4, !tbaa !7
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1, !tbaa !9
  %55 = load i32, i32* %7, align 4, !tbaa !7
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4, !tbaa !7
  br label %36

; <label>:57:                                     ; preds = %48
  %58 = load i8*, i8** %4, align 8, !tbaa !3
  %59 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #2
  ret i8* %58
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
