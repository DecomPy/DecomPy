; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex7_ex7.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex7_ex7.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.first_name = private unnamed_addr constant [4 x i8] c"Zed\00", align 1
@main.last_name = private unnamed_addr constant [5 x i8] c"Shaw\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"You are %d miles away.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"You have %f levels of power.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"You have %f awesome super powers.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"I have an initial %c.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"I have a first name %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"I have a last name %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"My whole name is %s %c. %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"You have %d bugs at the imaginary rate of %f.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"The entire universe has %ld bugs.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"You are expected to have %f bugs.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"That is only a %e portion of the universe.\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Which means you should care %d%%.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %19 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  store i32 100, i32* %6, align 4, !tbaa !3
  %20 = bitcast float* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  store float 0x4002C28F60000000, float* %7, align 4, !tbaa !9
  %21 = bitcast double* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #3
  store double 0x40EBBAAE809D4952, double* %8, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %9) #3
  store i8 65, i8* %9, align 1, !tbaa !13
  %22 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3
  %23 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @main.first_name, i32 0, i32 0), i64 4, i1 false)
  %24 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %24) #3
  %25 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @main.last_name, i32 0, i32 0), i64 5, i1 false)
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 90, i8* %26, align 1, !tbaa !13
  %27 = load i32, i32* %6, align 4, !tbaa !3
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %27)
  %29 = load float, float* %7, align 4, !tbaa !9
  %30 = fpext float %29 to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), double %30)
  %32 = load double, double* %8, align 8, !tbaa !11
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), double %32)
  %34 = load i8, i8* %9, align 1, !tbaa !13
  %35 = sext i8 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %35)
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i32 0, i32 0
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %37)
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i32 0, i32 0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %39)
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i32 0, i32 0
  %42 = load i8, i8* %9, align 1, !tbaa !13
  %43 = sext i8 %42 to i32
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i32 0, i32 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* %41, i32 %43, i8* %44)
  %46 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #3
  store i32 100, i32* %12, align 4, !tbaa !3
  %47 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %47) #3
  store double 1.200000e+00, double* %13, align 8, !tbaa !11
  %48 = load i32, i32* %12, align 4, !tbaa !3
  %49 = load double, double* %13, align 8, !tbaa !11
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 %48, double %49)
  %51 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %51) #3
  store i64 1073741824, i64* %14, align 8, !tbaa !14
  %52 = load i64, i64* %14, align 8, !tbaa !14
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i64 %52)
  %54 = bitcast double* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %54) #3
  %55 = load i32, i32* %12, align 4, !tbaa !3
  %56 = sitofp i32 %55 to double
  %57 = load double, double* %13, align 8, !tbaa !11
  %58 = fmul double %56, %57
  store double %58, double* %15, align 8, !tbaa !11
  %59 = load double, double* %15, align 8, !tbaa !11
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), double %59)
  %61 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %61) #3
  %62 = load double, double* %15, align 8, !tbaa !11
  %63 = load i64, i64* %14, align 8, !tbaa !14
  %64 = sitofp i64 %63 to double
  %65 = fdiv double %62, %64
  store double %65, double* %16, align 8, !tbaa !11
  %66 = load double, double* %16, align 8, !tbaa !11
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), double %66)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %17) #3
  store i8 0, i8* %17, align 1, !tbaa !13
  %68 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %68) #3
  %69 = load i32, i32* %12, align 4, !tbaa !3
  %70 = load i8, i8* %17, align 1, !tbaa !13
  %71 = sext i8 %70 to i32
  %72 = mul nsw i32 %69, %71
  store i32 %72, i32* %18, align 4, !tbaa !3
  %73 = load i32, i32* %18, align 4, !tbaa !3
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i32 %73)
  store i32 0, i32* %3, align 4
  %75 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %17) #3
  %76 = bitcast double* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #3
  %77 = bitcast double* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #3
  %78 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #3
  %79 = bitcast double* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %79) #3
  %80 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3
  %81 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %81) #3
  %82 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #3
  %83 = bitcast double* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #3
  %84 = bitcast float* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3
  %85 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #3
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
