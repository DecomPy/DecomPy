; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_shaker_sort.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_sorting_shaker_sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @shakersort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 1, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %87, %2
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = load i32, i32* %4, align 4, !tbaa !7
  %12 = sdiv i32 %11, 2
  %13 = icmp sle i32 %10, %12
  br i1 %13, label %14, label %90

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %5, align 4, !tbaa !7
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %6, align 4, !tbaa !7
  br label %17

; <label>:17:                                     ; preds = %47, %14
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = load i32, i32* %4, align 4, !tbaa !7
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = sub nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

; <label>:23:                                     ; preds = %17
  %24 = load i32*, i32** %3, align 8, !tbaa !3
  %25 = load i32, i32* %6, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = load i32*, i32** %3, align 8, !tbaa !3
  %30 = load i32, i32* %6, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = icmp sgt i32 %28, %34
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %23
  %37 = load i32*, i32** %3, align 8, !tbaa !3
  %38 = load i32, i32* %6, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** %3, align 8, !tbaa !3
  %42 = load i32, i32* %6, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  call void @swap(i32* %40, i32* %45)
  br label %46

; <label>:46:                                     ; preds = %36, %23
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %6, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4, !tbaa !7
  br label %17

; <label>:50:                                     ; preds = %17
  %51 = load i32, i32* %4, align 4, !tbaa !7
  %52 = load i32, i32* %5, align 4, !tbaa !7
  %53 = sub nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %6, align 4, !tbaa !7
  br label %55

; <label>:55:                                     ; preds = %83, %50
  %56 = load i32, i32* %6, align 4, !tbaa !7
  %57 = load i32, i32* %5, align 4, !tbaa !7
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %86

; <label>:59:                                     ; preds = %55
  %60 = load i32*, i32** %3, align 8, !tbaa !3
  %61 = load i32, i32* %6, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !7
  %65 = load i32*, i32** %3, align 8, !tbaa !3
  %66 = load i32, i32* %6, align 4, !tbaa !7
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !7
  %71 = icmp slt i32 %64, %70
  br i1 %71, label %72, label %82

; <label>:72:                                     ; preds = %59
  %73 = load i32*, i32** %3, align 8, !tbaa !3
  %74 = load i32, i32* %6, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32*, i32** %3, align 8, !tbaa !3
  %78 = load i32, i32* %6, align 4, !tbaa !7
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  call void @swap(i32* %76, i32* %81)
  br label %82

; <label>:82:                                     ; preds = %72, %59
  br label %83

; <label>:83:                                     ; preds = %82
  %84 = load i32, i32* %6, align 4, !tbaa !7
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4, !tbaa !7
  br label %55

; <label>:86:                                     ; preds = %55
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %5, align 4, !tbaa !7
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:90:                                     ; preds = %9
  %91 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3
  %92 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %2)
  %8 = load i32, i32* %2, align 4, !tbaa !7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %22, %0
  %14 = load i32, i32* %5, align 4, !tbaa !7
  %15 = load i32, i32* %2, align 4, !tbaa !7
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %11, i64 %19
  %21 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %20)
  br label %22

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4, !tbaa !7
  br label %13

; <label>:25:                                     ; preds = %13
  %26 = load i32, i32* %2, align 4, !tbaa !7
  call void @shakersort(i32* %11, i32 %26)
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %37, %25
  %28 = load i32, i32* %5, align 4, !tbaa !7
  %29 = load i32, i32* %2, align 4, !tbaa !7
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %5, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %11, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !7
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %35)
  br label %37

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %5, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4, !tbaa !7
  br label %27

; <label>:40:                                     ; preds = %27
  store i32 0, i32* %1, align 4
  %41 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare i32 @printf(i8*, ...) #2

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
