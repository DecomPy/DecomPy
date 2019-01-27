; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_MergeSort.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_MergeSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"use non recursive\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @merge(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [50 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = bitcast [50 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %13) #3
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 -1, i32* %10, align 4, !tbaa !7
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %6, align 4, !tbaa !7
  store i32 %16, i32* %11, align 4, !tbaa !7
  %17 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %18, i32* %12, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %63, %4
  %20 = load i32, i32* %11, align 4, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !7
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %12, align 4, !tbaa !7
  %25 = load i32, i32* %8, align 4, !tbaa !7
  %26 = icmp slt i32 %24, %25
  br label %27

; <label>:27:                                     ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %64

; <label>:29:                                     ; preds = %27
  %30 = load i32*, i32** %5, align 8, !tbaa !3
  %31 = load i32, i32* %11, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = load i32*, i32** %5, align 8, !tbaa !3
  %36 = load i32, i32* %12, align 4, !tbaa !7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %40 = icmp sle i32 %34, %39
  br i1 %40, label %41, label %52

; <label>:41:                                     ; preds = %29
  %42 = load i32*, i32** %5, align 8, !tbaa !3
  %43 = load i32, i32* %11, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4, !tbaa !7
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !7
  %48 = load i32, i32* %10, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 %50
  store i32 %47, i32* %51, align 4, !tbaa !7
  br label %63

; <label>:52:                                     ; preds = %29
  %53 = load i32*, i32** %5, align 8, !tbaa !3
  %54 = load i32, i32* %12, align 4, !tbaa !7
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4, !tbaa !7
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !7
  %59 = load i32, i32* %10, align 4, !tbaa !7
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4, !tbaa !7
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 %61
  store i32 %58, i32* %62, align 4, !tbaa !7
  br label %63

; <label>:63:                                     ; preds = %52, %41
  br label %19

; <label>:64:                                     ; preds = %27
  br label %65

; <label>:65:                                     ; preds = %69, %64
  %66 = load i32, i32* %11, align 4, !tbaa !7
  %67 = load i32, i32* %7, align 4, !tbaa !7
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

; <label>:69:                                     ; preds = %65
  %70 = load i32*, i32** %5, align 8, !tbaa !3
  %71 = load i32, i32* %11, align 4, !tbaa !7
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4, !tbaa !7
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !7
  %76 = load i32, i32* %10, align 4, !tbaa !7
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4, !tbaa !7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 %78
  store i32 %75, i32* %79, align 4, !tbaa !7
  br label %65

; <label>:80:                                     ; preds = %65
  br label %81

; <label>:81:                                     ; preds = %85, %80
  %82 = load i32, i32* %12, align 4, !tbaa !7
  %83 = load i32, i32* %8, align 4, !tbaa !7
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %81
  %86 = load i32*, i32** %5, align 8, !tbaa !3
  %87 = load i32, i32* %12, align 4, !tbaa !7
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4, !tbaa !7
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !7
  %92 = load i32, i32* %10, align 4, !tbaa !7
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4, !tbaa !7
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 %94
  store i32 %91, i32* %95, align 4, !tbaa !7
  br label %81

; <label>:96:                                     ; preds = %81
  %97 = load i32, i32* %6, align 4, !tbaa !7
  store i32 %97, i32* %11, align 4, !tbaa !7
  br label %98

; <label>:98:                                     ; preds = %113, %96
  %99 = load i32, i32* %11, align 4, !tbaa !7
  %100 = load i32, i32* %8, align 4, !tbaa !7
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %116

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %11, align 4, !tbaa !7
  %104 = load i32, i32* %6, align 4, !tbaa !7
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !7
  %109 = load i32*, i32** %5, align 8, !tbaa !3
  %110 = load i32, i32* %11, align 4, !tbaa !7
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4, !tbaa !7
  br label %113

; <label>:113:                                    ; preds = %102
  %114 = load i32, i32* %11, align 4, !tbaa !7
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4, !tbaa !7
  br label %98

; <label>:116:                                    ; preds = %98
  %117 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %117) #3
  %118 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #3
  %119 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #3
  %120 = bitcast [50 x i32]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %120) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @mergesort_recursive(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %6, align 4, !tbaa !7
  %10 = sub nsw i32 %9, 1
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  br label %30

; <label>:13:                                     ; preds = %3
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = load i32, i32* %6, align 4, !tbaa !7
  %17 = add nsw i32 %15, %16
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %7, align 4, !tbaa !7
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !7
  call void @mergesort_recursive(i32* %19, i32 %20, i32 %21)
  %22 = load i32*, i32** %4, align 8, !tbaa !3
  %23 = load i32, i32* %7, align 4, !tbaa !7
  %24 = load i32, i32* %6, align 4, !tbaa !7
  call void @mergesort_recursive(i32* %22, i32 %23, i32 %24)
  %25 = load i32*, i32** %4, align 8, !tbaa !3
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = load i32, i32* %6, align 4, !tbaa !7
  call void @merge(i32* %25, i32 %26, i32 %27, i32 %28)
  %29 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  br label %30

; <label>:30:                                     ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mergesort_nonrecursive(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 2, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %49, %2
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = load i32, i32* %4, align 4, !tbaa !7
  %18 = mul nsw i32 %17, 2
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %52

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %44, %20
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = load i32, i32* %4, align 4, !tbaa !7
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %6, align 4, !tbaa !7
  store i32 %26, i32* %7, align 4, !tbaa !7
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = load i32, i32* %5, align 4, !tbaa !7
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %8, align 4, !tbaa !7
  %31 = load i32, i32* %7, align 4, !tbaa !7
  %32 = load i32, i32* %5, align 4, !tbaa !7
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4, !tbaa !7
  %34 = load i32, i32* %9, align 4, !tbaa !7
  %35 = load i32, i32* %4, align 4, !tbaa !7
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %4, align 4, !tbaa !7
  store i32 %38, i32* %9, align 4, !tbaa !7
  br label %39

; <label>:39:                                     ; preds = %37, %25
  %40 = load i32*, i32** %3, align 8, !tbaa !3
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = load i32, i32* %8, align 4, !tbaa !7
  %43 = load i32, i32* %9, align 4, !tbaa !7
  call void @merge(i32* %40, i32 %41, i32 %42, i32 %43)
  br label %44

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %5, align 4, !tbaa !7
  %46 = load i32, i32* %6, align 4, !tbaa !7
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %6, align 4, !tbaa !7
  br label %21

; <label>:48:                                     ; preds = %21
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %5, align 4, !tbaa !7
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:52:                                     ; preds = %15
  %53 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3
  %54 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3
  %55 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  %56 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #3
  %57 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @displayoutcome(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16)
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %23 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %4) #3
  %5 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 50, i32* %3, align 4, !tbaa !7
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %8 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %9 = load i32, i32* %3, align 4, !tbaa !7
  call void @mergesort_nonrecursive(i32* %8, i32 %9)
  %10 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %11 = load i32, i32* %3, align 4, !tbaa !7
  call void @displayoutcome(i32* %10, i32 %11)
  %12 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3
  %13 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %13) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
