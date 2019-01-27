; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_DictOrderFindFullArray_DictOrderFindFullArray.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_DictOrderFindFullArray_DictOrderFindFullArray.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.set = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @findj(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32, i32* %4, align 4, !tbaa !7
  %8 = sub nsw i32 %7, 2
  store i32 %8, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %27, %2
  %10 = load i32, i32* %5, align 4, !tbaa !7
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %9
  %13 = load i32*, i32** %3, align 8, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !7
  %18 = load i32*, i32** %3, align 8, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %12
  br label %30

; <label>:26:                                     ; preds = %12
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %5, align 4, !tbaa !7
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:30:                                     ; preds = %25, %9
  %31 = load i32, i32* %5, align 4, !tbaa !7
  %32 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  ret i32 %31
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @minestmax_inright(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %6, align 4, !tbaa !7
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %29, %3
  %12 = load i32, i32* %7, align 4, !tbaa !7
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %32

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %4, align 8, !tbaa !3
  %17 = load i32, i32* %7, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32*, i32** %4, align 8, !tbaa !3
  %22 = load i32, i32* %5, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %15
  br label %32

; <label>:28:                                     ; preds = %15
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:32:                                     ; preds = %27, %11
  %33 = load i32, i32* %7, align 4, !tbaa !7
  %34 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define void @reverse(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %10) #3
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 -1, i32* %8, align 4, !tbaa !7
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %13, i32* %9, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %28, %3
  %15 = load i32, i32* %9, align 4, !tbaa !7
  %16 = load i32, i32* %6, align 4, !tbaa !7
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

; <label>:18:                                     ; preds = %14
  %19 = load i32*, i32** %4, align 8, !tbaa !3
  %20 = load i32, i32* %9, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = load i32, i32* %8, align 4, !tbaa !7
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %26
  store i32 %23, i32* %27, align 4, !tbaa !7
  br label %28

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %9, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4, !tbaa !7
  br label %14

; <label>:31:                                     ; preds = %14
  %32 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %32, i32* %9, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %47, %31
  %34 = load i32, i32* %9, align 4, !tbaa !7
  %35 = load i32, i32* %6, align 4, !tbaa !7
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %8, align 4, !tbaa !7
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4, !tbaa !7
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = load i32*, i32** %4, align 8, !tbaa !3
  %44 = load i32, i32* %9, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4, !tbaa !7
  br label %47

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %9, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4, !tbaa !7
  br label %33

; <label>:50:                                     ; preds = %33
  %51 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  %53 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %53) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @displayarray(i32*, i32) #0 {
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

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @full_array(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32*, i32** %3, align 8, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !7
  call void @displayarray(i32* %11, i32 %12)
  br label %13

; <label>:13:                                     ; preds = %18, %2
  %14 = load i32*, i32** %3, align 8, !tbaa !3
  %15 = load i32, i32* %4, align 4, !tbaa !7
  %16 = call i32 @findj(i32* %14, i32 %15)
  store i32 %16, i32* %5, align 4, !tbaa !7
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %48

; <label>:18:                                     ; preds = %13
  %19 = load i32*, i32** %3, align 8, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = load i32, i32* %4, align 4, !tbaa !7
  %22 = call i32 @minestmax_inright(i32* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4, !tbaa !7
  %23 = load i32*, i32** %3, align 8, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  store i32 %27, i32* %7, align 4, !tbaa !7
  %28 = load i32*, i32** %3, align 8, !tbaa !3
  %29 = load i32, i32* %6, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = load i32*, i32** %3, align 8, !tbaa !3
  %34 = load i32, i32* %5, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4, !tbaa !7
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = load i32*, i32** %3, align 8, !tbaa !3
  %39 = load i32, i32* %6, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4, !tbaa !7
  %42 = load i32*, i32** %3, align 8, !tbaa !3
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %4, align 4, !tbaa !7
  call void @reverse(i32* %42, i32 %44, i32 %45)
  %46 = load i32*, i32** %3, align 8, !tbaa !3
  %47 = load i32, i32* %4, align 4, !tbaa !7
  call void @displayarray(i32* %46, i32 %47)
  br label %13

; <label>:48:                                     ; preds = %13
  %49 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  %51 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %4) #3
  %5 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([6 x i32]* @main.set to i8*), i64 24, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 6, i32* %3, align 4, !tbaa !7
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i32 0, i32 0
  %8 = load i32, i32* %3, align 4, !tbaa !7
  call void @full_array(i32* %7, i32 %8)
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3
  %10 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %10) #3
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
