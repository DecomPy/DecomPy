; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_哈密顿环_main.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\93\88\E5\AF\86\E9\A1\BF\E7\8E\AF_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.map = private unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 0, i32 1, i32 0, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], [6 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [6 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 0], [6 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 0]], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @isneibor([6 x i32]*, i32, i32) #0 {
  %4 = alloca [6 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [6 x i32]* %0, [6 x i32]** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %7 = load [6 x i32]*, [6 x i32]** %4, align 8, !tbaa !3
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 %9
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !7
  ret i32 %14
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

; <label>:7:                                      ; preds = %20, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3
  br label %23

; <label>:13:                                     ; preds = %7
  %14 = load i32*, i32** %3, align 8, !tbaa !3
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %18)
  br label %20

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:23:                                     ; preds = %11
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @available(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 1, i32* %7, align 4, !tbaa !7
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %32, %3
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18:                                     ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %18
  %21 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  br label %35

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %4, align 8, !tbaa !3
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %31

; <label>:31:                                     ; preds = %30, %22
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %8, align 4, !tbaa !7
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:35:                                     ; preds = %20
  %36 = load i32, i32* %7, align 4, !tbaa !7
  %37 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  ret i32 %36
}

; Function Attrs: nounwind ssp uwtable
define void @backtrace_recursive([6 x i32]*, i32, i32*, i32) #0 {
  %5 = alloca [6 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [6 x i32]* %0, [6 x i32]** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32 %3, i32* %8, align 4, !tbaa !7
  %11 = load i32, i32* %8, align 4, !tbaa !7
  %12 = load i32, i32* %6, align 4, !tbaa !7
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

; <label>:14:                                     ; preds = %4
  %15 = load [6 x i32]*, [6 x i32]** %5, align 8, !tbaa !3
  %16 = load i32*, i32** %7, align 8, !tbaa !3
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = call i32 @isneibor([6 x i32]* %15, i32 %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %14
  %25 = load i32*, i32** %7, align 8, !tbaa !3
  %26 = load i32, i32* %8, align 4, !tbaa !7
  call void @displayoutcome(i32* %25, i32 %26)
  br label %75

; <label>:27:                                     ; preds = %14, %4
  %28 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3
  %29 = load i32*, i32** %7, align 8, !tbaa !3
  %30 = load i32, i32* %8, align 4, !tbaa !7
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  store i32 %34, i32* %9, align 4, !tbaa !7
  %35 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %35) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  br label %36

; <label>:36:                                     ; preds = %70, %27
  %37 = load i32, i32* %10, align 4, !tbaa !7
  %38 = load i32, i32* %6, align 4, !tbaa !7
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %42, label %40

; <label>:40:                                     ; preds = %36
  %41 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  br label %73

; <label>:42:                                     ; preds = %36
  %43 = load [6 x i32]*, [6 x i32]** %5, align 8, !tbaa !3
  %44 = load i32, i32* %9, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %43, i64 %45
  %47 = load i32, i32* %10, align 4, !tbaa !7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %46, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !7
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

; <label>:52:                                     ; preds = %42
  %53 = load i32*, i32** %7, align 8, !tbaa !3
  %54 = load i32, i32* %8, align 4, !tbaa !7
  %55 = load i32, i32* %10, align 4, !tbaa !7
  %56 = call i32 @available(i32* %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %10, align 4, !tbaa !7
  %60 = load i32*, i32** %7, align 8, !tbaa !3
  %61 = load i32, i32* %8, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4, !tbaa !7
  %64 = load [6 x i32]*, [6 x i32]** %5, align 8, !tbaa !3
  %65 = load i32, i32* %6, align 4, !tbaa !7
  %66 = load i32*, i32** %7, align 8, !tbaa !3
  %67 = load i32, i32* %8, align 4, !tbaa !7
  %68 = add nsw i32 %67, 1
  call void @backtrace_recursive([6 x i32]* %64, i32 %65, i32* %66, i32 %68)
  br label %69

; <label>:69:                                     ; preds = %58, %52, %42
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %10, align 4, !tbaa !7
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4, !tbaa !7
  br label %36

; <label>:73:                                     ; preds = %40
  %74 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3
  br label %75

; <label>:75:                                     ; preds = %73, %24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @backtrace_nonrecursive([6 x i32]*, i32) #0 {
  %3 = alloca [6 x i32]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [6 x i32]* %0, [6 x i32]** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %10 = load i32, i32* %4, align 4, !tbaa !7
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 1, i32* %8, align 4, !tbaa !7
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %19, align 16, !tbaa !7
  %20 = load i32, i32* %8, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32 -1, i32* %22, align 4, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %116, %2
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = icmp sge i32 %24, 1
  br i1 %25, label %26, label %117

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %8, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %16, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4, !tbaa !7
  %32 = load i32, i32* %8, align 4, !tbaa !7
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %13, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  store i32 %36, i32* %9, align 4, !tbaa !7
  br label %37

; <label>:37:                                     ; preds = %70, %26
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %16, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = load i32, i32* %4, align 4, !tbaa !7
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %68

; <label>:44:                                     ; preds = %37
  %45 = load [6 x i32]*, [6 x i32]** %3, align 8, !tbaa !3
  %46 = load i32, i32* %9, align 4, !tbaa !7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %45, i64 %47
  %49 = load i32, i32* %8, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %16, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %48, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %44
  %58 = load i32, i32* %8, align 4, !tbaa !7
  %59 = load i32, i32* %8, align 4, !tbaa !7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %16, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = call i32 @available(i32* %13, i32 %58, i32 %62)
  %64 = icmp ne i32 %63, 0
  br label %65

; <label>:65:                                     ; preds = %57, %44
  %66 = phi i1 [ false, %44 ], [ %64, %57 ]
  %67 = xor i1 %66, true
  br label %68

; <label>:68:                                     ; preds = %65, %37
  %69 = phi i1 [ false, %37 ], [ %67, %65 ]
  br i1 %69, label %70, label %76

; <label>:70:                                     ; preds = %68
  %71 = load i32, i32* %8, align 4, !tbaa !7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %16, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !7
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4, !tbaa !7
  br label %37

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %8, align 4, !tbaa !7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %16, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !7
  %81 = load i32, i32* %4, align 4, !tbaa !7
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %76
  %84 = load i32, i32* %8, align 4, !tbaa !7
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4, !tbaa !7
  br label %116

; <label>:86:                                     ; preds = %76
  %87 = load i32, i32* %8, align 4, !tbaa !7
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %16, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !7
  %91 = load i32, i32* %8, align 4, !tbaa !7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %13, i64 %92
  store i32 %90, i32* %93, align 4, !tbaa !7
  %94 = load i32, i32* %8, align 4, !tbaa !7
  %95 = load i32, i32* %4, align 4, !tbaa !7
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %109

; <label>:98:                                     ; preds = %86
  %99 = load [6 x i32]*, [6 x i32]** %3, align 8, !tbaa !3
  %100 = load i32, i32* %8, align 4, !tbaa !7
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %13, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !7
  %104 = call i32 @isneibor([6 x i32]* %99, i32 %103, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %98
  %107 = load i32, i32* %8, align 4, !tbaa !7
  %108 = add nsw i32 %107, 1
  call void @displayoutcome(i32* %13, i32 %108)
  br label %115

; <label>:109:                                    ; preds = %98, %86
  %110 = load i32, i32* %8, align 4, !tbaa !7
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4, !tbaa !7
  %112 = load i32, i32* %8, align 4, !tbaa !7
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %16, i64 %113
  store i32 -1, i32* %114, align 4, !tbaa !7
  br label %115

; <label>:115:                                    ; preds = %109, %106
  br label %116

; <label>:116:                                    ; preds = %115, %83
  br label %23

; <label>:117:                                    ; preds = %23
  %118 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %118) #3
  %119 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %119) #3
  %120 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x [6 x i32]], align 16
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %9 = bitcast [6 x [6 x i32]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* %9) #3
  %10 = bitcast [6 x [6 x i32]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x [6 x i32]]* @main.map to i8*), i64 144, i1 false)
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 6, i32* %7, align 4, !tbaa !7
  %12 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %12) #3
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %13, align 16, !tbaa !7
  %14 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %6, i32 0, i32 0
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i32 0, i32 0
  call void @backtrace_recursive([6 x i32]* %14, i32 %15, i32* %16, i32 1)
  %17 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %17) #3
  %18 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  %19 = bitcast [6 x [6 x i32]]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %19) #3
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
