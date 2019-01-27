; ModuleID = 'Repositories/libtom-tomsfastmath/Unfiltered/tomsfastmath-master_src_generators_comba_mult_smallgen.c'
source_filename = "Repositories/libtom-tomsfastmath/Unfiltered/tomsfastmath-master_src_generators_comba_mult_smallgen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [203 x i8] c"#define TFM_DEFINES\0A#include \22fp_mul_comba.c\22\0A\0A#if defined(TFM_SMALL_SET)\0Avoid fp_mul_comba_small(fp_int *A, fp_int *B, fp_int *C)\0A{\0A   fp_digit c0, c1, c2, at[32];\0A   switch (MAX(A->used, B->used)) { \0A\00", align 1
@.str.1 = private unnamed_addr constant [152 x i8] c"\0A   case %d:\0A      memcpy(at, A->dp, %d * sizeof(fp_digit));\0A      memcpy(at+%d, B->dp, %d * sizeof(fp_digit));\0A      COMBA_START;\0A\0A      COMBA_CLEAR;\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"      /* %d */\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"      COMBA_FORWARD;\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"      MULADD(at[%d], at[%d]); \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\0A      COMBA_STORE(C->dp[%d]);\0A\00", align 1
@.str.6 = private unnamed_addr constant [137 x i8] c"      COMBA_STORE2(C->dp[%d]);\0A      C->used = %d;\0A      C->sign = A->sign ^ B->sign;\0A      fp_clamp(C);\0A      COMBA_FINI;\0A      break;\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"   }\0A}\0A\0A#endif\0A\0A\0A/* $Source$ */\0A/* $Revision$ */\0A/* $Date$ */\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %79, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 16
  br i1 %13, label %14, label %82

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.1, i32 0, i32 0), i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

; <label>:20:                                     ; preds = %67, %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %70

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %32, %27
  store i32 0, i32* %8, align 4
  br label %35

; <label>:35:                                     ; preds = %61, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %64

; <label>:39:                                     ; preds = %35
  store i32 0, i32* %9, align 4
  br label %40

; <label>:40:                                     ; preds = %57, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %51, i32 %54)
  br label %56

; <label>:56:                                     ; preds = %50, %44
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %40

; <label>:60:                                     ; preds = %40
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %35

; <label>:64:                                     ; preds = %35
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 %65)
  br label %67

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %20

; <label>:70:                                     ; preds = %20
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i32 0, i32 0), i32 %74, i32 %77)
  br label %79

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %11

; <label>:82:                                     ; preds = %11
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0))
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
