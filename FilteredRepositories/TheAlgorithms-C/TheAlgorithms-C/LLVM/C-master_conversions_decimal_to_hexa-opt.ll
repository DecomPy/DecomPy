; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_decimal_to_hexa.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_conversions_decimal_to_hexa.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [23 x i8] c"Enter decimal number: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64* %2)
  %5 = load i64, i64* %2, align 8
  call void @decimal2Hexadecimal(i64 %5)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @decimal2Hexadecimal(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %4, align 8
  br label %11

; <label>:11:                                     ; preds = %35, %1
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %4, align 8
  %16 = srem i64 %15, 16
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %17, 10
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 48, %20
  %22 = trunc i64 %21 to i8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %25
  store i8 %22, i8* %26, align 1
  br label %35

; <label>:27:                                     ; preds = %14
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 55, %28
  %30 = trunc i64 %29 to i8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %27, %19
  %36 = load i64, i64* %4, align 8
  %37 = sdiv i64 %36, 16
  store i64 %37, i64* %4, align 8
  br label %11

; <label>:38:                                     ; preds = %11
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %6, align 4
  br label %40

; <label>:40:                                     ; preds = %50, %38
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %53

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %48)
  br label %50

; <label>:50:                                     ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  br label %40

; <label>:53:                                     ; preds = %40
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
