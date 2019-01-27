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

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([553 x i8], [553 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %2, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %86, %0
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = icmp sle i32 %10, 16
  br i1 %11, label %12, label %89

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = icmp sgt i32 %13, 16
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = icmp ne i32 %16, 32
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = icmp ne i32 %19, 48
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = icmp ne i32 %22, 64
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  br label %86

; <label>:25:                                     ; preds = %21, %18, %15, %12
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = icmp sgt i32 %26, 16
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = load i32, i32* %2, align 4, !tbaa !3
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %31)
  store i32 0, i32* %3, align 4, !tbaa !3
  br label %33

; <label>:33:                                     ; preds = %76, %30
  %34 = load i32, i32* %3, align 4, !tbaa !3
  %35 = load i32, i32* %2, align 4, !tbaa !3
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %3, align 4, !tbaa !3
  %39 = load i32, i32* %3, align 4, !tbaa !3
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i32 0, i32 0), i32 %38, i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %42

; <label>:42:                                     ; preds = %49, %37
  %43 = load i32, i32* %4, align 4, !tbaa !3
  %44 = add nsw i32 %43, 8
  %45 = load i32, i32* %2, align 4, !tbaa !3
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0))
  br label %49

; <label>:49:                                     ; preds = %47
  %50 = load i32, i32* %4, align 4, !tbaa !3
  %51 = add nsw i32 %50, 8
  store i32 %51, i32* %4, align 4, !tbaa !3
  br label %42

; <label>:52:                                     ; preds = %42
  br label %53

; <label>:53:                                     ; preds = %59, %52
  %54 = load i32, i32* %4, align 4, !tbaa !3
  %55 = load i32, i32* %2, align 4, !tbaa !3
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %53
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %57
  %60 = load i32, i32* %4, align 4, !tbaa !3
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4, !tbaa !3
  br label %53

; <label>:62:                                     ; preds = %53
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %64

; <label>:64:                                     ; preds = %70, %62
  %65 = load i32, i32* %4, align 4, !tbaa !3
  %66 = load i32, i32* %2, align 4, !tbaa !3
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %73

; <label>:68:                                     ; preds = %64
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %70

; <label>:70:                                     ; preds = %68
  %71 = load i32, i32* %4, align 4, !tbaa !3
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4, !tbaa !3
  br label %64

; <label>:73:                                     ; preds = %64
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i32 0, i32 0))
  br label %76

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %3, align 4, !tbaa !3
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4, !tbaa !3
  br label %33

; <label>:79:                                     ; preds = %33
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  %81 = load i32, i32* %2, align 4, !tbaa !3
  %82 = icmp sgt i32 %81, 16
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %79
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %85

; <label>:85:                                     ; preds = %83, %79
  br label %86

; <label>:86:                                     ; preds = %85, %24
  %87 = load i32, i32* %2, align 4, !tbaa !3
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4, !tbaa !3
  br label %9

; <label>:89:                                     ; preds = %9
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.12, i32 0, i32 0))
  %91 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3
  %92 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #3
  %93 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
