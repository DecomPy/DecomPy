; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_全排列_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\85\A8\E6\8E\92\E5\88\97_\E9\9D\9E\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@print_answer.count = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.set = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: nounwind ssp uwtable
define void @print_answer(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %15, %1
  %6 = load i32, i32* %3, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 5
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
  %20 = load i32, i32* @print_answer.count, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @print_answer.count, align 4, !tbaa !7
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

; <label>:11:                                     ; preds = %25, %3
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %7, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %15
  store i32 0, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %29

; <label>:24:                                     ; preds = %15
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %8, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:28:                                     ; preds = %11
  store i32 1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %23
  %30 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 16
  %5 = alloca [5 x i32], align 16
  store i32* %0, i32** %2, align 8, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %3, align 4, !tbaa !7
  %7 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %7) #3
  %8 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %8) #3
  %9 = load i32, i32* %3, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %10
  store i32 -1, i32* %11, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %83, %1
  %13 = load i32, i32* %3, align 4, !tbaa !7
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %84

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %40, %15
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %38

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %29 = load i32, i32* %3, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %3, align 4, !tbaa !7
  %35 = call i32 @condition(i32* %28, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

; <label>:38:                                     ; preds = %27, %21
  %39 = phi i1 [ false, %21 ], [ %37, %27 ]
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %38
  %41 = load i32, i32* %3, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4, !tbaa !7
  br label %21

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %3, align 4, !tbaa !7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !7
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %3, align 4, !tbaa !7
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %3, align 4, !tbaa !7
  br label %83

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %3, align 4, !tbaa !7
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %68

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %3, align 4, !tbaa !7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %3, align 4, !tbaa !7
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %65
  store i32 %63, i32* %66, align 4, !tbaa !7
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  call void @print_answer(i32* %67)
  br label %82

; <label>:68:                                     ; preds = %55
  %69 = load i32, i32* %3, align 4, !tbaa !7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !7
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %3, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %75
  store i32 %73, i32* %76, align 4, !tbaa !7
  %77 = load i32, i32* %3, align 4, !tbaa !7
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4, !tbaa !7
  %79 = load i32, i32* %3, align 4, !tbaa !7
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %80
  store i32 -1, i32* %81, align 4, !tbaa !7
  br label %82

; <label>:82:                                     ; preds = %68, %58
  br label %83

; <label>:83:                                     ; preds = %82, %52
  br label %12

; <label>:84:                                     ; preds = %12
  %85 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %85) #3
  %86 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %86) #3
  %87 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
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
  call void @backtrack(i32* %9)
  %10 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #3
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
