; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_求平方根立方根_lifanggen.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E6\B1\82\E5\B9\B3\E6\96\B9\E6\A0\B9\E7\AB\8B\E6\96\B9\E6\A0\B9_lifanggen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%d\E5\B9\B3\E6\96\B9\E6\A0\B9=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @myabs(double) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp oge double %4, 0.000000e+00
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load double, double* %3, align 8
  store double %7, double* %2, align 8
  br label %11

; <label>:8:                                      ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = fmul double %9, -1.000000e+00
  store double %10, double* %2, align 8
  br label %11

; <label>:11:                                     ; preds = %8, %6
  %12 = load double, double* %2, align 8
  ret double %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @squareroot(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sitofp i32 %6 to double
  store double %7, double* %5, align 8
  br label %8

; <label>:8:                                      ; preds = %20, %2
  %9 = load double, double* %5, align 8
  %10 = load double, double* %5, align 8
  %11 = fmul double %9, %10
  %12 = load double, double* %5, align 8
  %13 = fmul double %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = sitofp i32 %14 to double
  %16 = fsub double %13, %15
  %17 = call double @myabs(double %16)
  %18 = load double, double* %4, align 8
  %19 = fcmp ogt double %17, %18
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %8
  %21 = load double, double* %5, align 8
  %22 = fmul double 2.000000e+00, %21
  %23 = load i32, i32* %3, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double %24, 1.000000e+00
  %26 = load double, double* %5, align 8
  %27 = load double, double* %5, align 8
  %28 = fmul double %26, %27
  %29 = fdiv double %25, %28
  %30 = fadd double %22, %29
  %31 = fdiv double %30, 3.000000e+00
  store double %31, double* %5, align 8
  br label %8

; <label>:32:                                     ; preds = %8
  %33 = load double, double* %5, align 8
  ret double %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 1.000000e-05, double* %7, align 8
  br label %8

; <label>:8:                                      ; preds = %11, %2
  %9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %6)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load double, double* %7, align 8
  %15 = call double @squareroot(i32 %13, double %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %12, double %15)
  br label %8

; <label>:17:                                     ; preds = %8
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
