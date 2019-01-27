; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_shellSort.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_shellSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [13 x i8] c"Data Sorted\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [118 x i8] c"Shell Sort Big O Notation:\0A--> Best Case: O(n log(n))\0A--> Average Case: depends on gap sequence\0A--> Worst Case: O(n)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Time spent sorting: %f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @shellSort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load i32, i32* %4, align 4, !tbaa !7
  store i32 %10, i32* %5, align 4, !tbaa !7
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %5, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %81, %2
  %17 = load i32, i32* %5, align 4, !tbaa !7
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %84

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %20, i32* %6, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %77, %19
  %22 = load i32, i32* %6, align 4, !tbaa !7
  %23 = load i32, i32* %4, align 4, !tbaa !7
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %80

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = load i32, i32* %5, align 4, !tbaa !7
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %7, align 4, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %72, %25
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %76

; <label>:32:                                     ; preds = %29
  %33 = load i32*, i32** %3, align 8, !tbaa !3
  %34 = load i32, i32* %7, align 4, !tbaa !7
  %35 = load i32, i32* %5, align 4, !tbaa !7
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %40 = load i32*, i32** %3, align 8, !tbaa !3
  %41 = load i32, i32* %7, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !7
  %45 = icmp sge i32 %39, %44
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %32
  br label %76

; <label>:47:                                     ; preds = %32
  %48 = load i32*, i32** %3, align 8, !tbaa !3
  %49 = load i32, i32* %7, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !7
  store i32 %52, i32* %8, align 4, !tbaa !7
  %53 = load i32*, i32** %3, align 8, !tbaa !3
  %54 = load i32, i32* %7, align 4, !tbaa !7
  %55 = load i32, i32* %5, align 4, !tbaa !7
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !7
  %60 = load i32*, i32** %3, align 8, !tbaa !3
  %61 = load i32, i32* %7, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4, !tbaa !7
  %64 = load i32, i32* %8, align 4, !tbaa !7
  %65 = load i32*, i32** %3, align 8, !tbaa !3
  %66 = load i32, i32* %7, align 4, !tbaa !7
  %67 = load i32, i32* %5, align 4, !tbaa !7
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32 %64, i32* %70, align 4, !tbaa !7
  br label %71

; <label>:71:                                     ; preds = %47
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %7, align 4, !tbaa !7
  %74 = load i32, i32* %5, align 4, !tbaa !7
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %7, align 4, !tbaa !7
  br label %29

; <label>:76:                                     ; preds = %46, %29
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %6, align 4, !tbaa !7
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4, !tbaa !7
  br label %21

; <label>:80:                                     ; preds = %21
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %5, align 4, !tbaa !7
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %5, align 4, !tbaa !7
  br label %16

; <label>:84:                                     ; preds = %16
  %85 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #3
  %86 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3
  %87 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %9 = bitcast [20 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %9) #3
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 500, i32* %3, align 4, !tbaa !7
  %11 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %25, %0
  %13 = load i32, i32* %4, align 4, !tbaa !7
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %12
  %16 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3
  br label %28

; <label>:17:                                     ; preds = %12
  %18 = call i32 @rand()
  %19 = load i32, i32* %3, align 4, !tbaa !7
  %20 = srem i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %4, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 %23
  store i32 %21, i32* %24, align 4, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %4, align 4, !tbaa !7
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4, !tbaa !7
  br label %12

; <label>:28:                                     ; preds = %15
  %29 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3
  store i32 20, i32* %5, align 4, !tbaa !7
  %30 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = call i64 @"\01_clock"()
  store i64 %31, i64* %6, align 8, !tbaa !9
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i32 0, i32 0
  %33 = load i32, i32* %5, align 4, !tbaa !7
  call void @shellSort(i32* %32, i32 %33)
  %34 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #3
  %35 = call i64 @"\01_clock"()
  store i64 %35, i64* %7, align 8, !tbaa !9
  %36 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %36) #3
  %37 = load i64, i64* %7, align 8, !tbaa !9
  %38 = load i64, i64* %6, align 8, !tbaa !9
  %39 = sub i64 %37, %38
  %40 = uitofp i64 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  store double %41, double* %8, align 8, !tbaa !11
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i32 0, i32 0))
  %44 = load double, double* %8, align 8, !tbaa !11
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), double %44)
  %46 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #3
  %47 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #3
  %48 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #3
  %49 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast [20 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %51) #3
  ret i32 0
}

declare i32 @rand() #2

declare i64 @"\01_clock"() #2

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !5, i64 0}
