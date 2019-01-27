; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_ch7code_7.5.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_ch7code_7.5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Drop branch.\0A\00", align 1
@main.set = private unnamed_addr constant [6 x i32] [i32 7, i32 4, i32 6, i32 13, i32 20, i32 8], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"use DFS:\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"use Branch and Bound:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @displayoutcome(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %24)
  br label %26

; <label>:26:                                     ; preds = %19, %12
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %29, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

; <label>:28:                                     ; preds = %20, %13
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %9

; <label>:32:                                     ; preds = %9
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BFS_search(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sum(i32* %9, i32* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  call void @displayoutcome(i32* %19, i32* %20, i32 %21)
  br label %22

; <label>:22:                                     ; preds = %18, %15
  br label %40

; <label>:23:                                     ; preds = %3
  store i32 0, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %37, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %40

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  call void @BFS_search(i32* %33, i32* %34, i32 %36)
  br label %37

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %24

; <label>:40:                                     ; preds = %22, %24
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @branchbound(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sum(i32* %9, i32* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 18
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %45

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 18
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  call void @displayoutcome(i32* %24, i32* %25, i32 %26)
  br label %27

; <label>:27:                                     ; preds = %23, %20
  br label %45

; <label>:28:                                     ; preds = %17
  store i32 0, i32* %8, align 4
  br label %29

; <label>:29:                                     ; preds = %42, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  call void @branchbound(i32* %38, i32* %39, i32 %41)
  br label %42

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %29

; <label>:45:                                     ; preds = %15, %27, %29
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca [6 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @main.set to i8*), i64 24, i1 false)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i32 0, i32 0
  call void @BFS_search(i32* %10, i32* %11, i32 0)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i32 0, i32 0
  call void @branchbound(i32* %13, i32* %14, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
