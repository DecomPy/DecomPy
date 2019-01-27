; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_01背包问题_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_01\E8\83\8C\E5\8C\85\E9\97\AE\E9\A2\98_\E9\9D\9E\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@maxvalue = common global i32 0, align 4
@weighted = common global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.weight = private unnamed_addr constant [5 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@main.value = private unnamed_addr constant [5 x i32] [i32 5, i32 4, i32 3, i32 2, i32 10], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"maxvalue=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"weighted=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @display_outcome(i32*, i32*, i32*) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32* %2, i32** %6, align 8, !tbaa !3
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %40, %3
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %43

; <label>:17:                                     ; preds = %14
  %18 = load i32*, i32** %4, align 8, !tbaa !3
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

; <label>:24:                                     ; preds = %17
  %25 = load i32*, i32** %6, align 8, !tbaa !3
  %26 = load i32, i32* %7, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !7
  %30 = load i32, i32* %8, align 4, !tbaa !7
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4, !tbaa !7
  %32 = load i32*, i32** %5, align 8, !tbaa !3
  %33 = load i32, i32* %7, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = load i32, i32* %9, align 4, !tbaa !7
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4, !tbaa !7
  br label %39

; <label>:39:                                     ; preds = %24, %17
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4, !tbaa !7
  br label %14

; <label>:43:                                     ; preds = %14
  %44 = load i32, i32* %8, align 4, !tbaa !7
  %45 = load i32, i32* @maxvalue, align 4, !tbaa !7
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %68

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %48, i32* @maxvalue, align 4, !tbaa !7
  %49 = load i32, i32* %9, align 4, !tbaa !7
  store i32 %49, i32* @weighted, align 4, !tbaa !7
  %50 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %50) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  br label %51

; <label>:51:                                     ; preds = %63, %47
  %52 = load i32, i32* %10, align 4, !tbaa !7
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %51
  %55 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  br label %66

; <label>:56:                                     ; preds = %51
  %57 = load i32*, i32** %4, align 8, !tbaa !3
  %58 = load i32, i32* %10, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !7
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %61)
  br label %63

; <label>:63:                                     ; preds = %56
  %64 = load i32, i32* %10, align 4, !tbaa !7
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4, !tbaa !7
  br label %51

; <label>:66:                                     ; preds = %54
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %68

; <label>:68:                                     ; preds = %66, %43
  %69 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  %70 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #3
  %71 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @condition(i32*, i32*, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %11 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %33, %4
  %14 = load i32, i32* %9, align 4, !tbaa !7
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %6, align 8, !tbaa !3
  %19 = load i32, i32* %9, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %17
  %25 = load i32*, i32** %5, align 8, !tbaa !3
  %26 = load i32, i32* %9, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !7
  %30 = load i32, i32* %10, align 4, !tbaa !7
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %10, align 4, !tbaa !7
  br label %32

; <label>:32:                                     ; preds = %24, %17
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %9, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:36:                                     ; preds = %13
  %37 = load i32, i32* %8, align 4, !tbaa !7
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %36
  %40 = load i32*, i32** %5, align 8, !tbaa !3
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = load i32, i32* %10, align 4, !tbaa !7
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4, !tbaa !7
  br label %47

; <label>:47:                                     ; preds = %39, %36
  %48 = load i32, i32* %10, align 4, !tbaa !7
  %49 = icmp sle i32 %48, 20
  %50 = zext i1 %49 to i32
  %51 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  ret i32 %50
}

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %8 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %8) #3
  %9 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %9) #3
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %11 = load i32, i32* %7, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %12
  store i32 -1, i32* %13, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %85, %2
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %86

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %7, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %42, %17
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %40

; <label>:29:                                     ; preds = %23
  %30 = load i32*, i32** %3, align 8, !tbaa !3
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = load i32, i32* %7, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = call i32 @condition(i32* %30, i32* %31, i32 %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

; <label>:40:                                     ; preds = %29, %23
  %41 = phi i1 [ false, %23 ], [ %39, %29 ]
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %40
  %43 = load i32, i32* %7, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4, !tbaa !7
  br label %23

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %7, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !7
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %7, align 4, !tbaa !7
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4, !tbaa !7
  br label %85

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* %7, align 4, !tbaa !7
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %7, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !7
  %65 = load i32, i32* %7, align 4, !tbaa !7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %66
  store i32 %64, i32* %67, align 4, !tbaa !7
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %69 = load i32*, i32** %3, align 8, !tbaa !3
  %70 = load i32*, i32** %4, align 8, !tbaa !3
  call void @display_outcome(i32* %68, i32* %69, i32* %70)
  br label %84

; <label>:71:                                     ; preds = %57
  %72 = load i32, i32* %7, align 4, !tbaa !7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !7
  %76 = load i32, i32* %7, align 4, !tbaa !7
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %77
  store i32 %75, i32* %78, align 4, !tbaa !7
  %79 = load i32, i32* %7, align 4, !tbaa !7
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4, !tbaa !7
  %81 = load i32, i32* %7, align 4, !tbaa !7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %82
  store i32 -1, i32* %83, align 4, !tbaa !7
  br label %84

; <label>:84:                                     ; preds = %71, %60
  br label %85

; <label>:85:                                     ; preds = %84, %54
  br label %14

; <label>:86:                                     ; preds = %14
  %87 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %88) #3
  %89 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %89) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %8) #3
  %9 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @main.weight to i8*), i64 20, i1 false)
  %10 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %10) #3
  %11 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([5 x i32]* @main.value to i8*), i64 20, i1 false)
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 0
  call void @backtrack(i32* %12, i32* %13)
  %14 = load i32, i32* @maxvalue, align 4, !tbaa !7
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %14)
  %16 = load i32, i32* @weighted, align 4, !tbaa !7
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %16)
  %18 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %18) #3
  %19 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %19) #3
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
