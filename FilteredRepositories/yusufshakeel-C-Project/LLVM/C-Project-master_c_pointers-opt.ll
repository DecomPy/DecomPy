; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_pointers.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_pointers.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [28 x i8] c"char\09address: %u\09value: %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"int\09address: %u\09value: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"float\09address: %u\09value: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"double\09address: %u\09value: %lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"void\09address: %u\09value: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8 97, i8* %2, align 1
  store i32 123, i32* %3, align 4
  store float 0x4028AE1480000000, float* %4, align 4
  store double 0x405EDD3C07EE0B0B, double* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* %3, i32** %7, align 8
  store float* %4, float** %8, align 8
  store double* %5, double** %9, align 8
  %11 = bitcast i32* %3 to i8*
  store i8* %11, i8** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* %12, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32* %17, i32 %19)
  %21 = load float*, float** %8, align 8
  %22 = load float*, float** %8, align 8
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), float* %21, double %24)
  %26 = load double*, double** %9, align 8
  %27 = load double*, double** %9, align 8
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), double* %26, double %28)
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* %30, i32 %33)
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
