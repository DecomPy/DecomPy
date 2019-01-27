; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141007_quicksort.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141007_quicksort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.a = private unnamed_addr constant [9 x i32] [i32 7, i32 12, i32 1, i32 -2, i32 0, i32 15, i32 4, i32 11, i32 9], align 16
@.str = private unnamed_addr constant [22 x i8] c"\0A\0AUnsorted array is:\09\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0A\0ASorted array is:  \00", align 1

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %1 = alloca [9 x i32], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [9 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* %3) #3
  %4 = bitcast [9 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([9 x i32]* @main.a to i8*), i64 36, i1 false)
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %16, %0
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = icmp slt i32 %8, 9
  br i1 %9, label %10, label %19

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %1, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !3
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %14)
  br label %16

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4, !tbaa !3
  br label %7

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %1, i32 0, i32 0
  call void @quickSort(i32* %20, i32 0, i32 8)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %22

; <label>:22:                                     ; preds = %31, %19
  %23 = load i32, i32* %2, align 4, !tbaa !3
  %24 = icmp slt i32 %23, 9
  br i1 %24, label %25, label %34

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %1, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !3
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %29)
  br label %31

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4, !tbaa !3
  br label %22

; <label>:34:                                     ; preds = %22
  %35 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast [9 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %36) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @quickSort(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !7
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %8 = load i32, i32* %5, align 4, !tbaa !3
  %9 = load i32, i32* %6, align 4, !tbaa !3
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32*, i32** %4, align 8, !tbaa !7
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !3
  %16 = call i32 @partition(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4, !tbaa !3
  %17 = load i32*, i32** %4, align 8, !tbaa !7
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %7, align 4, !tbaa !3
  %20 = sub nsw i32 %19, 1
  call void @quickSort(i32* %17, i32 %18, i32 %20)
  %21 = load i32*, i32** %4, align 8, !tbaa !7
  %22 = load i32, i32* %7, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4, !tbaa !3
  call void @quickSort(i32* %21, i32 %23, i32 %24)
  %25 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  br label %26

; <label>:26:                                     ; preds = %11, %3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @partition(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !7
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32*, i32** %4, align 8, !tbaa !7
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !3
  store i32 %19, i32* %7, align 4, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %20, i32* %8, align 4, !tbaa !3
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %59, %3
  br label %24

; <label>:24:                                     ; preds = %23
  br label %25

; <label>:25:                                     ; preds = %40, %24
  %26 = load i32, i32* %8, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32*, i32** %4, align 8, !tbaa !7
  %30 = load i32, i32* %8, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !3
  %34 = load i32, i32* %7, align 4, !tbaa !3
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %8, align 4, !tbaa !3
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = icmp sle i32 %37, %38
  br label %40

; <label>:40:                                     ; preds = %36, %28
  %41 = phi i1 [ false, %28 ], [ %39, %36 ]
  br i1 %41, label %25, label %42

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %46, %42
  %44 = load i32, i32* %9, align 4, !tbaa !3
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %9, align 4, !tbaa !3
  br label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32*, i32** %4, align 8, !tbaa !7
  %48 = load i32, i32* %9, align 4, !tbaa !3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !3
  %52 = load i32, i32* %7, align 4, !tbaa !3
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %43, label %54

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %8, align 4, !tbaa !3
  %56 = load i32, i32* %9, align 4, !tbaa !3
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %54
  br label %79

; <label>:59:                                     ; preds = %54
  %60 = load i32*, i32** %4, align 8, !tbaa !7
  %61 = load i32, i32* %8, align 4, !tbaa !3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !3
  store i32 %64, i32* %10, align 4, !tbaa !3
  %65 = load i32*, i32** %4, align 8, !tbaa !7
  %66 = load i32, i32* %9, align 4, !tbaa !3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !3
  %70 = load i32*, i32** %4, align 8, !tbaa !7
  %71 = load i32, i32* %8, align 4, !tbaa !3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4, !tbaa !3
  %74 = load i32, i32* %10, align 4, !tbaa !3
  %75 = load i32*, i32** %4, align 8, !tbaa !7
  %76 = load i32, i32* %9, align 4, !tbaa !3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4, !tbaa !3
  br label %23

; <label>:79:                                     ; preds = %58
  %80 = load i32*, i32** %4, align 8, !tbaa !7
  %81 = load i32, i32* %5, align 4, !tbaa !3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !3
  store i32 %84, i32* %10, align 4, !tbaa !3
  %85 = load i32*, i32** %4, align 8, !tbaa !7
  %86 = load i32, i32* %9, align 4, !tbaa !3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !3
  %90 = load i32*, i32** %4, align 8, !tbaa !7
  %91 = load i32, i32* %5, align 4, !tbaa !3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4, !tbaa !3
  %94 = load i32, i32* %10, align 4, !tbaa !3
  %95 = load i32*, i32** %4, align 8, !tbaa !7
  %96 = load i32, i32* %9, align 4, !tbaa !3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4, !tbaa !3
  %99 = load i32, i32* %9, align 4, !tbaa !3
  %100 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #3
  %101 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #3
  %102 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #3
  %103 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #3
  ret i32 %99
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
