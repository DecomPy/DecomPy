; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.13.identity-matrix.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.13.identity-matrix.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [12 x [12 x double]], align 16
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [12 x [12 x double]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1152, i8* %5) #2
  %6 = bitcast double** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  store i32 12, i32* %4, align 4, !tbaa !3
  %8 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [12 x double], [12 x double]* %8, i64 0, i64 0
  store double* %9, double** %3, align 8, !tbaa !7
  br label %10

; <label>:10:                                     ; preds = %25, %0
  %11 = load double*, double** %3, align 8, !tbaa !7
  %12 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %2, i64 0, i64 11
  %13 = getelementptr inbounds [12 x double], [12 x double]* %12, i64 0, i64 11
  %14 = icmp ule double* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %15
  store i32 0, i32* %4, align 4, !tbaa !3
  %19 = load double*, double** %3, align 8, !tbaa !7
  store double 1.100000e+00, double* %19, align 8, !tbaa !9
  br label %24

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %4, align 4, !tbaa !3
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4, !tbaa !3
  %23 = load double*, double** %3, align 8, !tbaa !7
  store double 0.000000e+00, double* %23, align 8, !tbaa !9
  br label %24

; <label>:24:                                     ; preds = %20, %18
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load double*, double** %3, align 8, !tbaa !7
  %27 = getelementptr inbounds double, double* %26, i32 1
  store double* %27, double** %3, align 8, !tbaa !7
  br label %10

; <label>:28:                                     ; preds = %10
  %29 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #2
  %30 = bitcast double** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #2
  %31 = bitcast [12 x [12 x double]]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1152, i8* %31) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
!10 = !{!"double", !5, i64 0}
