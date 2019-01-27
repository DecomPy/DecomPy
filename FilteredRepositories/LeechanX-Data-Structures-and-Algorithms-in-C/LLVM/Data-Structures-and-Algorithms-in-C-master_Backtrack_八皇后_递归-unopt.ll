; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_八皇后_递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\85\AB\E7\9A\87\E5\90\8E_\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@count = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"count=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @display_outcome(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %15, %1
  %6 = load i32, i32* %3, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %5
  %9 = load i32*, i32** %2, align 8, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:18:                                     ; preds = %5
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %20 = load i32, i32* @count, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @count, align 4, !tbaa !7
  %22 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inDiagonal(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !7
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  %10 = load i32, i32* %7, align 4, !tbaa !7
  %11 = load i32, i32* %9, align 4, !tbaa !7
  %12 = sub nsw i32 %10, %11
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = load i32, i32* %8, align 4, !tbaa !7
  %15 = sub nsw i32 %13, %14
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %7, align 4, !tbaa !7
  %19 = load i32, i32* %9, align 4, !tbaa !7
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* %8, align 4, !tbaa !7
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = sub nsw i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %17, %4
  store i32 1, i32* %5, align 4
  br label %27

; <label>:26:                                     ; preds = %17
  store i32 0, i32* %5, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define i32 @condition(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %36, %3
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !7
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = load i32*, i32** %5, align 8, !tbaa !3
  %26 = load i32, i32* %8, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !7
  %30 = load i32, i32* %6, align 4, !tbaa !7
  %31 = load i32, i32* %7, align 4, !tbaa !7
  %32 = call i32 @inDiagonal(i32 %24, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %23, %15
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %40

; <label>:35:                                     ; preds = %23
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %8, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:39:                                     ; preds = %11
  store i32 1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %34
  %41 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: nounwind ssp uwtable
define void @create_candidate(i32*, i32, i32*, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32* %3, i32** %8, align 8, !tbaa !3
  %11 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %30, %4
  %14 = load i32, i32* %9, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %13
  %17 = load i32*, i32** %5, align 8, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = load i32, i32* %9, align 4, !tbaa !7
  %20 = call i32 @condition(i32* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %9, align 4, !tbaa !7
  %24 = load i32*, i32** %7, align 8, !tbaa !3
  %25 = load i32, i32* %10, align 4, !tbaa !7
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4, !tbaa !7
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %22, %16
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %9, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:33:                                     ; preds = %13
  %34 = load i32, i32* %10, align 4, !tbaa !7
  %35 = load i32*, i32** %8, align 8, !tbaa !3
  store i32 %34, i32* %35, align 4, !tbaa !7
  %36 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %8 = load i32, i32* %4, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load i32*, i32** %3, align 8, !tbaa !3
  call void @display_outcome(i32* %11)
  br label %42

; <label>:12:                                     ; preds = %2
  %13 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #3
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32*, i32** %3, align 8, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !7
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0
  call void @create_candidate(i32* %15, i32 %16, i32* %17, i32* %6)
  %18 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %35, %12
  %20 = load i32, i32* %7, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32*, i32** %3, align 8, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4, !tbaa !7
  %32 = load i32*, i32** %3, align 8, !tbaa !3
  %33 = load i32, i32* %4, align 4, !tbaa !7
  %34 = add nsw i32 %33, 1
  call void @backtrack(i32* %32, i32 %34)
  br label %35

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %7, align 4, !tbaa !7
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4, !tbaa !7
  br label %19

; <label>:38:                                     ; preds = %19
  %39 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  %41 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %41) #3
  br label %42

; <label>:42:                                     ; preds = %38, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %7 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %7) #3
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i32 0, i32 0
  call void @backtrack(i32* %8, i32 0)
  %9 = load i32, i32* @count, align 4, !tbaa !7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %9)
  %11 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %11) #3
  ret i32 0
}

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
