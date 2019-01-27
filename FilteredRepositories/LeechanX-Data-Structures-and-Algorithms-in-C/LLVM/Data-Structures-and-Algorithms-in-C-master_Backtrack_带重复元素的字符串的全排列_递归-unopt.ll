; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_带重复元素的字符串的全排列_递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\B8\A6\E9\87\8D\E5\A4\8D\E5\85\83\E7\B4\A0\E7\9A\84\E5\AD\97\E7\AC\A6\E4\B8\B2\E7\9A\84\E5\85\A8\E6\8E\92\E5\88\97_\E9\80\92\E5\BD\92.c"
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
define void @create_candidate(i8*, i8*, i32, i8*, i32*) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [26 x i32], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8, !tbaa !3
  store i8* %1, i8** %7, align 8, !tbaa !3
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i8* %3, i8** %9, align 8, !tbaa !3
  store i32* %4, i32** %10, align 8, !tbaa !3
  %14 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast [26 x i32]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* %15) #3
  %16 = bitcast [26 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 104, i1 false)
  %17 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 0, i32* %13, align 4, !tbaa !7
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %33, %5
  %19 = load i32, i32* %11, align 4, !tbaa !7
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %6, align 8, !tbaa !3
  %23 = load i32, i32* %11, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 97
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %11, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4, !tbaa !7
  br label %18

; <label>:36:                                     ; preds = %18
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %37

; <label>:37:                                     ; preds = %53, %36
  %38 = load i32, i32* %11, align 4, !tbaa !7
  %39 = load i32, i32* %8, align 4, !tbaa !7
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %7, align 8, !tbaa !3
  %43 = load i32, i32* %11, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 97
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4, !tbaa !7
  br label %53

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* %11, align 4, !tbaa !7
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4, !tbaa !7
  br label %37

; <label>:56:                                     ; preds = %37
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %57

; <label>:57:                                     ; preds = %76, %56
  %58 = load i32, i32* %11, align 4, !tbaa !7
  %59 = icmp slt i32 %58, 26
  br i1 %59, label %60, label %79

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %11, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !7
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %11, align 4, !tbaa !7
  %68 = add nsw i32 %67, 97
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %9, align 8, !tbaa !3
  %71 = load i32, i32* %13, align 4, !tbaa !7
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4, !tbaa !7
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 %69, i8* %74, align 1, !tbaa !9
  br label %75

; <label>:75:                                     ; preds = %66, %60
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %11, align 4, !tbaa !7
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4, !tbaa !7
  br label %57

; <label>:79:                                     ; preds = %57
  %80 = load i32, i32* %13, align 4, !tbaa !7
  %81 = load i32*, i32** %10, align 8, !tbaa !3
  store i32 %80, i32* %81, align 4, !tbaa !7
  %82 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  %83 = bitcast [26 x i32]* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 104, i8* %83) #3
  %84 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i8* %1, i8** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = load i32, i32* %6, align 4, !tbaa !7
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !tbaa !3
  call void @display_outcome(i8* %13)
  br label %46

; <label>:14:                                     ; preds = %3
  %15 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i8*, i8** %4, align 8, !tbaa !3
  %18 = load i8*, i8** %5, align 8, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i32 0, i32 0
  call void @create_candidate(i8* %17, i8* %18, i32 %19, i8* %20, i32* %8)
  %21 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %39, %14
  %23 = load i32, i32* %9, align 4, !tbaa !7
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %9, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !9
  %31 = load i8*, i8** %5, align 8, !tbaa !3
  %32 = load i32, i32* %6, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1, !tbaa !9
  %35 = load i8*, i8** %4, align 8, !tbaa !3
  %36 = load i8*, i8** %5, align 8, !tbaa !3
  %37 = load i32, i32* %6, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  call void @backtrack(i8* %35, i8* %36, i32 %38)
  br label %39

; <label>:39:                                     ; preds = %26
  %40 = load i32, i32* %9, align 4, !tbaa !7
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4, !tbaa !7
  br label %22

; <label>:42:                                     ; preds = %22
  %43 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  %44 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #3
  br label %46

; <label>:46:                                     ; preds = %42, %12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %6, align 8, !tbaa !3
  %9 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load i8*, i8** %6, align 8, !tbaa !3
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i32 0, i32 0
  call void @backtrack(i8* %10, i8* %11, i32 0)
  %12 = load i32, i32* @count, align 4, !tbaa !7
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %12)
  %14 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #3
  %15 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #3
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
