; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_fibonacciSearch.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_fibonacciSearch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.arr = private unnamed_addr constant [11 x i32] [i32 10, i32 22, i32 35, i32 40, i32 45, i32 50, i32 80, i32 82, i32 85, i32 90, i32 100], align 16
@.str = private unnamed_addr constant [19 x i8] c"Found at index: %d\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @fibMonaccianSearch(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  store i32 1, i32* %9, align 4, !tbaa !7
  %16 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = load i32, i32* %9, align 4, !tbaa !7
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4, !tbaa !7
  br label %20

; <label>:20:                                     ; preds = %24, %3
  %21 = load i32, i32* %10, align 4, !tbaa !7
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4, !tbaa !7
  store i32 %25, i32* %8, align 4, !tbaa !7
  %26 = load i32, i32* %10, align 4, !tbaa !7
  store i32 %26, i32* %9, align 4, !tbaa !7
  %27 = load i32, i32* %8, align 4, !tbaa !7
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4, !tbaa !7
  br label %20

; <label>:30:                                     ; preds = %20
  %31 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #3
  store i32 -1, i32* %11, align 4, !tbaa !7
  br label %32

; <label>:32:                                     ; preds = %89, %30
  %33 = load i32, i32* %10, align 4, !tbaa !7
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %90

; <label>:35:                                     ; preds = %32
  %36 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %11, align 4, !tbaa !7
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %7, align 4, !tbaa !7
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %35
  %44 = load i32, i32* %11, align 4, !tbaa !7
  %45 = load i32, i32* %8, align 4, !tbaa !7
  %46 = add nsw i32 %44, %45
  br label %50

; <label>:47:                                     ; preds = %35
  %48 = load i32, i32* %7, align 4, !tbaa !7
  %49 = sub nsw i32 %48, 1
  br label %50

; <label>:50:                                     ; preds = %47, %43
  %51 = phi i32 [ %46, %43 ], [ %49, %47 ]
  store i32 %51, i32* %12, align 4, !tbaa !7
  %52 = load i32*, i32** %5, align 8, !tbaa !3
  %53 = load i32, i32* %12, align 4, !tbaa !7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !7
  %57 = load i32, i32* %6, align 4, !tbaa !7
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %66

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %9, align 4, !tbaa !7
  store i32 %60, i32* %10, align 4, !tbaa !7
  %61 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %61, i32* %9, align 4, !tbaa !7
  %62 = load i32, i32* %10, align 4, !tbaa !7
  %63 = load i32, i32* %9, align 4, !tbaa !7
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %8, align 4, !tbaa !7
  %65 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %65, i32* %11, align 4, !tbaa !7
  br label %85

; <label>:66:                                     ; preds = %50
  %67 = load i32*, i32** %5, align 8, !tbaa !3
  %68 = load i32, i32* %12, align 4, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !7
  %72 = load i32, i32* %6, align 4, !tbaa !7
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %66
  %75 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %75, i32* %10, align 4, !tbaa !7
  %76 = load i32, i32* %9, align 4, !tbaa !7
  %77 = load i32, i32* %8, align 4, !tbaa !7
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %9, align 4, !tbaa !7
  %79 = load i32, i32* %10, align 4, !tbaa !7
  %80 = load i32, i32* %9, align 4, !tbaa !7
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %8, align 4, !tbaa !7
  br label %84

; <label>:82:                                     ; preds = %66
  %83 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %86

; <label>:84:                                     ; preds = %74
  br label %85

; <label>:85:                                     ; preds = %84, %59
  store i32 0, i32* %13, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %82
  %87 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = load i32, i32* %13, align 4
  switch i32 %88, label %106 [
    i32 0, label %89
  ]

; <label>:89:                                     ; preds = %86
  br label %32

; <label>:90:                                     ; preds = %32
  %91 = load i32, i32* %9, align 4, !tbaa !7
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

; <label>:93:                                     ; preds = %90
  %94 = load i32*, i32** %5, align 8, !tbaa !3
  %95 = load i32, i32* %11, align 4, !tbaa !7
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !7
  %100 = load i32, i32* %6, align 4, !tbaa !7
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %93
  %103 = load i32, i32* %11, align 4, !tbaa !7
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %106

; <label>:105:                                    ; preds = %93, %90
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %106

; <label>:106:                                    ; preds = %105, %102, %86
  %107 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #3
  %108 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #3
  %109 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %109) #3
  %110 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #3
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* %5) #3
  %6 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([11 x i32]* @main.arr to i8*), i64 44, i1 false)
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 11, i32* %3, align 4, !tbaa !7
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 85, i32* %4, align 4, !tbaa !7
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i32 0, i32 0
  %10 = load i32, i32* %4, align 4, !tbaa !7
  %11 = load i32, i32* %3, align 4, !tbaa !7
  %12 = call i32 @fibMonaccianSearch(i32* %9, i32 %10, i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %12)
  %14 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  %16 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 44, i8* %16) #3
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
