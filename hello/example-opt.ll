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

; Function Attrs: noinline nounwind optnone uwtable
define void @input(%struct.Process*, i32, i32, %struct._IO_FILE*) #0 {
  %5 = alloca %struct.Process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Process, align 8
  store %struct.Process* %0, %struct.Process** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %54, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

; <label>:16:                                     ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %18 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %21 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 1
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %24 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 2
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = call noalias i8* @malloc(i64 %28) #5
  %30 = bitcast i8* %29 to i32*
  %31 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 3
  store i32* %30, i32** %31, align 8
  store i32 0, i32* %10, align 4
  br label %32

; <label>:32:                                     ; preds = %44, %16
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

; <label>:36:                                     ; preds = %32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %38 = getelementptr inbounds %struct.Process, %struct.Process* %11, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %42)
  br label %44

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %32

; <label>:47:                                     ; preds = %32
  %48 = load %struct.Process*, %struct.Process** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Process, %struct.Process* %48, i64 %50
  %52 = bitcast %struct.Process* %51 to i8*
  %53 = bitcast %struct.Process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 32, i32 8, i1 false)
  br label %54

; <label>:54:                                     ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %12

; <label>:57:                                     ; preds = %12
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @smallestBurst(%struct.Process* noalias sret, %struct.Process*, i32, i32) #0 {
  %5 = alloca %struct.Process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Process, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Process* %1, %struct.Process** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 %3, i32* %7, align 4
  %11 = load %struct.Process*, %struct.Process** %5, align 8
  %12 = getelementptr inbounds %struct.Process, %struct.Process* %11, i64 0
  %13 = bitcast %struct.Process* %8 to i8*
  %14 = bitcast %struct.Process* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = getelementptr inbounds %struct.Process, %struct.Process* %8, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %21

; <label>:21:                                     ; preds = %52, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

; <label>:25:                                     ; preds = %21
  %26 = load %struct.Process*, %struct.Process** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Process, %struct.Process* %26, i64 %28
  %30 = getelementptr inbounds %struct.Process, %struct.Process* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

; <label>:38:                                     ; preds = %25
  %39 = load %struct.Process*, %struct.Process** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.Process, %struct.Process* %39, i64 %41
  %43 = bitcast %struct.Process* %8 to i8*
  %44 = bitcast %struct.Process* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  %45 = getelementptr inbounds %struct.Process, %struct.Process* %8, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %51

; <label>:51:                                     ; preds = %38, %25
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %21

; <label>:55:                                     ; preds = %21
  %56 = bitcast %struct.Process* %0 to i8*
  %57 = bitcast %struct.Process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @smallestBurstAboveX(%struct.Process* noalias sret, %struct.Process*, i32, i32, i32) #0 {
  %6 = alloca %struct.Process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Process, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Process* %1, %struct.Process** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %14 = load %struct.Process*, %struct.Process** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Process, %struct.Process* %14, i64 %16
  %18 = bitcast %struct.Process* %10 to i8*
  %19 = bitcast %struct.Process* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = getelementptr inbounds %struct.Process, %struct.Process* %10, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %26

; <label>:26:                                     ; preds = %70, %5
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

; <label>:33:                                     ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %73

; <label>:35:                                     ; preds = %33
  %36 = load %struct.Process*, %struct.Process** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.Process, %struct.Process* %36, i64 %38
  %40 = getelementptr inbounds %struct.Process, %struct.Process* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.Process*, %struct.Process** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Process, %struct.Process* %46, i64 %48
  %50 = getelementptr inbounds %struct.Process, %struct.Process* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %45, %55
  br i1 %56, label %57, label %70

; <label>:57:                                     ; preds = %35
  %58 = load %struct.Process*, %struct.Process** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Process, %struct.Process* %58, i64 %60
  %62 = bitcast %struct.Process* %10 to i8*
  %63 = bitcast %struct.Process* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  %64 = getelementptr inbounds %struct.Process, %struct.Process* %10, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %70

; <label>:70:                                     ; preds = %57, %35
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %26

; <label>:73:                                     ; preds = %33
  store i32 0, i32* %12, align 4
  br label %74

; <label>:74:                                     ; preds = %131, %73
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %134

; <label>:78:                                     ; preds = %74
  %79 = load %struct.Process*, %struct.Process** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Process, %struct.Process* %79, i64 %81
  %83 = getelementptr inbounds %struct.Process, %struct.Process* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %130

; <label>:91:                                     ; preds = %78
  %92 = load %struct.Process*, %struct.Process** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Process, %struct.Process* %92, i64 %94
  %96 = getelementptr inbounds %struct.Process, %struct.Process* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.Process*, %struct.Process** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Process, %struct.Process* %102, i64 %104
  %106 = getelementptr inbounds %struct.Process, %struct.Process* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp sge i32 %101, %111
  br i1 %112, label %113, label %130

; <label>:113:                                    ; preds = %91
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %130

; <label>:117:                                    ; preds = %113
  %118 = load %struct.Process*, %struct.Process** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.Process, %struct.Process* %118, i64 %120
  %122 = bitcast %struct.Process* %10 to i8*
  %123 = bitcast %struct.Process* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 32, i32 8, i1 false)
  %124 = getelementptr inbounds %struct.Process, %struct.Process* %10, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  br label %130

; <label>:130:                                    ; preds = %117, %113, %91, %78
  br label %131

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %74

; <label>:134:                                    ; preds = %74
  %135 = bitcast %struct.Process* %0 to i8*
  %136 = bitcast %struct.Process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.Process* %2, %struct.Process** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %74, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %77

; <label>:20:                                     ; preds = %16
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 %21, i32 %22)
  %24 = load %struct.Process*, %struct.Process** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  call void @smallestBurst(%struct.Process* sret %13, %struct.Process* %24, i32 %25, i32 %26)
  store i32 0, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %70, %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %73

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %33, i32 %39)
  %41 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.Process*, %struct.Process** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds %struct.Process, %struct.Process* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  call void @smallestBurstAboveX(%struct.Process* sret %14, %struct.Process* %63, i32 %64, i32 %66, i32 %67)
  %68 = bitcast %struct.Process* %13 to i8*
  %69 = bitcast %struct.Process* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  br label %70

; <label>:70:                                     ; preds = %31
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %27

; <label>:73:                                     ; preds = %27
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %16

; <label>:77:                                     ; preds = %16
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 %78, i32 %79)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.Process* @smallestTau(%struct.Process*, i32, i32) #0 {
  %4 = alloca %struct.Process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Process*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.Process* %0, %struct.Process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.Process*, %struct.Process** %4, align 8
  %11 = getelementptr inbounds %struct.Process, %struct.Process* %10, i64 0
  store %struct.Process* %11, %struct.Process** %7, align 8
  %12 = load %struct.Process*, %struct.Process** %7, align 8
  %13 = getelementptr inbounds %struct.Process, %struct.Process* %12, i32 0, i32 1
  %14 = load double, double* %13, align 8
  store double %14, double* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %15

; <label>:15:                                     ; preds = %37, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

; <label>:19:                                     ; preds = %15
  %20 = load %struct.Process*, %struct.Process** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Process, %struct.Process* %20, i64 %22
  %24 = getelementptr inbounds %struct.Process, %struct.Process* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = load double, double* %8, align 8
  %27 = fcmp olt double %25, %26
  br i1 %27, label %28, label %36

; <label>:28:                                     ; preds = %19
  %29 = load %struct.Process*, %struct.Process** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Process, %struct.Process* %29, i64 %31
  store %struct.Process* %32, %struct.Process** %7, align 8
  %33 = load %struct.Process*, %struct.Process** %7, align 8
  %34 = getelementptr inbounds %struct.Process, %struct.Process* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  store double %35, double* %8, align 8
  br label %36

; <label>:36:                                     ; preds = %28, %19
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %15

; <label>:40:                                     ; preds = %15
  %41 = load %struct.Process*, %struct.Process** %7, align 8
  ret %struct.Process* %41
}

; Function Attrs: noinline nounwind optnone uwtable
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
  store %struct.Process* %0, %struct.Process** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.Process*, %struct.Process** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Process, %struct.Process* %15, i64 %17
  store %struct.Process* %18, %struct.Process** %9, align 8
  %19 = load %struct.Process*, %struct.Process** %9, align 8
  %20 = getelementptr inbounds %struct.Process, %struct.Process* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  store double %21, double* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.Process*, %struct.Process** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Process, %struct.Process* %22, i64 %24
  %26 = getelementptr inbounds %struct.Process, %struct.Process* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  store double %27, double* %13, align 8
  store i32 0, i32* %14, align 4
  br label %28

; <label>:28:                                     ; preds = %59, %4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %62

; <label>:37:                                     ; preds = %35
  %38 = load %struct.Process*, %struct.Process** %5, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Process, %struct.Process* %38, i64 %40
  %42 = getelementptr inbounds %struct.Process, %struct.Process* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.Process*, %struct.Process** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Process, %struct.Process* %44, i64 %46
  %48 = getelementptr inbounds %struct.Process, %struct.Process* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fcmp ogt double %43, %49
  br i1 %50, label %51, label %59

; <label>:51:                                     ; preds = %37
  %52 = load %struct.Process*, %struct.Process** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Process, %struct.Process* %52, i64 %54
  store %struct.Process* %55, %struct.Process** %9, align 8
  %56 = load %struct.Process*, %struct.Process** %9, align 8
  %57 = getelementptr inbounds %struct.Process, %struct.Process* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  store double %58, double* %10, align 8
  store i32 1, i32* %14, align 4
  br label %59

; <label>:59:                                     ; preds = %51, %37
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %28

; <label>:62:                                     ; preds = %35
  store i32 0, i32* %11, align 4
  br label %63

; <label>:63:                                     ; preds = %98, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %101

; <label>:67:                                     ; preds = %63
  %68 = load %struct.Process*, %struct.Process** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.Process, %struct.Process* %68, i64 %70
  %72 = getelementptr inbounds %struct.Process, %struct.Process* %71, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = load double, double* %10, align 8
  %75 = fcmp ole double %73, %74
  br i1 %75, label %76, label %97

; <label>:76:                                     ; preds = %67
  %77 = load %struct.Process*, %struct.Process** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Process, %struct.Process* %77, i64 %79
  %81 = getelementptr inbounds %struct.Process, %struct.Process* %80, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = load double, double* %13, align 8
  %84 = fcmp oge double %82, %83
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %76
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

; <label>:89:                                     ; preds = %85
  %90 = load %struct.Process*, %struct.Process** %5, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Process, %struct.Process* %90, i64 %92
  store %struct.Process* %93, %struct.Process** %9, align 8
  %94 = load %struct.Process*, %struct.Process** %9, align 8
  %95 = getelementptr inbounds %struct.Process, %struct.Process* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  store double %96, double* %10, align 8
  br label %97

; <label>:97:                                     ; preds = %89, %85, %76, %67
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %63

; <label>:101:                                    ; preds = %63
  %102 = load %struct.Process*, %struct.Process** %9, align 8
  ret %struct.Process* %102
}

; Function Attrs: noinline nounwind optnone uwtable
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.Process* %2, %struct.Process** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %146, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %149

; <label>:20:                                     ; preds = %16
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 %21, i32 %22)
  %24 = load %struct.Process*, %struct.Process** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.Process* @smallestTau(%struct.Process* %24, i32 %25, i32 %26)
  store %struct.Process* %27, %struct.Process** %14, align 8
  store i32 0, i32* %8, align 4
  br label %28

; <label>:28:                                     ; preds = %95, %20
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %98

; <label>:32:                                     ; preds = %28
  %33 = load %struct.Process*, %struct.Process** %14, align 8
  %34 = getelementptr inbounds %struct.Process, %struct.Process* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.Process*, %struct.Process** %14, align 8
  %37 = getelementptr inbounds %struct.Process, %struct.Process* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load %struct.Process*, %struct.Process** %14, align 8
  %40 = getelementptr inbounds %struct.Process, %struct.Process* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i32 %35, double %38, i32 %45)
  %47 = load %struct.Process*, %struct.Process** %14, align 8
  %48 = getelementptr inbounds %struct.Process, %struct.Process* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.Process*, %struct.Process** %14, align 8
  %60 = getelementptr inbounds %struct.Process, %struct.Process* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load %struct.Process*, %struct.Process** %14, align 8
  %72 = getelementptr inbounds %struct.Process, %struct.Process* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to double
  %79 = load %struct.Process*, %struct.Process** %14, align 8
  %80 = getelementptr inbounds %struct.Process, %struct.Process* %79, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = fsub double %78, %81
  %83 = fptosi double %82 to i32
  %84 = call i32 @abs(i32 %83) #6
  %85 = sitofp i32 %84 to double
  %86 = load double, double* %12, align 8
  %87 = fadd double %86, %85
  store double %87, double* %12, align 8
  %88 = load %struct.Process*, %struct.Process** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.Process*, %struct.Process** %14, align 8
  %91 = getelementptr inbounds %struct.Process, %struct.Process* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call %struct.Process* @smallestTauAboveX(%struct.Process* %88, i32 %89, i32 %92, i32 %93)
  store %struct.Process* %94, %struct.Process** %14, align 8
  br label %95

; <label>:95:                                     ; preds = %32
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %28

; <label>:98:                                     ; preds = %28
  store i32 0, i32* %8, align 4
  br label %99

; <label>:99:                                     ; preds = %142, %98
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %145

; <label>:103:                                    ; preds = %99
  %104 = load %struct.Process*, %struct.Process** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.Process, %struct.Process* %104, i64 %106
  %108 = getelementptr inbounds %struct.Process, %struct.Process* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = load %struct.Process*, %struct.Process** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.Process, %struct.Process* %110, i64 %112
  %114 = getelementptr inbounds %struct.Process, %struct.Process* %113, i32 0, i32 2
  %115 = load double, double* %114, align 8
  %116 = fmul double %109, %115
  %117 = load %struct.Process*, %struct.Process** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.Process, %struct.Process* %117, i64 %119
  %121 = getelementptr inbounds %struct.Process, %struct.Process* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = load %struct.Process*, %struct.Process** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.Process, %struct.Process* %128, i64 %130
  %132 = getelementptr inbounds %struct.Process, %struct.Process* %131, i32 0, i32 2
  %133 = load double, double* %132, align 8
  %134 = fsub double 1.000000e+00, %133
  %135 = fmul double %127, %134
  %136 = fadd double %116, %135
  %137 = load %struct.Process*, %struct.Process** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.Process, %struct.Process* %137, i64 %139
  %141 = getelementptr inbounds %struct.Process, %struct.Process* %140, i32 0, i32 1
  store double %136, double* %141, align 8
  br label %142

; <label>:142:                                    ; preds = %103
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %99

; <label>:145:                                    ; preds = %99
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %16

; <label>:149:                                    ; preds = %16
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load double, double* %12, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i32 0, i32 0), i32 %150, i32 %151, double %152)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Process*, align 8
  store i32 0, i32* %1, align 4
  %6 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %2, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 32
  %14 = call noalias i8* @malloc(i64 %13) #5
  %15 = bitcast i8* %14 to %struct.Process*
  store %struct.Process* %15, %struct.Process** %5, align 8
  %16 = load %struct.Process*, %struct.Process** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @input(%struct.Process* %16, i32 %17, i32 %18, %struct._IO_FILE* %19)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.Process*, %struct.Process** %5, align 8
  call void @shortestFirst(i32 %20, i32 %21, %struct.Process* %22)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.Process*, %struct.Process** %5, align 8
  call void @shortestFirstLive(i32 %23, i32 %24, %struct.Process* %25)
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
