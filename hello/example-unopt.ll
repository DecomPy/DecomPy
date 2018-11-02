; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Process = type { i32, double, double, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\0A == Shortest - Job - First ==\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Simulating %d th round of processes @ time %d:\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Process %d took %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Turnaround time : %d\0A Waiting time : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\0A == Shortest - Job - First Live ==\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"ShorSimulating live %d th round of processes @ time %d:\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Process %d was estimated for %lf and took %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Turnaround time : %d\0A Waiting time : %d\0A Estimation Error : %lf \0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"data.txt\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define void @input(%struct.Process*, i32, i32, %struct._IO_FILE*) #0 {
  %5 = alloca %struct.Process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Process, align 8
  store %struct.Process* %0, %struct.Process** %5, align 8, !tbaa !2
  store i32 %1, i32* %6, align 4, !tbaa !6
  store i32 %2, i32* %7, align 4, !tbaa !6
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8, !tbaa !2
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5
  %13 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5
  store i32 0, i32* %9, align 4, !tbaa !6
  br label %14

; <label>:14:                                     ; preds = %58, %4
  %15 = load i32, i32* %9, align 4, !tbaa !6
  %16 = load i32, i32* %7, align 4, !tbaa !6
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

; <label>:18:                                     ; preds = %14
  %19 = bitcast %struct.Process* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %19) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !tbaa !2
  %21 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !tbaa !2
  %24 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 2
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %27)
  %29 = load i32, i32* %6, align 4, !tbaa !6
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = call noalias i8* @malloc(i64 %31) #5
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 3
  store i32* %33, i32** %34, align 8, !tbaa !8
  store i32 0, i32* %10, align 4, !tbaa !6
  br label %35

; <label>:35:                                     ; preds = %47, %18
  %36 = load i32, i32* %10, align 4, !tbaa !6
  %37 = load i32, i32* %6, align 4, !tbaa !6
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

; <label>:39:                                     ; preds = %35
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !tbaa !2
  %41 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8, !tbaa !8
  %43 = load i32, i32* %10, align 4, !tbaa !6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %45)
  br label %47

; <label>:47:                                     ; preds = %39
  %48 = load i32, i32* %10, align 4, !tbaa !6
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4, !tbaa !6
  br label %35

; <label>:50:                                     ; preds = %35
  %51 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %52 = load i32, i32* %9, align 4, !tbaa !6
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Process, %struct.Process* %51, i64 %53
  %55 = bitcast %struct.Process* %54 to i8*
  %56 = bitcast %struct.Process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 32, i32 8, i1 false), !tbaa.struct !11
  %57 = bitcast %struct.Process* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %57) #5
  br label %58

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %9, align 4, !tbaa !6
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4, !tbaa !6
  br label %14

; <label>:61:                                     ; preds = %14
  %62 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #5
  %63 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @smallestBurst(%struct.Process* noalias sret, %struct.Process*, i32, i32) #0 {
  %5 = alloca %struct.Process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Process, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Process* %1, %struct.Process** %5, align 8, !tbaa !2
  store i32 %2, i32* %6, align 4, !tbaa !6
  store i32 %3, i32* %7, align 4, !tbaa !6
  %11 = bitcast %struct.Process* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #5
  %12 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %13 = getelementptr inbounds %struct.Process, %struct.Process* %12, i64 0
  %14 = bitcast %struct.Process* %8 to i8*
  %15 = bitcast %struct.Process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false), !tbaa.struct !11
  %16 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5
  %17 = getelementptr inbounds %struct.Process, %struct.Process* %8, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8, !tbaa !8
  %19 = load i32, i32* %6, align 4, !tbaa !6
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !6
  store i32 %22, i32* %9, align 4, !tbaa !6
  %23 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #5
  store i32 0, i32* %10, align 4, !tbaa !6
  store i32 0, i32* %10, align 4, !tbaa !6
  br label %24

; <label>:24:                                     ; preds = %55, %4
  %25 = load i32, i32* %10, align 4, !tbaa !6
  %26 = load i32, i32* %7, align 4, !tbaa !6
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %58

; <label>:28:                                     ; preds = %24
  %29 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %30 = load i32, i32* %10, align 4, !tbaa !6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Process, %struct.Process* %29, i64 %31
  %33 = getelementptr inbounds %struct.Process, %struct.Process* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8, !tbaa !8
  %35 = load i32, i32* %6, align 4, !tbaa !6
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !6
  %39 = load i32, i32* %9, align 4, !tbaa !6
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

; <label>:41:                                     ; preds = %28
  %42 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %43 = load i32, i32* %10, align 4, !tbaa !6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Process, %struct.Process* %42, i64 %44
  %46 = bitcast %struct.Process* %8 to i8*
  %47 = bitcast %struct.Process* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false), !tbaa.struct !11
  %48 = getelementptr inbounds %struct.Process, %struct.Process* %8, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8, !tbaa !8
  %50 = load i32, i32* %6, align 4, !tbaa !6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !6
  store i32 %53, i32* %9, align 4, !tbaa !6
  br label %54

; <label>:54:                                     ; preds = %41, %28
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %10, align 4, !tbaa !6
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4, !tbaa !6
  br label %24

; <label>:58:                                     ; preds = %24
  %59 = bitcast %struct.Process* %0 to i8*
  %60 = bitcast %struct.Process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false), !tbaa.struct !11
  %61 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #5
  %62 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #5
  %63 = bitcast %struct.Process* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %63) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @smallestBurstAboveX(%struct.Process* noalias sret, %struct.Process*, i32, i32, i32) #0 {
  %6 = alloca %struct.Process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Process, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Process* %1, %struct.Process** %6, align 8, !tbaa !2
  store i32 %2, i32* %7, align 4, !tbaa !6
  store i32 %3, i32* %8, align 4, !tbaa !6
  store i32 %4, i32* %9, align 4, !tbaa !6
  %14 = bitcast %struct.Process* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %14) #5
  %15 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %16 = load i32, i32* %8, align 4, !tbaa !6
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Process, %struct.Process* %15, i64 %17
  %19 = bitcast %struct.Process* %10 to i8*
  %20 = bitcast %struct.Process* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false), !tbaa.struct !11
  %21 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #5
  %22 = getelementptr inbounds %struct.Process, %struct.Process* %10, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8, !tbaa !8
  %24 = load i32, i32* %7, align 4, !tbaa !6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !6
  store i32 %27, i32* %11, align 4, !tbaa !6
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #5
  store i32 0, i32* %12, align 4, !tbaa !6
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #5
  store i32 0, i32* %13, align 4, !tbaa !6
  br label %30

; <label>:30:                                     ; preds = %74, %5
  %31 = load i32, i32* %13, align 4, !tbaa !6
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %12, align 4, !tbaa !6
  %35 = load i32, i32* %9, align 4, !tbaa !6
  %36 = icmp slt i32 %34, %35
  br label %37

; <label>:37:                                     ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %77

; <label>:39:                                     ; preds = %37
  %40 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %41 = load i32, i32* %12, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Process, %struct.Process* %40, i64 %42
  %44 = getelementptr inbounds %struct.Process, %struct.Process* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8, !tbaa !8
  %46 = load i32, i32* %7, align 4, !tbaa !6
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !6
  %50 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %51 = load i32, i32* %8, align 4, !tbaa !6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.Process, %struct.Process* %50, i64 %52
  %54 = getelementptr inbounds %struct.Process, %struct.Process* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8, !tbaa !8
  %56 = load i32, i32* %7, align 4, !tbaa !6
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !6
  %60 = icmp sgt i32 %49, %59
  br i1 %60, label %61, label %74

; <label>:61:                                     ; preds = %39
  %62 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %63 = load i32, i32* %12, align 4, !tbaa !6
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.Process, %struct.Process* %62, i64 %64
  %66 = bitcast %struct.Process* %10 to i8*
  %67 = bitcast %struct.Process* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false), !tbaa.struct !11
  %68 = getelementptr inbounds %struct.Process, %struct.Process* %10, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8, !tbaa !8
  %70 = load i32, i32* %7, align 4, !tbaa !6
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !6
  store i32 %73, i32* %11, align 4, !tbaa !6
  store i32 1, i32* %13, align 4, !tbaa !6
  br label %74

; <label>:74:                                     ; preds = %61, %39
  %75 = load i32, i32* %12, align 4, !tbaa !6
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4, !tbaa !6
  br label %30

; <label>:77:                                     ; preds = %37
  store i32 0, i32* %12, align 4, !tbaa !6
  br label %78

; <label>:78:                                     ; preds = %135, %77
  %79 = load i32, i32* %12, align 4, !tbaa !6
  %80 = load i32, i32* %9, align 4, !tbaa !6
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %138

; <label>:82:                                     ; preds = %78
  %83 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %84 = load i32, i32* %12, align 4, !tbaa !6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.Process, %struct.Process* %83, i64 %85
  %87 = getelementptr inbounds %struct.Process, %struct.Process* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8, !tbaa !8
  %89 = load i32, i32* %7, align 4, !tbaa !6
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4, !tbaa !6
  %93 = load i32, i32* %11, align 4, !tbaa !6
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %134

; <label>:95:                                     ; preds = %82
  %96 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %97 = load i32, i32* %12, align 4, !tbaa !6
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Process, %struct.Process* %96, i64 %98
  %100 = getelementptr inbounds %struct.Process, %struct.Process* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8, !tbaa !8
  %102 = load i32, i32* %7, align 4, !tbaa !6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !6
  %106 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %107 = load i32, i32* %8, align 4, !tbaa !6
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Process, %struct.Process* %106, i64 %108
  %110 = getelementptr inbounds %struct.Process, %struct.Process* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8, !tbaa !8
  %112 = load i32, i32* %7, align 4, !tbaa !6
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !6
  %116 = icmp sge i32 %105, %115
  br i1 %116, label %117, label %134

; <label>:117:                                    ; preds = %95
  %118 = load i32, i32* %12, align 4, !tbaa !6
  %119 = load i32, i32* %8, align 4, !tbaa !6
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %134

; <label>:121:                                    ; preds = %117
  %122 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %123 = load i32, i32* %12, align 4, !tbaa !6
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.Process, %struct.Process* %122, i64 %124
  %126 = bitcast %struct.Process* %10 to i8*
  %127 = bitcast %struct.Process* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 32, i32 8, i1 false), !tbaa.struct !11
  %128 = getelementptr inbounds %struct.Process, %struct.Process* %10, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8, !tbaa !8
  %130 = load i32, i32* %7, align 4, !tbaa !6
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4, !tbaa !6
  store i32 %133, i32* %11, align 4, !tbaa !6
  br label %134

; <label>:134:                                    ; preds = %121, %117, %95, %82
  br label %135

; <label>:135:                                    ; preds = %134
  %136 = load i32, i32* %12, align 4, !tbaa !6
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4, !tbaa !6
  br label %78

; <label>:138:                                    ; preds = %78
  %139 = bitcast %struct.Process* %0 to i8*
  %140 = bitcast %struct.Process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 32, i32 8, i1 false), !tbaa.struct !11
  %141 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #5
  %142 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #5
  %143 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #5
  %144 = bitcast %struct.Process* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %144) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @shortestFirst(i32, i32, %struct.Process*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.Process, align 8
  %14 = alloca %struct.Process, align 8
  store i32 %0, i32* %4, align 4, !tbaa !6
  store i32 %1, i32* %5, align 4, !tbaa !6
  store %struct.Process* %2, %struct.Process** %6, align 8, !tbaa !2
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5
  store i32 0, i32* %9, align 4, !tbaa !6
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5
  store i32 0, i32* %10, align 4, !tbaa !6
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5
  store i32 0, i32* %11, align 4, !tbaa !6
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %7, align 4, !tbaa !6
  br label %21

; <label>:21:                                     ; preds = %83, %3
  %22 = load i32, i32* %7, align 4, !tbaa !6
  %23 = load i32, i32* %4, align 4, !tbaa !6
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %86

; <label>:25:                                     ; preds = %21
  %26 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #5
  store i32 0, i32* %12, align 4, !tbaa !6
  %27 = load i32, i32* %7, align 4, !tbaa !6
  %28 = load i32, i32* %9, align 4, !tbaa !6
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 %27, i32 %28)
  %30 = bitcast %struct.Process* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %30) #5
  %31 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %32 = load i32, i32* %7, align 4, !tbaa !6
  %33 = load i32, i32* %5, align 4, !tbaa !6
  call void @smallestBurst(%struct.Process* sret %13, %struct.Process* %31, i32 %32, i32 %33)
  store i32 0, i32* %8, align 4, !tbaa !6
  br label %34

; <label>:34:                                     ; preds = %77, %25
  %35 = load i32, i32* %8, align 4, !tbaa !6
  %36 = load i32, i32* %5, align 4, !tbaa !6
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %80

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 8, !tbaa !13
  %41 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8, !tbaa !8
  %43 = load i32, i32* %7, align 4, !tbaa !6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !6
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %40, i32 %46)
  %48 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8, !tbaa !8
  %50 = load i32, i32* %7, align 4, !tbaa !6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !6
  %54 = load i32, i32* %9, align 4, !tbaa !6
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4, !tbaa !6
  %56 = load i32, i32* %12, align 4, !tbaa !6
  %57 = load i32, i32* %10, align 4, !tbaa !6
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4, !tbaa !6
  %59 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8, !tbaa !8
  %61 = load i32, i32* %7, align 4, !tbaa !6
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !6
  %65 = load i32, i32* %12, align 4, !tbaa !6
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %12, align 4, !tbaa !6
  %67 = load i32, i32* %12, align 4, !tbaa !6
  %68 = load i32, i32* %11, align 4, !tbaa !6
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %11, align 4, !tbaa !6
  %70 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %71 = load i32, i32* %7, align 4, !tbaa !6
  %72 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 8, !tbaa !13
  %74 = load i32, i32* %5, align 4, !tbaa !6
  call void @smallestBurstAboveX(%struct.Process* sret %14, %struct.Process* %70, i32 %71, i32 %73, i32 %74)
  %75 = bitcast %struct.Process* %13 to i8*
  %76 = bitcast %struct.Process* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false), !tbaa.struct !11
  br label %77

; <label>:77:                                     ; preds = %38
  %78 = load i32, i32* %8, align 4, !tbaa !6
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4, !tbaa !6
  br label %34

; <label>:80:                                     ; preds = %34
  %81 = bitcast %struct.Process* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %81) #5
  %82 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #5
  br label %83

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %7, align 4, !tbaa !6
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4, !tbaa !6
  br label %21

; <label>:86:                                     ; preds = %21
  %87 = load i32, i32* %11, align 4, !tbaa !6
  %88 = load i32, i32* %10, align 4, !tbaa !6
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 %87, i32 %88)
  %90 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #5
  %91 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #5
  %92 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #5
  %93 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #5
  %94 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #5
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.Process* @smallestTau(%struct.Process*, i32, i32) #0 {
  %4 = alloca %struct.Process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Process*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.Process* %0, %struct.Process** %4, align 8, !tbaa !2
  store i32 %1, i32* %5, align 4, !tbaa !6
  store i32 %2, i32* %6, align 4, !tbaa !6
  %10 = bitcast %struct.Process** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #5
  %11 = load %struct.Process*, %struct.Process** %4, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.Process, %struct.Process* %11, i64 0
  store %struct.Process* %12, %struct.Process** %7, align 8, !tbaa !2
  %13 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #5
  %14 = load %struct.Process*, %struct.Process** %7, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.Process, %struct.Process* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8, !tbaa !14
  store double %16, double* %8, align 8, !tbaa !12
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5
  store i32 0, i32* %9, align 4, !tbaa !6
  store i32 0, i32* %9, align 4, !tbaa !6
  br label %18

; <label>:18:                                     ; preds = %40, %3
  %19 = load i32, i32* %9, align 4, !tbaa !6
  %20 = load i32, i32* %6, align 4, !tbaa !6
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

; <label>:22:                                     ; preds = %18
  %23 = load %struct.Process*, %struct.Process** %4, align 8, !tbaa !2
  %24 = load i32, i32* %9, align 4, !tbaa !6
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.Process, %struct.Process* %23, i64 %25
  %27 = getelementptr inbounds %struct.Process, %struct.Process* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8, !tbaa !14
  %29 = load double, double* %8, align 8, !tbaa !12
  %30 = fcmp olt double %28, %29
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %22
  %32 = load %struct.Process*, %struct.Process** %4, align 8, !tbaa !2
  %33 = load i32, i32* %9, align 4, !tbaa !6
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Process, %struct.Process* %32, i64 %34
  store %struct.Process* %35, %struct.Process** %7, align 8, !tbaa !2
  %36 = load %struct.Process*, %struct.Process** %7, align 8, !tbaa !2
  %37 = getelementptr inbounds %struct.Process, %struct.Process* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8, !tbaa !14
  store double %38, double* %8, align 8, !tbaa !12
  br label %39

; <label>:39:                                     ; preds = %31, %22
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %9, align 4, !tbaa !6
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4, !tbaa !6
  br label %18

; <label>:43:                                     ; preds = %18
  %44 = load %struct.Process*, %struct.Process** %7, align 8, !tbaa !2
  %45 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5
  %46 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #5
  %47 = bitcast %struct.Process** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #5
  ret %struct.Process* %44
}

; Function Attrs: nounwind uwtable
define %struct.Process* @smallestTauAboveX(%struct.Process*, i32, i32, i32) #0 {
  %5 = alloca %struct.Process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Process*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store %struct.Process* %0, %struct.Process** %5, align 8, !tbaa !2
  store i32 %1, i32* %6, align 4, !tbaa !6
  store i32 %2, i32* %7, align 4, !tbaa !6
  store i32 %3, i32* %8, align 4, !tbaa !6
  %15 = bitcast %struct.Process** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #5
  %16 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %17 = load i32, i32* %7, align 4, !tbaa !6
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Process, %struct.Process* %16, i64 %18
  store %struct.Process* %19, %struct.Process** %9, align 8, !tbaa !2
  %20 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #5
  %21 = load %struct.Process*, %struct.Process** %9, align 8, !tbaa !2
  %22 = getelementptr inbounds %struct.Process, %struct.Process* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8, !tbaa !14
  store double %23, double* %10, align 8, !tbaa !12
  %24 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #5
  store i32 0, i32* %11, align 4, !tbaa !6
  %25 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #5
  store i32 0, i32* %12, align 4, !tbaa !6
  %26 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #5
  %27 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %28 = load i32, i32* %7, align 4, !tbaa !6
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Process, %struct.Process* %27, i64 %29
  %31 = getelementptr inbounds %struct.Process, %struct.Process* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8, !tbaa !14
  store double %32, double* %13, align 8, !tbaa !12
  %33 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #5
  store i32 0, i32* %14, align 4, !tbaa !6
  br label %34

; <label>:34:                                     ; preds = %65, %4
  %35 = load i32, i32* %14, align 4, !tbaa !6
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %12, align 4, !tbaa !6
  %39 = load i32, i32* %8, align 4, !tbaa !6
  %40 = icmp slt i32 %38, %39
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %68

; <label>:43:                                     ; preds = %41
  %44 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %45 = load i32, i32* %12, align 4, !tbaa !6
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Process, %struct.Process* %44, i64 %46
  %48 = getelementptr inbounds %struct.Process, %struct.Process* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8, !tbaa !14
  %50 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %51 = load i32, i32* %7, align 4, !tbaa !6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.Process, %struct.Process* %50, i64 %52
  %54 = getelementptr inbounds %struct.Process, %struct.Process* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8, !tbaa !14
  %56 = fcmp ogt double %49, %55
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %43
  %58 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %59 = load i32, i32* %12, align 4, !tbaa !6
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Process, %struct.Process* %58, i64 %60
  store %struct.Process* %61, %struct.Process** %9, align 8, !tbaa !2
  %62 = load %struct.Process*, %struct.Process** %9, align 8, !tbaa !2
  %63 = getelementptr inbounds %struct.Process, %struct.Process* %62, i32 0, i32 1
  %64 = load double, double* %63, align 8, !tbaa !14
  store double %64, double* %10, align 8, !tbaa !12
  store i32 1, i32* %14, align 4, !tbaa !6
  br label %65

; <label>:65:                                     ; preds = %57, %43
  %66 = load i32, i32* %12, align 4, !tbaa !6
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4, !tbaa !6
  br label %34

; <label>:68:                                     ; preds = %41
  store i32 0, i32* %11, align 4, !tbaa !6
  br label %69

; <label>:69:                                     ; preds = %104, %68
  %70 = load i32, i32* %11, align 4, !tbaa !6
  %71 = load i32, i32* %8, align 4, !tbaa !6
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %107

; <label>:73:                                     ; preds = %69
  %74 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %75 = load i32, i32* %11, align 4, !tbaa !6
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Process, %struct.Process* %74, i64 %76
  %78 = getelementptr inbounds %struct.Process, %struct.Process* %77, i32 0, i32 1
  %79 = load double, double* %78, align 8, !tbaa !14
  %80 = load double, double* %10, align 8, !tbaa !12
  %81 = fcmp ole double %79, %80
  br i1 %81, label %82, label %103

; <label>:82:                                     ; preds = %73
  %83 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %84 = load i32, i32* %11, align 4, !tbaa !6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.Process, %struct.Process* %83, i64 %85
  %87 = getelementptr inbounds %struct.Process, %struct.Process* %86, i32 0, i32 1
  %88 = load double, double* %87, align 8, !tbaa !14
  %89 = load double, double* %13, align 8, !tbaa !12
  %90 = fcmp oge double %88, %89
  br i1 %90, label %91, label %103

; <label>:91:                                     ; preds = %82
  %92 = load i32, i32* %11, align 4, !tbaa !6
  %93 = load i32, i32* %7, align 4, !tbaa !6
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

; <label>:95:                                     ; preds = %91
  %96 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %97 = load i32, i32* %11, align 4, !tbaa !6
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Process, %struct.Process* %96, i64 %98
  store %struct.Process* %99, %struct.Process** %9, align 8, !tbaa !2
  %100 = load %struct.Process*, %struct.Process** %9, align 8, !tbaa !2
  %101 = getelementptr inbounds %struct.Process, %struct.Process* %100, i32 0, i32 1
  %102 = load double, double* %101, align 8, !tbaa !14
  store double %102, double* %10, align 8, !tbaa !12
  br label %103

; <label>:103:                                    ; preds = %95, %91, %82, %73
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = load i32, i32* %11, align 4, !tbaa !6
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4, !tbaa !6
  br label %69

; <label>:107:                                    ; preds = %69
  %108 = load %struct.Process*, %struct.Process** %9, align 8, !tbaa !2
  %109 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #5
  %110 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #5
  %111 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #5
  %112 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #5
  %113 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %113) #5
  %114 = bitcast %struct.Process** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %114) #5
  ret %struct.Process* %108
}

; Function Attrs: nounwind uwtable
define void @shortestFirstLive(i32, i32, %struct.Process*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.Process*, align 8
  store i32 %0, i32* %4, align 4, !tbaa !6
  store i32 %1, i32* %5, align 4, !tbaa !6
  store %struct.Process* %2, %struct.Process** %6, align 8, !tbaa !2
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5
  store i32 0, i32* %9, align 4, !tbaa !6
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5
  store i32 0, i32* %10, align 4, !tbaa !6
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5
  store i32 0, i32* %11, align 4, !tbaa !6
  %20 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #5
  store double 0.000000e+00, double* %12, align 8, !tbaa !12
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %7, align 4, !tbaa !6
  br label %22

; <label>:22:                                     ; preds = %156, %3
  %23 = load i32, i32* %7, align 4, !tbaa !6
  %24 = load i32, i32* %4, align 4, !tbaa !6
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %159

; <label>:26:                                     ; preds = %22
  %27 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #5
  store i32 0, i32* %13, align 4, !tbaa !6
  %28 = load i32, i32* %7, align 4, !tbaa !6
  %29 = load i32, i32* %9, align 4, !tbaa !6
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 %28, i32 %29)
  %31 = bitcast %struct.Process** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #5
  %32 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %33 = load i32, i32* %7, align 4, !tbaa !6
  %34 = load i32, i32* %5, align 4, !tbaa !6
  %35 = call %struct.Process* @smallestTau(%struct.Process* %32, i32 %33, i32 %34)
  store %struct.Process* %35, %struct.Process** %14, align 8, !tbaa !2
  store i32 0, i32* %8, align 4, !tbaa !6
  br label %36

; <label>:36:                                     ; preds = %103, %26
  %37 = load i32, i32* %8, align 4, !tbaa !6
  %38 = load i32, i32* %5, align 4, !tbaa !6
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %106

; <label>:40:                                     ; preds = %36
  %41 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %42 = getelementptr inbounds %struct.Process, %struct.Process* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8, !tbaa !13
  %44 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %45 = getelementptr inbounds %struct.Process, %struct.Process* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8, !tbaa !14
  %47 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %48 = getelementptr inbounds %struct.Process, %struct.Process* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8, !tbaa !8
  %50 = load i32, i32* %7, align 4, !tbaa !6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !6
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i32 %43, double %46, i32 %53)
  %55 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %56 = getelementptr inbounds %struct.Process, %struct.Process* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8, !tbaa !8
  %58 = load i32, i32* %7, align 4, !tbaa !6
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !6
  %62 = load i32, i32* %9, align 4, !tbaa !6
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4, !tbaa !6
  %64 = load i32, i32* %13, align 4, !tbaa !6
  %65 = load i32, i32* %10, align 4, !tbaa !6
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %10, align 4, !tbaa !6
  %67 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %68 = getelementptr inbounds %struct.Process, %struct.Process* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8, !tbaa !8
  %70 = load i32, i32* %7, align 4, !tbaa !6
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !6
  %74 = load i32, i32* %13, align 4, !tbaa !6
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %13, align 4, !tbaa !6
  %76 = load i32, i32* %13, align 4, !tbaa !6
  %77 = load i32, i32* %11, align 4, !tbaa !6
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4, !tbaa !6
  %79 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %80 = getelementptr inbounds %struct.Process, %struct.Process* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8, !tbaa !8
  %82 = load i32, i32* %7, align 4, !tbaa !6
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !6
  %86 = sitofp i32 %85 to double
  %87 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %88 = getelementptr inbounds %struct.Process, %struct.Process* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8, !tbaa !14
  %90 = fsub double %86, %89
  %91 = fptosi double %90 to i32
  %92 = call i32 @abs(i32 %91) #6
  %93 = sitofp i32 %92 to double
  %94 = load double, double* %12, align 8, !tbaa !12
  %95 = fadd double %94, %93
  store double %95, double* %12, align 8, !tbaa !12
  %96 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %97 = load i32, i32* %7, align 4, !tbaa !6
  %98 = load %struct.Process*, %struct.Process** %14, align 8, !tbaa !2
  %99 = getelementptr inbounds %struct.Process, %struct.Process* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8, !tbaa !13
  %101 = load i32, i32* %5, align 4, !tbaa !6
  %102 = call %struct.Process* @smallestTauAboveX(%struct.Process* %96, i32 %97, i32 %100, i32 %101)
  store %struct.Process* %102, %struct.Process** %14, align 8, !tbaa !2
  br label %103

; <label>:103:                                    ; preds = %40
  %104 = load i32, i32* %8, align 4, !tbaa !6
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4, !tbaa !6
  br label %36

; <label>:106:                                    ; preds = %36
  store i32 0, i32* %8, align 4, !tbaa !6
  br label %107

; <label>:107:                                    ; preds = %150, %106
  %108 = load i32, i32* %8, align 4, !tbaa !6
  %109 = load i32, i32* %5, align 4, !tbaa !6
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %153

; <label>:111:                                    ; preds = %107
  %112 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %113 = load i32, i32* %8, align 4, !tbaa !6
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.Process, %struct.Process* %112, i64 %114
  %116 = getelementptr inbounds %struct.Process, %struct.Process* %115, i32 0, i32 1
  %117 = load double, double* %116, align 8, !tbaa !14
  %118 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %119 = load i32, i32* %8, align 4, !tbaa !6
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.Process, %struct.Process* %118, i64 %120
  %122 = getelementptr inbounds %struct.Process, %struct.Process* %121, i32 0, i32 2
  %123 = load double, double* %122, align 8, !tbaa !15
  %124 = fmul double %117, %123
  %125 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %126 = load i32, i32* %8, align 4, !tbaa !6
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Process, %struct.Process* %125, i64 %127
  %129 = getelementptr inbounds %struct.Process, %struct.Process* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8, !tbaa !8
  %131 = load i32, i32* %7, align 4, !tbaa !6
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !6
  %135 = sitofp i32 %134 to double
  %136 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %137 = load i32, i32* %8, align 4, !tbaa !6
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Process, %struct.Process* %136, i64 %138
  %140 = getelementptr inbounds %struct.Process, %struct.Process* %139, i32 0, i32 2
  %141 = load double, double* %140, align 8, !tbaa !15
  %142 = fsub double 1.000000e+00, %141
  %143 = fmul double %135, %142
  %144 = fadd double %124, %143
  %145 = load %struct.Process*, %struct.Process** %6, align 8, !tbaa !2
  %146 = load i32, i32* %8, align 4, !tbaa !6
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.Process, %struct.Process* %145, i64 %147
  %149 = getelementptr inbounds %struct.Process, %struct.Process* %148, i32 0, i32 1
  store double %144, double* %149, align 8, !tbaa !14
  br label %150

; <label>:150:                                    ; preds = %111
  %151 = load i32, i32* %8, align 4, !tbaa !6
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4, !tbaa !6
  br label %107

; <label>:153:                                    ; preds = %107
  %154 = bitcast %struct.Process** %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %154) #5
  %155 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %155) #5
  br label %156

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %7, align 4, !tbaa !6
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4, !tbaa !6
  br label %22

; <label>:159:                                    ; preds = %22
  %160 = load i32, i32* %11, align 4, !tbaa !6
  %161 = load i32, i32* %10, align 4, !tbaa !6
  %162 = load double, double* %12, align 8, !tbaa !12
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i32 0, i32 0), i32 %160, i32 %161, double %162)
  %164 = bitcast double* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %164) #5
  %165 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %165) #5
  %166 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %166) #5
  %167 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %167) #5
  %168 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %168) #5
  %169 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %169) #5
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Process*, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast %struct._IO_FILE** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #5
  %7 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %2, align 8, !tbaa !2
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4)
  %14 = bitcast %struct.Process** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #5
  %15 = load i32, i32* %4, align 4, !tbaa !6
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 32
  %18 = call noalias i8* @malloc(i64 %17) #5
  %19 = bitcast i8* %18 to %struct.Process*
  store %struct.Process* %19, %struct.Process** %5, align 8, !tbaa !2
  %20 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  %21 = load i32, i32* %3, align 4, !tbaa !6
  %22 = load i32, i32* %4, align 4, !tbaa !6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  call void @input(%struct.Process* %20, i32 %21, i32 %22, %struct._IO_FILE* %23)
  %24 = load i32, i32* %3, align 4, !tbaa !6
  %25 = load i32, i32* %4, align 4, !tbaa !6
  %26 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  call void @shortestFirst(i32 %24, i32 %25, %struct.Process* %26)
  %27 = load i32, i32* %3, align 4, !tbaa !6
  %28 = load i32, i32* %4, align 4, !tbaa !6
  %29 = load %struct.Process*, %struct.Process** %5, align 8, !tbaa !2
  call void @shortestFirstLive(i32 %27, i32 %28, %struct.Process* %29)
  %30 = bitcast %struct.Process** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #5
  %31 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5
  %32 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5
  %33 = bitcast %struct._IO_FILE** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #5
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 24}
!9 = !{!"Process", !7, i64 0, !10, i64 8, !10, i64 16, !3, i64 24}
!10 = !{!"double", !4, i64 0}
!11 = !{i64 0, i64 4, !6, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 8, !2}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !7, i64 0}
!14 = !{!9, !10, i64 8}
!15 = !{!9, !10, i64 16}
