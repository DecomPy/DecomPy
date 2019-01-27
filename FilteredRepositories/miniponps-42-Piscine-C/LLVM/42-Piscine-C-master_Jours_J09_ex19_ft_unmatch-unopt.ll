; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex19_ft_unmatch.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J09_ex19_ft_unmatch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_unmatch(i32*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %54, %2
  %14 = load i32, i32* %6, align 4, !tbaa !7
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %57

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %8, align 4, !tbaa !7
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %41, %17
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %8, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = load i32, i32* %5, align 4, !tbaa !7
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

; <label>:26:                                     ; preds = %18
  %27 = load i32*, i32** %4, align 8, !tbaa !3
  %28 = load i32, i32* %8, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = load i32*, i32** %4, align 8, !tbaa !3
  %33 = load i32, i32* %6, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %26
  %39 = load i32, i32* %7, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4, !tbaa !7
  br label %41

; <label>:41:                                     ; preds = %38, %26
  %42 = load i32, i32* %8, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4, !tbaa !7
  br label %18

; <label>:44:                                     ; preds = %18
  %45 = load i32, i32* %7, align 4, !tbaa !7
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %44
  %49 = load i32*, i32** %4, align 8, !tbaa !3
  %50 = load i32, i32* %6, align 4, !tbaa !7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !7
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %58

; <label>:54:                                     ; preds = %44
  %55 = load i32, i32* %6, align 4, !tbaa !7
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4, !tbaa !7
  br label %13

; <label>:57:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %58

; <label>:58:                                     ; preds = %57, %48
  %59 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #2
  %60 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #2
  %61 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #2
  %62 = load i32, i32* %3, align 4
  ret i32 %62
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
