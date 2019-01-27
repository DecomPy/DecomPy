; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_号码对应的全部字符串_递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\8F\B7\E7\A0\81\E5\AF\B9\E5\BA\94\E7\9A\84\E5\85\A8\E9\83\A8\E5\AD\97\E7\AC\A6\E4\B8\B2_\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@size = global [10 x i32] [i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4], align 16
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@ch = internal global [10 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"ABC\00", [4 x i8] c"DEF\00", [4 x i8] c"GHI\00", [4 x i8] c"JKL\00", [4 x i8] c"MNO\00", [4 x i8] c"PQRS", [4 x i8] c"TUV\00", [4 x i8] c"WXYZ"], align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.number = private unnamed_addr constant [10 x i32] [i32 4, i32 8, i32 6, i32 9, i32 4, i32 6, i32 8, i32 6, i32 6, i32 4], align 16

; Function Attrs: nounwind ssp uwtable
define void @display_outcome(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %28, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %31

; <label>:10:                                     ; preds = %7
  %11 = load i32*, i32** %3, align 8, !tbaa !3
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @ch, i64 0, i64 %16
  %18 = load i32*, i32** %4, align 8, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %10
  %29 = load i32, i32* %5, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:31:                                     ; preds = %7
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %33 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @backtrack(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = load i32, i32* %6, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %3
  %11 = load i32*, i32** %4, align 8, !tbaa !3
  %12 = load i32*, i32** %5, align 8, !tbaa !3
  call void @display_outcome(i32* %11, i32* %12)
  br label %41

; <label>:13:                                     ; preds = %3
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %36, %13
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = load i32*, i32** %4, align 8, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %25 = icmp slt i32 %16, %24
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = load i32*, i32** %5, align 8, !tbaa !3
  %29 = load i32, i32* %6, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4, !tbaa !7
  %32 = load i32*, i32** %4, align 8, !tbaa !3
  %33 = load i32*, i32** %5, align 8, !tbaa !3
  %34 = load i32, i32* %6, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  call void @backtrack(i32* %32, i32* %33, i32 %35)
  br label %36

; <label>:36:                                     ; preds = %26
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4, !tbaa !7
  br label %15

; <label>:39:                                     ; preds = %15
  %40 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  br label %41

; <label>:41:                                     ; preds = %39, %10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca [10 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %8 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %8) #3
  %9 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([10 x i32]* @main.number to i8*), i64 40, i1 false)
  %10 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %10) #3
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i32 0, i32 0
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i32 0, i32 0
  call void @backtrack(i32* %11, i32* %12, i32 0)
  %13 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %13) #3
  %14 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %14) #3
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
!9 = !{!5, !5, i64 0}
