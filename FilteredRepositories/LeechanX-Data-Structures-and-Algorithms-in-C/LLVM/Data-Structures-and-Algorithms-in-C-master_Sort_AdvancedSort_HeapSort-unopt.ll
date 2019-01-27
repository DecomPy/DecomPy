; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_HeapSort.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_HeapSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @swap(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %13, i32* %7, align 4, !tbaa !7
  %14 = load i32*, i32** %4, align 8, !tbaa !3
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4, !tbaa !7
  %23 = load i32, i32* %7, align 4, !tbaa !7
  %24 = load i32*, i32** %4, align 8, !tbaa !3
  %25 = load i32, i32* %6, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4, !tbaa !7
  %28 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @heap_hold(i32*, i32, i32) #0 {
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
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = shl i32 %11, 1
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4, !tbaa !7
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = shl i32 %15, 1
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %8, align 4, !tbaa !7
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = load i32, i32* %6, align 4, !tbaa !7
  store i32 %19, i32* %9, align 4, !tbaa !7
  %20 = load i32, i32* %8, align 4, !tbaa !7
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

; <label>:23:                                     ; preds = %3
  %24 = load i32*, i32** %4, align 8, !tbaa !3
  %25 = load i32, i32* %8, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = load i32*, i32** %4, align 8, !tbaa !3
  %30 = load i32, i32* %9, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %36, i32* %9, align 4, !tbaa !7
  br label %37

; <label>:37:                                     ; preds = %35, %23, %3
  %38 = load i32, i32* %7, align 4, !tbaa !7
  %39 = load i32, i32* %5, align 4, !tbaa !7
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %55

; <label>:41:                                     ; preds = %37
  %42 = load i32*, i32** %4, align 8, !tbaa !3
  %43 = load i32, i32* %7, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !7
  %47 = load i32*, i32** %4, align 8, !tbaa !3
  %48 = load i32, i32* %9, align 4, !tbaa !7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %54, i32* %9, align 4, !tbaa !7
  br label %55

; <label>:55:                                     ; preds = %53, %41, %37
  %56 = load i32, i32* %9, align 4, !tbaa !7
  %57 = load i32, i32* %6, align 4, !tbaa !7
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

; <label>:59:                                     ; preds = %55
  %60 = load i32*, i32** %4, align 8, !tbaa !3
  %61 = load i32, i32* %9, align 4, !tbaa !7
  %62 = load i32, i32* %6, align 4, !tbaa !7
  call void @swap(i32* %60, i32 %61, i32 %62)
  %63 = load i32*, i32** %4, align 8, !tbaa !3
  %64 = load i32, i32* %5, align 4, !tbaa !7
  %65 = load i32, i32* %9, align 4, !tbaa !7
  call void @heap_hold(i32* %63, i32 %64, i32 %65)
  br label %66

; <label>:66:                                     ; preds = %59, %55
  %67 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3
  %68 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3
  %69 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init_heap(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = load i32, i32* %4, align 4, !tbaa !7
  %9 = ashr i32 %8, 1
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4, !tbaa !7
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %12, i32* %6, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %22, %2
  %14 = load i32, i32* %6, align 4, !tbaa !7
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %13
  %17 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3
  br label %25

; <label>:18:                                     ; preds = %13
  %19 = load i32*, i32** %3, align 8, !tbaa !3
  %20 = load i32, i32* %4, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  call void @heap_hold(i32* %19, i32 %20, i32 %21)
  br label %22

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %6, align 4, !tbaa !7
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4, !tbaa !7
  br label %13

; <label>:25:                                     ; preds = %16
  %26 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @delete_min(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32*, i32** %3, align 8, !tbaa !3
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %9, i32* %5, align 4, !tbaa !7
  %10 = load i32*, i32** %3, align 8, !tbaa !3
  %11 = load i32*, i32** %4, align 8, !tbaa !3
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %13 = sub nsw i32 %12, 1
  call void @swap(i32* %10, i32 0, i32 %13)
  %14 = load i32*, i32** %4, align 8, !tbaa !3
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = sub nsw i32 %15, 1
  %17 = load i32*, i32** %4, align 8, !tbaa !3
  store i32 %16, i32* %17, align 4, !tbaa !7
  %18 = load i32*, i32** %3, align 8, !tbaa !3
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %19, align 4, !tbaa !7
  call void @heap_hold(i32* %18, i32 %20, i32 0)
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %7) #3
  %8 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 50, i32* %3, align 4, !tbaa !7
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32, i32* %3, align 4, !tbaa !7
  store i32 %11, i32* %4, align 4, !tbaa !7
  %12 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %13 = load i32, i32* %4, align 4, !tbaa !7
  call void @init_heap(i32* %12, i32 %13)
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %24, %0
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %15
  %20 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  br label %27

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %23 = call i32 @delete_min(i32* %22, i32* %4)
  br label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %5, align 4, !tbaa !7
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:27:                                     ; preds = %19
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3
  %29 = load i32, i32* %3, align 4, !tbaa !7
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %6, align 4, !tbaa !7
  br label %31

; <label>:31:                                     ; preds = %42, %27
  %32 = load i32, i32* %6, align 4, !tbaa !7
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %36, label %34

; <label>:34:                                     ; preds = %31
  %35 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  br label %45

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %6, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !7
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %40)
  br label %42

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %6, align 4, !tbaa !7
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4, !tbaa !7
  br label %31

; <label>:45:                                     ; preds = %34
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %47 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  %48 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  %49 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %49) #3
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

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
