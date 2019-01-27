; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_带重复元素的字符串的全排列_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\B8\A6\E9\87\8D\E5\A4\8D\E5\85\83\E7\B4\A0\E7\9A\84\E5\AD\97\E7\AC\A6\E4\B8\B2\E7\9A\84\E5\85\A8\E6\8E\92\E5\88\97_\E9\9D\9E\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@count = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"leechanx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @display_outcome(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %16, %1
  %6 = load i32, i32* %3, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %19

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** %2, align 8, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %14)
  br label %16

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:19:                                     ; preds = %5
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %21 = load i32, i32* @count, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @count, align 4, !tbaa !7
  %23 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @condition(i8*, i8*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [26 x i32], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i8* %1, i8** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast [26 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* %13) #3
  %14 = bitcast [26 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 104, i1 false)
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 0, i32* %11, align 4, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %31, %4
  %17 = load i32, i32* %9, align 4, !tbaa !7
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %34

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %5, align 8, !tbaa !3
  %21 = load i32, i32* %9, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !9
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 97
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [26 x i32], [26 x i32]* %10, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4, !tbaa !7
  br label %31

; <label>:31:                                     ; preds = %19
  %32 = load i32, i32* %9, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4, !tbaa !7
  br label %16

; <label>:34:                                     ; preds = %16
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %35

; <label>:35:                                     ; preds = %51, %34
  %36 = load i32, i32* %9, align 4, !tbaa !7
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %6, align 8, !tbaa !3
  %41 = load i32, i32* %9, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 97
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [26 x i32], [26 x i32]* %10, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !7
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4, !tbaa !7
  br label %51

; <label>:51:                                     ; preds = %39
  %52 = load i32, i32* %9, align 4, !tbaa !7
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4, !tbaa !7
  br label %35

; <label>:54:                                     ; preds = %35
  %55 = load i32, i32* %8, align 4, !tbaa !7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [26 x i32], [26 x i32]* %10, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !7
  %59 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast [26 x i32]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 104, i8* %60) #3
  %61 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  ret i32 %58
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %6 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %7) #3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %10
  store i32 -1, i32* %11, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %85, %1
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %86

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %40, %15
  %22 = load i32, i32* %5, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = icmp slt i32 %25, 26
  br i1 %26, label %27, label %38

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %2, align 8, !tbaa !3
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %30 = load i32, i32* %5, align 4, !tbaa !7
  %31 = load i32, i32* %5, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = call i32 @condition(i8* %28, i8* %29, i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

; <label>:38:                                     ; preds = %27, %21
  %39 = phi i1 [ false, %21 ], [ %37, %27 ]
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %5, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4, !tbaa !7
  br label %21

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %5, align 4, !tbaa !7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !7
  %51 = icmp sge i32 %50, 26
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %5, align 4, !tbaa !7
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4, !tbaa !7
  br label %85

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %5, align 4, !tbaa !7
  %57 = icmp eq i32 %56, 7
  br i1 %57, label %58, label %69

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %5, align 4, !tbaa !7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = add nsw i32 %62, 97
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* %5, align 4, !tbaa !7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %66
  store i8 %64, i8* %67, align 1, !tbaa !9
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  call void @display_outcome(i8* %68)
  br label %84

; <label>:69:                                     ; preds = %55
  %70 = load i32, i32* %5, align 4, !tbaa !7
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !7
  %74 = add nsw i32 %73, 97
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %5, align 4, !tbaa !7
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %77
  store i8 %75, i8* %78, align 1, !tbaa !9
  %79 = load i32, i32* %5, align 4, !tbaa !7
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4, !tbaa !7
  %81 = load i32, i32* %5, align 4, !tbaa !7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %82
  store i32 -1, i32* %83, align 4, !tbaa !7
  br label %84

; <label>:84:                                     ; preds = %69, %58
  br label %85

; <label>:85:                                     ; preds = %84, %52
  br label %12

; <label>:86:                                     ; preds = %12
  %87 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %88) #3
  %89 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %6, align 8, !tbaa !3
  %8 = load i8*, i8** %6, align 8, !tbaa !3
  call void @backtrack(i8* %8)
  %9 = load i32, i32* @count, align 4, !tbaa !7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %9)
  %11 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #3
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
!9 = !{!5, !5, i64 0}
