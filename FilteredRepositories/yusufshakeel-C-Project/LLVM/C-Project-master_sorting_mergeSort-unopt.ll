; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_mergeSort.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_mergeSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.a = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 1, i32 2, i32 6], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %4) #3
  %5 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([6 x i32]* @main.a to i8*), i64 24, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i32 0, i32 0
  call void @mergeSort(i32* %7, i32 0, i32 5)
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %17, %0
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %15)
  br label %17

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4, !tbaa !3
  br label %8

; <label>:20:                                     ; preds = %8
  %21 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  %22 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %22) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define void @mergeSort(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !7
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %6, align 4, !tbaa !3
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = add nsw i32 %13, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %7, align 4, !tbaa !3
  %17 = load i32*, i32** %4, align 8, !tbaa !7
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %7, align 4, !tbaa !3
  call void @mergeSort(i32* %17, i32 %18, i32 %19)
  %20 = load i32*, i32** %4, align 8, !tbaa !7
  %21 = load i32, i32* %7, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4, !tbaa !3
  call void @mergeSort(i32* %20, i32 %22, i32 %23)
  %24 = load i32*, i32** %4, align 8, !tbaa !7
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = load i32, i32* %7, align 4, !tbaa !3
  %27 = load i32, i32* %7, align 4, !tbaa !3
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %6, align 4, !tbaa !3
  call void @mergeSortedArray(i32* %24, i32 %25, i32 %26, i32 %28, i32 %29)
  br label %30

; <label>:30:                                     ; preds = %12, %3
  %31 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @mergeSortedArray(i32*, i32, i32, i32, i32) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32], align 16
  store i32* %0, i32** %6, align 8, !tbaa !7
  store i32 %1, i32* %7, align 4, !tbaa !3
  store i32 %2, i32* %8, align 4, !tbaa !3
  store i32 %3, i32* %9, align 4, !tbaa !3
  store i32 %4, i32* %10, align 4, !tbaa !3
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %16, i32* %11, align 4, !tbaa !3
  %17 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i32, i32* %9, align 4, !tbaa !3
  store i32 %18, i32* %12, align 4, !tbaa !3
  %19 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %20, i32* %13, align 4, !tbaa !3
  %21 = bitcast [6 x i32]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %21) #3
  br label %22

; <label>:22:                                     ; preds = %66, %5
  %23 = load i32, i32* %11, align 4, !tbaa !3
  %24 = load i32, i32* %8, align 4, !tbaa !3
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %12, align 4, !tbaa !3
  %28 = load i32, i32* %10, align 4, !tbaa !3
  %29 = icmp sle i32 %27, %28
  br label %30

; <label>:30:                                     ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %67

; <label>:32:                                     ; preds = %30
  %33 = load i32*, i32** %6, align 8, !tbaa !7
  %34 = load i32, i32* %11, align 4, !tbaa !3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !3
  %38 = load i32*, i32** %6, align 8, !tbaa !7
  %39 = load i32, i32* %12, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !3
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %32
  %45 = load i32*, i32** %6, align 8, !tbaa !7
  %46 = load i32, i32* %11, align 4, !tbaa !3
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4, !tbaa !3
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !3
  %51 = load i32, i32* %13, align 4, !tbaa !3
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4, !tbaa !3
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %53
  store i32 %50, i32* %54, align 4, !tbaa !3
  br label %66

; <label>:55:                                     ; preds = %32
  %56 = load i32*, i32** %6, align 8, !tbaa !7
  %57 = load i32, i32* %12, align 4, !tbaa !3
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4, !tbaa !3
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !3
  %62 = load i32, i32* %13, align 4, !tbaa !3
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4, !tbaa !3
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %64
  store i32 %61, i32* %65, align 4, !tbaa !3
  br label %66

; <label>:66:                                     ; preds = %55, %44
  br label %22

; <label>:67:                                     ; preds = %30
  %68 = load i32, i32* %11, align 4, !tbaa !3
  %69 = load i32, i32* %8, align 4, !tbaa !3
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %88

; <label>:71:                                     ; preds = %67
  br label %72

; <label>:72:                                     ; preds = %76, %71
  %73 = load i32, i32* %12, align 4, !tbaa !3
  %74 = load i32, i32* %10, align 4, !tbaa !3
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %87

; <label>:76:                                     ; preds = %72
  %77 = load i32*, i32** %6, align 8, !tbaa !7
  %78 = load i32, i32* %12, align 4, !tbaa !3
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4, !tbaa !3
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !3
  %83 = load i32, i32* %13, align 4, !tbaa !3
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4, !tbaa !3
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %85
  store i32 %82, i32* %86, align 4, !tbaa !3
  br label %72

; <label>:87:                                     ; preds = %72
  br label %105

; <label>:88:                                     ; preds = %67
  br label %89

; <label>:89:                                     ; preds = %93, %88
  %90 = load i32, i32* %11, align 4, !tbaa !3
  %91 = load i32, i32* %8, align 4, !tbaa !3
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %104

; <label>:93:                                     ; preds = %89
  %94 = load i32*, i32** %6, align 8, !tbaa !7
  %95 = load i32, i32* %11, align 4, !tbaa !3
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4, !tbaa !3
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !3
  %100 = load i32, i32* %13, align 4, !tbaa !3
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4, !tbaa !3
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %102
  store i32 %99, i32* %103, align 4, !tbaa !3
  br label %89

; <label>:104:                                    ; preds = %89
  br label %105

; <label>:105:                                    ; preds = %104, %87
  %106 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %106, i32* %13, align 4, !tbaa !3
  br label %107

; <label>:107:                                    ; preds = %120, %105
  %108 = load i32, i32* %13, align 4, !tbaa !3
  %109 = load i32, i32* %10, align 4, !tbaa !3
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %123

; <label>:111:                                    ; preds = %107
  %112 = load i32, i32* %13, align 4, !tbaa !3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !3
  %116 = load i32*, i32** %6, align 8, !tbaa !7
  %117 = load i32, i32* %13, align 4, !tbaa !3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4, !tbaa !3
  br label %120

; <label>:120:                                    ; preds = %111
  %121 = load i32, i32* %13, align 4, !tbaa !3
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4, !tbaa !3
  br label %107

; <label>:123:                                    ; preds = %107
  %124 = bitcast [6 x i32]* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %124) #3
  %125 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #3
  %126 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %126) #3
  %127 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %127) #3
  ret void
}

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
