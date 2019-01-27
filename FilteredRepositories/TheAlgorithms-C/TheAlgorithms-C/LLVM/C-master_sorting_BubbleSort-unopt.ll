; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_BubbleSort.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_BubbleSort.c"
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
define void @bubbleSort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %53, %2
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9
  store i32 2, i32* %6, align 4
  %15 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  br label %56

; <label>:16:                                     ; preds = %9
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %49, %16
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = load i32, i32* %4, align 4, !tbaa !7
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %18
  store i32 5, i32* %6, align 4
  %24 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  br label %52

; <label>:25:                                     ; preds = %18
  %26 = load i32*, i32** %3, align 8, !tbaa !3
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = load i32*, i32** %3, align 8, !tbaa !3
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = icmp sgt i32 %30, %36
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %25
  %39 = load i32*, i32** %3, align 8, !tbaa !3
  %40 = load i32, i32* %7, align 4, !tbaa !7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32*, i32** %3, align 8, !tbaa !3
  %44 = load i32, i32* %7, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  call void @swap(i32* %42, i32* %47)
  br label %48

; <label>:48:                                     ; preds = %38, %25
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %7, align 4, !tbaa !7
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4, !tbaa !7
  br label %18

; <label>:52:                                     ; preds = %23
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %5, align 4, !tbaa !7
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:56:                                     ; preds = %14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %6)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %28, %2
  %20 = load i32, i32* %7, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %18, i64 %25
  %27 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %26)
  br label %28

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %7, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4, !tbaa !7
  br label %19

; <label>:31:                                     ; preds = %19
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  %33 = load i32, i32* %6, align 4, !tbaa !7
  call void @display(i32* %18, i32 %33)
  %34 = load i32, i32* %6, align 4, !tbaa !7
  call void @bubbleSort(i32* %18, i32 %34)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  %36 = load i32, i32* %6, align 4, !tbaa !7
  call void @display(i32* %18, i32 %36)
  store i32 0, i32* %3, align 4
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  %39 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3
  %40 = load i32, i32* %3, align 4
  ret i32 %40
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
