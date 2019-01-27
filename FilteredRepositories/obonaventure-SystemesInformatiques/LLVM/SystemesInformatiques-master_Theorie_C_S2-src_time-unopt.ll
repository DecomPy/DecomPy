; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_time.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_time.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.coord = type { i32, i32, i32 }
%struct.fraction = type { double, double }
%struct.student = type { i32, [20 x i8], [30 x i8] }

@origin = global %struct.coord { i32 1, i32 2, i32 3 }, align 4
@demi = global %struct.fraction { double 1.000000e+00, double 2.000000e+00 }, align 8
@s = global %struct.student { i32 1, [20 x i8] c"Linux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"Torvalds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@f = common global %struct.fraction zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"sizeof int[3]=%ld, sizeof coord=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"sizeof student : %ld\0A\00", align 1
@p = common global %struct.coord zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @equal(double, double, double, double) #0 {
  %5 = alloca %struct.fraction, align 8
  %6 = alloca %struct.fraction, align 8
  %7 = bitcast %struct.fraction* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %0, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %1, double* %9, align 8
  %10 = bitcast %struct.fraction* %6 to { double, double }*
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  store double %2, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %3, double* %12, align 8
  %13 = getelementptr inbounds %struct.fraction, %struct.fraction* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8, !tbaa !3
  %15 = getelementptr inbounds %struct.fraction, %struct.fraction* %6, i32 0, i32 0
  %16 = load double, double* %15, align 8, !tbaa !3
  %17 = fcmp oeq double %14, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %4
  %19 = getelementptr inbounds %struct.fraction, %struct.fraction* %5, i32 0, i32 1
  %20 = load double, double* %19, align 8, !tbaa !8
  %21 = getelementptr inbounds %struct.fraction, %struct.fraction* %6, i32 0, i32 1
  %22 = load double, double* %21, align 8, !tbaa !8
  %23 = fcmp oeq double %20, %22
  br label %24

; <label>:24:                                     ; preds = %18, %4
  %25 = phi i1 [ false, %4 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !9
  store i8** %1, i8*** %5, align 8, !tbaa !11
  %7 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %7) #3
  %8 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  store i32 1, i32* getelementptr inbounds (%struct.coord, %struct.coord* @origin, i32 0, i32 0), align 4, !tbaa !13
  store i32 2, i32* getelementptr inbounds (%struct.coord, %struct.coord* @origin, i32 0, i32 1), align 4, !tbaa !15
  store i32 3, i32* getelementptr inbounds (%struct.coord, %struct.coord* @origin, i32 0, i32 2), align 4, !tbaa !16
  store double 1.000000e+00, double* getelementptr inbounds (%struct.fraction, %struct.fraction* @f, i32 0, i32 0), align 8, !tbaa !3
  store double 4.000000e+00, double* getelementptr inbounds (%struct.fraction, %struct.fraction* @f, i32 0, i32 1), align 8, !tbaa !8
  %9 = load i8, i8* getelementptr inbounds (%struct.student, %struct.student* @s, i32 0, i32 1, i64 2), align 2, !tbaa !17
  %10 = sext i8 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i64 12, i64 12)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i64 56)
  %14 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %14) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

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
!3 = !{!4, !5, i64 0}
!4 = !{!"fraction", !5, i64 0, !5, i64 8}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 8}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"coord", !10, i64 0, !10, i64 4, !10, i64 8}
!15 = !{!14, !10, i64 4}
!16 = !{!14, !10, i64 8}
!17 = !{!6, !6, i64 0}
