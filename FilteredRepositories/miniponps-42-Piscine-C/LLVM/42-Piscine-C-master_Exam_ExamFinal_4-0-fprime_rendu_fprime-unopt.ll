; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Exam_ExamFinal_4-0-fprime_rendu_fprime.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Exam_ExamFinal_4-0-fprime_rendu_fprime.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @ft_fprime(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 2, i32* %4, align 4, !tbaa !7
  %8 = load i8*, i8** %2, align 8, !tbaa !3
  %9 = call i32 @atoi(i8* %8)
  store i32 %9, i32* %3, align 4, !tbaa !7
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %12, %1
  %15 = load i32, i32* %3, align 4, !tbaa !7
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  store i32 1, i32* %5, align 4
  br label %44

; <label>:18:                                     ; preds = %14
  br label %19

; <label>:19:                                     ; preds = %40, %18
  %20 = load i32, i32* %4, align 4, !tbaa !7
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %43

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4, !tbaa !7
  %25 = load i32, i32* %4, align 4, !tbaa !7
  %26 = srem i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %4, align 4, !tbaa !7
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %29)
  %31 = load i32, i32* %3, align 4, !tbaa !7
  %32 = load i32, i32* %4, align 4, !tbaa !7
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %28
  store i32 1, i32* %5, align 4
  br label %44

; <label>:35:                                     ; preds = %28
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %37 = load i32, i32* %3, align 4, !tbaa !7
  %38 = load i32, i32* %4, align 4, !tbaa !7
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %3, align 4, !tbaa !7
  store i32 1, i32* %4, align 4, !tbaa !7
  br label %40

; <label>:40:                                     ; preds = %35, %23
  %41 = load i32, i32* %4, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4, !tbaa !7
  br label %19

; <label>:43:                                     ; preds = %19
  store i32 0, i32* %5, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %34, %17
  %45 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3
  %46 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %49 [
    i32 0, label %48
    i32 1, label %48
  ]

; <label>:48:                                     ; preds = %44, %44
  ret void

; <label>:49:                                     ; preds = %44
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = load i8**, i8*** %5, align 8, !tbaa !3
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  call void @ft_fprime(i8* %11)
  br label %12

; <label>:12:                                     ; preds = %8, %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

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
