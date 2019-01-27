; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_QuickSort.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_QuickSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@sp = global i32 -1, align 4
@stack = common global [1000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"use non recursive\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @swap(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @quicksort_recursive(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  br label %84

; <label>:14:                                     ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %9, align 4
  br label %24

; <label>:24:                                     ; preds = %71, %14
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %72

; <label>:28:                                     ; preds = %24
  br label %29

; <label>:29:                                     ; preds = %43, %28
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

; <label>:41:                                     ; preds = %37, %29
  %42 = phi i1 [ false, %29 ], [ %40, %37 ]
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %29

; <label>:46:                                     ; preds = %41
  br label %47

; <label>:47:                                     ; preds = %60, %46
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 0
  br label %58

; <label>:58:                                     ; preds = %55, %47
  %59 = phi i1 [ false, %47 ], [ %57, %55 ]
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %47

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  call void @swap(i32* %68, i32 %69, i32 %70)
  br label %71

; <label>:71:                                     ; preds = %67, %63
  br label %24

; <label>:72:                                     ; preds = %24
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  call void @swap(i32* %73, i32 %74, i32 %76)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  call void @quicksort_recursive(i32* %77, i32 %78, i32 %79)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %6, align 4
  call void @quicksort_recursive(i32* %80, i32 %82, i32 %83)
  br label %84

; <label>:84:                                     ; preds = %72, %13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @push(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @sp, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @sp, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1000 x i32], [1000 x i32]* @stack, i64 0, i64 %8
  store i32 %5, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @sp, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @sp, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1000 x i32], [1000 x i32]* @stack, i64 0, i64 %13
  store i32 %10, i32* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @pop() #0 {
  %1 = load i32, i32* @sp, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @sp, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [1000 x i32], [1000 x i32]* @stack, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @empty() #0 {
  %1 = load i32, i32* @sp, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @quicksort_nonrecursive(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  call void @push(i32 %11, i32 %12)
  br label %13

; <label>:13:                                     ; preds = %97, %2
  %14 = call i32 @empty()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %98

; <label>:17:                                     ; preds = %13
  %18 = call i32 @pop()
  store i32 %18, i32* %6, align 4
  %19 = call i32 @pop()
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %8, align 4
  br label %29

; <label>:29:                                     ; preds = %76, %17
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %77

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %48, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

; <label>:38:                                     ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

; <label>:46:                                     ; preds = %38, %34
  %47 = phi i1 [ false, %34 ], [ %45, %38 ]
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %34

; <label>:51:                                     ; preds = %46
  br label %52

; <label>:52:                                     ; preds = %65, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %63

; <label>:55:                                     ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br label %63

; <label>:63:                                     ; preds = %55, %52
  %64 = phi i1 [ false, %52 ], [ %62, %55 ]
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %63
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  br label %52

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  call void @swap(i32* %73, i32 %74, i32 %75)
  br label %76

; <label>:76:                                     ; preds = %72, %68
  br label %29

; <label>:77:                                     ; preds = %29
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 1
  call void @swap(i32* %78, i32 %79, i32 %81)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %88

; <label>:85:                                     ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  call void @push(i32 %86, i32 %87)
  br label %88

; <label>:88:                                     ; preds = %85, %77
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %6, align 4
  call void @push(i32 %95, i32 %96)
  br label %97

; <label>:97:                                     ; preds = %93, %88
  br label %13

; <label>:98:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @displayoutcome(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %6
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %15)
  br label %17

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

; <label>:20:                                     ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  store i32 50, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %6 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %7 = load i32, i32* %3, align 4
  call void @quicksort_nonrecursive(i32* %6, i32 %7)
  %8 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %9 = load i32, i32* %3, align 4
  call void @displayoutcome(i32* %8, i32 %9)
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
