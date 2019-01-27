; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Exam_ExamFinal_3-0-pgcd_rendu_pgcd.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Exam_ExamFinal_3-0-pgcd_rendu_pgcd.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @pgcd(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 1, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12, %2
  store i32 1, i32* %7, align 4
  br label %45

; <label>:16:                                     ; preds = %12
  br label %17

; <label>:17:                                     ; preds = %39, %16
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = icmp sle i32 %22, %23
  br label %25

; <label>:25:                                     ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %42

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !3
  %30 = srem i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %4, align 4, !tbaa !3
  %34 = load i32, i32* %5, align 4, !tbaa !3
  %35 = srem i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %38, i32* %6, align 4, !tbaa !3
  br label %39

; <label>:39:                                     ; preds = %37, %32, %27
  %40 = load i32, i32* %5, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4, !tbaa !3
  br label %17

; <label>:42:                                     ; preds = %25
  %43 = load i32, i32* %6, align 4, !tbaa !3
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %43)
  store i32 0, i32* %7, align 4
  br label %45

; <label>:45:                                     ; preds = %42, %15
  %46 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %50 [
    i32 0, label %49
    i32 1, label %49
  ]

; <label>:49:                                     ; preds = %45, %45
  ret void

; <label>:50:                                     ; preds = %45
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %6 = load i32, i32* %4, align 4, !tbaa !3
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %2
  %9 = load i8**, i8*** %5, align 8, !tbaa !7
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8, !tbaa !7
  %12 = call i32 @atoi(i8* %11)
  %13 = load i8**, i8*** %5, align 8, !tbaa !7
  %14 = getelementptr inbounds i8*, i8** %13, i64 2
  %15 = load i8*, i8** %14, align 8, !tbaa !7
  %16 = call i32 @atoi(i8* %15)
  call void @pgcd(i32 %12, i32 %16)
  br label %17

; <label>:17:                                     ; preds = %8, %2
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret i32 0
}

declare i32 @atoi(i8*) #2

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
