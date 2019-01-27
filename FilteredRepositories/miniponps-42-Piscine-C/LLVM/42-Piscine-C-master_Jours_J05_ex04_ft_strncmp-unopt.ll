; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex04_ft_strncmp.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J05_ex04_ft_strncmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_strncmp(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i8* %1, i8** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %37, %3
  %12 = load i8*, i8** %5, align 8, !tbaa !3
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8, !tbaa !3
  %14 = load i8, i8* %12, align 1, !tbaa !9
  %15 = sext i8 %14 to i32
  %16 = load i8*, i8** %6, align 8, !tbaa !3
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %6, align 8, !tbaa !3
  %18 = load i8, i8* %16, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %40

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %8, align 4, !tbaa !7
  %23 = load i32, i32* %7, align 4, !tbaa !7
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %50

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %5, align 8, !tbaa !3
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %6, align 8, !tbaa !3
  %33 = load i8, i8* %32, align 1, !tbaa !9
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %31
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %50

; <label>:37:                                     ; preds = %31, %26
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:40:                                     ; preds = %11
  %41 = load i8*, i8** %5, align 8, !tbaa !3
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %5, align 8, !tbaa !3
  %43 = load i8, i8* %42, align 1, !tbaa !9
  %44 = sext i8 %43 to i32
  %45 = load i8*, i8** %6, align 8, !tbaa !3
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %6, align 8, !tbaa !3
  %47 = load i8, i8* %46, align 1, !tbaa !9
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %44, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %50

; <label>:50:                                     ; preds = %40, %36, %25
  %51 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #2
  %52 = load i32, i32* %4, align 4
  ret i32 %52
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
