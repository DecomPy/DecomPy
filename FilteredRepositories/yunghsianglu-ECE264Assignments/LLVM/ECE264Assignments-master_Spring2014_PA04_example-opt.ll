; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Spring2014_PA04_example.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Spring2014_PA04_example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"--serve-icecream\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown switch: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Usage: ./icecream OPTIONS...\0A   -i, --serve-icecream  Not as exciting as it sounds\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Do you get icecream? \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"YES!!!\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Sorry, try again next-time.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %52, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %55

; <label>:14:                                     ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %14
  store i32 1, i32* %6, align 4
  br label %51

; <label>:23:                                     ; preds = %14
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %23
  store i32 1, i32* %7, align 4
  br label %50

; <label>:32:                                     ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %32
  store i32 1, i32* %7, align 4
  br label %49

; <label>:41:                                     ; preds = %32
  store i32 1, i32* %8, align 4
  %42 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %47)
  br label %49

; <label>:49:                                     ; preds = %41, %40
  br label %50

; <label>:50:                                     ; preds = %49, %31
  br label %51

; <label>:51:                                     ; preds = %50, %22
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %10

; <label>:55:                                     ; preds = %10
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %55
  %59 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %60 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %75

; <label>:61:                                     ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %75

; <label>:66:                                     ; preds = %61
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %66
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  br label %74

; <label>:72:                                     ; preds = %66
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %74

; <label>:74:                                     ; preds = %72, %70
  store i32 0, i32* %3, align 4
  br label %75

; <label>:75:                                     ; preds = %74, %64, %58
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
