; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_QuickSort_morecool.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_AdvancedSort_QuickSort_morecool.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 60, i32 2, i32 97, i32 78, i32 0, i32 84, i32 68, i32 23, i32 48, i32 22, i32 63, i32 31, i32 43, i32 42, i32 82, i32 9, i32 57, i32 21, i32 42, i32 62, i32 83, i32 98, i32 64, i32 72, i32 96, i32 31, i32 76, i32 13, i32 70, i32 49, i32 10, i32 60, i32 72, i32 36, i32 26, i32 4, i32 56, i32 54, i32 13, i32 9, i32 98, i32 45, i32 61, i32 90, i32 88, i32 80, i32 30, i32 50, i32 77, i32 83], align 16

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
define void @quicksort(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  br label %63

; <label>:14:                                     ; preds = %3
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32*, i32** %4, align 8, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  store i32 %20, i32* %7, align 4, !tbaa !7
  %21 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = load i32, i32* %5, align 4, !tbaa !7
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4, !tbaa !7
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3
  %25 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %25, i32* %9, align 4, !tbaa !7
  br label %26

; <label>:26:                                     ; preds = %46, %14
  %27 = load i32, i32* %9, align 4, !tbaa !7
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %26
  %31 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  br label %49

; <label>:32:                                     ; preds = %26
  %33 = load i32*, i32** %4, align 8, !tbaa !3
  %34 = load i32, i32* %9, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = load i32, i32* %7, align 4, !tbaa !7
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %32
  %41 = load i32*, i32** %4, align 8, !tbaa !3
  %42 = load i32, i32* %9, align 4, !tbaa !7
  %43 = load i32, i32* %8, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4, !tbaa !7
  call void @swap(i32* %41, i32 %42, i32 %43)
  br label %45

; <label>:45:                                     ; preds = %40, %32
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %9, align 4, !tbaa !7
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4, !tbaa !7
  br label %26

; <label>:49:                                     ; preds = %30
  %50 = load i32*, i32** %4, align 8, !tbaa !3
  %51 = load i32, i32* %5, align 4, !tbaa !7
  %52 = load i32, i32* %8, align 4, !tbaa !7
  %53 = sub nsw i32 %52, 1
  call void @swap(i32* %50, i32 %51, i32 %53)
  %54 = load i32*, i32** %4, align 8, !tbaa !3
  %55 = load i32, i32* %5, align 4, !tbaa !7
  %56 = load i32, i32* %8, align 4, !tbaa !7
  %57 = sub nsw i32 %56, 1
  call void @quicksort(i32* %54, i32 %55, i32 %57)
  %58 = load i32*, i32** %4, align 8, !tbaa !3
  %59 = load i32, i32* %8, align 4, !tbaa !7
  %60 = load i32, i32* %6, align 4, !tbaa !7
  call void @quicksort(i32* %58, i32 %59, i32 %60)
  %61 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  br label %63

; <label>:63:                                     ; preds = %49, %13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @displayoutcome(i32*, i32) #0 {
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

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %4) #3
  %5 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 50, i32* %3, align 4, !tbaa !7
  %7 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %8 = load i32, i32* %3, align 4, !tbaa !7
  call void @quicksort(i32* %7, i32 0, i32 %8)
  %9 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %10 = load i32, i32* %3, align 4, !tbaa !7
  call void @displayoutcome(i32* %9, i32 %10)
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  %12 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %12) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
