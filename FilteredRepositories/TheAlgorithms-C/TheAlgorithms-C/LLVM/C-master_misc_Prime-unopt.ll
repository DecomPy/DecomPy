; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_Prime.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_misc_Prime.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [48 x i8] c"Input a number to see if it is a prime number:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%d is a prime number.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%d is not a prime number.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @isPrime(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4
  store i32 2, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %22, %1
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = sitofp i32 %8 to double
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = sitofp i32 %10 to double
  %12 = call double @llvm.sqrt.f64(double %11)
  %13 = fcmp olt double %9, %12
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %7
  store i32 2, i32* %5, align 4
  br label %25

; <label>:15:                                     ; preds = %7
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = srem i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %25

; <label>:21:                                     ; preds = %15
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4, !tbaa !3
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:25:                                     ; preds = %20, %14
  %26 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %31 [
    i32 2, label %28
    i32 1, label %29
  ]

; <label>:28:                                     ; preds = %25
  store i32 1, i32* %2, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30

; <label>:31:                                     ; preds = %25
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %6 = load i32, i32* %2, align 4, !tbaa !3
  %7 = call i32 @isPrime(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4, !tbaa !3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  br label %15

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %2, align 4, !tbaa !3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15:                                     ; preds = %12, %9
  %16 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4
  ret i32 0
}

declare i32 @printf(i8*, ...) #3

declare i32 @scanf(i8*, ...) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
