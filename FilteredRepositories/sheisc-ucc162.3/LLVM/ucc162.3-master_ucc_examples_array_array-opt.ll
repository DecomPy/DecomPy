; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_array_array.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_array_array.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [9 x i8] c"11111111\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"22222222\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"33333333\00", align 1
@str = global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], align 16
@a = global double 1.000000e+00, align 8
@b = global double 2.000000e+00, align 8
@c = global double 3.000000e+00, align 8
@fps = global [3 x [4 x double*]] [[4 x double*] [double* @a, double* @b, double* @c, double* @a], [4 x double*] [double* @b, double* @c, double* @a, double* @b], [4 x double*] [double* @c, double* @a, double* @b, double* @c]], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"%x %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x double*]*, align 8
  store i32 0, i32* %1, align 4
  store [4 x double*]* getelementptr inbounds ([3 x [4 x double*]], [3 x [4 x double*]]* @fps, i32 0, i32 0), [4 x double*]** %2, align 8
  %3 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @str, i64 0, i64 1), align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 2
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @str, i64 0, i64 1), align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 2
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %6, i32 %10)
  %12 = load double*, double** getelementptr inbounds ([3 x [4 x double*]], [3 x [4 x double*]]* @fps, i64 0, i64 1, i64 2), align 16
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = load double, double* %13, align 8
  %15 = load double*, double** getelementptr inbounds ([3 x [4 x double*]], [3 x [4 x double*]]* @fps, i64 0, i64 1, i64 2), align 16
  %16 = load double, double* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %14, double %16)
  %18 = load [4 x double*]*, [4 x double*]** %2, align 8
  %19 = getelementptr inbounds [4 x double*], [4 x double*]* %18, i64 1
  %20 = getelementptr inbounds [4 x double*], [4 x double*]* %19, i64 0, i64 2
  %21 = load double*, double** %20, align 8
  %22 = getelementptr inbounds double, double* %21, i64 0
  %23 = load double, double* %22, align 8
  %24 = load [4 x double*]*, [4 x double*]** %2, align 8
  %25 = getelementptr inbounds [4 x double*], [4 x double*]* %24, i64 1
  %26 = getelementptr inbounds [4 x double*], [4 x double*]* %25, i64 0, i64 2
  %27 = load double*, double** %26, align 8
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %23, double %28)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
