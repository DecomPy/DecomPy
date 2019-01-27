; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141007_binary_search.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141007_binary_search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.haystack = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 10, i32 11], align 16
@.str = private unnamed_addr constant [13 x i8] c"%d is at %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @binary_search(i32, i32*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %31

; <label>:18:                                     ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %8, align 4
  br label %29

; <label>:28:                                     ; preds = %18
  br label %29

; <label>:29:                                     ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ -1, %28 ]
  store i32 %30, i32* %5, align 4
  br label %52

; <label>:31:                                     ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %32, %37
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @binary_search(i32 %40, i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %52

; <label>:45:                                     ; preds = %31
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @binary_search(i32 %46, i32* %47, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

; <label>:52:                                     ; preds = %45, %39, %29
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %6 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([6 x i32]* @main.haystack to i8*), i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %23, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 0
  %16 = call i32 @binary_search(i32 %14, i32* %15, i32 0, i32 5)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %20, i32 %21)
  br label %23

; <label>:23:                                     ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7

; <label>:26:                                     ; preds = %7
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
