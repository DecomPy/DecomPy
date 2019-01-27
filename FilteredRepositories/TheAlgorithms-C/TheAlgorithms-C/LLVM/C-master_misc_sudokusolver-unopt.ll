; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_sudokusolver.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_sudokusolver.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@M = constant i32 144, align 4
@N = common global i32 0, align 4
@R = common global i32 0, align 4
@C = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Invalid\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @OKrow(i32*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  %12 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %31, %4
  %14 = load i32, i32* %10, align 4, !tbaa !7
  %15 = load i32, i32* @N, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %6, align 8, !tbaa !3
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = load i32, i32* @N, align 4, !tbaa !7
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %10, align 4, !tbaa !7
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = load i32, i32* %9, align 4, !tbaa !7
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %17
  store i32 0, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %35

; <label>:30:                                     ; preds = %17
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %10, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4, !tbaa !7
  br label %13

; <label>:34:                                     ; preds = %13
  store i32 1, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %29
  %36 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @OKcol(i32*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  %12 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %31, %4
  %14 = load i32, i32* %10, align 4, !tbaa !7
  %15 = load i32, i32* @N, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %6, align 8, !tbaa !3
  %19 = load i32, i32* %10, align 4, !tbaa !7
  %20 = load i32, i32* @N, align 4, !tbaa !7
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4, !tbaa !7
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = load i32, i32* %9, align 4, !tbaa !7
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %17
  store i32 0, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %35

; <label>:30:                                     ; preds = %17
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %10, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4, !tbaa !7
  br label %13

; <label>:34:                                     ; preds = %13
  store i32 1, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %29
  %36 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: nounwind ssp uwtable
define i32 @OKbox(i32*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  %15 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = load i32, i32* @R, align 4, !tbaa !7
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %10, align 4, !tbaa !7
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = load i32, i32* %8, align 4, !tbaa !7
  %21 = load i32, i32* @C, align 4, !tbaa !7
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %11, align 4, !tbaa !7
  %23 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3
  %24 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  store i32 0, i32* %12, align 4, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %60, %4
  %26 = load i32, i32* %12, align 4, !tbaa !7
  %27 = load i32, i32* @R, align 4, !tbaa !7
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %63

; <label>:29:                                     ; preds = %25
  store i32 0, i32* %13, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %56, %29
  %31 = load i32, i32* %13, align 4, !tbaa !7
  %32 = load i32, i32* @C, align 4, !tbaa !7
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %59

; <label>:34:                                     ; preds = %30
  %35 = load i32*, i32** %6, align 8, !tbaa !3
  %36 = load i32, i32* %12, align 4, !tbaa !7
  %37 = load i32, i32* %10, align 4, !tbaa !7
  %38 = load i32, i32* @R, align 4, !tbaa !7
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = load i32, i32* @N, align 4, !tbaa !7
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4, !tbaa !7
  %44 = load i32, i32* %11, align 4, !tbaa !7
  %45 = load i32, i32* @C, align 4, !tbaa !7
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = add nsw i32 %42, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %35, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = load i32, i32* %9, align 4, !tbaa !7
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %34
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %64

; <label>:55:                                     ; preds = %34
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %13, align 4, !tbaa !7
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4, !tbaa !7
  br label %30

; <label>:59:                                     ; preds = %30
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %12, align 4, !tbaa !7
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4, !tbaa !7
  br label %25

; <label>:63:                                     ; preds = %25
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %54
  %65 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3
  %66 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3
  %67 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3
  %68 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: nounwind ssp uwtable
define i32 @OK(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %9 = load i32*, i32** %5, align 8, !tbaa !3
  %10 = load i32, i32* %6, align 4, !tbaa !7
  %11 = load i32, i32* %7, align 4, !tbaa !7
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = call i32 @OKrow(i32* %9, i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %4
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = load i32, i32* %7, align 4, !tbaa !7
  %19 = load i32, i32* %8, align 4, !tbaa !7
  %20 = call i32 @OKcol(i32* %16, i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %15
  %23 = load i32*, i32** %5, align 8, !tbaa !3
  %24 = load i32, i32* %6, align 4, !tbaa !7
  %25 = load i32, i32* %7, align 4, !tbaa !7
  %26 = load i32, i32* %8, align 4, !tbaa !7
  %27 = call i32 @OKbox(i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br label %29

; <label>:29:                                     ; preds = %22, %15, %4
  %30 = phi i1 [ false, %15 ], [ false, %4 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define void @print(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %37, %1
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = load i32, i32* @N, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %40

; <label>:11:                                     ; preds = %7
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %33, %11
  %13 = load i32, i32* %4, align 4, !tbaa !7
  %14 = load i32, i32* @N, align 4, !tbaa !7
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %2, align 8, !tbaa !3
  %18 = load i32, i32* %3, align 4, !tbaa !7
  %19 = load i32, i32* @N, align 4, !tbaa !7
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %4, align 4, !tbaa !7
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %17, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = load i32, i32* %4, align 4, !tbaa !7
  %27 = load i32, i32* @N, align 4, !tbaa !7
  %28 = sub nsw i32 %27, 1
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 10, i32 32
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %25, i32 %31)
  br label %33

; <label>:33:                                     ; preds = %16
  %34 = load i32, i32* %4, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4, !tbaa !7
  br label %12

; <label>:36:                                     ; preds = %12
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %3, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4, !tbaa !7
  br label %7

; <label>:40:                                     ; preds = %7
  %41 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  %42 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @solve(i32*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %78, %1
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = load i32, i32* @N, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %81

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %74, %17
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = load i32, i32* @N, align 4, !tbaa !7
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %77

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %3, align 8, !tbaa !3
  %24 = load i32, i32* %4, align 4, !tbaa !7
  %25 = load i32, i32* @N, align 4, !tbaa !7
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %5, align 4, !tbaa !7
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %73

; <label>:33:                                     ; preds = %22
  store i32 1, i32* %7, align 4, !tbaa !7
  store i32 1, i32* %6, align 4, !tbaa !7
  br label %34

; <label>:34:                                     ; preds = %69, %33
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = load i32, i32* @N, align 4, !tbaa !7
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %72

; <label>:38:                                     ; preds = %34
  %39 = load i32*, i32** %3, align 8, !tbaa !3
  %40 = load i32, i32* %4, align 4, !tbaa !7
  %41 = load i32, i32* %5, align 4, !tbaa !7
  %42 = load i32, i32* %6, align 4, !tbaa !7
  %43 = call i32 @OK(i32* %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %6, align 4, !tbaa !7
  %47 = load i32*, i32** %3, align 8, !tbaa !3
  %48 = load i32, i32* %4, align 4, !tbaa !7
  %49 = load i32, i32* @N, align 4, !tbaa !7
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %5, align 4, !tbaa !7
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  store i32 %46, i32* %54, align 4, !tbaa !7
  %55 = load i32*, i32** %3, align 8, !tbaa !3
  %56 = call i32 @solve(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %45
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

; <label>:59:                                     ; preds = %45
  %60 = load i32*, i32** %3, align 8, !tbaa !3
  %61 = load i32, i32* %4, align 4, !tbaa !7
  %62 = load i32, i32* @N, align 4, !tbaa !7
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %5, align 4, !tbaa !7
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  store i32 0, i32* %67, align 4, !tbaa !7
  br label %68

; <label>:68:                                     ; preds = %59, %38
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %6, align 4, !tbaa !7
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4, !tbaa !7
  br label %34

; <label>:72:                                     ; preds = %34
  br label %73

; <label>:73:                                     ; preds = %72, %22
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %5, align 4, !tbaa !7
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4, !tbaa !7
  br label %18

; <label>:77:                                     ; preds = %18
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %4, align 4, !tbaa !7
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4, !tbaa !7
  br label %13

; <label>:81:                                     ; preds = %13
  %82 = load i32, i32* %7, align 4, !tbaa !7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %81
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

; <label>:85:                                     ; preds = %81
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %84, %58
  %87 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3
  %90 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [144 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32* @N, i32* @R, i32* @C)
  %6 = bitcast [144 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 576, i8* %6) #3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %31, %0
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = load i32, i32* @N, align 4, !tbaa !7
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %27, %13
  %15 = load i32, i32* %4, align 4, !tbaa !7
  %16 = load i32, i32* @N, align 4, !tbaa !7
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %3, align 4, !tbaa !7
  %20 = load i32, i32* @N, align 4, !tbaa !7
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %4, align 4, !tbaa !7
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i64 0, i64 %24
  %26 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %25)
  br label %27

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %4, align 4, !tbaa !7
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4, !tbaa !7
  br label %14

; <label>:30:                                     ; preds = %14
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %3, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4, !tbaa !7
  br label %9

; <label>:34:                                     ; preds = %9
  %35 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i32 0, i32 0
  %36 = call i32 @solve(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds [144 x i32], [144 x i32]* %2, i32 0, i32 0
  call void @print(i32* %39)
  br label %42

; <label>:40:                                     ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %40, %38
  %43 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  %44 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = bitcast [144 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 576, i8* %45) #3
  ret i32 0
}

declare i32 @scanf(i8*, ...) #2

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
