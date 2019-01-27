; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_QuickSort.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_QuickSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Enter size of array:\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Enter the elements of the array\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Original array: \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Sorted array: \00", align 1

; Function Attrs: nounwind ssp uwtable
define void @display(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = load i32, i32* %4, align 4, !tbaa !7
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 8, !tbaa !3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16)
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %23 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @swap(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32*, i32** %3, align 8, !tbaa !3
  %8 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %8, i32* %5, align 4, !tbaa !7
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = load i32*, i32** %3, align 8, !tbaa !3
  store i32 %10, i32* %11, align 4, !tbaa !7
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = load i32*, i32** %4, align 8, !tbaa !3
  store i32 %12, i32* %13, align 4, !tbaa !7
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @partition(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32, i32* %5, align 4, !tbaa !7
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4, !tbaa !7
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load i32*, i32** %4, align 8, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  store i32 %18, i32* %8, align 4, !tbaa !7
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %20, i32* %9, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %45, %3
  %22 = load i32, i32* %9, align 4, !tbaa !7
  %23 = load i32, i32* %6, align 4, !tbaa !7
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

; <label>:25:                                     ; preds = %21
  %26 = load i32*, i32** %4, align 8, !tbaa !3
  %27 = load i32, i32* %9, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = load i32, i32* %8, align 4, !tbaa !7
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %44

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %7, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4, !tbaa !7
  %36 = load i32*, i32** %4, align 8, !tbaa !3
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32*, i32** %4, align 8, !tbaa !3
  %41 = load i32, i32* %9, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  call void @swap(i32* %39, i32* %43)
  br label %44

; <label>:44:                                     ; preds = %33, %25
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %9, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4, !tbaa !7
  br label %21

; <label>:48:                                     ; preds = %21
  %49 = load i32*, i32** %4, align 8, !tbaa !3
  %50 = load i32, i32* %7, align 4, !tbaa !7
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32*, i32** %4, align 8, !tbaa !3
  %55 = load i32, i32* %6, align 4, !tbaa !7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  call void @swap(i32* %53, i32* %57)
  %58 = load i32, i32* %7, align 4, !tbaa !7
  %59 = add nsw i32 %58, 1
  %60 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  ret i32 %59
}

; Function Attrs: nounwind ssp uwtable
define void @quickSort(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = load i32, i32* %6, align 4, !tbaa !7
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32*, i32** %4, align 8, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !7
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = call i32 @partition(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4, !tbaa !7
  %17 = load i32*, i32** %4, align 8, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !7
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = sub nsw i32 %19, 1
  call void @quickSort(i32* %17, i32 %18, i32 %20)
  %21 = load i32*, i32** %4, align 8, !tbaa !3
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4, !tbaa !7
  call void @quickSort(i32* %21, i32 %23, i32 %24)
  %25 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  br label %26

; <label>:26:                                     ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %2)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32, i32* %2, align 4, !tbaa !7
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %24, %0
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = load i32, i32* %2, align 4, !tbaa !7
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %3, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %14, i64 %21
  %23 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %22)
  br label %24

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %3, align 4, !tbaa !7
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4, !tbaa !7
  br label %15

; <label>:27:                                     ; preds = %15
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  %29 = load i32, i32* %2, align 4, !tbaa !7
  call void @display(i32* %14, i32 %29)
  %30 = load i32, i32* %2, align 4, !tbaa !7
  %31 = sub nsw i32 %30, 1
  call void @quickSort(i32* %14, i32 0, i32 %31)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  %33 = load i32, i32* %2, align 4, !tbaa !7
  call void @display(i32* %14, i32 %33)
  store i32 0, i32* %1, align 4
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

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
