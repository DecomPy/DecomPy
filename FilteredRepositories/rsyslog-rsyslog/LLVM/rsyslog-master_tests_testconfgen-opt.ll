; ModuleID = 'Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_tests_testconfgen.c'
source_filename = "Repositories/rsyslog-rsyslog/Unfiltered/rsyslog-master_tests_testconfgen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"name:\00", align 1
@arr = internal global [128 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@name = internal global [128 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%s %[^\0A]s\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"problem scanning entry %d, scanned %d\0A\00", align 1
@stmt = internal global [128 x i8*] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"name: %s, stmt: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"read %d entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @output(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* @arr, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [128 x i8*], [128 x i8*]* @name, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %19)
  br label %21

; <label>:21:                                     ; preds = %15, %9
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

; <label>:25:                                     ; preds = %5
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pows(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4
  call void @output(i32 %8)
  br label %22

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [128 x i32], [128 x i32]* @arr, i64 0, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  call void @pows(i32 %15, i32 %16)
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* @arr, i64 0, i64 %18
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  call void @pows(i32 %20, i32 %21)
  br label %22

; <label>:22:                                     ; preds = %9, %7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

; <label>:10:                                     ; preds = %31, %2
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %12 = call i32 @feof(%struct.__sFILE* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %47

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %18 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %16, i8* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %15
  br label %47

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %22
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %27, i32 %28)
  call void @exit(i32 1) #3
  unreachable

; <label>:30:                                     ; preds = %22
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %33 = call i8* @strdup(i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x i8*], [128 x i8*]* @name, i64 0, i64 %35
  store i8* %33, i8** %36, align 8
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %38 = call i8* @strdup(i8* %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [128 x i8*], [128 x i8*]* @stmt, i64 0, i64 %40
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* %44, i8* %45)
  br label %10

; <label>:47:                                     ; preds = %21, %10
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  call void @pows(i32 %50, i32 %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare i32 @feof(%struct.__sFILE*) #1

declare i32 @scanf(i8*, ...) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
