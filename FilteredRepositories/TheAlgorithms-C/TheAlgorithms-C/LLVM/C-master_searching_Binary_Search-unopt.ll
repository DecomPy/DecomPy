; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Binary_Search.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Binary_Search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.arr = private unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 4, i32 10, i32 40], align 16
@.str = private unnamed_addr constant [29 x i8] c"Element is not in the array\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Element is present at index %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @binarysearch(i32*, i32, i32, i32) #0 {
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
  %12 = load i32, i32* %8, align 4, !tbaa !7
  %13 = load i32, i32* %7, align 4, !tbaa !7
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %56

; <label>:15:                                     ; preds = %4
  %16 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i32, i32* %7, align 4, !tbaa !7
  %18 = load i32, i32* %8, align 4, !tbaa !7
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %10, align 4, !tbaa !7
  %23 = load i32*, i32** %6, align 8, !tbaa !3
  %24 = load i32, i32* %10, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %15
  %31 = load i32, i32* %10, align 4, !tbaa !7
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %54

; <label>:32:                                     ; preds = %15
  %33 = load i32*, i32** %6, align 8, !tbaa !3
  %34 = load i32, i32* %10, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = load i32, i32* %9, align 4, !tbaa !7
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %32
  %41 = load i32*, i32** %6, align 8, !tbaa !3
  %42 = load i32, i32* %7, align 4, !tbaa !7
  %43 = load i32, i32* %10, align 4, !tbaa !7
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %9, align 4, !tbaa !7
  %46 = call i32 @binarysearch(i32* %41, i32 %42, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %54

; <label>:47:                                     ; preds = %32
  %48 = load i32*, i32** %6, align 8, !tbaa !3
  %49 = load i32, i32* %10, align 4, !tbaa !7
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %8, align 4, !tbaa !7
  %52 = load i32, i32* %9, align 4, !tbaa !7
  %53 = call i32 @binarysearch(i32* %48, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %54

; <label>:54:                                     ; preds = %47, %40, %30
  %55 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  br label %57

; <label>:56:                                     ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %54
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %6) #3
  %7 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([5 x i32]* @main.arr to i8*), i64 20, i1 false)
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 5, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 10, i32* %4, align 4, !tbaa !7
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i32 0, i32 0
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = call i32 @binarysearch(i32* %11, i32 0, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4, !tbaa !7
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %0
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  br label %23

; <label>:20:                                     ; preds = %0
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %21)
  br label %23

; <label>:23:                                     ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  %25 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  %26 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  %27 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %28) #3
  ret i32 0
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
