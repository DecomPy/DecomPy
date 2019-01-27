; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_SortApplication_quicksort_k_big.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_SortApplication_quicksort_k_big.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%dth maxest number=%d\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"top%d maxest numbers:\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swap(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %13, i32* %7, align 4, !tbaa !7
  %14 = load i32*, i32** %4, align 8, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4, !tbaa !7
  %23 = load i32, i32* %7, align 4, !tbaa !7
  %24 = load i32*, i32** %4, align 8, !tbaa !3
  %25 = load i32, i32* %6, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4, !tbaa !7
  %28 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @quicksplit_findtopk(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = load i32, i32* %7, align 4, !tbaa !7
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %4
  br label %129

; <label>:17:                                     ; preds = %4
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = load i32*, i32** %5, align 8, !tbaa !3
  %20 = load i32, i32* %7, align 4, !tbaa !7
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !7
  store i32 %24, i32* %9, align 4, !tbaa !7
  %25 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3
  %26 = load i32, i32* %6, align 4, !tbaa !7
  store i32 %26, i32* %10, align 4, !tbaa !7
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #3
  %28 = load i32, i32* %7, align 4, !tbaa !7
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %11, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %78, %17
  %31 = load i32, i32* %10, align 4, !tbaa !7
  %32 = load i32, i32* %11, align 4, !tbaa !7
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %79

; <label>:34:                                     ; preds = %30
  br label %35

; <label>:35:                                     ; preds = %50, %34
  %36 = load i32, i32* %10, align 4, !tbaa !7
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = sub nsw i32 %37, 2
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %48

; <label>:40:                                     ; preds = %35
  %41 = load i32*, i32** %5, align 8, !tbaa !3
  %42 = load i32, i32* %10, align 4, !tbaa !7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !7
  %46 = load i32, i32* %9, align 4, !tbaa !7
  %47 = icmp slt i32 %45, %46
  br label %48

; <label>:48:                                     ; preds = %40, %35
  %49 = phi i1 [ false, %35 ], [ %47, %40 ]
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %48
  %51 = load i32, i32* %10, align 4, !tbaa !7
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4, !tbaa !7
  br label %35

; <label>:53:                                     ; preds = %48
  br label %54

; <label>:54:                                     ; preds = %67, %53
  %55 = load i32, i32* %11, align 4, !tbaa !7
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %54
  %58 = load i32*, i32** %5, align 8, !tbaa !3
  %59 = load i32, i32* %11, align 4, !tbaa !7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = load i32, i32* %9, align 4, !tbaa !7
  %64 = icmp sge i32 %62, %63
  br label %65

; <label>:65:                                     ; preds = %57, %54
  %66 = phi i1 [ false, %54 ], [ %64, %57 ]
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %65
  %68 = load i32, i32* %11, align 4, !tbaa !7
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %11, align 4, !tbaa !7
  br label %54

; <label>:70:                                     ; preds = %65
  %71 = load i32, i32* %10, align 4, !tbaa !7
  %72 = load i32, i32* %11, align 4, !tbaa !7
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %78

; <label>:74:                                     ; preds = %70
  %75 = load i32*, i32** %5, align 8, !tbaa !3
  %76 = load i32, i32* %10, align 4, !tbaa !7
  %77 = load i32, i32* %11, align 4, !tbaa !7
  call void @swap(i32* %75, i32 %76, i32 %77)
  br label %78

; <label>:78:                                     ; preds = %74, %70
  br label %30

; <label>:79:                                     ; preds = %30
  %80 = load i32*, i32** %5, align 8, !tbaa !3
  %81 = load i32, i32* %10, align 4, !tbaa !7
  %82 = load i32, i32* %7, align 4, !tbaa !7
  %83 = sub nsw i32 %82, 1
  call void @swap(i32* %80, i32 %81, i32 %83)
  %84 = load i32, i32* %8, align 4, !tbaa !7
  %85 = load i32, i32* %10, align 4, !tbaa !7
  %86 = sub nsw i32 50, %85
  %87 = sub nsw i32 %86, 1
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %94

; <label>:89:                                     ; preds = %79
  %90 = load i32*, i32** %5, align 8, !tbaa !3
  %91 = load i32, i32* %6, align 4, !tbaa !7
  %92 = load i32, i32* %10, align 4, !tbaa !7
  %93 = load i32, i32* %8, align 4, !tbaa !7
  call void @quicksplit_findtopk(i32* %90, i32 %91, i32 %92, i32 %93)
  br label %125

; <label>:94:                                     ; preds = %79
  %95 = load i32, i32* %8, align 4, !tbaa !7
  %96 = load i32, i32* %10, align 4, !tbaa !7
  %97 = sub nsw i32 50, %96
  %98 = sub nsw i32 %97, 1
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %106

; <label>:100:                                    ; preds = %94
  %101 = load i32*, i32** %5, align 8, !tbaa !3
  %102 = load i32, i32* %10, align 4, !tbaa !7
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %7, align 4, !tbaa !7
  %105 = load i32, i32* %8, align 4, !tbaa !7
  call void @quicksplit_findtopk(i32* %101, i32 %103, i32 %104, i32 %105)
  br label %124

; <label>:106:                                    ; preds = %94
  %107 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %107) #3
  %108 = load i32, i32* %10, align 4, !tbaa !7
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4, !tbaa !7
  br label %110

; <label>:110:                                    ; preds = %113, %106
  %111 = load i32, i32* %12, align 4, !tbaa !7
  %112 = icmp slt i32 %111, 50
  br i1 %112, label %113, label %121

; <label>:113:                                    ; preds = %110
  %114 = load i32*, i32** %5, align 8, !tbaa !3
  %115 = load i32, i32* %12, align 4, !tbaa !7
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4, !tbaa !7
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !7
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %119)
  br label %110

; <label>:121:                                    ; preds = %110
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %123 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %123) #3
  br label %124

; <label>:124:                                    ; preds = %121, %100
  br label %125

; <label>:125:                                    ; preds = %124, %89
  %126 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %126) #3
  %127 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %127) #3
  %128 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %128) #3
  br label %129

; <label>:129:                                    ; preds = %125, %16
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @quicksplit_find_kth_max(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %12 = load i32, i32* %6, align 4, !tbaa !7
  %13 = load i32, i32* %7, align 4, !tbaa !7
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  br label %112

; <label>:16:                                     ; preds = %4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !7
  store i32 %23, i32* %9, align 4, !tbaa !7
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  %25 = load i32, i32* %6, align 4, !tbaa !7
  store i32 %25, i32* %10, align 4, !tbaa !7
  %26 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %11, align 4, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %77, %16
  %30 = load i32, i32* %10, align 4, !tbaa !7
  %31 = load i32, i32* %11, align 4, !tbaa !7
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %78

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %49, %33
  %35 = load i32, i32* %10, align 4, !tbaa !7
  %36 = load i32, i32* %7, align 4, !tbaa !7
  %37 = sub nsw i32 %36, 2
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %34
  %40 = load i32*, i32** %5, align 8, !tbaa !3
  %41 = load i32, i32* %10, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = load i32, i32* %9, align 4, !tbaa !7
  %46 = icmp slt i32 %44, %45
  br label %47

; <label>:47:                                     ; preds = %39, %34
  %48 = phi i1 [ false, %34 ], [ %46, %39 ]
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %47
  %50 = load i32, i32* %10, align 4, !tbaa !7
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4, !tbaa !7
  br label %34

; <label>:52:                                     ; preds = %47
  br label %53

; <label>:53:                                     ; preds = %66, %52
  %54 = load i32, i32* %11, align 4, !tbaa !7
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %64

; <label>:56:                                     ; preds = %53
  %57 = load i32*, i32** %5, align 8, !tbaa !3
  %58 = load i32, i32* %11, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !7
  %62 = load i32, i32* %9, align 4, !tbaa !7
  %63 = icmp sge i32 %61, %62
  br label %64

; <label>:64:                                     ; preds = %56, %53
  %65 = phi i1 [ false, %53 ], [ %63, %56 ]
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %64
  %67 = load i32, i32* %11, align 4, !tbaa !7
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4, !tbaa !7
  br label %53

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %10, align 4, !tbaa !7
  %71 = load i32, i32* %11, align 4, !tbaa !7
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

; <label>:73:                                     ; preds = %69
  %74 = load i32*, i32** %5, align 8, !tbaa !3
  %75 = load i32, i32* %10, align 4, !tbaa !7
  %76 = load i32, i32* %11, align 4, !tbaa !7
  call void @swap(i32* %74, i32 %75, i32 %76)
  br label %77

; <label>:77:                                     ; preds = %73, %69
  br label %29

; <label>:78:                                     ; preds = %29
  %79 = load i32*, i32** %5, align 8, !tbaa !3
  %80 = load i32, i32* %10, align 4, !tbaa !7
  %81 = load i32, i32* %7, align 4, !tbaa !7
  %82 = sub nsw i32 %81, 1
  call void @swap(i32* %79, i32 %80, i32 %82)
  %83 = load i32, i32* %8, align 4, !tbaa !7
  %84 = load i32, i32* %10, align 4, !tbaa !7
  %85 = sub nsw i32 50, %84
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %92

; <label>:87:                                     ; preds = %78
  %88 = load i32*, i32** %5, align 8, !tbaa !3
  %89 = load i32, i32* %6, align 4, !tbaa !7
  %90 = load i32, i32* %10, align 4, !tbaa !7
  %91 = load i32, i32* %8, align 4, !tbaa !7
  call void @quicksplit_find_kth_max(i32* %88, i32 %89, i32 %90, i32 %91)
  br label %108

; <label>:92:                                     ; preds = %78
  %93 = load i32, i32* %8, align 4, !tbaa !7
  %94 = load i32, i32* %10, align 4, !tbaa !7
  %95 = sub nsw i32 50, %94
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %103

; <label>:97:                                     ; preds = %92
  %98 = load i32*, i32** %5, align 8, !tbaa !3
  %99 = load i32, i32* %10, align 4, !tbaa !7
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %7, align 4, !tbaa !7
  %102 = load i32, i32* %8, align 4, !tbaa !7
  call void @quicksplit_find_kth_max(i32* %98, i32 %100, i32 %101, i32 %102)
  br label %107

; <label>:103:                                    ; preds = %92
  %104 = load i32, i32* %8, align 4, !tbaa !7
  %105 = load i32, i32* %9, align 4, !tbaa !7
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %104, i32 %105)
  br label %107

; <label>:107:                                    ; preds = %103, %97
  br label %108

; <label>:108:                                    ; preds = %107, %87
  %109 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #3
  %110 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #3
  %111 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #3
  br label %112

; <label>:112:                                    ; preds = %108, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [50 x i32], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = bitcast [50 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %8) #3
  %9 = bitcast [50 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i8**, i8*** %5, align 8, !tbaa !3
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8, !tbaa !3
  %14 = call i32 @atoi(i8* %13)
  store i32 %14, i32* %7, align 4, !tbaa !7
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp sgt i32 %15, 50
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i32 50, i32* %7, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %17, %2
  %19 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i32 0, i32 0
  %20 = load i32, i32* %7, align 4, !tbaa !7
  call void @quicksplit_find_kth_max(i32* %19, i32 0, i32 50, i32 %20)
  %21 = load i32, i32* %7, align 4, !tbaa !7
  %22 = icmp eq i32 %21, 50
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4, !tbaa !7
  br label %26

; <label>:26:                                     ; preds = %23, %18
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %27)
  %29 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i32 0, i32 0
  %30 = load i32, i32* %7, align 4, !tbaa !7
  call void @quicksplit_findtopk(i32* %29, i32 0, i32 50, i32 %30)
  %31 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  %32 = bitcast [50 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %32) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
