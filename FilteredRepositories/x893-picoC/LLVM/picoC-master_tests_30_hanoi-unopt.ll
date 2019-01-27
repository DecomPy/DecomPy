; ModuleID = 'Repositories/x893-picoC/Unfiltered/picoC-master_tests_30_hanoi.c'
source_filename = "Repositories/x893-picoC/Unfiltered/picoC-master_tests_30_hanoi.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"A: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@A = common global [4 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"B: \00", align 1
@B = common global [4 x i32] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"C: \00", align 1
@C = common global [4 x i32] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [44 x i8] c"------------------------------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Solution of Tower of Hanoi Problem with %d Disks\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Starting state:\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0A\0ASubsequent states:\0A\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @PrintAll() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %4

; <label>:4:                                      ; preds = %13, %0
  %5 = load i32, i32* %1, align 4, !tbaa !3
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %1, align 4, !tbaa !3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* @A, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %11)
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %1, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4, !tbaa !3
  br label %4

; <label>:16:                                     ; preds = %4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %28, %16
  %20 = load i32, i32* %1, align 4, !tbaa !3
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %1, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @B, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %1, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4, !tbaa !3
  br label %19

; <label>:31:                                     ; preds = %19
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %34

; <label>:34:                                     ; preds = %43, %31
  %35 = load i32, i32* %1, align 4, !tbaa !3
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %46

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %1, align 4, !tbaa !3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* @C, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !3
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %41)
  br label %43

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %1, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4, !tbaa !3
  br label %34

; <label>:46:                                     ; preds = %34
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0))
  %49 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @Move(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32* %1, i32** %4, align 8, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  br label %9

; <label>:9:                                      ; preds = %21, %2
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %9
  %13 = load i32*, i32** %3, align 8, !tbaa !7
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !3
  %18 = icmp eq i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %12, %9
  %20 = phi i1 [ false, %9 ], [ %18, %12 ]
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %19
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:24:                                     ; preds = %19
  br label %25

; <label>:25:                                     ; preds = %37, %24
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %25
  %29 = load i32*, i32** %4, align 8, !tbaa !7
  %30 = load i32, i32* %6, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !3
  %34 = icmp eq i32 %33, 0
  br label %35

; <label>:35:                                     ; preds = %28, %25
  %36 = phi i1 [ false, %25 ], [ %34, %28 ]
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %35
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4, !tbaa !3
  br label %25

; <label>:40:                                     ; preds = %35
  %41 = load i32*, i32** %3, align 8, !tbaa !7
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !3
  %46 = load i32*, i32** %4, align 8, !tbaa !7
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4, !tbaa !3
  %51 = load i32*, i32** %3, align 8, !tbaa !7
  %52 = load i32, i32* %5, align 4, !tbaa !3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4, !tbaa !3
  call void @PrintAll()
  %55 = load i32*, i32** %4, align 8, !tbaa !7
  %56 = load i32, i32* %6, align 4, !tbaa !3
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !3
  %61 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  ret i32 %60
}

; Function Attrs: nounwind ssp uwtable
define void @Hanoi(i32, i32*, i32*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !7
  store i32* %3, i32** %8, align 8, !tbaa !7
  %11 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %4
  %15 = load i32*, i32** %6, align 8, !tbaa !7
  %16 = load i32*, i32** %7, align 8, !tbaa !7
  %17 = call i32 @Move(i32* %15, i32* %16)
  store i32 1, i32* %10, align 4
  br label %32

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = sub nsw i32 %19, 1
  %21 = load i32*, i32** %6, align 8, !tbaa !7
  %22 = load i32*, i32** %8, align 8, !tbaa !7
  %23 = load i32*, i32** %7, align 8, !tbaa !7
  call void @Hanoi(i32 %20, i32* %21, i32* %22, i32* %23)
  %24 = load i32*, i32** %6, align 8, !tbaa !7
  %25 = load i32*, i32** %7, align 8, !tbaa !7
  %26 = call i32 @Move(i32* %24, i32* %25)
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = sub nsw i32 %27, 1
  %29 = load i32*, i32** %8, align 8, !tbaa !7
  %30 = load i32*, i32** %7, align 8, !tbaa !7
  %31 = load i32*, i32** %6, align 8, !tbaa !7
  call void @Hanoi(i32 %28, i32* %29, i32* %30, i32* %31)
  store i32 1, i32* %10, align 4
  br label %32

; <label>:32:                                     ; preds = %18, %14
  %33 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %4

; <label>:4:                                      ; preds = %13, %0
  %5 = load i32, i32* %2, align 4, !tbaa !3
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* @A, i64 0, i64 %11
  store i32 %9, i32* %12, align 4, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %2, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4, !tbaa !3
  br label %4

; <label>:16:                                     ; preds = %4
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %24, %16
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* @B, i64 0, i64 %22
  store i32 0, i32* %23, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %2, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4, !tbaa !3
  br label %17

; <label>:27:                                     ; preds = %17
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %35, %27
  %29 = load i32, i32* %2, align 4, !tbaa !3
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %2, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* @C, i64 0, i64 %33
  store i32 0, i32* %34, align 4, !tbaa !3
  br label %35

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %2, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4, !tbaa !3
  br label %28

; <label>:38:                                     ; preds = %28
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i32 4)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  call void @PrintAll()
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  call void @Hanoi(i32 4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @A, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @B, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @C, i32 0, i32 0))
  %42 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
