; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_01背包问题_非递归.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_01\E8\83\8C\E5\8C\85\E9\97\AE\E9\A2\98_\E9\9D\9E\E9\80\92\E5\BD\92.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@maxvalue = common global i32 0, align 4
@weighted = common global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.weight = private unnamed_addr constant [5 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@main.value = private unnamed_addr constant [5 x i32] [i32 5, i32 4, i32 3, i32 2, i32 10], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"maxvalue=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"weighted=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @display_outcome(i32*, i32*, i32*) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %37, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %40

; <label>:14:                                     ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

; <label>:36:                                     ; preds = %21, %14
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %11

; <label>:40:                                     ; preds = %11
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @maxvalue, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %62

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* @maxvalue, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* @weighted, align 4
  store i32 0, i32* %10, align 4
  br label %47

; <label>:47:                                     ; preds = %57, %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 5
  br i1 %49, label %50, label %60

; <label>:50:                                     ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %55)
  br label %57

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %47

; <label>:60:                                     ; preds = %47
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %62

; <label>:62:                                     ; preds = %60, %40
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @condition(i32*, i32*, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %31, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

; <label>:30:                                     ; preds = %22, %15
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %11

; <label>:34:                                     ; preds = %11
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

; <label>:37:                                     ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

; <label>:45:                                     ; preds = %37, %34
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %46, 20
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @backtrack(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %9
  store i32 -1, i32* %10, align 4
  br label %11

; <label>:11:                                     ; preds = %82, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %83

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

; <label>:20:                                     ; preds = %39, %14
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @condition(i32* %27, i32* %28, i32 %29, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

; <label>:37:                                     ; preds = %26, %20
  %38 = phi i1 [ false, %20 ], [ %36, %26 ]
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %20

; <label>:45:                                     ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %82

; <label>:54:                                     ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %68

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %4, align 8
  call void @display_outcome(i32* %65, i32* %66, i32* %67)
  br label %81

; <label>:68:                                     ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %79
  store i32 -1, i32* %80, align 4
  br label %81

; <label>:81:                                     ; preds = %68, %57
  br label %82

; <label>:82:                                     ; preds = %81, %51
  br label %11

; <label>:83:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x i32]* @main.weight to i8*), i64 20, i1 false)
  %9 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @main.value to i8*), i64 20, i1 false)
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 0
  call void @backtrack(i32* %10, i32* %11)
  %12 = load i32, i32* @maxvalue, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %12)
  %14 = load i32, i32* @weighted, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %14)
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
