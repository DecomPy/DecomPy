; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_16_16.1.4.type-complex.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_16_16.1.4.type-complex.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.complex = type { double, double }

; Function Attrs: noinline nounwind optnone ssp uwtable
define { double, double } @make_complex(double, double) #0 {
  %3 = alloca %struct.complex, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %6 = getelementptr inbounds %struct.complex, %struct.complex* %3, i32 0, i32 0
  %7 = load double, double* %4, align 8
  store double %7, double* %6, align 8
  %8 = getelementptr inbounds %struct.complex, %struct.complex* %3, i32 0, i32 1
  %9 = load double, double* %5, align 8
  store double %9, double* %8, align 8
  %10 = bitcast %struct.complex* %3 to { double, double }*
  %11 = load { double, double }, { double, double }* %10, align 8
  ret { double, double } %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define { double, double } @add_complex(double, double, double, double) #0 {
  %5 = alloca %struct.complex, align 8
  %6 = alloca %struct.complex, align 8
  %7 = alloca %struct.complex, align 8
  %8 = bitcast %struct.complex* %6 to { double, double }*
  %9 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  store double %0, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  store double %1, double* %10, align 8
  %11 = bitcast %struct.complex* %7 to { double, double }*
  %12 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  store double %2, double* %12, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  store double %3, double* %13, align 8
  %14 = getelementptr inbounds %struct.complex, %struct.complex* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.complex, %struct.complex* %6, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.complex, %struct.complex* %7, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fadd double %16, %18
  store double %19, double* %14, align 8
  %20 = getelementptr inbounds %struct.complex, %struct.complex* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.complex, %struct.complex* %6, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds %struct.complex, %struct.complex* %7, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fadd double %22, %24
  store double %25, double* %20, align 8
  %26 = bitcast %struct.complex* %5 to { double, double }*
  %27 = load { double, double }, { double, double }* %26, align 8
  ret { double, double } %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
