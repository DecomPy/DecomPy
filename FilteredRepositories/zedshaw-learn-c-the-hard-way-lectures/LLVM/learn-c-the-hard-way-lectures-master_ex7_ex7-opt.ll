; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex7_ex7.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex7_ex7.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.first_name = private unnamed_addr constant [4 x i8] c"Zed\00", align 1
@main.last_name = private unnamed_addr constant [5 x i8] c"Shaw\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"You are %d miles away.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"You have %f levels of power.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"You have %f awesome super powers.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"I have an initial %c.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"I have a first name %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"I have a last name %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"My whole name is %s %c. %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"You have %d bugs at the imaginary rate of %f.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"The entire universe has %ld bugs.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"You are expected to have %f bugs.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"That is only a %e portion of the universe.\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Which means you should care %d%%.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %6, align 4
  store float 0x4002C28F60000000, float* %7, align 4
  store double 0x40EBBAAE809D4952, double* %8, align 8
  store i8 65, i8* %9, align 1
  %19 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @main.first_name, i32 0, i32 0), i64 4, i1 false)
  %20 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @main.last_name, i32 0, i32 0), i64 5, i1 false)
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 90, i8* %21, align 1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %22)
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), double %25)
  %27 = load double, double* %8, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), double %27)
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %30)
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i32 0, i32 0
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %32)
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i32 0, i32 0
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %34)
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i32 0, i32 0
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i32 0, i32 0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* %36, i32 %38, i8* %39)
  store i32 100, i32* %12, align 4
  store double 1.200000e+00, double* %13, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load double, double* %13, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 %41, double %42)
  store i64 1073741824, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i64 %44)
  %46 = load i32, i32* %12, align 4
  %47 = sitofp i32 %46 to double
  %48 = load double, double* %13, align 8
  %49 = fmul double %47, %48
  store double %49, double* %15, align 8
  %50 = load double, double* %15, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), double %50)
  %52 = load double, double* %15, align 8
  %53 = load i64, i64* %14, align 8
  %54 = sitofp i64 %53 to double
  %55 = fdiv double %52, %54
  store double %55, double* %16, align 8
  %56 = load double, double* %16, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), double %56)
  store i8 0, i8* %17, align 1
  %58 = load i32, i32* %12, align 4
  %59 = load i8, i8* %17, align 1
  %60 = sext i8 %59 to i32
  %61 = mul nsw i32 %58, %60
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i32 %62)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
