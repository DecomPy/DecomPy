; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_LinearSort_CountSort.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Sort_LinearSort_CountSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.data = private unnamed_addr constant [50 x i32] [i32 5, i32 4, i32 3, i32 19, i32 3, i32 9, i32 16, i32 15, i32 0, i32 0, i32 9, i32 12, i32 9, i32 10, i32 10, i32 4, i32 19, i32 15, i32 12, i32 16, i32 0, i32 0, i32 1, i32 1, i32 3, i32 4, i32 14, i32 3, i32 6, i32 12, i32 1, i32 3, i32 14, i32 4, i32 15, i32 4, i32 4, i32 7, i32 11, i32 13, i32 2, i32 1, i32 15, i32 13, i32 1, i32 12, i32 9, i32 17, i32 13, i32 16], align 16

; Function Attrs: nounwind ssp uwtable
define void @countsort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %9 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %9) #2
  %10 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 80, i1 false)
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = load i32, i32* %4, align 4, !tbaa !7
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %38, %2
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = load i32, i32* %4, align 4, !tbaa !7
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

; <label>:20:                                     ; preds = %16
  %21 = load i32*, i32** %3, align 8, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4, !tbaa !7
  %30 = load i32*, i32** %3, align 8, !tbaa !3
  %31 = load i32, i32* %6, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %15, i64 %36
  store i32 %34, i32* %37, align 4, !tbaa !7
  br label %38

; <label>:38:                                     ; preds = %20
  %39 = load i32, i32* %6, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4, !tbaa !7
  br label %16

; <label>:41:                                     ; preds = %16
  store i32 1, i32* %6, align 4, !tbaa !7
  br label %42

; <label>:42:                                     ; preds = %56, %41
  %43 = load i32, i32* %6, align 4, !tbaa !7
  %44 = icmp slt i32 %43, 20
  br i1 %44, label %45, label %59

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %6, align 4, !tbaa !7
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !7
  %51 = load i32, i32* %6, align 4, !tbaa !7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !7
  %55 = add nsw i32 %54, %50
  store i32 %55, i32* %53, align 4, !tbaa !7
  br label %56

; <label>:56:                                     ; preds = %45
  %57 = load i32, i32* %6, align 4, !tbaa !7
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4, !tbaa !7
  br label %42

; <label>:59:                                     ; preds = %42
  %60 = load i32, i32* %4, align 4, !tbaa !7
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %6, align 4, !tbaa !7
  br label %62

; <label>:62:                                     ; preds = %81, %59
  %63 = load i32, i32* %6, align 4, !tbaa !7
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %84

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %6, align 4, !tbaa !7
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %15, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !7
  %70 = load i32*, i32** %3, align 8, !tbaa !3
  %71 = load i32, i32* %6, align 4, !tbaa !7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %15, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !7
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4, !tbaa !7
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %70, i64 %79
  store i32 %69, i32* %80, align 4, !tbaa !7
  br label %81

; <label>:81:                                     ; preds = %65
  %82 = load i32, i32* %6, align 4, !tbaa !7
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %6, align 4, !tbaa !7
  br label %62

; <label>:84:                                     ; preds = %62
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #2
  %87 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %87) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @displayoutcome(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #2
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %4) #2
  %5 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([50 x i32]* @main.data to i8*), i64 200, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 50, i32* %3, align 4, !tbaa !7
  %7 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %8 = load i32, i32* %3, align 4, !tbaa !7
  call void @countsort(i32* %7, i32 %8)
  %9 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i32 0, i32 0
  %10 = load i32, i32* %3, align 4, !tbaa !7
  call void @displayoutcome(i32* %9, i32 %10)
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  %12 = bitcast [50 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %12) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
