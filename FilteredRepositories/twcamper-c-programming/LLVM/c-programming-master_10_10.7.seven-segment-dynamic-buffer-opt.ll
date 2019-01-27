; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-dynamic-buffer.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-dynamic-buffer.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@segments_per_character = constant [10 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1]], align 16
@segment_coordinates = constant [7 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1]], align 16
@.str = private unnamed_addr constant [38 x i8] c"Enter a string with up to %d digits: \00", align 1
@digits = common global [3 x [136 x i8]] zeroinitializer, align 16
@process_digit.display = private unnamed_addr constant [7 x i8] c"_||_||_", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  call void @clear_digits_array()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 34)
  br label %5

; <label>:5:                                      ; preds = %28, %0
  %6 = call i32 @getchar()
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 34
  br label %13

; <label>:13:                                     ; preds = %10, %5
  %14 = phi i1 [ false, %5 ], [ %12, %10 ]
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %2, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @isdigit(i32 %17) #4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %15
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 48
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 4, %24
  call void @process_digit(i32 %23, i32 %25)
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %20, %15
  br label %5

; <label>:29:                                     ; preds = %13
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, 4
  call void @print_digits_array(i32 %31)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @clear_digits_array() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %20, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %3
  store i32 0, i32* %2, align 4
  br label %7

; <label>:7:                                      ; preds = %11, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 136
  br i1 %9, label %10, label %19

; <label>:10:                                     ; preds = %7
  br label %11

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x [136 x i8]], [3 x [136 x i8]]* @digits, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [136 x i8], [136 x i8]* %14, i64 0, i64 %17
  store i8 32, i8* %18, align 1
  br label %7

; <label>:19:                                     ; preds = %7
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %3

; <label>:23:                                     ; preds = %3
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @getchar() #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @process_digit(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [7 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @process_digit.display, i32 0, i32 0), i64 7, i1 false)
  store i32 0, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %46, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %49

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x [7 x i32]], [10 x [7 x i32]]* @segments_per_character, i64 0, i64 %15
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* @segment_coordinates, i64 0, i64 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* @segment_coordinates, i64 0, i64 %30
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x [136 x i8]], [3 x [136 x i8]]* @digits, i64 0, i64 %40
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [136 x i8], [136 x i8]* %41, i64 0, i64 %43
  store i8 %38, i8* %44, align 1
  br label %45

; <label>:45:                                     ; preds = %22, %13
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %10

; <label>:49:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_digits_array(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %17

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x [136 x i8]], [3 x [136 x i8]]* @digits, i64 0, i64 %10
  %12 = getelementptr inbounds [136 x i8], [136 x i8]* %11, i32 0, i32 0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %8, i8* %12)
  br label %14

; <label>:14:                                     ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

; <label>:17:                                     ; preds = %4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
