; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_shellSort.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_shellSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"Data Sorted\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [118 x i8] c"Shell Sort Big O Notation:\0A--> Best Case: O(n log(n))\0A--> Average Case: depends on gap sequence\0A--> Worst Case: O(n)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Time spent sorting: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @shellSort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %77, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %80

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  br label %17

; <label>:17:                                     ; preds = %73, %15
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %76

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

; <label>:25:                                     ; preds = %68, %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %72

; <label>:28:                                     ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %35, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %28
  br label %72

; <label>:43:                                     ; preds = %28
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

; <label>:67:                                     ; preds = %43
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %7, align 4
  br label %25

; <label>:72:                                     ; preds = %42, %25
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %17

; <label>:76:                                     ; preds = %17
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %5, align 4
  br label %12

; <label>:80:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store i32 500, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %20, %0
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %9
  %13 = call i32 @rand()
  %14 = load i32, i32* %3, align 4
  %15 = srem i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %9

; <label>:23:                                     ; preds = %9
  store i32 20, i32* %5, align 4
  %24 = call i64 @"\01_clock"()
  store i64 %24, i64* %6, align 8
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  call void @shellSort(i32* %25, i32 %26)
  %27 = call i64 @"\01_clock"()
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %28, %29
  %31 = uitofp i64 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  store double %32, double* %8, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i32 0, i32 0))
  %35 = load double, double* %8, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), double %35)
  ret i32 0
}

declare i32 @rand() #1

declare i64 @"\01_clock"() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
