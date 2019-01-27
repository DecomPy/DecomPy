; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_array.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_array.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@max.matriceR = private unnamed_addr constant [2 x [3 x float]] [[3 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00], [3 x float] [float 4.000000e+00, float 5.000000e+00, float 6.000000e+00]], align 16
@main.vecteur = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@vecteur = common global [10 x i32] zeroinitializer, align 16
@matriceC = common global [10 x [10 x float]] zeroinitializer, align 16
@matriceR = common global [10 x [20 x float]] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define i32 @sum(i32*) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %4, align 4, !tbaa !7
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %18, %1
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %7
  %11 = load i32*, i32** %2, align 8, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = load i32, i32* %4, align 4, !tbaa !7
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %4, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %3, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4, !tbaa !7
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = load i32, i32* %4, align 4, !tbaa !7
  %23 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #2
  %24 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #2
  ret i32 %22
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sum2(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i32* %1, i32** %4, align 8, !tbaa !3
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = zext i32 %7 to i64
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %6, align 4, !tbaa !7
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %23, %2
  %12 = load i32, i32* %5, align 4, !tbaa !7
  %13 = load i32, i32* %3, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %4, align 8, !tbaa !3
  %17 = load i32, i32* %5, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %6, align 4, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %5, align 4, !tbaa !7
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4, !tbaa !7
  br label %11

; <label>:26:                                     ; preds = %11
  %27 = load i32, i32* %6, align 4, !tbaa !7
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #2
  %29 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #2
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define float @max() #0 {
  %1 = alloca [2 x [3 x float]], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = bitcast [2 x [3 x float]]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %5) #2
  %6 = bitcast [2 x [3 x float]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([2 x [3 x float]]* @max.matriceR to i8*), i64 24, i1 false)
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  %9 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  store float 0x47EFFFFFE0000000, float* %4, align 4, !tbaa !9
  store i32 0, i32* %2, align 4, !tbaa !7
  br label %10

; <label>:10:                                     ; preds = %40, %0
  %11 = load i32, i32* %2, align 4, !tbaa !7
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %43

; <label>:13:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %36, %13
  %15 = load i32, i32* %3, align 4, !tbaa !7
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %39

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %1, i64 0, i64 %19
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 %22
  %24 = load float, float* %23, align 4, !tbaa !9
  %25 = load float, float* %4, align 4, !tbaa !9
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %2, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %1, i64 0, i64 %29
  %31 = load i32, i32* %3, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x float], [3 x float]* %30, i64 0, i64 %32
  %34 = load float, float* %33, align 4, !tbaa !9
  store float %34, float* %4, align 4, !tbaa !9
  br label %35

; <label>:35:                                     ; preds = %27, %17
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %3, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4, !tbaa !7
  br label %14

; <label>:39:                                     ; preds = %14
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %2, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4, !tbaa !7
  br label %10

; <label>:43:                                     ; preds = %10
  %44 = load float, float* %4, align 4, !tbaa !9
  %45 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #2
  %46 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #2
  %47 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #2
  %48 = bitcast [2 x [3 x float]]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %48) #2
  ret float %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define float @max2(i32, float*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %3, align 4, !tbaa !7
  store float* %1, float** %4, align 8, !tbaa !3
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = zext i32 %10 to i64
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = bitcast float* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  store float 0.000000e+00, float* %7, align 4, !tbaa !9
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:15:                                     ; preds = %51, %2
  %16 = load i32, i32* %5, align 4, !tbaa !7
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %54

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %6, align 4, !tbaa !7
  br label %20

; <label>:20:                                     ; preds = %47, %19
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %50

; <label>:24:                                     ; preds = %20
  %25 = load float*, float** %4, align 8, !tbaa !3
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %11
  %29 = getelementptr inbounds float, float* %25, i64 %28
  %30 = load i32, i32* %6, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4, !tbaa !9
  %34 = load float, float* %7, align 4, !tbaa !9
  %35 = fcmp ogt float %33, %34
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %24
  %37 = load float*, float** %4, align 8, !tbaa !3
  %38 = load i32, i32* %5, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, %11
  %41 = getelementptr inbounds float, float* %37, i64 %40
  %42 = load i32, i32* %6, align 4, !tbaa !7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !9
  store float %45, float* %7, align 4, !tbaa !9
  br label %46

; <label>:46:                                     ; preds = %36, %24
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %6, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4, !tbaa !7
  br label %20

; <label>:50:                                     ; preds = %20
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %5, align 4, !tbaa !7
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4, !tbaa !7
  br label %15

; <label>:54:                                     ; preds = %15
  %55 = load float, float* %7, align 4, !tbaa !9
  %56 = bitcast float* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #2
  %57 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #2
  %58 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #2
  ret float %55
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %9 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %9) #2
  %10 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([10 x i32]* @main.vecteur to i8*), i64 40, i1 false)
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 0, i32* %8, align 4, !tbaa !7
  store i32 0, i32* %7, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %23, %2
  %14 = load i32, i32* %7, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %26

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32, i32* %8, align 4, !tbaa !7
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %8, align 4, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4, !tbaa !7
  br label %13

; <label>:26:                                     ; preds = %13
  %27 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #2
  %28 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #2
  %29 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %29) #2
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
!10 = !{!"float", !5, i64 0}
