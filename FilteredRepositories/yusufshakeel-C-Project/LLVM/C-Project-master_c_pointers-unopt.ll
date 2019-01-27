; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_pointers.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_pointers.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [28 x i8] c"char\09address: %u\09value: %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"int\09address: %u\09value: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"float\09address: %u\09value: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"double\09address: %u\09value: %lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"void\09address: %u\09value: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #3
  store i8 97, i8* %2, align 1, !tbaa !3
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  store i32 123, i32* %3, align 4, !tbaa !6
  %12 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store float 0x4028AE1480000000, float* %4, align 4, !tbaa !8
  %13 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #3
  store double 0x405EDD3C07EE0B0B, double* %5, align 8, !tbaa !10
  %14 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #3
  store i8* %2, i8** %6, align 8, !tbaa !12
  %15 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #3
  store i32* %3, i32** %7, align 8, !tbaa !12
  %16 = bitcast float** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #3
  store float* %4, float** %8, align 8, !tbaa !12
  %17 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #3
  store double* %5, double** %9, align 8, !tbaa !12
  %18 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #3
  %19 = bitcast i32* %3 to i8*
  store i8* %19, i8** %10, align 8, !tbaa !12
  %20 = load i8*, i8** %6, align 8, !tbaa !12
  %21 = load i8*, i8** %6, align 8, !tbaa !12
  %22 = load i8, i8* %21, align 1, !tbaa !3
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* %20, i32 %23)
  %25 = load i32*, i32** %7, align 8, !tbaa !12
  %26 = load i32*, i32** %7, align 8, !tbaa !12
  %27 = load i32, i32* %26, align 4, !tbaa !6
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32* %25, i32 %27)
  %29 = load float*, float** %8, align 8, !tbaa !12
  %30 = load float*, float** %8, align 8, !tbaa !12
  %31 = load float, float* %30, align 4, !tbaa !8
  %32 = fpext float %31 to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), float* %29, double %32)
  %34 = load double*, double** %9, align 8, !tbaa !12
  %35 = load double*, double** %9, align 8, !tbaa !12
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), double* %34, double %36)
  %38 = load i8*, i8** %10, align 8, !tbaa !12
  %39 = load i8*, i8** %10, align 8, !tbaa !12
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !6
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* %38, i32 %41)
  store i32 0, i32* %1, align 4
  %43 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #3
  %44 = bitcast double** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #3
  %45 = bitcast float** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #3
  %46 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #3
  %47 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #3
  %48 = bitcast double* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #3
  %49 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3
  %50 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #3
  %51 = load i32, i32* %1, align 4
  ret i32 %51
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
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
