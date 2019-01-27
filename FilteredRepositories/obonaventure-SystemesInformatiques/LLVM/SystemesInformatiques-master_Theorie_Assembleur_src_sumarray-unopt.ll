; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_sumarray.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_sumarray.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.timeval = type { i64, i32 }

@matrix = common global [10000 x [10000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i64 @timeval_diff(%struct.timeval*, %struct.timeval*) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8, !tbaa !3
  store %struct.timeval* %1, %struct.timeval** %4, align 8, !tbaa !3
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load %struct.timeval*, %struct.timeval** %3, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = load %struct.timeval*, %struct.timeval** %3, align 8, !tbaa !3
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !11
  %14 = mul nsw i64 1000000, %13
  %15 = add nsw i64 %10, %14
  %16 = load %struct.timeval*, %struct.timeval** %4, align 8, !tbaa !3
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = load %struct.timeval*, %struct.timeval** %4, align 8, !tbaa !3
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !11
  %23 = mul nsw i64 1000000, %22
  %24 = add nsw i64 %19, %23
  %25 = sub nsw i64 %15, %24
  store i64 %25, i64* %5, align 8, !tbaa !12
  %26 = load i64, i64* %5, align 8, !tbaa !12
  %27 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #3
  ret i64 %26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @sum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %1, align 4, !tbaa !13
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %2, align 4, !tbaa !13
  br label %7

; <label>:7:                                      ; preds = %33, %0
  %8 = load i32, i32* %2, align 4, !tbaa !13
  %9 = icmp slt i32 %8, 10000
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %7
  store i32 2, i32* %3, align 4
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  br label %36

; <label>:12:                                     ; preds = %7
  %13 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %4, align 4, !tbaa !13
  br label %14

; <label>:14:                                     ; preds = %29, %12
  %15 = load i32, i32* %4, align 4, !tbaa !13
  %16 = icmp slt i32 %15, 10000
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  store i32 5, i32* %3, align 4
  %18 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  br label %32

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %2, align 4, !tbaa !13
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10000 x [10000 x i32]], [10000 x [10000 x i32]]* @matrix, i64 0, i64 %21
  %23 = load i32, i32* %4, align 4, !tbaa !13
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10000 x i32], [10000 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !13
  %27 = load i32, i32* %1, align 4, !tbaa !13
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %1, align 4, !tbaa !13
  br label %29

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %4, align 4, !tbaa !13
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4, !tbaa !13
  br label %14

; <label>:32:                                     ; preds = %17
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %2, align 4, !tbaa !13
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4, !tbaa !13
  br label %7

; <label>:36:                                     ; preds = %10
  %37 = load i32, i32* %1, align 4, !tbaa !13
  store i32 1, i32* %3, align 4
  %38 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  ret i32 %37
}

; Function Attrs: nounwind ssp uwtable
define i32 @sum2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  store i32 0, i32* %1, align 4, !tbaa !13
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %2, align 4, !tbaa !13
  br label %7

; <label>:7:                                      ; preds = %33, %0
  %8 = load i32, i32* %2, align 4, !tbaa !13
  %9 = icmp slt i32 %8, 10000
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %7
  store i32 2, i32* %3, align 4
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3
  br label %36

; <label>:12:                                     ; preds = %7
  %13 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %4, align 4, !tbaa !13
  br label %14

; <label>:14:                                     ; preds = %29, %12
  %15 = load i32, i32* %4, align 4, !tbaa !13
  %16 = icmp slt i32 %15, 10000
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  store i32 5, i32* %3, align 4
  %18 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  br label %32

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %4, align 4, !tbaa !13
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10000 x [10000 x i32]], [10000 x [10000 x i32]]* @matrix, i64 0, i64 %21
  %23 = load i32, i32* %2, align 4, !tbaa !13
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10000 x i32], [10000 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !13
  %27 = load i32, i32* %1, align 4, !tbaa !13
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %1, align 4, !tbaa !13
  br label %29

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %4, align 4, !tbaa !13
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4, !tbaa !13
  br label %14

; <label>:32:                                     ; preds = %17
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %2, align 4, !tbaa !13
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4, !tbaa !13
  br label %7

; <label>:36:                                     ; preds = %10
  %37 = load i32, i32* %1, align 4, !tbaa !13
  store i32 1, i32* %3, align 4
  %38 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3
  ret i32 %37
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !13
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %6, align 4, !tbaa !13
  br label %10

; <label>:10:                                     ; preds = %33, %2
  %11 = load i32, i32* %6, align 4, !tbaa !13
  %12 = icmp slt i32 %11, 10000
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %10
  store i32 2, i32* %7, align 4
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  br label %36

; <label>:15:                                     ; preds = %10
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %8, align 4, !tbaa !13
  br label %17

; <label>:17:                                     ; preds = %29, %15
  %18 = load i32, i32* %8, align 4, !tbaa !13
  %19 = icmp slt i32 %18, 10000
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %17
  store i32 5, i32* %7, align 4
  %21 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  br label %32

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %6, align 4, !tbaa !13
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10000 x [10000 x i32]], [10000 x [10000 x i32]]* @matrix, i64 0, i64 %24
  %26 = load i32, i32* %8, align 4, !tbaa !13
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10000 x i32], [10000 x i32]* %25, i64 0, i64 %27
  store i32 1, i32* %28, align 4, !tbaa !13
  br label %29

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %8, align 4, !tbaa !13
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4, !tbaa !13
  br label %17

; <label>:32:                                     ; preds = %20
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %6, align 4, !tbaa !13
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4, !tbaa !13
  br label %10

; <label>:36:                                     ; preds = %13
  %37 = call i32 @sum()
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %37)
  %39 = call i32 @sum2()
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %39)
  ret i32 0
}

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
!7 = !{!8, !10, i64 8}
!8 = !{!"timeval", !9, i64 0, !10, i64 8}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!10, !10, i64 0}
