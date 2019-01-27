; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_binary_insertion_sort.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_binary_insertion_sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Sorted array: \0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @binarySearch(i32*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32 %1, i32* %7, align 4, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  %12 = load i32, i32* %9, align 4, !tbaa !7
  %13 = load i32, i32* %8, align 4, !tbaa !7
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = load i32*, i32** %6, align 8, !tbaa !3
  %18 = load i32, i32* %8, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = icmp sgt i32 %16, %21
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = add nsw i32 %24, 1
  br label %28

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %8, align 4, !tbaa !7
  br label %28

; <label>:28:                                     ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %27, %26 ]
  store i32 %29, i32* %5, align 4
  br label %70

; <label>:30:                                     ; preds = %4
  %31 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #3
  %32 = load i32, i32* %8, align 4, !tbaa !7
  %33 = load i32, i32* %9, align 4, !tbaa !7
  %34 = add nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %10, align 4, !tbaa !7
  %36 = load i32, i32* %7, align 4, !tbaa !7
  %37 = load i32*, i32** %6, align 8, !tbaa !3
  %38 = load i32, i32* %10, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %30
  %44 = load i32, i32* %10, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %68

; <label>:46:                                     ; preds = %30
  %47 = load i32, i32* %7, align 4, !tbaa !7
  %48 = load i32*, i32** %6, align 8, !tbaa !3
  %49 = load i32, i32* %10, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !7
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %61

; <label>:54:                                     ; preds = %46
  %55 = load i32*, i32** %6, align 8, !tbaa !3
  %56 = load i32, i32* %7, align 4, !tbaa !7
  %57 = load i32, i32* %10, align 4, !tbaa !7
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %9, align 4, !tbaa !7
  %60 = call i32 @binarySearch(i32* %55, i32 %56, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %68

; <label>:61:                                     ; preds = %46
  %62 = load i32*, i32** %6, align 8, !tbaa !3
  %63 = load i32, i32* %7, align 4, !tbaa !7
  %64 = load i32, i32* %8, align 4, !tbaa !7
  %65 = load i32, i32* %10, align 4, !tbaa !7
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @binarySearch(i32* %62, i32 %63, i32 %64, i32 %66)
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %68

; <label>:68:                                     ; preds = %61, %54, %43
  %69 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  br label %70

; <label>:70:                                     ; preds = %68, %28
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @insertionSort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 1, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %55, %2
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = load i32, i32* %4, align 4, !tbaa !7
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4, !tbaa !7
  %22 = load i32*, i32** %3, align 8, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  store i32 %26, i32* %9, align 4, !tbaa !7
  %27 = load i32*, i32** %3, align 8, !tbaa !3
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = load i32, i32* %7, align 4, !tbaa !7
  %30 = call i32 @binarySearch(i32* %27, i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %6, align 4, !tbaa !7
  br label %31

; <label>:31:                                     ; preds = %35, %19
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = load i32, i32* %6, align 4, !tbaa !7
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %48

; <label>:35:                                     ; preds = %31
  %36 = load i32*, i32** %3, align 8, !tbaa !3
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !7
  %41 = load i32*, i32** %3, align 8, !tbaa !3
  %42 = load i32, i32* %7, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4, !tbaa !7
  %46 = load i32, i32* %7, align 4, !tbaa !7
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4, !tbaa !7
  br label %31

; <label>:48:                                     ; preds = %31
  %49 = load i32, i32* %9, align 4, !tbaa !7
  %50 = load i32*, i32** %3, align 8, !tbaa !3
  %51 = load i32, i32* %7, align 4, !tbaa !7
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4, !tbaa !7
  br label %55

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %5, align 4, !tbaa !7
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:58:                                     ; preds = %15
  %59 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2)
  %8 = load i32, i32* %2, align 4, !tbaa !7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %22, %0
  %14 = load i32, i32* %5, align 4, !tbaa !7
  %15 = load i32, i32* %2, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %11, i64 %19
  %21 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %20)
  br label %22

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4, !tbaa !7
  br label %13

; <label>:25:                                     ; preds = %13
  %26 = load i32, i32* %2, align 4, !tbaa !7
  call void @insertionSort(i32* %11, i32 %26)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %28

; <label>:28:                                     ; preds = %38, %25
  %29 = load i32, i32* %5, align 4, !tbaa !7
  %30 = load i32, i32* %2, align 4, !tbaa !7
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %5, align 4, !tbaa !7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %11, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %36)
  br label %38

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %5, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4, !tbaa !7
  br label %28

; <label>:41:                                     ; preds = %28
  store i32 0, i32* %1, align 4
  %42 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

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
