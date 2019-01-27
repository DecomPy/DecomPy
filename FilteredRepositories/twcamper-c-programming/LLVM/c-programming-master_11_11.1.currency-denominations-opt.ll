; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.1.currency-denominations.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.1.currency-denominations.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [24 x i8] c"Enter a dollar amount: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"$20 bills: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"$10 bills: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"$5 bills: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"$1 bills: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %9 = load i32, i32* %2, align 4
  call void @pay_amount(i32 %9, i32* %3, i32* %4, i32* %5, i32* %6)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %16)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @pay_amount(i32, i32*, i32*, i32*, i32*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sdiv i32 %12, 20
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = srem i32 %15, 20
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sdiv i32 %17, 10
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = srem i32 %20, 10
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %22, 5
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = srem i32 %25, 5
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
