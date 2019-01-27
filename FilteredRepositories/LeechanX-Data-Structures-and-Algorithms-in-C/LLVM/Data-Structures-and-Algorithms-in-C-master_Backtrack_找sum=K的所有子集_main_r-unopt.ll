; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_找sum=K的所有子集_main_r.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E6\89\BEsum=K\E7\9A\84\E6\89\80\E6\9C\89\E5\AD\90\E9\9B\86_main_r.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.set = private unnamed_addr constant [8 x i32] [i32 7, i32 5, i32 1, i32 2, i32 8, i32 4, i32 3, i32 10], align 16

; Function Attrs: nounwind ssp uwtable
define void @displayoutcome(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %28, %3
  %10 = load i32, i32* %7, align 4, !tbaa !7
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %4, align 8, !tbaa !3
  %15 = load i32, i32* %7, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %13
  %21 = load i32*, i32** %5, align 8, !tbaa !3
  %22 = load i32, i32* %7, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %25)
  br label %27

; <label>:27:                                     ; preds = %20, %13
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %7, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4, !tbaa !7
  br label %9

; <label>:31:                                     ; preds = %9
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sum(i32*, i32, i32*) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32* %2, i32** %6, align 8, !tbaa !3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %8, align 4, !tbaa !7
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %31, %3
  %12 = load i32, i32* %7, align 4, !tbaa !7
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %4, align 8, !tbaa !3
  %17 = load i32, i32* %7, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %15
  %23 = load i32*, i32** %6, align 8, !tbaa !3
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32, i32* %8, align 4, !tbaa !7
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %8, align 4, !tbaa !7
  br label %30

; <label>:30:                                     ; preds = %22, %15
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:34:                                     ; preds = %11
  %35 = load i32, i32* %8, align 4, !tbaa !7
  %36 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define void @backtrace(i32*, i32, i32*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32 %3, i32* %8, align 4, !tbaa !7
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32*, i32** %5, align 8, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !7
  %15 = load i32*, i32** %7, align 8, !tbaa !3
  %16 = call i32 @sum(i32* %13, i32 %14, i32* %15)
  store i32 %16, i32* %9, align 4, !tbaa !7
  %17 = load i32, i32* %9, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %4
  %20 = load i32*, i32** %5, align 8, !tbaa !3
  %21 = load i32*, i32** %7, align 8, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !7
  call void @displayoutcome(i32* %20, i32* %21, i32 %22)
  store i32 1, i32* %10, align 4
  br label %52

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %6, align 4, !tbaa !7
  %25 = load i32, i32* %8, align 4, !tbaa !7
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = icmp sgt i32 %28, 9
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27, %23
  store i32 1, i32* %10, align 4
  br label %52

; <label>:31:                                     ; preds = %27
  %32 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #3
  store i32 0, i32* %11, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %47, %31
  %34 = load i32, i32* %11, align 4, !tbaa !7
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %50

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4, !tbaa !7
  %38 = load i32*, i32** %5, align 8, !tbaa !3
  %39 = load i32, i32* %6, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4, !tbaa !7
  %42 = load i32*, i32** %5, align 8, !tbaa !3
  %43 = load i32, i32* %6, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  %45 = load i32*, i32** %7, align 8, !tbaa !3
  %46 = load i32, i32* %8, align 4, !tbaa !7
  call void @backtrace(i32* %42, i32 %44, i32* %45, i32 %46)
  br label %47

; <label>:47:                                     ; preds = %36
  %48 = load i32, i32* %11, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4, !tbaa !7
  br label %33

; <label>:50:                                     ; preds = %33
  %51 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  store i32 0, i32* %10, align 4
  br label %52

; <label>:52:                                     ; preds = %50, %30, %19
  %53 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

; <label>:55:                                     ; preds = %52, %52
  ret void

; <label>:56:                                     ; preds = %52
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %5) #3
  %6 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @main.set to i8*), i64 32, i1 false)
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 8, i32* %2, align 4, !tbaa !7
  %8 = load i32, i32* %2, align 4, !tbaa !7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i32 0, i32 0
  %13 = load i32, i32* %2, align 4, !tbaa !7
  call void @backtrace(i32* %11, i32 0, i32* %12, i32 %13)
  %14 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %14)
  %15 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  %16 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %16) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

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
