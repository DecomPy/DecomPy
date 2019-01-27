; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_集合的所有子集_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E9\9B\86\E5\90\88\E7\9A\84\E6\89\80\E6\9C\89\E5\AD\90\E9\9B\86_\E9\9D\9E\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@num = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"!(%d)\0A\00", align 1
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
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %35)
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
define void @subset(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !3
  %6 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %6) #3
  %7 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %7) #3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %10
  store i32 -1, i32* %11, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %56, %1
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %57

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4, !tbaa !7
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %5, align 4, !tbaa !7
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4, !tbaa !7
  br label %56

; <label>:29:                                     ; preds = %15
  %30 = load i32, i32* %5, align 4, !tbaa !7
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %42

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %5, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = load i32, i32* %5, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 %38
  store i32 %36, i32* %39, align 4, !tbaa !7
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i32 0, i32 0
  %41 = load i32*, i32** %2, align 8, !tbaa !3
  call void @display_outcome(i32* %40, i32* %41)
  br label %55

; <label>:42:                                     ; preds = %29
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !7
  %47 = load i32, i32* %5, align 4, !tbaa !7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 %48
  store i32 %46, i32* %49, align 4, !tbaa !7
  %50 = load i32, i32* %5, align 4, !tbaa !7
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4, !tbaa !7
  %52 = load i32, i32* %5, align 4, !tbaa !7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %53
  store i32 -1, i32* %54, align 4, !tbaa !7
  br label %55

; <label>:55:                                     ; preds = %42, %32
  br label %56

; <label>:56:                                     ; preds = %55, %26
  br label %12

; <label>:57:                                     ; preds = %12
  %58 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %59) #3
  %60 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %60) #3
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
  call void @subset(i32* %9)
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
