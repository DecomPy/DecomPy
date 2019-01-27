; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_集合的K元子集_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E9\9B\86\E5\90\88\E7\9A\84K\E5\85\83\E5\AD\90\E9\9B\86_\E9\9D\9E\E9\80\92\E5\BD\92.c"
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
define void @backtrack(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
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

; <label>:14:                                     ; preds = %90, %2
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %91

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
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %31 = load i32, i32* %4, align 4, !tbaa !7
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = load i32, i32* %7, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = call i32 @condition(i32* %30, i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* %4, align 4, !tbaa !7
  %39 = icmp sgt i32 %37, %38
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
  br label %90

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* %7, align 4, !tbaa !7
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %76

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
  %69 = load i32, i32* %4, align 4, !tbaa !7
  %70 = call i32 @getsizeok(i32* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %60
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %74 = load i32*, i32** %3, align 8, !tbaa !3
  call void @display_outcome(i32* %73, i32* %74)
  br label %75

; <label>:75:                                     ; preds = %72, %60
  br label %89

; <label>:76:                                     ; preds = %57
  %77 = load i32, i32* %7, align 4, !tbaa !7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !7
  %81 = load i32, i32* %7, align 4, !tbaa !7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %82
  store i32 %80, i32* %83, align 4, !tbaa !7
  %84 = load i32, i32* %7, align 4, !tbaa !7
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4, !tbaa !7
  %86 = load i32, i32* %7, align 4, !tbaa !7
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %87
  store i32 -1, i32* %88, align 4, !tbaa !7
  br label %89

; <label>:89:                                     ; preds = %76, %75
  br label %90

; <label>:90:                                     ; preds = %89, %54
  br label %14

; <label>:91:                                     ; preds = %14
  %92 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3
  %93 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %93) #3
  %94 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %94) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %7 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %7) #3
  %8 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x i32]* @main.set to i8*), i64 20, i1 false)
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  call void @backtrack(i32* %9, i32 3)
  %10 = load i32, i32* @num, align 4, !tbaa !7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  %12 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %12) #3
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
