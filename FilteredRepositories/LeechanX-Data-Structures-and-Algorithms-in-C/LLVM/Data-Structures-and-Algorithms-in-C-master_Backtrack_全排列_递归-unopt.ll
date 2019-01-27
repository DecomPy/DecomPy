; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_全排列_递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\85\A8\E6\8E\92\E5\88\97_\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@print_answer.count = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.set = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: nounwind ssp uwtable
define void @print_answer(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16)
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %23 = load i32, i32* @print_answer.count, align 4, !tbaa !7
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @print_answer.count, align 4, !tbaa !7
  %25 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @create_candidate(i32*, i32, i32*, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32* %3, i32** %8, align 8, !tbaa !3
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  %13 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %13) #3
  %14 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 20, i1 false)
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %29, %4
  %17 = load i32, i32* %11, align 4, !tbaa !7
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %16
  %21 = load i32*, i32** %5, align 8, !tbaa !3
  %22 = load i32, i32* %11, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %27
  store i32 1, i32* %28, align 4, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %11, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4, !tbaa !7
  br label %16

; <label>:32:                                     ; preds = %16
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %51, %32
  %34 = load i32, i32* %11, align 4, !tbaa !7
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !7
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %11, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  %45 = load i32*, i32** %7, align 8, !tbaa !3
  %46 = load i32, i32* %9, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4, !tbaa !7
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4, !tbaa !7
  br label %50

; <label>:50:                                     ; preds = %42, %36
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %11, align 4, !tbaa !7
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4, !tbaa !7
  br label %33

; <label>:54:                                     ; preds = %33
  %55 = load i32, i32* %9, align 4, !tbaa !7
  %56 = load i32*, i32** %8, align 8, !tbaa !3
  store i32 %55, i32* %56, align 4, !tbaa !7
  %57 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #3
  %58 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %58) #3
  %59 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i32*, i32, i32*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32 %3, i32* %8, align 4, !tbaa !7
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %6, align 4, !tbaa !7
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %4
  %16 = load i32*, i32** %7, align 8, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !7
  call void @print_answer(i32* %16, i32 %17)
  br label %50

; <label>:18:                                     ; preds = %4
  %19 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %19) #3
  %20 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = load i32*, i32** %7, align 8, !tbaa !3
  %22 = load i32, i32* %8, align 4, !tbaa !7
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i32 0, i32 0
  call void @create_candidate(i32* %21, i32 %22, i32* %23, i32* %10)
  %24 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %43, %18
  %26 = load i32, i32* %11, align 4, !tbaa !7
  %27 = load i32, i32* %10, align 4, !tbaa !7
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %11, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %34 = load i32*, i32** %7, align 8, !tbaa !3
  %35 = load i32, i32* %8, align 4, !tbaa !7
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4, !tbaa !7
  %38 = load i32*, i32** %5, align 8, !tbaa !3
  %39 = load i32, i32* %6, align 4, !tbaa !7
  %40 = load i32*, i32** %7, align 8, !tbaa !3
  %41 = load i32, i32* %8, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  call void @backtrack(i32* %38, i32 %39, i32* %40, i32 %42)
  br label %43

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %11, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4, !tbaa !7
  br label %25

; <label>:46:                                     ; preds = %25
  %47 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  %48 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %49) #3
  br label %50

; <label>:50:                                     ; preds = %46, %15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %9 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %9) #3
  %10 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @main.set to i8*), i64 20, i1 false)
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 5, i32* %7, align 4, !tbaa !7
  %12 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %12) #3
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  %14 = load i32, i32* %7, align 4, !tbaa !7
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 0
  call void @backtrack(i32* %13, i32 %14, i32* %15, i32 0)
  %16 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %16) #3
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3
  %18 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %18) #3
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
