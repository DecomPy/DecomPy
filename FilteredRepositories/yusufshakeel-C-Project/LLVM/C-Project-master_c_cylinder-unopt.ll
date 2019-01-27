; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_cylinder.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_cylinder.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"Enter radius: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Enter height: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Curved surface area: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Total surface area: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Volume: %f\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast float* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %2)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %3)
  %16 = load float, float* %2, align 4, !tbaa !3
  %17 = load float, float* %3, align 4, !tbaa !3
  call void @cylinder(float %16, float %17, float* %4, float* %5, float* %6)
  %18 = load float, float* %4, align 4, !tbaa !3
  %19 = fpext float %18 to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), double %19)
  %21 = load float, float* %5, align 4, !tbaa !3
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), double %22)
  %24 = load float, float* %6, align 4, !tbaa !3
  %25 = fpext float %24 to double
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), double %25)
  %27 = bitcast float* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  %28 = bitcast float* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  %29 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3
  %30 = bitcast float* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = bitcast float* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @cylinder(float, float, float*, float*, float*) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  store float %0, float* %6, align 4, !tbaa !3
  store float %1, float* %7, align 4, !tbaa !3
  store float* %2, float** %8, align 8, !tbaa !7
  store float* %3, float** %9, align 8, !tbaa !7
  store float* %4, float** %10, align 8, !tbaa !7
  %11 = load float, float* %6, align 4, !tbaa !3
  %12 = fmul float 2.000000e+00, %11
  %13 = load float, float* %7, align 4, !tbaa !3
  %14 = fmul float %12, %13
  %15 = fmul float %14, 2.200000e+01
  %16 = fdiv float %15, 7.000000e+00
  %17 = load float*, float** %8, align 8, !tbaa !7
  store float %16, float* %17, align 4, !tbaa !3
  %18 = load float, float* %6, align 4, !tbaa !3
  %19 = fmul float 2.000000e+00, %18
  %20 = load float, float* %7, align 4, !tbaa !3
  %21 = load float, float* %6, align 4, !tbaa !3
  %22 = fadd float %20, %21
  %23 = fmul float %19, %22
  %24 = fmul float %23, 2.200000e+01
  %25 = fdiv float %24, 7.000000e+00
  %26 = load float*, float** %9, align 8, !tbaa !7
  store float %25, float* %26, align 4, !tbaa !3
  %27 = load float, float* %6, align 4, !tbaa !3
  %28 = load float, float* %6, align 4, !tbaa !3
  %29 = fmul float %27, %28
  %30 = load float, float* %7, align 4, !tbaa !3
  %31 = fmul float %29, %30
  %32 = fmul float %31, 2.200000e+01
  %33 = fdiv float %32, 7.000000e+00
  %34 = load float*, float** %10, align 8, !tbaa !7
  store float %33, float* %34, align 4, !tbaa !3
  ret void
}

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
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
