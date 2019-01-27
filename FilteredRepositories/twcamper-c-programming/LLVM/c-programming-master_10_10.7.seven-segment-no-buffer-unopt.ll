; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-no-buffer.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-no-buffer.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [33 x i8] c"Enter a number up to %d digits: \00", align 1
@input = common global [255 x i8] zeroinitializer, align 16
@__stdinp = external global %struct.__sFILE*, align 8
@print_segment.segments = private unnamed_addr constant [10 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1]], align 16
@print_segment.display = private unnamed_addr constant [7 x i8] c"_||_||_", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 10)
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %4 = call i8* @fgets(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @input, i32 0, i32 0), i32 255, %struct.__sFILE* %3)
  call void @print_row(i32 -1, i32 0, i32 -1)
  call void @print_row(i32 5, i32 6, i32 1)
  call void @print_row(i32 4, i32 3, i32 2)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: nounwind ssp uwtable
define void @print_row(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5
  %11 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5
  store i32 0, i32* %7, align 4, !tbaa !7
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %13

; <label>:13:                                     ; preds = %50, %3
  %14 = load i32, i32* %7, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* @input, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !9
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %9, align 4, !tbaa !7
  %22 = icmp slt i32 %21, 10
  br label %23

; <label>:23:                                     ; preds = %20, %13
  %24 = phi i1 [ false, %13 ], [ %22, %20 ]
  br i1 %24, label %25, label %53

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %7, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* @input, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1, !tbaa !9
  %30 = sext i8 %29 to i32
  %31 = call i32 @isdigit(i32 %30) #6
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %7, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [255 x i8], [255 x i8]* @input, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 48
  store i32 %39, i32* %8, align 4, !tbaa !7
  %40 = load i32, i32* %4, align 4, !tbaa !7
  %41 = load i32, i32* %8, align 4, !tbaa !7
  call void @print_segment(i32 %40, i32 %41)
  %42 = load i32, i32* %5, align 4, !tbaa !7
  %43 = load i32, i32* %8, align 4, !tbaa !7
  call void @print_segment(i32 %42, i32 %43)
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = load i32, i32* %8, align 4, !tbaa !7
  call void @print_segment(i32 %44, i32 %45)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %47 = load i32, i32* %9, align 4, !tbaa !7
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4, !tbaa !7
  br label %49

; <label>:49:                                     ; preds = %33, %25
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %7, align 4, !tbaa !7
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4, !tbaa !7
  br label %13

; <label>:53:                                     ; preds = %23
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %55 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #5
  %56 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #5
  %57 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @print_segment(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x [7 x i32]], align 16
  %6 = alloca [7 x i8], align 1
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast [10 x [7 x i32]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* %7) #5
  %8 = bitcast [10 x [7 x i32]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([10 x [7 x i32]]* @print_segment.segments to i8*), i64 280, i1 false)
  %9 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 7, i8* %9) #5
  %10 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @print_segment.display, i32 0, i32 0), i64 7, i1 false)
  %11 = load i32, i32* %3, align 4, !tbaa !7
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x [7 x i32]], [10 x [7 x i32]]* %5, i64 0, i64 %15
  %17 = load i32, i32* %3, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %3, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %27)
  br label %31

; <label>:29:                                     ; preds = %13, %2
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %31

; <label>:31:                                     ; preds = %29, %22
  %32 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 7, i8* %32) #5
  %33 = bitcast [10 x [7 x i32]]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 280, i8* %33) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @isdigit(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__isctype(i32 %3, i64 1024)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32, i64) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !10
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = icmp sge i32 %8, 256
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %2
  br label %23

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %4, align 8, !tbaa !10
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
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
