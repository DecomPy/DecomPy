; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_selectionSort.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_selectionSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %14, %0
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %11
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %12)
  br label %14

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i32 0, i32 0
  call void @selectionSort(i32* %18, i32 5)
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %28, %17
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4, !tbaa !3
  br label %19

; <label>:31:                                     ; preds = %19
  %32 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %33) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @selectionSort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 1, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %82, %2
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = sub nsw i32 %17, 1
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %85

; <label>:20:                                     ; preds = %15
  %21 = load i32*, i32** %3, align 8, !tbaa !7
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !3
  store i32 %26, i32* %8, align 4, !tbaa !3
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %29, i32* %6, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %51, %20
  %31 = load i32, i32* %6, align 4, !tbaa !3
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = sub nsw i32 %32, 1
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %54

; <label>:35:                                     ; preds = %30
  %36 = load i32*, i32** %3, align 8, !tbaa !7
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !3
  %41 = load i32, i32* %8, align 4, !tbaa !3
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %50

; <label>:43:                                     ; preds = %35
  %44 = load i32*, i32** %3, align 8, !tbaa !7
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !3
  store i32 %48, i32* %8, align 4, !tbaa !3
  %49 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %49, i32* %7, align 4, !tbaa !3
  br label %50

; <label>:50:                                     ; preds = %43, %35
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %6, align 4, !tbaa !3
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4, !tbaa !3
  br label %30

; <label>:54:                                     ; preds = %30
  %55 = load i32, i32* %7, align 4, !tbaa !3
  %56 = load i32, i32* %5, align 4, !tbaa !3
  %57 = sub nsw i32 %56, 1
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %81

; <label>:59:                                     ; preds = %54
  %60 = load i32*, i32** %3, align 8, !tbaa !7
  %61 = load i32, i32* %5, align 4, !tbaa !3
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !3
  store i32 %65, i32* %9, align 4, !tbaa !3
  %66 = load i32*, i32** %3, align 8, !tbaa !7
  %67 = load i32, i32* %7, align 4, !tbaa !3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !3
  %71 = load i32*, i32** %3, align 8, !tbaa !7
  %72 = load i32, i32* %5, align 4, !tbaa !3
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4, !tbaa !3
  %76 = load i32, i32* %9, align 4, !tbaa !3
  %77 = load i32*, i32** %3, align 8, !tbaa !7
  %78 = load i32, i32* %7, align 4, !tbaa !3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4, !tbaa !3
  br label %81

; <label>:81:                                     ; preds = %59, %54
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %5, align 4, !tbaa !3
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:85:                                     ; preds = %15
  %86 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3
  %87 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3
  %88 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3
  %90 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
