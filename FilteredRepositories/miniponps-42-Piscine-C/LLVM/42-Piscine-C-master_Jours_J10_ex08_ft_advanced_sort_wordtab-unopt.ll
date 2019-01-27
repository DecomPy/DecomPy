; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex08_ft_advanced_sort_wordtab.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex08_ft_advanced_sort_wordtab.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @ft_advanced_sort_wordtab(i8**, i32 (i8*, i8*)*) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32 (i8*, i8*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8, !tbaa !3
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %4, align 8, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %18, %2
  %12 = load i8**, i8*** %3, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8, !tbaa !3
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:21:                                     ; preds = %11
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %64, %21
  %23 = load i32, i32* %6, align 4, !tbaa !7
  %24 = load i32, i32* %5, align 4, !tbaa !7
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %67

; <label>:27:                                     ; preds = %22
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %4, align 8, !tbaa !3
  %29 = load i8**, i8*** %3, align 8, !tbaa !3
  %30 = load i32, i32* %6, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8, !tbaa !3
  %34 = load i8**, i8*** %3, align 8, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8, !tbaa !3
  %40 = call i32 %28(i8* %33, i8* %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %64

; <label>:42:                                     ; preds = %27
  %43 = load i8**, i8*** %3, align 8, !tbaa !3
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8, !tbaa !3
  store i8* %47, i8** %7, align 8, !tbaa !3
  %48 = load i8**, i8*** %3, align 8, !tbaa !3
  %49 = load i32, i32* %6, align 4, !tbaa !7
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8, !tbaa !3
  %54 = load i8**, i8*** %3, align 8, !tbaa !3
  %55 = load i32, i32* %6, align 4, !tbaa !7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %53, i8** %57, align 8, !tbaa !3
  %58 = load i8*, i8** %7, align 8, !tbaa !3
  %59 = load i8**, i8*** %3, align 8, !tbaa !3
  %60 = load i32, i32* %6, align 4, !tbaa !7
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  store i8* %58, i8** %63, align 8, !tbaa !3
  store i32 -1, i32* %6, align 4, !tbaa !7
  br label %64

; <label>:64:                                     ; preds = %42, %27
  %65 = load i32, i32* %6, align 4, !tbaa !7
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4, !tbaa !7
  br label %22

; <label>:67:                                     ; preds = %22
  %68 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #2
  %69 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #2
  %70 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #2
  ret void
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
