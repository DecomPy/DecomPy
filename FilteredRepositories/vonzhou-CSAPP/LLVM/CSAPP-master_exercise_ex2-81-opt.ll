; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-81.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-81.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [38 x i8] c"(x > INT_MIN) == (-x < -INT_MIN): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"((x + y) << 5) + x - y == 31 * y + 33 * x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"~x + ~y == ~(x + y): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"(int)(ux - uy) == -(y - x): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"((x >> 1) << 1) <= x: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i64 @random()
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = call i64 @random()
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, -2147483648
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp slt i32 %16, -2147483648
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %22, %23
  %25 = shl i32 %24, 5
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 31, %30
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 33, %32
  %34 = add nsw i32 %31, %33
  %35 = icmp eq i32 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = xor i32 %40, -1
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = icmp eq i32 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %2, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %52, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = ashr i32 %60, 1
  %62 = shl i32 %61, 1
  %63 = load i32, i32* %2, align 4
  %64 = icmp sle i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i32 %65)
  ret i32 0
}

declare i64 @random() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
