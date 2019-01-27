; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_SortApplication_quicksort_k_big.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_SortApplication_quicksort_k_big.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%dth maxest number=%d\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"top%d maxest numbers:\0A\00", align 1

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
define void @quicksplit_findtopk(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %4
  br label %120

; <label>:17:                                     ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %11, align 4
  br label %27

; <label>:27:                                     ; preds = %75, %17
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %76

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %47, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 2
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %45

; <label>:37:                                     ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

; <label>:45:                                     ; preds = %37, %32
  %46 = phi i1 [ false, %32 ], [ %44, %37 ]
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %32

; <label>:50:                                     ; preds = %45
  br label %51

; <label>:51:                                     ; preds = %64, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %62

; <label>:54:                                     ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %59, %60
  br label %62

; <label>:62:                                     ; preds = %54, %51
  %63 = phi i1 [ false, %51 ], [ %61, %54 ]
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %62
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  br label %51

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

; <label>:71:                                     ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  call void @swap(i32* %72, i32 %73, i32 %74)
  br label %75

; <label>:75:                                     ; preds = %71, %67
  br label %27

; <label>:76:                                     ; preds = %27
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 1
  call void @swap(i32* %77, i32 %78, i32 %80)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 50, %82
  %84 = sub nsw i32 %83, 1
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %91

; <label>:86:                                     ; preds = %76
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  call void @quicksplit_findtopk(i32* %87, i32 %88, i32 %89, i32 %90)
  br label %120

; <label>:91:                                     ; preds = %76
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 50, %93
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %103

; <label>:97:                                     ; preds = %91
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  call void @quicksplit_findtopk(i32* %98, i32 %100, i32 %101, i32 %102)
  br label %119

; <label>:103:                                    ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %106

; <label>:106:                                    ; preds = %109, %103
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 50
  br i1 %108, label %109, label %117

; <label>:109:                                    ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %115)
  br label %106

; <label>:117:                                    ; preds = %106
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %119

; <label>:119:                                    ; preds = %117, %97
  br label %120

; <label>:120:                                    ; preds = %16, %119, %86
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @quicksplit_find_kth_max(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  br label %105

; <label>:16:                                     ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %11, align 4
  br label %26

; <label>:26:                                     ; preds = %74, %16
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %75

; <label>:30:                                     ; preds = %26
  br label %31

; <label>:31:                                     ; preds = %46, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 2
  %35 = icmp sle i32 %32, %34
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

; <label>:44:                                     ; preds = %36, %31
  %45 = phi i1 [ false, %31 ], [ %43, %36 ]
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %44
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %31

; <label>:49:                                     ; preds = %44
  br label %50

; <label>:50:                                     ; preds = %63, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %61

; <label>:53:                                     ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %58, %59
  br label %61

; <label>:61:                                     ; preds = %53, %50
  %62 = phi i1 [ false, %50 ], [ %60, %53 ]
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %11, align 4
  br label %50

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  call void @swap(i32* %71, i32 %72, i32 %73)
  br label %74

; <label>:74:                                     ; preds = %70, %66
  br label %26

; <label>:75:                                     ; preds = %26
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  call void @swap(i32* %76, i32 %77, i32 %79)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 50, %81
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %89

; <label>:84:                                     ; preds = %75
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  call void @quicksplit_find_kth_max(i32* %85, i32 %86, i32 %87, i32 %88)
  br label %105

; <label>:89:                                     ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 50, %91
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %100

; <label>:94:                                     ; preds = %89
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  call void @quicksplit_find_kth_max(i32* %95, i32 %97, i32 %98, i32 %99)
  br label %104

; <label>:100:                                    ; preds = %89
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %101, i32 %102)
  br label %104

; <label>:104:                                    ; preds = %100, %94
  br label %105

; <label>:105:                                    ; preds = %15, %104, %84
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [50 x i32], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast [50 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 50
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i32 50, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %15, %2
  %17 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  call void @quicksplit_find_kth_max(i32* %17, i32 0, i32 50, i32 %18)
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 50
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  br label %24

; <label>:24:                                     ; preds = %21, %16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %25)
  %27 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  call void @quicksplit_findtopk(i32* %27, i32 0, i32 50, i32 %28)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

declare i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
