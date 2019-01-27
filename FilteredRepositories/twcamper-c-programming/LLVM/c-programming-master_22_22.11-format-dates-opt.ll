; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.11-format-dates.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_22_22.11-format-dates.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"January\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"February\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"March\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"April\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"June\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"July\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"August\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"September\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Octobre\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"November\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"December\00", align 1
@main.months = private unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [22 x i8] c"%2d%*[-/]%2d%*[-/]%4d\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"Invalid month: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%s %d, %4d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [13 x i8*], align 16
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %2
  call void @exit(i32 1) #4
  unreachable

; <label>:14:                                     ; preds = %2
  %15 = bitcast [13 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([13 x i8*]* @main.months to i8*), i64 104, i1 false)
  store i32 1, i32* %10, align 4
  br label %16

; <label>:16:                                     ; preds = %44, %14
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

; <label>:20:                                     ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, i8*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32* %6, i32* %7, i32* %8)
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 12
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %29, %20
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 %34)
  br label %44

; <label>:36:                                     ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [13 x i8*], [13 x i8*]* %9, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %40, i32 %41, i32 %42)
  br label %44

; <label>:44:                                     ; preds = %36, %32
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %16

; <label>:47:                                     ; preds = %16
  ret i32 0
}

; Function Attrs: noreturn
declare void @exit(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

declare i32 @sscanf(i8*, i8*, ...) #3

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
