; ModuleID = 'example2.c'
source_filename = "example2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%dM\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%dK\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%dB\09%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6
  %4 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 @size(%struct.__dirstream* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 %5, i32* %2, align 4, !tbaa !2
  %6 = load i32, i32* %2, align 4, !tbaa !2
  call void @printDirectory(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 %6)
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @size(%struct.__dirstream*, i8*) #0 {
  %3 = alloca %struct.__dirstream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca [256 x %struct.dirent*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.__dirstream* %0, %struct.__dirstream** %3, align 8, !tbaa !6
  store i8* %1, i8** %4, align 8, !tbaa !6
  %13 = bitcast [1024 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %13) #6
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  store i32 0, i32* %6, align 4, !tbaa !2
  %15 = bitcast %struct.dirent** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %16 = bitcast %struct.stat* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* %16) #6
  %17 = bitcast [256 x %struct.dirent*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* %17) #6
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6
  %19 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !tbaa !6
  %20 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i32 0, i32 0
  %21 = call i32 @sortDirEntries(%struct.__dirstream* %19, %struct.dirent** %20)
  store i32 %21, i32* %10, align 4, !tbaa !2
  %22 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #6
  store i32 0, i32* %11, align 4, !tbaa !2
  %23 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #6
  store i32 0, i32* %12, align 4, !tbaa !2
  br label %24

; <label>:24:                                     ; preds = %93, %2
  %25 = load i32, i32* %12, align 4, !tbaa !2
  %26 = load i32, i32* %10, align 4, !tbaa !2
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %96

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %12, align 4, !tbaa !2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i64 0, i64 %30
  %32 = load %struct.dirent*, %struct.dirent** %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 3
  %34 = load i8, i8* %33, align 2, !tbaa !8
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %67

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %39 = load i8*, i8** %4, align 8, !tbaa !6
  %40 = call i8* @strcpy(i8* %38, i8* %39) #6
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %42 = call i8* @strcat(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %44 = load i32, i32* %12, align 4, !tbaa !2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i64 0, i64 %45
  %47 = load %struct.dirent*, %struct.dirent** %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 4
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %48, i32 0, i32 0
  %50 = call i8* @strcat(i8* %43, i8* %49) #6
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %52 = call i32 @stat(i8* %51, %struct.stat* %8) #6
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %54 = load i64, i64* %53, align 8, !tbaa !12
  %55 = load i32, i32* %6, align 4, !tbaa !2
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4, !tbaa !2
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %60 = call %struct.__dirstream* @opendir(i8* %59)
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %62 = call i32 @size(%struct.__dirstream* %60, i8* %61)
  %63 = load i32, i32* %6, align 4, !tbaa !2
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4, !tbaa !2
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %66 = load i32, i32* %6, align 4, !tbaa !2
  call void @printDirectory(i8* %65, i32 %66)
  br label %93

; <label>:67:                                     ; preds = %28
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %69 = load i8*, i8** %4, align 8, !tbaa !6
  %70 = call i8* @strcpy(i8* %68, i8* %69) #6
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %72 = call i8* @strcat(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %74 = load i32, i32* %12, align 4, !tbaa !2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x %struct.dirent*], [256 x %struct.dirent*]* %9, i64 0, i64 %75
  %77 = load %struct.dirent*, %struct.dirent** %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 4
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %78, i32 0, i32 0
  %80 = call i8* @strcat(i8* %73, i8* %79) #6
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %82 = call i32 @stat(i8* %81, %struct.stat* %8) #6
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %84 = load i64, i64* %83, align 8, !tbaa !12
  %85 = load i32, i32* %6, align 4, !tbaa !2
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4, !tbaa !2
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %91 = load i64, i64* %90, align 8, !tbaa !12
  %92 = trunc i64 %91 to i32
  call void @printDirectory(i8* %89, i32 %92)
  br label %93

; <label>:93:                                     ; preds = %67, %37
  %94 = load i32, i32* %12, align 4, !tbaa !2
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4, !tbaa !2
  br label %24

; <label>:96:                                     ; preds = %24
  %97 = load i32, i32* %6, align 4, !tbaa !2
  %98 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #6
  %99 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #6
  %100 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %100) #6
  %101 = bitcast [256 x %struct.dirent*]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* %101) #6
  %102 = bitcast %struct.stat* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %102) #6
  %103 = bitcast %struct.dirent** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #6
  %104 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #6
  %105 = bitcast [1024 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %105) #6
  ret i32 %97
}

declare %struct.__dirstream* @opendir(i8*) #2

; Function Attrs: nounwind uwtable
define void @printDirectory(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !6
  store i32 %1, i32* %4, align 4, !tbaa !2
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6
  store i32 0, i32* %5, align 4, !tbaa !2
  %7 = load i32, i32* %4, align 4, !tbaa !2
  %8 = icmp sgt i32 %7, 1048576
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !tbaa !2
  %11 = sdiv i32 %10, 1048576
  store i32 %11, i32* %5, align 4, !tbaa !2
  %12 = load i32, i32* %5, align 4, !tbaa !2
  %13 = load i8*, i8** %3, align 8, !tbaa !6
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %12, i8* %13)
  br label %30

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %4, align 4, !tbaa !2
  %17 = icmp sgt i32 %16, 1024
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %4, align 4, !tbaa !2
  %20 = sdiv i32 %19, 1024
  store i32 %20, i32* %5, align 4, !tbaa !2
  %21 = load i32, i32* %5, align 4, !tbaa !2
  %22 = load i8*, i8** %3, align 8, !tbaa !6
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %21, i8* %22)
  br label %29

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %4, align 4, !tbaa !2
  store i32 %25, i32* %5, align 4, !tbaa !2
  %26 = load i32, i32* %5, align 4, !tbaa !2
  %27 = load i8*, i8** %3, align 8, !tbaa !6
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %26, i8* %27)
  br label %29

; <label>:29:                                     ; preds = %24, %18
  br label %30

; <label>:30:                                     ; preds = %29, %9
  %31 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @sortDirEntries(%struct.__dirstream*, %struct.dirent**) #0 {
  %3 = alloca %struct.__dirstream*, align 8
  %4 = alloca %struct.dirent**, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.__dirstream* %0, %struct.__dirstream** %3, align 8, !tbaa !6
  store %struct.dirent** %1, %struct.dirent*** %4, align 8, !tbaa !6
  %11 = bitcast %struct.dirent** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #6
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #6
  store i32 0, i32* %6, align 4, !tbaa !2
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6
  store i32 0, i32* %7, align 4, !tbaa !2
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6
  store i32 0, i32* %8, align 4, !tbaa !2
  br label %15

; <label>:15:                                     ; preds = %104, %2
  %16 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !tbaa !6
  %17 = call %struct.dirent* @readdir(%struct.__dirstream* %16)
  store %struct.dirent* %17, %struct.dirent** %5, align 8, !tbaa !6
  %18 = icmp ne %struct.dirent* %17, null
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %6, align 4, !tbaa !2
  %21 = icmp slt i32 %20, 256
  br label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %105

; <label>:24:                                     ; preds = %22
  %25 = load %struct.dirent*, %struct.dirent** %5, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 4
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i32 0, i32 0
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %104

; <label>:30:                                     ; preds = %24
  %31 = load %struct.dirent*, %struct.dirent** %5, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i32 0, i32 0
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #7
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %104

; <label>:36:                                     ; preds = %30
  store i32 0, i32* %7, align 4, !tbaa !2
  %37 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #6
  store i32 0, i32* %9, align 4, !tbaa !2
  br label %38

; <label>:38:                                     ; preds = %63, %36
  %39 = load i32, i32* %9, align 4, !tbaa !2
  %40 = load i32, i32* %6, align 4, !tbaa !2
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %7, align 4, !tbaa !2
  %44 = icmp eq i32 %43, 0
  br label %45

; <label>:45:                                     ; preds = %42, %38
  %46 = phi i1 [ false, %38 ], [ %44, %42 ]
  br i1 %46, label %47, label %67

; <label>:47:                                     ; preds = %45
  %48 = load %struct.dirent*, %struct.dirent** %5, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 4
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %49, i32 0, i32 0
  %51 = load %struct.dirent**, %struct.dirent*** %4, align 8, !tbaa !6
  %52 = load i32, i32* %9, align 4, !tbaa !2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dirent*, %struct.dirent** %51, i64 %53
  %55 = load %struct.dirent*, %struct.dirent** %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %56, i32 0, i32 0
  %58 = call i32 @strcasecmp(i8* %50, i8* %57) #7
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %47
  %61 = load i32, i32* %7, align 4, !tbaa !2
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4, !tbaa !2
  br label %63

; <label>:63:                                     ; preds = %60, %47
  %64 = load i32, i32* %9, align 4, !tbaa !2
  store i32 %64, i32* %8, align 4, !tbaa !2
  %65 = load i32, i32* %9, align 4, !tbaa !2
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4, !tbaa !2
  br label %38

; <label>:67:                                     ; preds = %45
  %68 = load i32, i32* %7, align 4, !tbaa !2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %6, align 4, !tbaa !2
  store i32 %71, i32* %8, align 4, !tbaa !2
  br label %72

; <label>:72:                                     ; preds = %70, %67
  %73 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %73) #6
  %74 = load i32, i32* %6, align 4, !tbaa !2
  store i32 %74, i32* %10, align 4, !tbaa !2
  %75 = load i32, i32* %10, align 4, !tbaa !2
  br label %76

; <label>:76:                                     ; preds = %91, %72
  %77 = load i32, i32* %10, align 4, !tbaa !2
  %78 = load i32, i32* %8, align 4, !tbaa !2
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %94

; <label>:80:                                     ; preds = %76
  %81 = load %struct.dirent**, %struct.dirent*** %4, align 8, !tbaa !6
  %82 = load i32, i32* %10, align 4, !tbaa !2
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.dirent*, %struct.dirent** %81, i64 %84
  %86 = load %struct.dirent*, %struct.dirent** %85, align 8, !tbaa !6
  %87 = load %struct.dirent**, %struct.dirent*** %4, align 8, !tbaa !6
  %88 = load i32, i32* %10, align 4, !tbaa !2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dirent*, %struct.dirent** %87, i64 %89
  store %struct.dirent* %86, %struct.dirent** %90, align 8, !tbaa !6
  br label %91

; <label>:91:                                     ; preds = %80
  %92 = load i32, i32* %10, align 4, !tbaa !2
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %10, align 4, !tbaa !2
  br label %76

; <label>:94:                                     ; preds = %76
  %95 = load %struct.dirent*, %struct.dirent** %5, align 8, !tbaa !6
  %96 = load %struct.dirent**, %struct.dirent*** %4, align 8, !tbaa !6
  %97 = load i32, i32* %8, align 4, !tbaa !2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.dirent*, %struct.dirent** %96, i64 %98
  store %struct.dirent* %95, %struct.dirent** %99, align 8, !tbaa !6
  %100 = load i32, i32* %6, align 4, !tbaa !2
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4, !tbaa !2
  %102 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #6
  %103 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %103) #6
  br label %104

; <label>:104:                                    ; preds = %94, %30, %24
  br label %15

; <label>:105:                                    ; preds = %22
  %106 = load i32, i32* %6, align 4, !tbaa !2
  %107 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #6
  %108 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #6
  %109 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #6
  %110 = bitcast %struct.dirent** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %110) #6
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat(i8* nonnull, %struct.stat* nonnull) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !6
  store %struct.stat* %1, %struct.stat** %4, align 8, !tbaa !6
  %5 = load i8*, i8** %3, align 8, !tbaa !6
  %6 = load %struct.stat*, %struct.stat** %4, align 8, !tbaa !6
  %7 = call i32 @__xstat(i32 1, i8* %5, %struct.stat* %6) #6
  ret i32 %7
}

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !4, i64 18}
!9 = !{!"dirent", !10, i64 0, !10, i64 8, !11, i64 16, !4, i64 18, !4, i64 19}
!10 = !{!"long", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!13, !10, i64 48}
!13 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !4, i64 120}
!14 = !{!"timespec", !10, i64 0, !10, i64 8}
