; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.13-ceasar-cipher.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.13-ceasar-cipher.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [32 x i8] c"Enter message to be encrypted: \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Enter shift amount (1-25): \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Encrypted message: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @encrypt(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %44, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %47

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @islower(i32 %12) #3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 97
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = srem i32 %21, 26
  %23 = add nsw i32 %22, 97
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %3, align 8
  store i8 %24, i8* %25, align 1
  br label %26

; <label>:26:                                     ; preds = %15, %9
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 @isupper(i32 %29) #3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 65
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %36, %37
  %39 = srem i32 %38, 26
  %40 = add nsw i32 %39, 65
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %3, align 8
  store i8 %41, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %32, %26
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %5

; <label>:47:                                     ; preds = %5
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @islower(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %22, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 80
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %7
  %11 = call i32 @getchar()
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 10
  br label %15

; <label>:15:                                     ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* %3, align 1
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

; <label>:25:                                     ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %30 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %5)
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  call void @encrypt(i8* %31, i32 %32)
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %33)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

declare i32 @scanf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
