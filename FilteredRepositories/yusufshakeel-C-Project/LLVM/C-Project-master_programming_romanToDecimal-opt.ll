; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_romanToDecimal.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_romanToDecimal.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@roman = global [8 x i8] c"IVXLCDM\00", align 1
@decimal = global [7 x i32] [i32 1, i32 5, i32 10, i32 50, i32 100, i32 500, i32 1000], align 16
@.str = private unnamed_addr constant [21 x i8] c"Enter Roman Number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Number = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), [10 x i8]* %5)
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %9 = call i64 @strlen(i8* %8)
  %10 = sub i64 %9, 1
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @indexOf(i8 signext %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %62, %0
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %67

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @indexOf(i8 signext %32)
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @indexOf(i8 signext %37)
  %39 = icmp sge i32 %33, %38
  br i1 %39, label %40, label %51

; <label>:40:                                     ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @indexOf(i8 signext %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %2, align 4
  br label %62

; <label>:51:                                     ; preds = %28
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @indexOf(i8 signext %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %2, align 4
  br label %62

; <label>:62:                                     ; preds = %51, %40
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  br label %25

; <label>:67:                                     ; preds = %25
  %68 = load i32, i32* %2, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %68)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @indexOf(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %23

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* @roman, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %8
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %24

; <label>:19:                                     ; preds = %8
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

; <label>:23:                                     ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
