; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.9.inner-product.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.9.inner-product.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [16 x i8] c"Product: %3.8f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @inner_product(double*, double*, i32) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %9, align 8
  %10 = load double*, double** %4, align 8
  store double* %10, double** %7, align 8
  %11 = load double*, double** %5, align 8
  store double* %11, double** %8, align 8
  br label %12

; <label>:12:                                     ; preds = %36, %3
  %13 = load double*, double** %7, align 8
  %14 = load double*, double** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  %18 = icmp ult double* %13, %17
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %12
  %20 = load double*, double** %8, align 8
  %21 = load double*, double** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = icmp ult double* %20, %24
  br label %26

; <label>:26:                                     ; preds = %19, %12
  %27 = phi i1 [ false, %12 ], [ %25, %19 ]
  br i1 %27, label %28, label %41

; <label>:28:                                     ; preds = %26
  %29 = load double*, double** %7, align 8
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %8, align 8
  %32 = load double, double* %31, align 8
  %33 = fmul double %30, %32
  %34 = load double, double* %9, align 8
  %35 = fadd double %34, %33
  store double %35, double* %9, align 8
  br label %36

; <label>:36:                                     ; preds = %28
  %37 = load double*, double** %7, align 8
  %38 = getelementptr inbounds double, double* %37, i32 1
  store double* %38, double** %7, align 8
  %39 = load double*, double** %8, align 8
  %40 = getelementptr inbounds double, double* %39, i32 1
  store double* %40, double** %8, align 8
  br label %12

; <label>:41:                                     ; preds = %26
  %42 = load double, double* %9, align 8
  ret double %42
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x double], align 16
  %3 = alloca [5 x double], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x double]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = bitcast i8* %4 to [5 x double]*
  %6 = getelementptr inbounds [5 x double], [5 x double]* %5, i32 0, i32 0
  store double 1.000000e+00, double* %6, align 16
  %7 = getelementptr inbounds [5 x double], [5 x double]* %5, i32 0, i32 1
  store double 3.145000e+00, double* %7, align 8
  %8 = getelementptr inbounds [5 x double], [5 x double]* %5, i32 0, i32 2
  store double 0x401F333333333333, double* %8, align 16
  %9 = getelementptr inbounds [5 x double], [5 x double]* %5, i32 0, i32 3
  store double -2.205000e+01, double* %9, align 8
  %10 = getelementptr inbounds [5 x double], [5 x double]* %5, i32 0, i32 4
  store double 0x4058FF5C28F5C28F, double* %10, align 16
  %11 = bitcast [5 x double]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = bitcast i8* %11 to [5 x double]*
  %13 = getelementptr inbounds [5 x double], [5 x double]* %12, i32 0, i32 0
  store double 3.000000e+00, double* %13, align 16
  %14 = getelementptr inbounds [5 x double], [5 x double]* %12, i32 0, i32 1
  store double 1.150000e+00, double* %14, align 8
  %15 = getelementptr inbounds [5 x double], [5 x double]* %12, i32 0, i32 2
  store double 8.800000e+00, double* %15, align 16
  %16 = getelementptr inbounds [5 x double], [5 x double]* %12, i32 0, i32 3
  store double -2.205000e+01, double* %16, align 8
  %17 = getelementptr inbounds [5 x double], [5 x double]* %12, i32 0, i32 4
  store double 1.909900e+01, double* %17, align 16
  %18 = getelementptr inbounds [5 x double], [5 x double]* %2, i32 0, i32 0
  %19 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 0
  %20 = call double @inner_product(double* %18, double* %19, i32 5)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), double %20)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
