; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Hungary.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Hungary.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Node = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%d,%d)=>(%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"counter=%d\0A\00", align 1
@main.pset = private unnamed_addr constant [10 x %struct.Node] [%struct.Node { i32 5, i32 2 }, %struct.Node { i32 4, i32 1 }, %struct.Node { i32 5, i32 2 }, %struct.Node { i32 2, i32 1 }, %struct.Node { i32 2, i32 3 }, %struct.Node { i32 1, i32 2 }, %struct.Node { i32 5, i32 3 }, %struct.Node { i32 4, i32 5 }, %struct.Node { i32 2, i32 6 }, %struct.Node { i32 2, i32 2 }], align 16
@main.qset = private unnamed_addr constant [10 x %struct.Node] [%struct.Node { i32 3, i32 5 }, %struct.Node { i32 1, i32 1 }, %struct.Node { i32 5, i32 3 }, %struct.Node { i32 2, i32 3 }, %struct.Node { i32 2, i32 4 }, %struct.Node { i32 4, i32 1 }, %struct.Node { i32 3, i32 1 }, %struct.Node { i32 1, i32 3 }, %struct.Node { i32 3, i32 2 }, %struct.Node { i32 3, i32 2 }], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @available(%struct.Node*, %struct.Node*) #0 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %3, align 8, !tbaa !3
  store %struct.Node* %1, %struct.Node** %4, align 8, !tbaa !3
  %5 = load %struct.Node*, %struct.Node** %3, align 8, !tbaa !3
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !7
  %8 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %2
  %13 = load %struct.Node*, %struct.Node** %3, align 8, !tbaa !3
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !10
  %16 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !3
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4, !tbaa !10
  %19 = icmp sge i32 %15, %18
  br label %20

; <label>:20:                                     ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define void @showresult(i32*, %struct.Node*, i32, %struct.Node*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Node*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store %struct.Node* %1, %struct.Node** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !11
  store %struct.Node* %3, %struct.Node** %8, align 8, !tbaa !3
  %10 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %9, align 4, !tbaa !11
  br label %11

; <label>:11:                                     ; preds = %59, %4
  %12 = load i32, i32* %9, align 4, !tbaa !11
  %13 = load i32, i32* %7, align 4, !tbaa !11
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %11
  %16 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3
  br label %62

; <label>:17:                                     ; preds = %11
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  %19 = load i32, i32* %9, align 4, !tbaa !11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !11
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %58

; <label>:24:                                     ; preds = %17
  %25 = load %struct.Node*, %struct.Node** %6, align 8, !tbaa !3
  %26 = load i32*, i32** %5, align 8, !tbaa !3
  %27 = load i32, i32* %9, align 4, !tbaa !11
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !11
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 %31
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = load %struct.Node*, %struct.Node** %6, align 8, !tbaa !3
  %36 = load i32*, i32** %5, align 8, !tbaa !3
  %37 = load i32, i32* %9, align 4, !tbaa !11
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !11
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.Node, %struct.Node* %35, i64 %41
  %43 = getelementptr inbounds %struct.Node, %struct.Node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !10
  %45 = load %struct.Node*, %struct.Node** %8, align 8, !tbaa !3
  %46 = load i32, i32* %9, align 4, !tbaa !11
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 %47
  %49 = getelementptr inbounds %struct.Node, %struct.Node* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4, !tbaa !7
  %51 = load %struct.Node*, %struct.Node** %8, align 8, !tbaa !3
  %52 = load i32, i32* %9, align 4, !tbaa !11
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 %53
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4, !tbaa !10
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %34, i32 %44, i32 %50, i32 %56)
  br label %58

; <label>:58:                                     ; preds = %24, %17
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %9, align 4, !tbaa !11
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4, !tbaa !11
  br label %11

; <label>:62:                                     ; preds = %15
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @findout(i32*, %struct.Node*, %struct.Node*, i32, i32*, i32, i32) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.Node*, align 8
  %11 = alloca %struct.Node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8, !tbaa !3
  store %struct.Node* %1, %struct.Node** %10, align 8, !tbaa !3
  store %struct.Node* %2, %struct.Node** %11, align 8, !tbaa !3
  store i32 %3, i32* %12, align 4, !tbaa !11
  store i32* %4, i32** %13, align 8, !tbaa !3
  store i32 %5, i32* %14, align 4, !tbaa !11
  store i32 %6, i32* %15, align 4, !tbaa !11
  %19 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = load i32, i32* %15, align 4, !tbaa !11
  store i32 %21, i32* %17, align 4, !tbaa !11
  br label %22

; <label>:22:                                     ; preds = %72, %7
  %23 = load i32, i32* %17, align 4, !tbaa !11
  %24 = load i32, i32* %12, align 4, !tbaa !11
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %22
  store i32 2, i32* %18, align 4
  br label %75

; <label>:27:                                     ; preds = %22
  %28 = load %struct.Node*, %struct.Node** %10, align 8, !tbaa !3
  %29 = load i32, i32* %14, align 4, !tbaa !11
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Node, %struct.Node* %28, i64 %30
  %32 = load %struct.Node*, %struct.Node** %11, align 8, !tbaa !3
  %33 = load i32, i32* %17, align 4, !tbaa !11
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %32, i64 %34
  %36 = call i32 @available(%struct.Node* %31, %struct.Node* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

; <label>:38:                                     ; preds = %27
  %39 = load i32*, i32** %13, align 8, !tbaa !3
  %40 = load i32, i32* %17, align 4, !tbaa !11
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 1, i32* %42, align 4, !tbaa !11
  %43 = load i32*, i32** %9, align 8, !tbaa !3
  %44 = load i32, i32* %17, align 4, !tbaa !11
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !11
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %64, label %49

; <label>:49:                                     ; preds = %38
  %50 = load i32*, i32** %9, align 8, !tbaa !3
  %51 = load %struct.Node*, %struct.Node** %10, align 8, !tbaa !3
  %52 = load %struct.Node*, %struct.Node** %11, align 8, !tbaa !3
  %53 = load i32, i32* %12, align 4, !tbaa !11
  %54 = load i32*, i32** %13, align 8, !tbaa !3
  %55 = load i32*, i32** %9, align 8, !tbaa !3
  %56 = load i32, i32* %17, align 4, !tbaa !11
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !11
  %60 = load i32, i32* %17, align 4, !tbaa !11
  %61 = add nsw i32 %60, 1
  %62 = call i32 @findout(i32* %50, %struct.Node* %51, %struct.Node* %52, i32 %53, i32* %54, i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

; <label>:64:                                     ; preds = %49, %38
  %65 = load i32, i32* %14, align 4, !tbaa !11
  %66 = load i32*, i32** %9, align 8, !tbaa !3
  %67 = load i32, i32* %17, align 4, !tbaa !11
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4, !tbaa !11
  store i32 1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %75

; <label>:70:                                     ; preds = %49
  br label %71

; <label>:71:                                     ; preds = %70, %27
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %17, align 4, !tbaa !11
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4, !tbaa !11
  br label %22

; <label>:75:                                     ; preds = %64, %26
  %76 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3
  %77 = load i32, i32* %18, align 4
  switch i32 %77, label %79 [
    i32 2, label %78
  ]

; <label>:78:                                     ; preds = %75
  store i32 0, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %79

; <label>:79:                                     ; preds = %78, %75
  %80 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

; Function Attrs: nounwind ssp uwtable
define void @hungary(%struct.Node*, i32, %struct.Node*, i32) #0 {
  %5 = alloca %struct.Node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Node* %0, %struct.Node** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !11
  store %struct.Node* %2, %struct.Node** %7, align 8, !tbaa !3
  store i32 %3, i32* %8, align 4, !tbaa !11
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 0, i32* %9, align 4, !tbaa !11
  %16 = load i32, i32* %8, align 4, !tbaa !11
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* %6, align 4, !tbaa !11
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = bitcast i32* %19 to i8*
  %24 = load i32, i32* %8, align 4, !tbaa !11
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = bitcast i32* %19 to i8*
  %28 = call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false, i1 true)
  %29 = call i8* @__memset_chk(i8* %23, i32 0, i64 %26, i64 %28) #3
  %30 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #3
  store i32 0, i32* %13, align 4, !tbaa !11
  br label %31

; <label>:31:                                     ; preds = %41, %4
  %32 = load i32, i32* %13, align 4, !tbaa !11
  %33 = load i32, i32* %8, align 4, !tbaa !11
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %31
  %36 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  br label %44

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %13, align 4, !tbaa !11
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %22, i64 %39
  store i32 -1, i32* %40, align 4, !tbaa !11
  br label %41

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %13, align 4, !tbaa !11
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4, !tbaa !11
  br label %31

; <label>:44:                                     ; preds = %35
  %45 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #3
  store i32 0, i32* %14, align 4, !tbaa !11
  br label %46

; <label>:46:                                     ; preds = %63, %44
  %47 = load i32, i32* %14, align 4, !tbaa !11
  %48 = load i32, i32* %6, align 4, !tbaa !11
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %52, label %50

; <label>:50:                                     ; preds = %46
  %51 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  br label %66

; <label>:52:                                     ; preds = %46
  %53 = load %struct.Node*, %struct.Node** %5, align 8, !tbaa !3
  %54 = load %struct.Node*, %struct.Node** %7, align 8, !tbaa !3
  %55 = load i32, i32* %8, align 4, !tbaa !11
  %56 = load i32, i32* %14, align 4, !tbaa !11
  %57 = call i32 @findout(i32* %22, %struct.Node* %53, %struct.Node* %54, i32 %55, i32* %19, i32 %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %52
  %60 = load i32, i32* %9, align 4, !tbaa !11
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4, !tbaa !11
  br label %62

; <label>:62:                                     ; preds = %59, %52
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %14, align 4, !tbaa !11
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4, !tbaa !11
  br label %46

; <label>:66:                                     ; preds = %50
  %67 = load i32, i32* %9, align 4, !tbaa !11
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %67)
  %69 = load %struct.Node*, %struct.Node** %5, align 8, !tbaa !3
  %70 = load i32, i32* %8, align 4, !tbaa !11
  %71 = load %struct.Node*, %struct.Node** %7, align 8, !tbaa !3
  call void @showresult(i32* %22, %struct.Node* %69, i32 %70, %struct.Node* %71)
  %72 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #3
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca [10 x %struct.Node], align 16
  %2 = alloca [10 x %struct.Node], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [10 x %struct.Node]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %5) #3
  %6 = bitcast [10 x %struct.Node]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([10 x %struct.Node]* @main.pset to i8*), i64 80, i1 false)
  %7 = bitcast [10 x %struct.Node]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %7) #3
  %8 = bitcast [10 x %struct.Node]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([10 x %struct.Node]* @main.qset to i8*), i64 80, i1 false)
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 10, i32* %3, align 4, !tbaa !11
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 10, i32* %4, align 4, !tbaa !11
  %11 = getelementptr inbounds [10 x %struct.Node], [10 x %struct.Node]* %1, i32 0, i32 0
  %12 = load i32, i32* %3, align 4, !tbaa !11
  %13 = getelementptr inbounds [10 x %struct.Node], [10 x %struct.Node]* %2, i32 0, i32 0
  %14 = load i32, i32* %4, align 4, !tbaa !11
  call void @hungary(%struct.Node* %11, i32 %12, %struct.Node* %13, i32 %14)
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3
  %17 = bitcast [10 x %struct.Node]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %17) #3
  %18 = bitcast [10 x %struct.Node]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %18) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"Node", !9, i64 0, !9, i64 4}
!9 = !{!"int", !5, i64 0}
!10 = !{!8, !9, i64 4}
!11 = !{!9, !9, i64 0}
