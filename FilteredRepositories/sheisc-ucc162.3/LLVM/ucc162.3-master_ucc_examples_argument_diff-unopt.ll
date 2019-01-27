; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_argument_diff.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_argument_diff.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@arr = global [3 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00], align 4

; Function Attrs: nounwind ssp uwtable
define void @f(double, double, double) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = fptrunc double %0 to float
  %8 = fptrunc double %1 to float
  %9 = fptrunc double %2 to float
  store float %7, float* %4, align 4, !tbaa !3
  store float %8, float* %5, align 4, !tbaa !3
  store float %9, float* %6, align 4, !tbaa !3
  %10 = load float, float* %4, align 4, !tbaa !3
  %11 = fpext float %10 to double
  %12 = load float, float* %5, align 4, !tbaa !3
  %13 = fpext float %12 to double
  %14 = load float, float* %6, align 4, !tbaa !3
  %15 = fpext float %14 to double
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), double %11, double %13, double %15)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @g(float, float, float) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4, !tbaa !3
  store float %1, float* %5, align 4, !tbaa !3
  store float %2, float* %6, align 4, !tbaa !3
  %7 = load float, float* %4, align 4, !tbaa !3
  %8 = fpext float %7 to double
  %9 = load float, float* %5, align 4, !tbaa !3
  %10 = fpext float %9 to double
  %11 = load float, float* %6, align 4, !tbaa !3
  %12 = fpext float %11 to double
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), double %8, double %10, double %12)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !9
  %7 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  store i32* bitcast ([3 x float]* @arr to i32*), i32** %6, align 8, !tbaa !9
  %8 = load i32*, i32** %6, align 8, !tbaa !9
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = sitofp i32 %10 to double
  %12 = load i32*, i32** %6, align 8, !tbaa !9
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = sitofp i32 %14 to double
  %16 = load i32*, i32** %6, align 8, !tbaa !9
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = sitofp i32 %18 to double
  call void @f(double %11, double %15, double %19)
  call void @f(double 1.000000e+00, double 2.000000e+00, double 3.000000e+00)
  %20 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
