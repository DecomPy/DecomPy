; ModuleID = 'Repositories/x893-picoC/Unfiltered/picoC-master_tests_49_bracket_evaluation.c'
source_filename = "Repositories/x893-picoC/Unfiltered/picoC-master_tests_49_bracket_evaluation.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.point = type { double, double }

@point_array = common global [100 x %struct.point] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"%f, %f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 10, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* %2, align 4, !tbaa !3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [100 x %struct.point], [100 x %struct.point]* @point_array, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  store double 1.234000e+01, double* %7, align 16, !tbaa !7
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [100 x %struct.point], [100 x %struct.point]* @point_array, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.point, %struct.point* %10, i32 0, i32 1
  store double 5.678000e+01, double* %11, align 8, !tbaa !10
  %12 = load i32, i32* %2, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [100 x %struct.point], [100 x %struct.point]* @point_array, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.point, %struct.point* %14, i32 0, i32 0
  %16 = load double, double* %15, align 16, !tbaa !7
  %17 = load i32, i32* %2, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [100 x %struct.point], [100 x %struct.point]* @point_array, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.point, %struct.point* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8, !tbaa !10
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), double %16, double %21)
  %23 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
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
!7 = !{!8, !9, i64 0}
!8 = !{!"point", !9, i64 0, !9, i64 8}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 8}
