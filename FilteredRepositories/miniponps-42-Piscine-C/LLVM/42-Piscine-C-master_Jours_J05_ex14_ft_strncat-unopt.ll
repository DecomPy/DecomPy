; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex14_ft_strncat.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex14_ft_strncat.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i8* @ft_strncat(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %7, align 4, !tbaa !7
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %19, %3
  %12 = load i8*, i8** %4, align 8, !tbaa !3
  %13 = load i32, i32* %7, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %8, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4, !tbaa !7
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:24:                                     ; preds = %11
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %39, %24
  %26 = load i32, i32* %7, align 4, !tbaa !7
  %27 = load i32, i32* %6, align 4, !tbaa !7
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %5, align 8, !tbaa !3
  %31 = load i32, i32* %7, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %29, %25
  %38 = phi i1 [ false, %25 ], [ %36, %29 ]
  br i1 %38, label %39, label %53

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** %5, align 8, !tbaa !3
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %45 = load i8*, i8** %4, align 8, !tbaa !3
  %46 = load i32, i32* %8, align 4, !tbaa !7
  %47 = load i32, i32* %7, align 4, !tbaa !7
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8 %44, i8* %50, align 1, !tbaa !9
  %51 = load i32, i32* %7, align 4, !tbaa !7
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4, !tbaa !7
  br label %25

; <label>:53:                                     ; preds = %37
  %54 = load i8*, i8** %4, align 8, !tbaa !3
  %55 = load i32, i32* %8, align 4, !tbaa !7
  %56 = load i32, i32* %7, align 4, !tbaa !7
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8 0, i8* %59, align 1, !tbaa !9
  %60 = load i8*, i8** %4, align 8, !tbaa !3
  %61 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #2
  %62 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #2
  ret i8* %60
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
