; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-dynamic-buffer.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-dynamic-buffer.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@segments_per_character = constant [10 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1]], align 16
@segment_coordinates = constant [7 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1]], align 16
@.str = private unnamed_addr constant [38 x i8] c"Enter a string with up to %d digits: \00", align 1
@digits = common global [3 x [136 x i8]] zeroinitializer, align 16
@process_digit.display = private unnamed_addr constant [7 x i8] c"_||_||_", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #5
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5
  store i32 0, i32* %3, align 4, !tbaa !3
  call void @clear_digits_array()
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 34)
  br label %6

; <label>:6:                                      ; preds = %29, %0
  %7 = call i32 @getchar()
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %2, align 1, !tbaa !7
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = icmp slt i32 %12, 34
  br label %14

; <label>:14:                                     ; preds = %11, %6
  %15 = phi i1 [ false, %6 ], [ %13, %11 ]
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %14
  %17 = load i8, i8* %2, align 1, !tbaa !7
  %18 = sext i8 %17 to i32
  %19 = call i32 @isdigit(i32 %18) #6
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %2, align 1, !tbaa !7
  %23 = sext i8 %22 to i32
  %24 = sub nsw i32 %23, 48
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = mul nsw i32 4, %25
  call void @process_digit(i32 %24, i32 %26)
  %27 = load i32, i32* %3, align 4, !tbaa !3
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %21, %16
  br label %6

; <label>:30:                                     ; preds = %14
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = mul nsw i32 %31, 4
  call void @print_digits_array(i32 %32)
  store i32 0, i32* %1, align 4
  %33 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @clear_digits_array() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %27, %0
  %6 = load i32, i32* %1, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  store i32 2, i32* %2, align 4
  %9 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5
  br label %30

; <label>:10:                                     ; preds = %5
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %18, %10
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = icmp slt i32 %13, 136
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %12
  store i32 5, i32* %2, align 4
  %16 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5
  br label %26

; <label>:17:                                     ; preds = %12
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %1, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x [136 x i8]], [3 x [136 x i8]]* @digits, i64 0, i64 %20
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4, !tbaa !3
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [136 x i8], [136 x i8]* %21, i64 0, i64 %24
  store i8 32, i8* %25, align 1, !tbaa !7
  br label %12

; <label>:26:                                     ; preds = %15
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %1, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4, !tbaa !3
  br label %5

; <label>:30:                                     ; preds = %8
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isdigit(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = call i32 @__isctype(i32 %3, i64 1024)
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define void @process_digit(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [7 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %9 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7, i8* %9) #5
  %10 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @process_digit.display, i32 0, i32 0), i64 7, i1 false)
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %52, %2
  %15 = load i32, i32* %8, align 4, !tbaa !3
  %16 = icmp slt i32 %15, 7
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5
  br label %55

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x [7 x i32]], [10 x [7 x i32]]* @segments_per_character, i64 0, i64 %21
  %23 = load i32, i32* %8, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %8, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* @segment_coordinates, i64 0, i64 %30
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %32, align 8, !tbaa !3
  store i32 %33, i32* %6, align 4, !tbaa !3
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = load i32, i32* %8, align 4, !tbaa !3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* @segment_coordinates, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  %39 = load i32, i32* %38, align 4, !tbaa !3
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %7, align 4, !tbaa !3
  %41 = load i32, i32* %8, align 4, !tbaa !3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !7
  %45 = load i32, i32* %6, align 4, !tbaa !3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x [136 x i8]], [3 x [136 x i8]]* @digits, i64 0, i64 %46
  %48 = load i32, i32* %7, align 4, !tbaa !3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [136 x i8], [136 x i8]* %47, i64 0, i64 %49
  store i8 %44, i8* %50, align 1, !tbaa !7
  br label %51

; <label>:51:                                     ; preds = %28, %19
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %8, align 4, !tbaa !3
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4, !tbaa !3
  br label %14

; <label>:55:                                     ; preds = %17
  %56 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #5
  %57 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #5
  %58 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 7, i8* %58) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @print_digits_array(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %17, %1
  %6 = load i32, i32* %3, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5
  br label %20

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x [136 x i8]], [3 x [136 x i8]]* @digits, i64 0, i64 %13
  %15 = getelementptr inbounds [136 x i8], [136 x i8]* %14, i32 0, i32 0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %11, i8* %15)
  br label %17

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4, !tbaa !3
  br label %5

; <label>:20:                                     ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i64 %1, i64* %4, align 8, !tbaa !8
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = icmp sge i32 %8, 256
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %2
  br label %23

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !3
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %4, align 8, !tbaa !8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  br label %23

; <label>:23:                                     ; preds = %11, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %11 ]
  ret i32 %24
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !5, i64 0}
