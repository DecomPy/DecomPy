; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_找钱问题_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E6\89\BE\E9\92\B1\E9\97\AE\E9\A2\98_\E9\9D\9E\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %5
  %9 = load i32*, i32** %2, align 8, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:18:                                     ; preds = %5
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %20 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @condition(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %31, %3
  %14 = load i32, i32* %9, align 4, !tbaa !7
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %4, align 8, !tbaa !3
  %19 = load i32, i32* %9, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %8, align 4, !tbaa !7
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4, !tbaa !7
  br label %30

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %7, align 4, !tbaa !7
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %27, %24
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %9, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:34:                                     ; preds = %13
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4, !tbaa !7
  br label %43

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4, !tbaa !7
  br label %43

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32, i32* %8, align 4, !tbaa !7
  %45 = load i32, i32* %7, align 4, !tbaa !7
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %55

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %8, align 4, !tbaa !7
  %49 = icmp sle i32 %48, 3
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4, !tbaa !7
  %52 = icmp sle i32 %51, 3
  br label %53

; <label>:53:                                     ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br label %55

; <label>:55:                                     ; preds = %53, %43
  %56 = phi i1 [ false, %43 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  ret i32 %57
}

; Function Attrs: nounwind ssp uwtable
define void @backtrack() #0 {
  %1 = alloca [6 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32], align 16
  %4 = bitcast [6 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %4) #3
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %2, align 4, !tbaa !7
  %6 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %6) #3
  %7 = load i32, i32* %2, align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %8
  store i32 -1, i32* %9, align 4, !tbaa !7
  br label %10

; <label>:10:                                     ; preds = %78, %0
  %11 = load i32, i32* %2, align 4, !tbaa !7
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %79

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !7
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %37, %13
  %20 = load i32, i32* %2, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 0
  %27 = load i32, i32* %2, align 4, !tbaa !7
  %28 = load i32, i32* %2, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = call i32 @condition(i32* %26, i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

; <label>:35:                                     ; preds = %25, %19
  %36 = phi i1 [ false, %19 ], [ %34, %25 ]
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %35
  %38 = load i32, i32* %2, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4, !tbaa !7
  br label %19

; <label>:43:                                     ; preds = %35
  %44 = load i32, i32* %2, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !7
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %43
  %50 = load i32, i32* %2, align 4, !tbaa !7
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %2, align 4, !tbaa !7
  br label %78

; <label>:52:                                     ; preds = %43
  %53 = load i32, i32* %2, align 4, !tbaa !7
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %2, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !7
  %60 = load i32, i32* %2, align 4, !tbaa !7
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %61
  store i32 %59, i32* %62, align 4, !tbaa !7
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 0
  call void @display_outcome(i32* %63)
  br label %77

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %2, align 4, !tbaa !7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !7
  %69 = load i32, i32* %2, align 4, !tbaa !7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %70
  store i32 %68, i32* %71, align 4, !tbaa !7
  %72 = load i32, i32* %2, align 4, !tbaa !7
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4, !tbaa !7
  %74 = load i32, i32* %2, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %75
  store i32 -1, i32* %76, align 4, !tbaa !7
  br label %77

; <label>:77:                                     ; preds = %64, %55
  br label %78

; <label>:78:                                     ; preds = %77, %49
  br label %10

; <label>:79:                                     ; preds = %10
  %80 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %80) #3
  %81 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3
  %82 = bitcast [6 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %82) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  call void @backtrack()
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
