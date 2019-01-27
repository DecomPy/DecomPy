; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_八皇后_递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\85\AB\E7\9A\87\E5\90\8E_\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@count = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"count=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @display_outcome(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %17

; <label>:7:                                      ; preds = %4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %12)
  br label %14

; <label>:14:                                     ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

; <label>:17:                                     ; preds = %4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %19 = load i32, i32* @count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @count, align 4
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inDiagonal(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %9, align 4
  %12 = sub nsw i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %17, %4
  store i32 1, i32* %5, align 4
  br label %27

; <label>:26:                                     ; preds = %17
  store i32 0, i32* %5, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @condition(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %34, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %32, label %21

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @inDiagonal(i32 %22, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %21, %13
  store i32 0, i32* %4, align 4
  br label %38

; <label>:33:                                     ; preds = %21
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9

; <label>:37:                                     ; preds = %9
  store i32 1, i32* %4, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %32
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @create_candidate(i32*, i32, i32*, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %28, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %31

; <label>:14:                                     ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @condition(i32* %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %21, i32* %26, align 4
  br label %27

; <label>:27:                                     ; preds = %20, %14
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %11

; <label>:31:                                     ; preds = %11
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @backtrack(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load i32*, i32** %3, align 8
  call void @display_outcome(i32* %11)
  br label %36

; <label>:12:                                     ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0
  call void @create_candidate(i32* %13, i32 %14, i32* %15, i32* %6)
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %32, %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  call void @backtrack(i32* %29, i32 %31)
  br label %32

; <label>:32:                                     ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %16

; <label>:35:                                     ; preds = %16
  br label %36

; <label>:36:                                     ; preds = %35, %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i32 0, i32 0
  call void @backtrack(i32* %7, i32 0)
  %8 = load i32, i32* @count, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %8)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
