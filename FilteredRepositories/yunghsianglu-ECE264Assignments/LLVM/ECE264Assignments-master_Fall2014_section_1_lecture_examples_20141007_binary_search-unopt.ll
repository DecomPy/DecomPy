; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141007_binary_search.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Fall2014_section_1_lecture_examples_20141007_binary_search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.haystack = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 10, i32 11], align 16
@.str = private unnamed_addr constant [13 x i8] c"%d is at %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @binary_search(i32, i32*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !7
  store i32 %2, i32* %8, align 4, !tbaa !3
  store i32 %3, i32* %9, align 4, !tbaa !3
  %12 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32, i32* %9, align 4, !tbaa !3
  %14 = load i32, i32* %8, align 4, !tbaa !3
  %15 = add nsw i32 %13, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %10, align 4, !tbaa !3
  %17 = load i32, i32* %8, align 4, !tbaa !3
  %18 = load i32, i32* %9, align 4, !tbaa !3
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

; <label>:20:                                     ; preds = %4
  %21 = load i32*, i32** %7, align 8, !tbaa !7
  %22 = load i32, i32* %8, align 4, !tbaa !3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !3
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %8, align 4, !tbaa !3
  br label %31

; <label>:30:                                     ; preds = %20
  br label %31

; <label>:31:                                     ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ -1, %30 ]
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %54

; <label>:33:                                     ; preds = %4
  %34 = load i32, i32* %6, align 4, !tbaa !3
  %35 = load i32*, i32** %7, align 8, !tbaa !7
  %36 = load i32, i32* %10, align 4, !tbaa !3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !3
  %40 = icmp sle i32 %34, %39
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %6, align 4, !tbaa !3
  %43 = load i32*, i32** %7, align 8, !tbaa !7
  %44 = load i32, i32* %8, align 4, !tbaa !3
  %45 = load i32, i32* %10, align 4, !tbaa !3
  %46 = call i32 @binary_search(i32 %42, i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %54

; <label>:47:                                     ; preds = %33
  %48 = load i32, i32* %6, align 4, !tbaa !3
  %49 = load i32*, i32** %7, align 8, !tbaa !7
  %50 = load i32, i32* %10, align 4, !tbaa !3
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %9, align 4, !tbaa !3
  %53 = call i32 @binary_search(i32 %48, i32* %49, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %54

; <label>:54:                                     ; preds = %47, %41, %31
  %55 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 2, i32* %2, align 4, !tbaa !3
  %7 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %7) #3
  %8 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @main.haystack to i8*), i64 24, i1 false)
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %28, %0
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %31

; <label>:13:                                     ; preds = %10
  %14 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !3
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 0
  %20 = call i32 @binary_search(i32 %18, i32* %19, i32 0, i32 5)
  store i32 %20, i32* %5, align 4, !tbaa !3
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !3
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %24, i32 %25)
  %27 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  br label %28

; <label>:28:                                     ; preds = %13
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4, !tbaa !3
  br label %10

; <label>:31:                                     ; preds = %10
  %32 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %33) #3
  %34 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
