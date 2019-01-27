; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_SimpleSort_ShellSort.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_SimpleSort_ShellSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@hibbard = global [3 x i32] [i32 1, i32 3, i32 5], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.data = private unnamed_addr constant [13 x i32] [i32 81, i32 94, i32 11, i32 96, i32 12, i32 35, i32 17, i32 95, i32 28, i32 58, i32 41, i32 75, i32 15], align 16

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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @shellsort(i32*, i32) #0 {
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
  store i32 2, i32* %6, align 4, !tbaa !7
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  br label %15

; <label>:15:                                     ; preds = %77, %2
  %16 = load i32, i32* %6, align 4, !tbaa !7
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %80

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %6, align 4, !tbaa !7
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4, !tbaa !7
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* @hibbard, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !7
  store i32 %23, i32* %5, align 4, !tbaa !7
  %24 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %24, i32* %7, align 4, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %74, %18
  %26 = load i32, i32* %7, align 4, !tbaa !7
  %27 = load i32, i32* %4, align 4, !tbaa !7
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %77

; <label>:29:                                     ; preds = %25
  %30 = load i32*, i32** %3, align 8, !tbaa !3
  %31 = load i32, i32* %7, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  store i32 %34, i32* %9, align 4, !tbaa !7
  %35 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %35, i32* %8, align 4, !tbaa !7
  br label %36

; <label>:36:                                     ; preds = %64, %29
  %37 = load i32, i32* %8, align 4, !tbaa !7
  %38 = load i32, i32* %5, align 4, !tbaa !7
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %50

; <label>:40:                                     ; preds = %36
  %41 = load i32*, i32** %3, align 8, !tbaa !3
  %42 = load i32, i32* %8, align 4, !tbaa !7
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !7
  %48 = load i32, i32* %9, align 4, !tbaa !7
  %49 = icmp sgt i32 %47, %48
  br label %50

; <label>:50:                                     ; preds = %40, %36
  %51 = phi i1 [ false, %36 ], [ %49, %40 ]
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %50
  %53 = load i32*, i32** %3, align 8, !tbaa !3
  %54 = load i32, i32* %8, align 4, !tbaa !7
  %55 = load i32, i32* %5, align 4, !tbaa !7
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !7
  %60 = load i32*, i32** %3, align 8, !tbaa !3
  %61 = load i32, i32* %8, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4, !tbaa !7
  br label %64

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %5, align 4, !tbaa !7
  %66 = load i32, i32* %8, align 4, !tbaa !7
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %8, align 4, !tbaa !7
  br label %36

; <label>:68:                                     ; preds = %50
  %69 = load i32, i32* %9, align 4, !tbaa !7
  %70 = load i32*, i32** %3, align 8, !tbaa !3
  %71 = load i32, i32* %8, align 4, !tbaa !7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4, !tbaa !7
  br label %74

; <label>:74:                                     ; preds = %68
  %75 = load i32, i32* %7, align 4, !tbaa !7
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4, !tbaa !7
  br label %25

; <label>:77:                                     ; preds = %25
  %78 = load i32*, i32** %3, align 8, !tbaa !3
  %79 = load i32, i32* %4, align 4, !tbaa !7
  call void @displayoutcome(i32* %78, i32 %79)
  br label %15

; <label>:80:                                     ; preds = %15
  %81 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3
  %82 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  %83 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3
  %84 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3
  %85 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [13 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [13 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 52, i8* %4) #3
  %5 = bitcast [13 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([13 x i32]* @main.data to i8*), i64 52, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 13, i32* %3, align 4, !tbaa !7
  %7 = getelementptr inbounds [13 x i32], [13 x i32]* %2, i32 0, i32 0
  %8 = load i32, i32* %3, align 4, !tbaa !7
  call void @shellsort(i32* %7, i32 %8)
  %9 = getelementptr inbounds [13 x i32], [13 x i32]* %2, i32 0, i32 0
  %10 = load i32, i32* %3, align 4, !tbaa !7
  call void @displayoutcome(i32* %9, i32 %10)
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  %12 = bitcast [13 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 52, i8* %12) #3
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
