; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-61.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-61.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [22 x i8] c"x=111...111 return 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"!(0x%X+1): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"wrong\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"x=000...000 return 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"!0x%X: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"x=_1111 1111_else return 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"(0x%X & (0xFF << ((sizeof(int)-1) << 3))) + (1 << ((sizeof(int)-1) << 3)): %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"x=else..._0000 0000_ return 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"!(0x%X & 0xFF): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ex2_61() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 32, i32* %2, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = add nsw i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %4, i8* %10)
  store i32 -2, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %12, i8* %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %21, i8* %26)
  store i32 1, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %28, i8* %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  store i32 -15584170, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 %38, 8
  %40 = shl i32 255, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* %2, align 4
  %43 = sub nsw i32 %42, 8
  %44 = shl i32 1, %43
  %45 = add nsw i32 %41, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0), i32 %36, i8* %49)
  store i32 -268435457, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %53, 8
  %55 = shl i32 255, %54
  %56 = and i32 %52, %55
  %57 = load i32, i32* %2, align 4
  %58 = sub nsw i32 %57, 8
  %59 = shl i32 1, %58
  %60 = add nsw i32 %56, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0), i32 %51, i8* %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 305419776, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = and i32 %68, 255
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 %67, i8* %73)
  store i32 305419777, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = and i32 %76, 255
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 %75, i8* %81)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
