; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-static-buffer.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_10_10.7.seven-segment-static-buffer.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@digit_tables = constant [10 x [3 x [3 x i8]]] [[3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"| |", [3 x i8] c"|_|"], [3 x [3 x i8]] [[3 x i8] c"   ", [3 x i8] c"  |", [3 x i8] c"  |"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c" _|", [3 x i8] c"|_ "], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c" _|", [3 x i8] c" _|"], [3 x [3 x i8]] [[3 x i8] c"   ", [3 x i8] c"|_|", [3 x i8] c"  |"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_ ", [3 x i8] c" _|"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_ ", [3 x i8] c"|_|"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"  |", [3 x i8] c"  |"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_|", [3 x i8] c"|_|"], [3 x [3 x i8]] [[3 x i8] c" _ ", [3 x i8] c"|_|", [3 x i8] c" _|"]], align 16
@.str = private unnamed_addr constant [33 x i8] c"Enter a number up to 10 digits: \00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" %.*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [255 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %8 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i32 0, i32 0
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %10 = call i8* @fgets(i8* %8, i32 255, %struct.__sFILE* %9)
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %58, %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %61

; <label>:14:                                     ; preds = %11
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %53, %14
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 10
  br label %25

; <label>:25:                                     ; preds = %22, %15
  %26 = phi i1 [ false, %15 ], [ %24, %22 ]
  br i1 %26, label %27, label %56

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 @isdigit(i32 %32) #3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x [3 x [3 x i8]]], [10 x [3 x [3 x i8]]]* @digit_tables, i64 0, i64 %43
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %44, i64 0, i64 %46
  %48 = getelementptr inbounds [3 x i8], [3 x i8]* %47, i32 0, i32 0
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

; <label>:52:                                     ; preds = %35, %27
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %15

; <label>:56:                                     ; preds = %25
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %58

; <label>:58:                                     ; preds = %56
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %11

; <label>:61:                                     ; preds = %11
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
