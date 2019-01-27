; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_求平方根立方根_pingfangge.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E6\B1\82\E5\B9\B3\E6\96\B9\E6\A0\B9\E7\AB\8B\E6\96\B9\E6\A0\B9_pingfangge.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%d\E5\B9\B3\E6\96\B9\E6\A0\B9=%f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define double @myabs(double) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8, !tbaa !3
  %4 = load double, double* %3, align 8, !tbaa !3
  %5 = fcmp oge double %4, 0.000000e+00
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load double, double* %3, align 8, !tbaa !3
  store double %7, double* %2, align 8
  br label %11

; <label>:8:                                      ; preds = %1
  %9 = load double, double* %3, align 8, !tbaa !3
  %10 = fmul double %9, -1.000000e+00
  store double %10, double* %2, align 8
  br label %11

; <label>:11:                                     ; preds = %8, %6
  %12 = load double, double* %2, align 8
  ret double %12
}

; Function Attrs: nounwind ssp uwtable
define double @squareroot(i32, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store double %1, double* %4, align 8, !tbaa !3
  %6 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load i32, i32* %3, align 4, !tbaa !7
  %8 = sitofp i32 %7 to double
  store double %8, double* %5, align 8, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %19, %2
  %10 = load double, double* %5, align 8, !tbaa !3
  %11 = load double, double* %5, align 8, !tbaa !3
  %12 = fmul double %10, %11
  %13 = load i32, i32* %3, align 4, !tbaa !7
  %14 = sitofp i32 %13 to double
  %15 = fsub double %12, %14
  %16 = call double @myabs(double %15)
  %17 = load double, double* %4, align 8, !tbaa !3
  %18 = fcmp ogt double %16, %17
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %9
  %20 = load double, double* %5, align 8, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 1.000000e+00
  %24 = load double, double* %5, align 8, !tbaa !3
  %25 = fdiv double %23, %24
  %26 = fadd double %20, %25
  %27 = fdiv double %26, 2.000000e+00
  store double %27, double* %5, align 8, !tbaa !3
  br label %9

; <label>:28:                                     ; preds = %9
  %29 = load double, double* %5, align 8, !tbaa !3
  %30 = bitcast double* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #3
  ret double %29
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !9
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  store double 1.000000e-05, double* %7, align 8, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %13, %2
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %6)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %6, align 4, !tbaa !7
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = load double, double* %7, align 8, !tbaa !3
  %17 = call double @squareroot(i32 %15, double %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %14, double %17)
  br label %10

; <label>:19:                                     ; preds = %10
  %20 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #3
  %21 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  ret i32 0
}

declare i32 @scanf(i8*, ...) #2

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
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
