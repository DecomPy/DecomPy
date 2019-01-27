; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_DisJointSet_disjointset.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_DisJointSet_disjointset.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.set = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Already in same set.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Now union set.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @set_find(i32*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !7
  store i32 %14, i32* %6, align 4, !tbaa !7
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %35

; <label>:20:                                     ; preds = %2
  %21 = load i32*, i32** %4, align 8, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = call i32 @set_find(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8, !tbaa !3
  %25 = load i32, i32* %5, align 4, !tbaa !7
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4, !tbaa !7
  %29 = load i32*, i32** %4, align 8, !tbaa !3
  %30 = load i32, i32* %5, align 4, !tbaa !7
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %7, align 4
  br label %35

; <label>:35:                                     ; preds = %20, %18
  %36 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @set_union(i32*, i32*, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %9 = load i32*, i32** %6, align 8, !tbaa !3
  %10 = load i32, i32* %7, align 4, !tbaa !7
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = load i32*, i32** %6, align 8, !tbaa !3
  %16 = load i32, i32* %8, align 4, !tbaa !7
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %4
  %23 = load i32*, i32** %5, align 8, !tbaa !3
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = load i32*, i32** %5, align 8, !tbaa !3
  %30 = load i32, i32* %8, align 4, !tbaa !7
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %28, i32* %33, align 4, !tbaa !7
  br label %68

; <label>:34:                                     ; preds = %4
  %35 = load i32*, i32** %6, align 8, !tbaa !3
  %36 = load i32, i32* %7, align 4, !tbaa !7
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !7
  %41 = load i32*, i32** %6, align 8, !tbaa !3
  %42 = load i32, i32* %8, align 4, !tbaa !7
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !7
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %34
  %49 = load i32*, i32** %6, align 8, !tbaa !3
  %50 = load i32, i32* %8, align 4, !tbaa !7
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !7
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4, !tbaa !7
  br label %56

; <label>:56:                                     ; preds = %48, %34
  %57 = load i32*, i32** %5, align 8, !tbaa !3
  %58 = load i32, i32* %8, align 4, !tbaa !7
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = load i32*, i32** %5, align 8, !tbaa !3
  %64 = load i32, i32* %7, align 4, !tbaa !7
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4, !tbaa !7
  br label %68

; <label>:68:                                     ; preds = %56, %22
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %15 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %15) #3
  %16 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([10 x i32]* @main.set to i8*), i64 40, i1 false)
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 10, i32* %7, align 4, !tbaa !7
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %19) #3
  %20 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false)
  %21 = bitcast [10 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %21) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %34, %2
  %23 = load i32, i32* %8, align 4, !tbaa !7
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %8, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = load i32, i32* %8, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %32
  store i32 %30, i32* %33, align 4, !tbaa !7
  br label %34

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %8, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4, !tbaa !7
  br label %22

; <label>:37:                                     ; preds = %22
  %38 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3
  %40 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #3
  %41 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #3
  br label %42

; <label>:42:                                     ; preds = %63, %37
  %43 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* %11, i32* %12)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i32 0, i32 0
  %47 = load i32, i32* %11, align 4, !tbaa !7
  %48 = call i32 @set_find(i32* %46, i32 %47)
  store i32 %48, i32* %13, align 4, !tbaa !7
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i32 0, i32 0
  %50 = load i32, i32* %12, align 4, !tbaa !7
  %51 = call i32 @set_find(i32* %49, i32 %50)
  store i32 %51, i32* %14, align 4, !tbaa !7
  %52 = load i32, i32* %13, align 4, !tbaa !7
  %53 = load i32, i32* %14, align 4, !tbaa !7
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %45
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %63

; <label>:57:                                     ; preds = %45
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i32 0, i32 0
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i32 0, i32 0
  %61 = load i32, i32* %13, align 4, !tbaa !7
  %62 = load i32, i32* %14, align 4, !tbaa !7
  call void @set_union(i32* %59, i32* %60, i32 %61, i32 %62)
  br label %63

; <label>:63:                                     ; preds = %57, %55
  br label %42

; <label>:64:                                     ; preds = %42
  %65 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3
  %66 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3
  %67 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3
  %68 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3
  %69 = bitcast [10 x i32]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %69) #3
  %70 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %70) #3
  %71 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  %72 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3
  %73 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %73) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32 @scanf(i8*, ...) #2

declare i32 @printf(i8*, ...) #2

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
