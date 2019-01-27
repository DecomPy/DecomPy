; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.3.10.array_value_functions.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.3.10.array_value_functions.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.array = private unnamed_addr constant [10 x i32] [i32 12, i32 31, i32 0, i32 15, i32 2, i32 99, i32 1024, i32 8, i32 512, i32 -299], align 16
@.str = private unnamed_addr constant [9 x i8] c"Max: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Average: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Positive count: %d of %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [10 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %4) #3
  %5 = bitcast [10 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([10 x i32]* @main.array to i8*), i64 40, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 10, i32* %3, align 4, !tbaa !3
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 0
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = call i32 @max(i32* %7, i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %9)
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 0
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = call i32 @avg(i32* %11, i32 %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %13)
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 0
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = call i32 @positive_count(i32* %15, i32 %16)
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %17, i32 %18)
  %20 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  %21 = bitcast [10 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %21) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @max(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32*, i32** %3, align 8, !tbaa !7
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4, !tbaa !3
  store i32 %11, i32* %6, align 4, !tbaa !3
  store i32 1, i32* %5, align 4, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %31, %2
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %3, align 8, !tbaa !7
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %16
  %25 = load i32*, i32** %3, align 8, !tbaa !7
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !3
  store i32 %29, i32* %6, align 4, !tbaa !3
  br label %30

; <label>:30:                                     ; preds = %24, %16
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4, !tbaa !3
  br label %12

; <label>:34:                                     ; preds = %12
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define i32 @avg(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %21, %2
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %3, align 8, !tbaa !7
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %6, align 4, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:24:                                     ; preds = %9
  %25 = load i32, i32* %6, align 4, !tbaa !3
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = sdiv i32 %25, %26
  %28 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  %29 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define i32 @positive_count(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %24, %2
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %3, align 8, !tbaa !7
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !3
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %20, %13
  br label %24

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !3
  br label %9

; <label>:27:                                     ; preds = %9
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  ret i32 %28
}

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
