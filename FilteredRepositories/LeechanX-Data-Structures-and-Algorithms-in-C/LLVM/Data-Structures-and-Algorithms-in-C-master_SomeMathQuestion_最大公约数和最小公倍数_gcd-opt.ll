; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_最大公约数和最小公倍数_gcd.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E6\9C\80\E5\A4\A7\E5\85\AC\E7\BA\A6\E6\95\B0\E5\92\8C\E6\9C\80\E5\B0\8F\E5\85\AC\E5\80\8D\E6\95\B0_gcd.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\E6\9C\80\E5\A4\A7\E5\85\AC\E7\BA\A6\E6\95\B0=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\E6\9C\80\E5\B0\8F\E5\85\AC\E5\80\8D\E6\95\B0=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @swap(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gcd(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @swap(i32* %3, i32* %4)
  br label %10

; <label>:10:                                     ; preds = %9, %2
  br label %11

; <label>:11:                                     ; preds = %16, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %4, align 4
  br label %11

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

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
  br label %10

; <label>:10:                                     ; preds = %13, %2
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* %6, i32* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @gcd(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %24)
  br label %10

; <label>:26:                                     ; preds = %10
  ret i32 0
}

declare i32 @scanf(i8*, ...) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
