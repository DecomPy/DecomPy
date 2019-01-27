; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_QuickSort.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_QuickSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@sp = global i32 -1, align 4
@stack = common global [1000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"use non recursive\0A\00", align 1

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
define void @quicksort_recursive(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  br label %90

; <label>:14:                                     ; preds = %3
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32*, i32** %4, align 8, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !7
  store i32 %21, i32* %7, align 4, !tbaa !7
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  %23 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %23, i32* %8, align 4, !tbaa !7
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  %25 = load i32, i32* %6, align 4, !tbaa !7
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %9, align 4, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %74, %14
  %28 = load i32, i32* %8, align 4, !tbaa !7
  %29 = load i32, i32* %9, align 4, !tbaa !7
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %75

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %46, %31
  %33 = load i32*, i32** %4, align 8, !tbaa !3
  %34 = load i32, i32* %8, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = load i32, i32* %7, align 4, !tbaa !7
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %8, align 4, !tbaa !7
  %42 = load i32, i32* %6, align 4, !tbaa !7
  %43 = icmp slt i32 %41, %42
  br label %44

; <label>:44:                                     ; preds = %40, %32
  %45 = phi i1 [ false, %32 ], [ %43, %40 ]
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %44
  %47 = load i32, i32* %8, align 4, !tbaa !7
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4, !tbaa !7
  br label %32

; <label>:49:                                     ; preds = %44
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32*, i32** %4, align 8, !tbaa !3
  %52 = load i32, i32* %9, align 4, !tbaa !7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !7
  %56 = load i32, i32* %7, align 4, !tbaa !7
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %9, align 4, !tbaa !7
  %60 = icmp sge i32 %59, 0
  br label %61

; <label>:61:                                     ; preds = %58, %50
  %62 = phi i1 [ false, %50 ], [ %60, %58 ]
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %9, align 4, !tbaa !7
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4, !tbaa !7
  br label %50

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %8, align 4, !tbaa !7
  %68 = load i32, i32* %9, align 4, !tbaa !7
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %66
  %71 = load i32*, i32** %4, align 8, !tbaa !3
  %72 = load i32, i32* %8, align 4, !tbaa !7
  %73 = load i32, i32* %9, align 4, !tbaa !7
  call void @swap(i32* %71, i32 %72, i32 %73)
  br label %74

; <label>:74:                                     ; preds = %70, %66
  br label %27

; <label>:75:                                     ; preds = %27
  %76 = load i32*, i32** %4, align 8, !tbaa !3
  %77 = load i32, i32* %8, align 4, !tbaa !7
  %78 = load i32, i32* %6, align 4, !tbaa !7
  %79 = sub nsw i32 %78, 1
  call void @swap(i32* %76, i32 %77, i32 %79)
  %80 = load i32*, i32** %4, align 8, !tbaa !3
  %81 = load i32, i32* %5, align 4, !tbaa !7
  %82 = load i32, i32* %8, align 4, !tbaa !7
  call void @quicksort_recursive(i32* %80, i32 %81, i32 %82)
  %83 = load i32*, i32** %4, align 8, !tbaa !3
  %84 = load i32, i32* %8, align 4, !tbaa !7
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %6, align 4, !tbaa !7
  call void @quicksort_recursive(i32* %83, i32 %85, i32 %86)
  %87 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3
  br label %90

; <label>:90:                                     ; preds = %75, %13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @push(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !7
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = load i32, i32* @sp, align 4, !tbaa !7
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @sp, align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1000 x i32], [1000 x i32]* @stack, i64 0, i64 %8
  store i32 %5, i32* %9, align 4, !tbaa !7
  %10 = load i32, i32* %4, align 4, !tbaa !7
  %11 = load i32, i32* @sp, align 4, !tbaa !7
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @sp, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1000 x i32], [1000 x i32]* @stack, i64 0, i64 %13
  store i32 %10, i32* %14, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @pop() #0 {
  %1 = load i32, i32* @sp, align 4, !tbaa !7
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @sp, align 4, !tbaa !7
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [1000 x i32], [1000 x i32]* @stack, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !7
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @empty() #0 {
  %1 = load i32, i32* @sp, align 4, !tbaa !7
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define void @quicksort_nonrecursive(i32*, i32) #0 {
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
  store i32 0, i32* %5, align 4, !tbaa !7
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %4, align 4, !tbaa !7
  store i32 %12, i32* %6, align 4, !tbaa !7
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = load i32, i32* %6, align 4, !tbaa !7
  call void @push(i32 %16, i32 %17)
  br label %18

; <label>:18:                                     ; preds = %102, %2
  %19 = call i32 @empty()
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %103

; <label>:22:                                     ; preds = %18
  %23 = call i32 @pop()
  store i32 %23, i32* %6, align 4, !tbaa !7
  %24 = call i32 @pop()
  store i32 %24, i32* %5, align 4, !tbaa !7
  %25 = load i32*, i32** %3, align 8, !tbaa !3
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !7
  store i32 %30, i32* %9, align 4, !tbaa !7
  %31 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %31, i32* %7, align 4, !tbaa !7
  %32 = load i32, i32* %6, align 4, !tbaa !7
  %33 = sub nsw i32 %32, 2
  store i32 %33, i32* %8, align 4, !tbaa !7
  br label %34

; <label>:34:                                     ; preds = %81, %22
  %35 = load i32, i32* %7, align 4, !tbaa !7
  %36 = load i32, i32* %8, align 4, !tbaa !7
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %82

; <label>:38:                                     ; preds = %34
  br label %39

; <label>:39:                                     ; preds = %53, %38
  %40 = load i32, i32* %7, align 4, !tbaa !7
  %41 = load i32, i32* %6, align 4, !tbaa !7
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %39
  %44 = load i32*, i32** %3, align 8, !tbaa !3
  %45 = load i32, i32* %7, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !7
  %49 = load i32, i32* %9, align 4, !tbaa !7
  %50 = icmp slt i32 %48, %49
  br label %51

; <label>:51:                                     ; preds = %43, %39
  %52 = phi i1 [ false, %39 ], [ %50, %43 ]
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %51
  %54 = load i32, i32* %7, align 4, !tbaa !7
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4, !tbaa !7
  br label %39

; <label>:56:                                     ; preds = %51
  br label %57

; <label>:57:                                     ; preds = %70, %56
  %58 = load i32, i32* %8, align 4, !tbaa !7
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %68

; <label>:60:                                     ; preds = %57
  %61 = load i32*, i32** %3, align 8, !tbaa !3
  %62 = load i32, i32* %8, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !7
  %66 = load i32, i32* %9, align 4, !tbaa !7
  %67 = icmp sge i32 %65, %66
  br label %68

; <label>:68:                                     ; preds = %60, %57
  %69 = phi i1 [ false, %57 ], [ %67, %60 ]
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %68
  %71 = load i32, i32* %8, align 4, !tbaa !7
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4, !tbaa !7
  br label %57

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %7, align 4, !tbaa !7
  %75 = load i32, i32* %8, align 4, !tbaa !7
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %81

; <label>:77:                                     ; preds = %73
  %78 = load i32*, i32** %3, align 8, !tbaa !3
  %79 = load i32, i32* %7, align 4, !tbaa !7
  %80 = load i32, i32* %8, align 4, !tbaa !7
  call void @swap(i32* %78, i32 %79, i32 %80)
  br label %81

; <label>:81:                                     ; preds = %77, %73
  br label %34

; <label>:82:                                     ; preds = %34
  %83 = load i32*, i32** %3, align 8, !tbaa !3
  %84 = load i32, i32* %7, align 4, !tbaa !7
  %85 = load i32, i32* %6, align 4, !tbaa !7
  %86 = sub nsw i32 %85, 1
  call void @swap(i32* %83, i32 %84, i32 %86)
  %87 = load i32, i32* %5, align 4, !tbaa !7
  %88 = load i32, i32* %7, align 4, !tbaa !7
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %93

; <label>:90:                                     ; preds = %82
  %91 = load i32, i32* %5, align 4, !tbaa !7
  %92 = load i32, i32* %7, align 4, !tbaa !7
  call void @push(i32 %91, i32 %92)
  br label %93

; <label>:93:                                     ; preds = %90, %82
  %94 = load i32, i32* %7, align 4, !tbaa !7
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %6, align 4, !tbaa !7
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* %7, align 4, !tbaa !7
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %6, align 4, !tbaa !7
  call void @push(i32 %100, i32 %101)
  br label %102

; <label>:102:                                    ; preds = %98, %93
  br label %18

; <label>:103:                                    ; preds = %18
  %104 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #3
  %105 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #3
  %106 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #3
  %107 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #3
  %108 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #3
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
  call void @quicksort_nonrecursive(i32* %8, i32 %9)
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
