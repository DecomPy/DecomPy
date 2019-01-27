; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_集合的K元子集_递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E9\9B\86\E5\90\88\E7\9A\84K\E5\85\83\E5\AD\90\E9\9B\86_\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@num = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@main.set = private unnamed_addr constant [5 x i32] [i32 93, i32 12, i32 43, i32 9, i32 87], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"subset size=%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @display_outcome(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = load i32, i32* @num, align 4, !tbaa !7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @num, align 4, !tbaa !7
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %6, align 4, !tbaa !7
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %31, %2
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %11
  %15 = load i32*, i32** %3, align 8, !tbaa !3
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %14
  %22 = load i32*, i32** %4, align 8, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %26)
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %21, %14
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %5, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:34:                                     ; preds = %11
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %35)
  %37 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  %38 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @condition(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %11 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %10, align 4, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %28, %4
  %14 = load i32, i32* %9, align 4, !tbaa !7
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  %19 = load i32, i32* %9, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %10, align 4, !tbaa !7
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %24, %17
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %9, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:31:                                     ; preds = %13
  %32 = load i32, i32* %8, align 4, !tbaa !7
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %10, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4, !tbaa !7
  br label %37

; <label>:37:                                     ; preds = %34, %31
  %38 = load i32, i32* %10, align 4, !tbaa !7
  %39 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  ret i32 %38
}

; Function Attrs: nounwind ssp uwtable
define i32 @getsizeok(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %25, %2
  %10 = load i32, i32* %6, align 4, !tbaa !7
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %9
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3
  br label %28

; <label>:14:                                     ; preds = %9
  %15 = load i32*, i32** %3, align 8, !tbaa !3
  %16 = load i32, i32* %6, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %5, align 4, !tbaa !7
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4, !tbaa !7
  br label %24

; <label>:24:                                     ; preds = %21, %14
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4, !tbaa !7
  br label %9

; <label>:28:                                     ; preds = %12
  %29 = load i32, i32* %5, align 4, !tbaa !7
  %30 = load i32, i32* %4, align 4, !tbaa !7
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i32*, i32*, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %10 = load i32, i32* %8, align 4, !tbaa !7
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %4
  %13 = load i32*, i32** %6, align 8, !tbaa !3
  %14 = load i32, i32* %7, align 4, !tbaa !7
  %15 = call i32 @getsizeok(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %12
  %18 = load i32*, i32** %6, align 8, !tbaa !3
  %19 = load i32*, i32** %5, align 8, !tbaa !3
  call void @display_outcome(i32* %18, i32* %19)
  br label %20

; <label>:20:                                     ; preds = %17, %12
  br label %51

; <label>:21:                                     ; preds = %4
  %22 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %46, %21
  %24 = load i32, i32* %9, align 4, !tbaa !7
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %49

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** %6, align 8, !tbaa !3
  %28 = load i32, i32* %7, align 4, !tbaa !7
  %29 = load i32, i32* %8, align 4, !tbaa !7
  %30 = load i32, i32* %9, align 4, !tbaa !7
  %31 = call i32 @condition(i32* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %9, align 4, !tbaa !7
  %36 = load i32*, i32** %6, align 8, !tbaa !3
  %37 = load i32, i32* %8, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4, !tbaa !7
  %40 = load i32*, i32** %5, align 8, !tbaa !3
  %41 = load i32*, i32** %6, align 8, !tbaa !3
  %42 = load i32, i32* %7, align 4, !tbaa !7
  %43 = load i32, i32* %8, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  call void @backtrack(i32* %40, i32* %41, i32 %42, i32 %44)
  br label %45

; <label>:45:                                     ; preds = %34, %26
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %9, align 4, !tbaa !7
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4, !tbaa !7
  br label %23

; <label>:49:                                     ; preds = %23
  %50 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  br label %51

; <label>:51:                                     ; preds = %49, %20
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @main.set to i8*), i64 20, i1 false)
  %10 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %10) #3
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 0
  call void @backtrack(i32* %11, i32* %12, i32 3, i32 0)
  %13 = load i32, i32* @num, align 4, !tbaa !7
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  %15 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %15) #3
  %16 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %16) #3
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
