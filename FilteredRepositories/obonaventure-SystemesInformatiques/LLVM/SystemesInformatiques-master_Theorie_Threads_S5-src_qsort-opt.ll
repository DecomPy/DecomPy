; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_qsort.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Threads_S5-src_qsort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@array = global [5 x double] [double 1.000000e+00, double 7.320000e+00, double -3.430000e+00, double 0x4021666666666666, double 9.990000e+00], align 16
@.str = private unnamed_addr constant [13 x i8] c"array[i]:%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Avant qsort\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Apr\C3\A8s qsort\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_array() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 5
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x double], [5 x double]* @array, i64 0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %9)
  br label %11

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

; <label>:14:                                     ; preds = %2
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to double*
  store double* %9, double** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to double*
  store double* %11, double** %7, align 8
  %12 = load double*, double** %6, align 8
  %13 = load double, double* %12, align 8
  %14 = load double*, double** %7, align 8
  %15 = load double, double* %14, align 8
  %16 = fcmp oeq double %13, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

; <label>:18:                                     ; preds = %2
  %19 = load double*, double** %6, align 8
  %20 = load double, double* %19, align 8
  %21 = load double*, double** %7, align 8
  %22 = load double, double* %21, align 8
  %23 = fcmp olt double %20, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %26

; <label>:25:                                     ; preds = %18
  store i32 1, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %24, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  call void @print_array()
  call void @qsort(i8* bitcast ([5 x double]* @array to i8*), i64 5, i64 8, i32 (i8*, i8*)* @cmp)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  call void @print_array()
  ret i32 0
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
