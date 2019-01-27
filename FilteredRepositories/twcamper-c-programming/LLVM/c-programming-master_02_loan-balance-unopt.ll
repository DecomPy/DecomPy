; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_loan-balance.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_02_loan-balance.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [23 x i8] c"Enter amount of loan: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Enter interest rate: \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Enter monthly payment: \00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Balance after payment 1: $%.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Balance after payment 2: $%.2f\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Balance after payment 3: $%.2f\0A\00", align 1

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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %2)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %3)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %6)
  %18 = load float, float* %3, align 4, !tbaa !3
  %19 = fmul float %18, 0x3F847AE140000000
  %20 = fpext float %19 to double
  %21 = fdiv double %20, 1.200000e+01
  %22 = fptrunc double %21 to float
  store float %22, float* %4, align 4, !tbaa !3
  %23 = load float, float* %2, align 4, !tbaa !3
  %24 = load float, float* %4, align 4, !tbaa !3
  %25 = fmul float %23, %24
  store float %25, float* %5, align 4, !tbaa !3
  %26 = load float, float* %5, align 4, !tbaa !3
  %27 = load float, float* %2, align 4, !tbaa !3
  %28 = fadd float %27, %26
  store float %28, float* %2, align 4, !tbaa !3
  %29 = load float, float* %2, align 4, !tbaa !3
  %30 = load float, float* %6, align 4, !tbaa !3
  %31 = fsub float %29, %30
  store float %31, float* %2, align 4, !tbaa !3
  %32 = load float, float* %2, align 4, !tbaa !3
  %33 = fpext float %32 to double
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), double %33)
  %35 = load float, float* %2, align 4, !tbaa !3
  %36 = load float, float* %4, align 4, !tbaa !3
  %37 = fmul float %35, %36
  store float %37, float* %5, align 4, !tbaa !3
  %38 = load float, float* %5, align 4, !tbaa !3
  %39 = load float, float* %2, align 4, !tbaa !3
  %40 = fadd float %39, %38
  store float %40, float* %2, align 4, !tbaa !3
  %41 = load float, float* %2, align 4, !tbaa !3
  %42 = load float, float* %6, align 4, !tbaa !3
  %43 = fsub float %41, %42
  store float %43, float* %2, align 4, !tbaa !3
  %44 = load float, float* %2, align 4, !tbaa !3
  %45 = fpext float %44 to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), double %45)
  %47 = load float, float* %2, align 4, !tbaa !3
  %48 = load float, float* %4, align 4, !tbaa !3
  %49 = fmul float %47, %48
  store float %49, float* %5, align 4, !tbaa !3
  %50 = load float, float* %5, align 4, !tbaa !3
  %51 = load float, float* %2, align 4, !tbaa !3
  %52 = fadd float %51, %50
  store float %52, float* %2, align 4, !tbaa !3
  %53 = load float, float* %2, align 4, !tbaa !3
  %54 = load float, float* %6, align 4, !tbaa !3
  %55 = fsub float %53, %54
  store float %55, float* %2, align 4, !tbaa !3
  %56 = load float, float* %2, align 4, !tbaa !3
  %57 = fpext float %56 to double
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), double %57)
  %59 = bitcast float* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast float* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast float* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast float* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast float* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

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
