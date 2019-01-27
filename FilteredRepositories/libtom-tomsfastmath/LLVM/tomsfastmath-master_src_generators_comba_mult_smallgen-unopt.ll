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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %83, %2
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = icmp sle i32 %16, 16
  br i1 %17, label %18, label %86

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = load i32, i32* %6, align 4, !tbaa !3
  %21 = load i32, i32* %6, align 4, !tbaa !3
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.1, i32 0, i32 0), i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %71, %18
  %25 = load i32, i32* %7, align 4, !tbaa !3
  %26 = load i32, i32* %6, align 4, !tbaa !3
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = add nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %74

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %7, align 4, !tbaa !3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %32)
  %34 = load i32, i32* %7, align 4, !tbaa !3
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %31
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %38

; <label>:38:                                     ; preds = %36, %31
  store i32 0, i32* %8, align 4, !tbaa !3
  br label %39

; <label>:39:                                     ; preds = %65, %38
  %40 = load i32, i32* %8, align 4, !tbaa !3
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %68

; <label>:43:                                     ; preds = %39
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %44

; <label>:44:                                     ; preds = %61, %43
  %45 = load i32, i32* %9, align 4, !tbaa !3
  %46 = load i32, i32* %6, align 4, !tbaa !3
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %8, align 4, !tbaa !3
  %50 = load i32, i32* %9, align 4, !tbaa !3
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %7, align 4, !tbaa !3
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %8, align 4, !tbaa !3
  %56 = load i32, i32* %9, align 4, !tbaa !3
  %57 = load i32, i32* %6, align 4, !tbaa !3
  %58 = add nsw i32 %56, %57
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %55, i32 %58)
  br label %60

; <label>:60:                                     ; preds = %54, %48
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %9, align 4, !tbaa !3
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4, !tbaa !3
  br label %44

; <label>:64:                                     ; preds = %44
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %8, align 4, !tbaa !3
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4, !tbaa !3
  br label %39

; <label>:68:                                     ; preds = %39
  %69 = load i32, i32* %7, align 4, !tbaa !3
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 %69)
  br label %71

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %7, align 4, !tbaa !3
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4, !tbaa !3
  br label %24

; <label>:74:                                     ; preds = %24
  %75 = load i32, i32* %6, align 4, !tbaa !3
  %76 = load i32, i32* %6, align 4, !tbaa !3
  %77 = add nsw i32 %75, %76
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %6, align 4, !tbaa !3
  %80 = load i32, i32* %6, align 4, !tbaa !3
  %81 = add nsw i32 %79, %80
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i32 0, i32 0), i32 %78, i32 %81)
  br label %83

; <label>:83:                                     ; preds = %74
  %84 = load i32, i32* %6, align 4, !tbaa !3
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4, !tbaa !3
  br label %15

; <label>:86:                                     ; preds = %15
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0))
  %88 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #3
  %89 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #3
  %90 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #3
  %91 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #3
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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
