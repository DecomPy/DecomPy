; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_insertionSort.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_insertionSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %14, %0
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %11
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %12)
  br label %14

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i32 0, i32 0
  call void @insertionSort(i32* %18, i32 5)
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %28, %17
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4, !tbaa !3
  br label %19

; <label>:31:                                     ; preds = %19
  %32 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %33) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @insertionSort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 1, i32* %5, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %57, %2
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !3
  %14 = sub nsw i32 %13, 1
  %15 = icmp sle i32 %12, %14
  br i1 %15, label %16, label %60

; <label>:16:                                     ; preds = %11
  %17 = load i32*, i32** %3, align 8, !tbaa !7
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !3
  store i32 %21, i32* %7, align 4, !tbaa !3
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %6, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %37, %16
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = load i32*, i32** %3, align 8, !tbaa !7
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !3
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = icmp sge i32 %33, 0
  br label %35

; <label>:35:                                     ; preds = %32, %24
  %36 = phi i1 [ false, %24 ], [ %34, %32 ]
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %35
  %38 = load i32*, i32** %3, align 8, !tbaa !7
  %39 = load i32, i32* %6, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !3
  %43 = load i32*, i32** %3, align 8, !tbaa !7
  %44 = load i32, i32* %6, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4, !tbaa !3
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4, !tbaa !3
  br label %24

; <label>:50:                                     ; preds = %35
  %51 = load i32, i32* %7, align 4, !tbaa !3
  %52 = load i32*, i32** %3, align 8, !tbaa !7
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4, !tbaa !3
  br label %57

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %5, align 4, !tbaa !3
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4, !tbaa !3
  br label %11

; <label>:60:                                     ; preds = %11
  %61 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
