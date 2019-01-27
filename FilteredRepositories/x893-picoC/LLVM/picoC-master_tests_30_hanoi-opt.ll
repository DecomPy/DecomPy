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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @PrintAll() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %12, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* @A, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %10)
  br label %12

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %3

; <label>:15:                                     ; preds = %3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %18

; <label>:18:                                     ; preds = %27, %15
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* @B, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %25)
  br label %27

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %18

; <label>:30:                                     ; preds = %18
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %33

; <label>:33:                                     ; preds = %42, %30
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* @C, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %40)
  br label %42

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %33

; <label>:45:                                     ; preds = %33
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @Move(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %7
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br label %17

; <label>:17:                                     ; preds = %10, %7
  %18 = phi i1 [ false, %7 ], [ %16, %10 ]
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

; <label>:22:                                     ; preds = %17
  br label %23

; <label>:23:                                     ; preds = %35, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br label %33

; <label>:33:                                     ; preds = %26, %23
  %34 = phi i1 [ false, %23 ], [ %32, %26 ]
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

; <label>:38:                                     ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 0, i32* %52, align 4
  call void @PrintAll()
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Hanoi(i32, i32*, i32*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @Move(i32* %13, i32* %14)
  br label %30

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  call void @Hanoi(i32 %18, i32* %19, i32* %20, i32* %21)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @Move(i32* %22, i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %6, align 8
  call void @Hanoi(i32 %26, i32* %27, i32* %28, i32* %29)
  br label %30

; <label>:30:                                     ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %12, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 4
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* @A, i64 0, i64 %10
  store i32 %8, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %3

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %23, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* @B, i64 0, i64 %21
  store i32 0, i32* %22, align 4
  br label %23

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %16

; <label>:26:                                     ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

; <label>:27:                                     ; preds = %34, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* @C, i64 0, i64 %32
  store i32 0, i32* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %27

; <label>:37:                                     ; preds = %27
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i32 4)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  call void @PrintAll()
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  call void @Hanoi(i32 4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @A, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @B, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @C, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
