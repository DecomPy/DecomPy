; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_ch7code_7.5.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_ch7code_7.5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Drop branch.\0A\00", align 1
@main.set = private unnamed_addr constant [6 x i32] [i32 7, i32 4, i32 6, i32 13, i32 20, i32 8], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"use DFS:\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"use Branch and Bound:\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @displayoutcome(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %28, %3
  %10 = load i32, i32* %7, align 4, !tbaa !7
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %5, align 8, !tbaa !3
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %13
  %21 = load i32*, i32** %4, align 8, !tbaa !3
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %25)
  br label %27

; <label>:27:                                     ; preds = %20, %13
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %7, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4, !tbaa !7
  br label %9

; <label>:31:                                     ; preds = %9
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sum(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %31, %3
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %15
  %23 = load i32*, i32** %4, align 8, !tbaa !3
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32, i32* %7, align 4, !tbaa !7
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %7, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %22, %15
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %8, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:34:                                     ; preds = %11
  %35 = load i32, i32* %7, align 4, !tbaa !7
  %36 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define void @BFS_search(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32*, i32** %4, align 8, !tbaa !3
  %12 = load i32*, i32** %5, align 8, !tbaa !3
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = call i32 @sum(i32* %11, i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4, !tbaa !7
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %7, align 4, !tbaa !7
  %19 = icmp eq i32 %18, 18
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %17
  %21 = load i32*, i32** %4, align 8, !tbaa !3
  %22 = load i32*, i32** %5, align 8, !tbaa !3
  %23 = load i32, i32* %6, align 4, !tbaa !7
  call void @displayoutcome(i32* %21, i32* %22, i32 %23)
  br label %24

; <label>:24:                                     ; preds = %20, %17
  store i32 1, i32* %8, align 4
  br label %45

; <label>:25:                                     ; preds = %3
  %26 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %40, %25
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %9, align 4, !tbaa !7
  %32 = load i32*, i32** %5, align 8, !tbaa !3
  %33 = load i32, i32* %6, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4, !tbaa !7
  %36 = load i32*, i32** %4, align 8, !tbaa !3
  %37 = load i32*, i32** %5, align 8, !tbaa !3
  %38 = load i32, i32* %6, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  call void @BFS_search(i32* %36, i32* %37, i32 %39)
  br label %40

; <label>:40:                                     ; preds = %30
  %41 = load i32, i32* %9, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4, !tbaa !7
  br label %27

; <label>:43:                                     ; preds = %27
  %44 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  store i32 0, i32* %8, align 4
  br label %45

; <label>:45:                                     ; preds = %43, %24
  %46 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %49 [
    i32 0, label %48
    i32 1, label %48
  ]

; <label>:48:                                     ; preds = %45, %45
  ret void

; <label>:49:                                     ; preds = %45
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define void @branchbound(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32*, i32** %4, align 8, !tbaa !3
  %12 = load i32*, i32** %5, align 8, !tbaa !3
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = call i32 @sum(i32* %11, i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4, !tbaa !7
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp sgt i32 %15, 18
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %8, align 4
  br label %50

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %6, align 4, !tbaa !7
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %7, align 4, !tbaa !7
  %24 = icmp eq i32 %23, 18
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %22
  %26 = load i32*, i32** %4, align 8, !tbaa !3
  %27 = load i32*, i32** %5, align 8, !tbaa !3
  %28 = load i32, i32* %6, align 4, !tbaa !7
  call void @displayoutcome(i32* %26, i32* %27, i32 %28)
  br label %29

; <label>:29:                                     ; preds = %25, %22
  store i32 1, i32* %8, align 4
  br label %50

; <label>:30:                                     ; preds = %19
  %31 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %32

; <label>:32:                                     ; preds = %45, %30
  %33 = load i32, i32* %9, align 4, !tbaa !7
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %48

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %9, align 4, !tbaa !7
  %37 = load i32*, i32** %5, align 8, !tbaa !3
  %38 = load i32, i32* %6, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4, !tbaa !7
  %41 = load i32*, i32** %4, align 8, !tbaa !3
  %42 = load i32*, i32** %5, align 8, !tbaa !3
  %43 = load i32, i32* %6, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  call void @branchbound(i32* %41, i32* %42, i32 %44)
  br label %45

; <label>:45:                                     ; preds = %35
  %46 = load i32, i32* %9, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4, !tbaa !7
  br label %32

; <label>:48:                                     ; preds = %32
  %49 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  store i32 0, i32* %8, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %29, %17
  %51 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %54 [
    i32 0, label %53
    i32 1, label %53
  ]

; <label>:53:                                     ; preds = %50, %50
  ret void

; <label>:54:                                     ; preds = %50
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca [6 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %8) #3
  %9 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x i32]* @main.set to i8*), i64 24, i1 false)
  %10 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %10) #3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i32 0, i32 0
  call void @BFS_search(i32* %12, i32* %13, i32 0)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i32 0, i32 0
  call void @branchbound(i32* %15, i32* %16, i32 0)
  %17 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %17) #3
  %18 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %18) #3
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
