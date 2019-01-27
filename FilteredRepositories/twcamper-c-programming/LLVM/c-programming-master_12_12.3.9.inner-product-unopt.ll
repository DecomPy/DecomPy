; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.9.inner-product.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.9.inner-product.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [16 x i8] c"Product: %3.8f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define double @inner_product(double*, double*, i32) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  store double* %0, double** %4, align 8, !tbaa !3
  store double* %1, double** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %10 = bitcast double** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  %11 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  %12 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  store double 0.000000e+00, double* %9, align 8, !tbaa !9
  %13 = load double*, double** %4, align 8, !tbaa !3
  store double* %13, double** %7, align 8, !tbaa !3
  %14 = load double*, double** %5, align 8, !tbaa !3
  store double* %14, double** %8, align 8, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %39, %3
  %16 = load double*, double** %7, align 8, !tbaa !3
  %17 = load double*, double** %4, align 8, !tbaa !3
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = icmp ult double* %16, %20
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %15
  %23 = load double*, double** %8, align 8, !tbaa !3
  %24 = load double*, double** %5, align 8, !tbaa !3
  %25 = load i32, i32* %6, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = icmp ult double* %23, %27
  br label %29

; <label>:29:                                     ; preds = %22, %15
  %30 = phi i1 [ false, %15 ], [ %28, %22 ]
  br i1 %30, label %31, label %44

; <label>:31:                                     ; preds = %29
  %32 = load double*, double** %7, align 8, !tbaa !3
  %33 = load double, double* %32, align 8, !tbaa !9
  %34 = load double*, double** %8, align 8, !tbaa !3
  %35 = load double, double* %34, align 8, !tbaa !9
  %36 = fmul double %33, %35
  %37 = load double, double* %9, align 8, !tbaa !9
  %38 = fadd double %37, %36
  store double %38, double* %9, align 8, !tbaa !9
  br label %39

; <label>:39:                                     ; preds = %31
  %40 = load double*, double** %7, align 8, !tbaa !3
  %41 = getelementptr inbounds double, double* %40, i32 1
  store double* %41, double** %7, align 8, !tbaa !3
  %42 = load double*, double** %8, align 8, !tbaa !3
  %43 = getelementptr inbounds double, double* %42, i32 1
  store double* %43, double** %8, align 8, !tbaa !3
  br label %15

; <label>:44:                                     ; preds = %29
  %45 = load double, double* %9, align 8, !tbaa !9
  %46 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #3
  %47 = bitcast double** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #3
  %48 = bitcast double** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #3
  ret double %45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x double], align 16
  %3 = alloca [5 x double], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x double]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %4) #3
  %5 = bitcast [5 x double]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false)
  %6 = bitcast i8* %5 to [5 x double]*
  %7 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 0
  store double 1.000000e+00, double* %7, align 16
  %8 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 1
  store double 3.145000e+00, double* %8, align 8
  %9 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 2
  store double 0x401F333333333333, double* %9, align 16
  %10 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 3
  store double -2.205000e+01, double* %10, align 8
  %11 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 4
  store double 0x4058FF5C28F5C28F, double* %11, align 16
  %12 = bitcast [5 x double]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %12) #3
  %13 = bitcast [5 x double]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x double]*
  %15 = getelementptr inbounds [5 x double], [5 x double]* %14, i32 0, i32 0
  store double 3.000000e+00, double* %15, align 16
  %16 = getelementptr inbounds [5 x double], [5 x double]* %14, i32 0, i32 1
  store double 1.150000e+00, double* %16, align 8
  %17 = getelementptr inbounds [5 x double], [5 x double]* %14, i32 0, i32 2
  store double 8.800000e+00, double* %17, align 16
  %18 = getelementptr inbounds [5 x double], [5 x double]* %14, i32 0, i32 3
  store double -2.205000e+01, double* %18, align 8
  %19 = getelementptr inbounds [5 x double], [5 x double]* %14, i32 0, i32 4
  store double 1.909900e+01, double* %19, align 16
  %20 = getelementptr inbounds [5 x double], [5 x double]* %2, i32 0, i32 0
  %21 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 0
  %22 = call double @inner_product(double* %20, double* %21, i32 5)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), double %22)
  %24 = bitcast [5 x double]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %24) #3
  %25 = bitcast [5 x double]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %25) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32 @printf(i8*, ...) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !5, i64 0}
