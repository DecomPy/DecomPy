; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_catalan.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_catalan.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%0.2f\00", align 1

; Function Attrs: nounwind ssp uwtable
define i64 @factorial(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4, !tbaa !3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = load i32, i32* %2, align 4, !tbaa !3
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8, !tbaa !7
  store i32 1, i32* %3, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %20, %1
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %4, align 8, !tbaa !7
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %14, %18
  store i64 %19, i64* %4, align 8, !tbaa !7
  br label %20

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4, !tbaa !3
  br label %9

; <label>:23:                                     ; preds = %9
  %24 = load i64, i64* %4, align 8, !tbaa !7
  %25 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #3
  %26 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  ret i64 %24
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %5)
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = mul nsw i32 2, %13
  %15 = call i64 @factorial(i32 %14)
  store i64 %15, i64* %2, align 8, !tbaa !7
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = add nsw i32 %16, 1
  %18 = call i64 @factorial(i32 %17)
  store i64 %18, i64* %3, align 8, !tbaa !7
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = call i64 @factorial(i32 %19)
  store i64 %20, i64* %4, align 8, !tbaa !7
  %21 = load i64, i64* %2, align 8, !tbaa !7
  %22 = load i64, i64* %3, align 8, !tbaa !7
  %23 = load i64, i64* %4, align 8, !tbaa !7
  %24 = mul nsw i64 %22, %23
  %25 = sdiv i64 %21, %24
  %26 = sitofp i64 %25 to float
  store float %26, float* %6, align 4, !tbaa !9
  %27 = load float, float* %6, align 4, !tbaa !9
  %28 = fpext float %27 to double
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), double %28)
  %30 = bitcast float* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3
  %31 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  %32 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #3
  %33 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #3
  %34 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #3
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
