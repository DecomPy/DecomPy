; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_array_array.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_array_array.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [9 x i8] c"11111111\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"22222222\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"33333333\00", align 1
@str = global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], align 16
@a = global double 1.000000e+00, align 8
@b = global double 2.000000e+00, align 8
@c = global double 3.000000e+00, align 8
@fps = global [3 x [4 x double*]] [[4 x double*] [double* @a, double* @b, double* @c, double* @a], [4 x double*] [double* @b, double* @c, double* @a, double* @b], [4 x double*] [double* @c, double* @a, double* @b, double* @c]], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"%x %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x double*]*, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast [4 x double*]** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  store [4 x double*]* getelementptr inbounds ([3 x [4 x double*]], [3 x [4 x double*]]* @fps, i32 0, i32 0), [4 x double*]** %2, align 8, !tbaa !3
  %4 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @str, i64 0, i64 1), align 8, !tbaa !3
  %5 = getelementptr inbounds i8, i8* %4, i64 2
  %6 = load i8, i8* %5, align 1, !tbaa !7
  %7 = sext i8 %6 to i32
  %8 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @str, i64 0, i64 1), align 8, !tbaa !3
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %11 = sext i8 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %7, i32 %11)
  %13 = load double*, double** getelementptr inbounds ([3 x [4 x double*]], [3 x [4 x double*]]* @fps, i64 0, i64 1, i64 2), align 16, !tbaa !3
  %14 = getelementptr inbounds double, double* %13, i64 0
  %15 = load double, double* %14, align 8, !tbaa !8
  %16 = load double*, double** getelementptr inbounds ([3 x [4 x double*]], [3 x [4 x double*]]* @fps, i64 0, i64 1, i64 2), align 16, !tbaa !3
  %17 = load double, double* %16, align 8, !tbaa !8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %15, double %17)
  %19 = load [4 x double*]*, [4 x double*]** %2, align 8, !tbaa !3
  %20 = getelementptr inbounds [4 x double*], [4 x double*]* %19, i64 1
  %21 = getelementptr inbounds [4 x double*], [4 x double*]* %20, i64 0, i64 2
  %22 = load double*, double** %21, align 8, !tbaa !3
  %23 = getelementptr inbounds double, double* %22, i64 0
  %24 = load double, double* %23, align 8, !tbaa !8
  %25 = load [4 x double*]*, [4 x double*]** %2, align 8, !tbaa !3
  %26 = getelementptr inbounds [4 x double*], [4 x double*]* %25, i64 1
  %27 = getelementptr inbounds [4 x double*], [4 x double*]* %26, i64 0, i64 2
  %28 = load double*, double** %27, align 8, !tbaa !3
  %29 = load double, double* %28, align 8, !tbaa !8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %24, double %29)
  %31 = bitcast [4 x double*]** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #3
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !5, i64 0}
