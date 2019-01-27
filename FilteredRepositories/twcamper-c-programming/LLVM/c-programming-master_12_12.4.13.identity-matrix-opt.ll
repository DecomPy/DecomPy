; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.13.identity-matrix.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.13.identity-matrix.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [12 x [12 x double]], align 16
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 12, i32* %4, align 4
  %5 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %2, i64 0, i64 0
  %6 = getelementptr inbounds [12 x double], [12 x double]* %5, i64 0, i64 0
  store double* %6, double** %3, align 8
  br label %7

; <label>:7:                                      ; preds = %22, %0
  %8 = load double*, double** %3, align 8
  %9 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %2, i64 0, i64 11
  %10 = getelementptr inbounds [12 x double], [12 x double]* %9, i64 0, i64 11
  %11 = icmp ule double* %8, %10
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %4, align 4
  %16 = load double*, double** %3, align 8
  store double 1.100000e+00, double* %16, align 8
  br label %21

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load double*, double** %3, align 8
  store double 0.000000e+00, double* %20, align 8
  br label %21

; <label>:21:                                     ; preds = %17, %15
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load double*, double** %3, align 8
  %24 = getelementptr inbounds double, double* %23, i32 1
  store double* %24, double** %3, align 8
  br label %7

; <label>:25:                                     ; preds = %7
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
