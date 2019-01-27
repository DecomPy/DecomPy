; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_merging_merge.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_merging_merge.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.a = private unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 6], align 4
@main.b = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 5, i32 7], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0AMerge complete.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca [7 x i32], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %6) #3
  %7 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @main.a to i8*), i64 12, i1 false)
  %8 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %8) #3
  %9 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @main.b to i8*), i64 16, i1 false)
  %10 = bitcast [7 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* %10) #3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i32 0, i32 0
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 0
  %14 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i32 0, i32 0
  call void @merge(i32* %12, i32 3, i32* %13, i32 4, i32* %14)
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %24, %0
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %27

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !3
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %22)
  br label %24

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:27:                                     ; preds = %15
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %29 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = bitcast [7 x i32]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 28, i8* %30) #3
  %31 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %31) #3
  %32 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %32) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @merge(i32*, i32, i32*, i32, i32*) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !7
  store i32 %1, i32* %7, align 4, !tbaa !3
  store i32* %2, i32** %8, align 8, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !3
  store i32* %4, i32** %10, align 8, !tbaa !7
  %14 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %11, align 4, !tbaa !3
  %15 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 0, i32* %12, align 4, !tbaa !3
  %16 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %13, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %63, %5
  %18 = load i32, i32* %11, align 4, !tbaa !3
  %19 = load i32, i32* %7, align 4, !tbaa !3
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %12, align 4, !tbaa !3
  %23 = load i32, i32* %9, align 4, !tbaa !3
  %24 = icmp slt i32 %22, %23
  br label %25

; <label>:25:                                     ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %64

; <label>:27:                                     ; preds = %25
  %28 = load i32*, i32** %6, align 8, !tbaa !7
  %29 = load i32, i32* %11, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !3
  %33 = load i32*, i32** %8, align 8, !tbaa !7
  %34 = load i32, i32* %12, align 4, !tbaa !3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !3
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %51

; <label>:39:                                     ; preds = %27
  %40 = load i32*, i32** %6, align 8, !tbaa !7
  %41 = load i32, i32* %11, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4, !tbaa !3
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !3
  %46 = load i32*, i32** %10, align 8, !tbaa !7
  %47 = load i32, i32* %13, align 4, !tbaa !3
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4, !tbaa !3
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4, !tbaa !3
  br label %63

; <label>:51:                                     ; preds = %27
  %52 = load i32*, i32** %8, align 8, !tbaa !7
  %53 = load i32, i32* %12, align 4, !tbaa !3
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4, !tbaa !3
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !3
  %58 = load i32*, i32** %10, align 8, !tbaa !7
  %59 = load i32, i32* %13, align 4, !tbaa !3
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4, !tbaa !3
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4, !tbaa !3
  br label %63

; <label>:63:                                     ; preds = %51, %39
  br label %17

; <label>:64:                                     ; preds = %25
  %65 = load i32, i32* %11, align 4, !tbaa !3
  %66 = load i32, i32* %7, align 4, !tbaa !3
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

; <label>:68:                                     ; preds = %64
  br label %69

; <label>:69:                                     ; preds = %73, %68
  %70 = load i32, i32* %12, align 4, !tbaa !3
  %71 = load i32, i32* %9, align 4, !tbaa !3
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %85

; <label>:73:                                     ; preds = %69
  %74 = load i32*, i32** %8, align 8, !tbaa !7
  %75 = load i32, i32* %12, align 4, !tbaa !3
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4, !tbaa !3
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !3
  %80 = load i32*, i32** %10, align 8, !tbaa !7
  %81 = load i32, i32* %13, align 4, !tbaa !3
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4, !tbaa !3
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4, !tbaa !3
  br label %69

; <label>:85:                                     ; preds = %69
  br label %104

; <label>:86:                                     ; preds = %64
  br label %87

; <label>:87:                                     ; preds = %91, %86
  %88 = load i32, i32* %11, align 4, !tbaa !3
  %89 = load i32, i32* %7, align 4, !tbaa !3
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %103

; <label>:91:                                     ; preds = %87
  %92 = load i32*, i32** %6, align 8, !tbaa !7
  %93 = load i32, i32* %11, align 4, !tbaa !3
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4, !tbaa !3
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !3
  %98 = load i32*, i32** %10, align 8, !tbaa !7
  %99 = load i32, i32* %13, align 4, !tbaa !3
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4, !tbaa !3
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4, !tbaa !3
  br label %87

; <label>:103:                                    ; preds = %87
  br label %104

; <label>:104:                                    ; preds = %103, %85
  %105 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #3
  %106 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #3
  %107 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
