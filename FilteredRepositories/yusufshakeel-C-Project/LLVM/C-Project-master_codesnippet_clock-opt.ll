; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_clock.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_clock.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"Start Time: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"End Time: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Total Time: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %6 = call i64 @"\01_clock"()
  store i64 %6, i64* %2, align 8
  store i64 0, i64* %4, align 8
  br label %7

; <label>:7:                                      ; preds = %11, %0
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 1000000000
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %7
  br label %11

; <label>:11:                                     ; preds = %10
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %4, align 8
  br label %7

; <label>:14:                                     ; preds = %7
  %15 = call i64 @"\01_clock"()
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = sub i64 %16, %17
  %19 = uitofp i64 %18 to double
  %20 = fdiv double %19, 1.000000e+06
  store double %20, double* %5, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 %23)
  %25 = load double, double* %5, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), double %25)
  ret i32 0
}

declare i64 @"\01_clock"() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
