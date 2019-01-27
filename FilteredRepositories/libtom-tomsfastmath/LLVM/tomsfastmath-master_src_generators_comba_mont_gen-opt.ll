; ModuleID = 'Repositories/libtom-tomsfastmath/Unfiltered/tomsfastmath-master_src_generators_comba_mont_gen.c'
source_filename = "Repositories/libtom-tomsfastmath/Unfiltered/tomsfastmath-master_src_generators_comba_mont_gen.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [553 x i8] c"#ifdef TFM_SMALL_SET\0A/* computes x/R == x (mod N) via Montgomery Reduction */\0Avoid fp_montgomery_reduce_small(fp_int *a, fp_int *m, fp_digit mp)\0A{\0A   fp_digit c[FP_SIZE], *_c, *tmpm, mu, cy;\0A   int      oldused, x, y, pa;\0A\0A#if defined(USE_MEMSET)\0A   /* now zero the buff */\0A   memset(c, 0, sizeof c);\0A#endif\0A   pa = m->used;\0A\0A   /* copy the input */\0A   oldused = a->used;\0A   for (x = 0; x < oldused; x++) {\0A       c[x] = a->dp[x];\0A   }\0A#if !defined(USE_MEMSET)\0A   for (; x < 2*pa+3; x++) {\0A       c[x] = 0;\0A   }\0A#endif\0A   MONT_START;\0A\0A   switch (pa) {\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#ifdef TFM_HUGE\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"      case %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"            x = %d; cy   = 0;\0A            LOOP_START;\0A            _c   = c + %d;\0A            tmpm = m->dp;\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"#ifdef INNERMUL8\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"            INNERMUL8; _c += 8; tmpm += 8;\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"            INNERMUL; ++_c;\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"            LOOP_END;\0A            while (cy) {\0A               PROPCARRY;\0A               ++_c;\0A            }\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"         break;\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"#endif /* TFM_HUGE */\0A\00", align 1
@.str.12 = private unnamed_addr constant [326 x i8] c"  }\0A  /* now copy out */\0A  _c   = c + pa;\0A  tmpm = a->dp;\0A  for (x = 0; x < pa+1; x++) {\0A     *tmpm++ = *_c++;\0A  }\0A\0A  for (; x < oldused; x++)   {\0A     *tmpm++ = 0;\0A  }\0A\0A  MONT_FINI;\0A\0A  a->used = pa+1;\0A  fp_clamp(a);\0A\0A  /* if A >= m then A = A - m */\0A  if (fp_cmp_mag (a, m) != FP_LT) {\0A    s_fp_sub (a, m, a);\0A  }\0A}\0A\0A#endif\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([553 x i8], [553 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %2, align 4
  br label %6

; <label>:6:                                      ; preds = %83, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 16
  br i1 %8, label %9, label %86

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 16
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 32
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 48
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 64
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  br label %83

; <label>:22:                                     ; preds = %18, %15, %12, %9
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %27

; <label>:27:                                     ; preds = %25, %22
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %73, %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %76

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i32 0, i32 0), i32 %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %39

; <label>:39:                                     ; preds = %46, %34
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 8
  %42 = load i32, i32* %2, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %49

; <label>:44:                                     ; preds = %39
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0))
  br label %46

; <label>:46:                                     ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 8
  store i32 %48, i32* %4, align 4
  br label %39

; <label>:49:                                     ; preds = %39
  br label %50

; <label>:50:                                     ; preds = %56, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %50
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %56

; <label>:56:                                     ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %50

; <label>:59:                                     ; preds = %50
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %61

; <label>:61:                                     ; preds = %67, %59
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %67

; <label>:67:                                     ; preds = %65
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %61

; <label>:70:                                     ; preds = %61
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i32 0, i32 0))
  br label %73

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %30

; <label>:76:                                     ; preds = %30
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  %78 = load i32, i32* %2, align 4
  %79 = icmp sgt i32 %78, 16
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %76
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %82

; <label>:82:                                     ; preds = %80, %76
  br label %83

; <label>:83:                                     ; preds = %82, %21
  %84 = load i32, i32* %2, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %2, align 4
  br label %6

; <label>:86:                                     ; preds = %6
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.12, i32 0, i32 0))
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
