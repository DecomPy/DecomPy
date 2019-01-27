; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Other_Binary_Search.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Other_Binary_Search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.array = private unnamed_addr constant [5 x i32] [i32 5, i32 8, i32 10, i32 14, i32 16], align 16
@.str = private unnamed_addr constant [37 x i8] c"The number %d doesnt exist in array\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"The number %d exist in array at position : %d \0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @binarySearch(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 -1, i32* %8, align 4, !tbaa !7
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %11, align 4, !tbaa !7
  store i32 0, i32* %10, align 4, !tbaa !7
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4, !tbaa !7
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %19

; <label>:19:                                     ; preds = %53, %3
  %20 = load i32, i32* %11, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %10, align 4, !tbaa !7
  %25 = load i32, i32* %9, align 4, !tbaa !7
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %8, align 4, !tbaa !7
  %28 = load i32*, i32** %5, align 8, !tbaa !3
  %29 = load i32, i32* %8, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = load i32, i32* %7, align 4, !tbaa !7
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %57

; <label>:37:                                     ; preds = %23
  %38 = load i32*, i32** %5, align 8, !tbaa !3
  %39 = load i32, i32* %8, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = load i32, i32* %7, align 4, !tbaa !7
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %37
  %46 = load i32, i32* %8, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4, !tbaa !7
  br label %51

; <label>:48:                                     ; preds = %37
  %49 = load i32, i32* %8, align 4, !tbaa !7
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4, !tbaa !7
  br label %51

; <label>:51:                                     ; preds = %48, %45
  br label %52

; <label>:52:                                     ; preds = %51
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %11, align 4, !tbaa !7
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4, !tbaa !7
  br label %19

; <label>:56:                                     ; preds = %19
  store i32 0, i32* %12, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %35
  %58 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #3
  %59 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %65 [
    i32 0, label %63
    i32 1, label %63
  ]

; <label>:63:                                     ; preds = %57, %57
  %64 = load i32, i32* %4, align 4
  ret i32 %64

; <label>:65:                                     ; preds = %57
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i8** %1, i8*** %4, align 8, !tbaa !3
  %7 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %7) #3
  %8 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x i32]* @main.array to i8*), i64 20, i1 false)
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %11 = call i32 @binarySearch(i32* %10, i32 5, i32 5)
  store i32 %11, i32* %6, align 4, !tbaa !7
  %12 = load i32, i32* %6, align 4, !tbaa !7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 5)
  br label %19

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 %17)
  br label %19

; <label>:19:                                     ; preds = %16, %14
  %20 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  %21 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %21) #3
  ret void
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
