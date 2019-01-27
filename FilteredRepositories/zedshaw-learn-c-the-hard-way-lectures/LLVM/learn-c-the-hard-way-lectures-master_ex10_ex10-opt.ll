; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex10_ex10.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex10_ex10.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [31 x i8] c"ERROR: You need one argument.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d: 'A'\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d: 'E'\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d: 'I'\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d: 'O'\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d: 'U'\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%d: 'Y'\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%d: %c is not a vowel\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %65

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %61, %12
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %64

; <label>:23:                                     ; preds = %13
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %7, align 1
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %55 [
    i32 97, label %33
    i32 65, label %33
    i32 101, label %36
    i32 69, label %36
    i32 105, label %39
    i32 73, label %39
    i32 111, label %42
    i32 79, label %42
    i32 117, label %45
    i32 85, label %45
    i32 121, label %48
    i32 89, label %48
  ]

; <label>:33:                                     ; preds = %23, %23
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %34)
  br label %60

; <label>:36:                                     ; preds = %23, %23
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %37)
  br label %60

; <label>:39:                                     ; preds = %23, %23
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 %40)
  br label %60

; <label>:42:                                     ; preds = %23, %23
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %43)
  br label %60

; <label>:45:                                     ; preds = %23, %23
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %46)
  br label %60

; <label>:48:                                     ; preds = %23, %23
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %52)
  br label %54

; <label>:54:                                     ; preds = %51, %48
  br label %60

; <label>:55:                                     ; preds = %23
  %56 = load i32, i32* %6, align 4
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %56, i32 %58)
  br label %60

; <label>:60:                                     ; preds = %55, %54, %45, %42, %39, %36, %33
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %13

; <label>:64:                                     ; preds = %13
  store i32 0, i32* %3, align 4
  br label %65

; <label>:65:                                     ; preds = %64, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
