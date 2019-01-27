; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex06_srcs_ft_atoi.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex06_srcs_ft_atoi.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_atoi(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %3, align 4, !tbaa !7
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %12, %1
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = load i8, i8* %8, align 1, !tbaa !9
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %2, align 8, !tbaa !3
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %2, align 8, !tbaa !3
  br label %7

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %2, align 8, !tbaa !3
  %17 = load i8, i8* %16, align 1, !tbaa !9
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %2, align 8, !tbaa !3
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %2, align 8, !tbaa !3
  br label %32

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %2, align 8, !tbaa !3
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %23
  store i32 1, i32* %3, align 4, !tbaa !7
  %29 = load i8*, i8** %2, align 8, !tbaa !3
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %2, align 8, !tbaa !3
  br label %31

; <label>:31:                                     ; preds = %28, %23
  br label %32

; <label>:32:                                     ; preds = %31, %20
  br label %33

; <label>:33:                                     ; preds = %45, %32
  %34 = load i8*, i8** %2, align 8, !tbaa !3
  %35 = load i8, i8* %34, align 1, !tbaa !9
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 57
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %2, align 8, !tbaa !3
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 48
  br label %43

; <label>:43:                                     ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %55

; <label>:45:                                     ; preds = %43
  %46 = load i32, i32* %4, align 4, !tbaa !7
  %47 = mul nsw i32 %46, 10
  %48 = load i8*, i8** %2, align 8, !tbaa !3
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = sub nsw i32 %47, %51
  store i32 %52, i32* %4, align 4, !tbaa !7
  %53 = load i8*, i8** %2, align 8, !tbaa !3
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %2, align 8, !tbaa !3
  br label %33

; <label>:55:                                     ; preds = %43
  %56 = load i32, i32* %3, align 4, !tbaa !7
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %4, align 4, !tbaa !7
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4, !tbaa !7
  br label %61

; <label>:61:                                     ; preds = %58, %55
  %62 = load i32, i32* %4, align 4, !tbaa !7
  %63 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #2
  %64 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #2
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
!9 = !{!5, !5, i64 0}
