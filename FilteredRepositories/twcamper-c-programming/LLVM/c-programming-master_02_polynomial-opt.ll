; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_polynomial.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_polynomial.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [35 x i8] c"3x^5 + 2x^4 - 5x^3 - x^2 + x7 - 6\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Enter a value for x: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"result: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Horner's rule: ((((3x + 2)x - 5)x - 1)x + 7)x - 6\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 3, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 2, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %2, align 4
  %35 = mul nsw i32 5, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %2, align 4
  %45 = mul nsw i32 7, %44
  store i32 %45, i32* %9, align 4
  store i32 6, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  %59 = load i32, i32* %2, align 4
  %60 = mul nsw i32 3, %59
  %61 = add nsw i32 %60, 2
  %62 = load i32, i32* %2, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 %63, 5
  %65 = load i32, i32* %2, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %2, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %69, 7
  %71 = load i32, i32* %2, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sub nsw i32 %72, 6
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %74)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
