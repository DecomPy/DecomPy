; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S5-src_qsort.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S5-src_qsort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@array = global [5 x double] [double 1.000000e+00, double 7.320000e+00, double -3.430000e+00, double 0x4021666666666666, double 9.990000e+00], align 16
@.str = private unnamed_addr constant [13 x i8] c"array[i]:%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Avant qsort\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Apr\C3\A8s qsort\0A\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @print_array() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 0, i32* %1, align 4, !tbaa !3
  br label %3

; <label>:3:                                      ; preds = %14, %0
  %4 = load i32, i32* %1, align 4, !tbaa !3
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #3
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = load i32, i32* %1, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x double], [5 x double]* @array, i64 0, i64 %10
  %12 = load double, double* %11, align 8, !tbaa !7
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %12)
  br label %14

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %1, align 4, !tbaa !3
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4, !tbaa !3
  br label %3

; <label>:17:                                     ; preds = %6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @cmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !9
  store i8* %1, i8** %5, align 8, !tbaa !9
  %9 = bitcast double** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  %10 = load i8*, i8** %4, align 8, !tbaa !9
  %11 = bitcast i8* %10 to double*
  store double* %11, double** %6, align 8, !tbaa !9
  %12 = bitcast double** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #3
  %13 = load i8*, i8** %5, align 8, !tbaa !9
  %14 = bitcast i8* %13 to double*
  store double* %14, double** %7, align 8, !tbaa !9
  %15 = load double*, double** %6, align 8, !tbaa !9
  %16 = load double, double* %15, align 8, !tbaa !7
  %17 = load double*, double** %7, align 8, !tbaa !9
  %18 = load double, double* %17, align 8, !tbaa !7
  %19 = fcmp oeq double %16, %18
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %29

; <label>:21:                                     ; preds = %2
  %22 = load double*, double** %6, align 8, !tbaa !9
  %23 = load double, double* %22, align 8, !tbaa !7
  %24 = load double*, double** %7, align 8, !tbaa !9
  %25 = load double, double* %24, align 8, !tbaa !7
  %26 = fcmp olt double %23, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %21
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %29

; <label>:28:                                     ; preds = %21
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %27, %20
  %30 = bitcast double** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #3
  %31 = bitcast double** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #3
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !9
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  call void @print_array()
  call void @qsort(i8* bitcast ([5 x double]* @array to i8*), i64 5, i64 8, i32 (i8*, i8*)* @cmp)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  call void @print_array()
  ret i32 0
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

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
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
