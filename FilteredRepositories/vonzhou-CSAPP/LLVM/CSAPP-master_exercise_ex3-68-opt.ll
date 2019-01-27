; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-68.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-68.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @good_echo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %7 = call i8* @fgets(i8* %5, i32 5, %struct.__sFILE* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %0
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %12 = call i32 @feof(%struct.__sFILE* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %25

; <label>:15:                                     ; preds = %10
  br label %24

; <label>:16:                                     ; preds = %0
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %19 = call i32 @"\01_fputs"(i8* %17, %struct.__sFILE* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %25

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %15
  store i32 0, i32* %1, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %22, %14
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

declare i32 @feof(%struct.__sFILE*) #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
