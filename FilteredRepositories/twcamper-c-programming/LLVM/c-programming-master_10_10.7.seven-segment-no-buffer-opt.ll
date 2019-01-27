; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-no-buffer.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-no-buffer.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Enter a number up to %d digits: \00", align 1
@input = common global [255 x i8] zeroinitializer, align 16
@__stdinp = external global %struct.__sFILE*, align 8
@print_segment.segments = private unnamed_addr constant [10 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1]], align 16
@print_segment.display = private unnamed_addr constant [7 x i8] c"_||_||_", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 10)
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %4 = call i8* @fgets(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @input, i32 0, i32 0), i32 255, %struct.__sFILE* %3)
  call void @print_row(i32 -1, i32 0, i32 -1)
  call void @print_row(i32 5, i32 6, i32 1)
  call void @print_row(i32 4, i32 3, i32 2)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_row(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %47, %3
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [255 x i8], [255 x i8]* @input, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 10
  br label %20

; <label>:20:                                     ; preds = %17, %10
  %21 = phi i1 [ false, %10 ], [ %19, %17 ]
  br i1 %21, label %22, label %50

; <label>:22:                                     ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [255 x i8], [255 x i8]* @input, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @isdigit(i32 %27) #4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* @input, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 48
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %8, align 4
  call void @print_segment(i32 %37, i32 %38)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  call void @print_segment(i32 %39, i32 %40)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  call void @print_segment(i32 %41, i32 %42)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

; <label>:46:                                     ; preds = %30, %22
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %10

; <label>:50:                                     ; preds = %20
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_segment(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x [7 x i32]], align 16
  %6 = alloca [7 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast [10 x [7 x i32]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([10 x [7 x i32]]* @print_segment.segments to i8*), i64 280, i1 false)
  %8 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @print_segment.display, i32 0, i32 0), i64 7, i1 false)
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %27

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x [7 x i32]], [10 x [7 x i32]]* %5, i64 0, i64 %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %25)
  br label %29

; <label>:27:                                     ; preds = %11, %2
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %27, %20
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
