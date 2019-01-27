; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.11.xlat-phone.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.11.xlat-phone.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [21 x i8] c"Enter phone number: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"In numeric form: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [15 x i8], align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %52, %0
  %7 = call i32 @getchar()
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %55

; <label>:11:                                     ; preds = %6
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @toupper(i32 %13) #3
  switch i32 %14, label %47 [
    i32 65, label %15
    i32 66, label %15
    i32 67, label %15
    i32 68, label %19
    i32 69, label %19
    i32 70, label %19
    i32 71, label %23
    i32 72, label %23
    i32 73, label %23
    i32 74, label %27
    i32 75, label %27
    i32 76, label %27
    i32 77, label %31
    i32 78, label %31
    i32 79, label %31
    i32 80, label %35
    i32 81, label %35
    i32 82, label %35
    i32 83, label %35
    i32 84, label %39
    i32 85, label %39
    i32 86, label %39
    i32 87, label %43
    i32 88, label %43
    i32 89, label %43
    i32 90, label %43
  ]

; <label>:15:                                     ; preds = %11, %11, %11
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %17
  store i8 50, i8* %18, align 1
  br label %52

; <label>:19:                                     ; preds = %11, %11, %11
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %21
  store i8 51, i8* %22, align 1
  br label %52

; <label>:23:                                     ; preds = %11, %11, %11
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %25
  store i8 52, i8* %26, align 1
  br label %52

; <label>:27:                                     ; preds = %11, %11, %11
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %29
  store i8 53, i8* %30, align 1
  br label %52

; <label>:31:                                     ; preds = %11, %11, %11
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %33
  store i8 54, i8* %34, align 1
  br label %52

; <label>:35:                                     ; preds = %11, %11, %11, %11
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %37
  store i8 55, i8* %38, align 1
  br label %52

; <label>:39:                                     ; preds = %11, %11, %11
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %41
  store i8 56, i8* %42, align 1
  br label %52

; <label>:43:                                     ; preds = %11, %11, %11, %11
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %45
  store i8 57, i8* %46, align 1
  br label %52

; <label>:47:                                     ; preds = %11
  %48 = load i8, i8* %3, align 1
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

; <label>:52:                                     ; preds = %47, %43, %39, %35, %31, %27, %23, %19, %15
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %6

; <label>:55:                                     ; preds = %6
  %56 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i32 0, i32 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %56)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @getchar() #1

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
