; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_fact.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_fact.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.fraction = type { float, float }

@.str = private unnamed_addr constant [30 x i8] c"\09[times(%d,%d)] : return(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"[fact(%d)]: Valeur de n:%d, adresse: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[fact(%d)]: return(1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[fact(%d)]: appel \C3\A0 fact(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"[fact(%d)]: calcul de times(%d,%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[fact(%d)]: return(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"La fonction fact est \C3\A0 l'adresse : %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"La fonction times est \C3\A0 l'adresse : %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"La variable nombre vaut %d et est \C3\A0 l'adresse %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"La factorielle de %d vaut %d\0A\00", align 1
@matrix3 = global [2 x float] [float 0x3FF4CCCCC0000000, float 0x4003333340000000], align 4
@nombre = constant i32 7, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"La variable nombre est \C3\A0 l'adresse : %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Le tableau msg est \C3\A0 l'adresse : %p\0A\00", align 1
@msg = common global [80 x i8] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [44 x i8] c"La variable locale f est \C3\A0 l'adresse : %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"La fonction main est \C3\A0 l'adresse : %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"La fonction max est \C3\A0 l'adresse : %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"///FACT\0A\00", align 1
@matrix1 = common global [4 x float] zeroinitializer, align 16
@fract = common global %struct.fraction zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @times(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @fact(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %6 = load i32, i32* %3, align 4, !tbaa !3
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %6, i32 %7, i32* %3)
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  %15 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %15, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %35

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = sub nsw i32 %18, 1
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %17, i32 %19)
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @fact(i32 %22)
  store i32 %23, i32* %4, align 4, !tbaa !3
  %24 = load i32, i32* %3, align 4, !tbaa !3
  %25 = load i32, i32* %3, align 4, !tbaa !3
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = call i32 @times(i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4, !tbaa !3
  %31 = load i32, i32* %3, align 4, !tbaa !3
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %35

; <label>:35:                                     ; preds = %16, %12
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: nounwind ssp uwtable
define void @compute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  store i32 3, i32* %1, align 4, !tbaa !3
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 (i32)* @fact)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 (i32, i32)* @times)
  %7 = load i32, i32* %1, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i32 %7, i32* %1)
  %9 = load i32, i32* %1, align 4, !tbaa !3
  %10 = call i32 @fact(i32 %9)
  store i32 %10, i32* %2, align 4, !tbaa !3
  %11 = load i32, i32* %1, align 4, !tbaa !3
  %12 = load i32, i32* %2, align 4, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %11, i32 %12)
  %14 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @max(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !3
  %7 = load i32, i32* %5, align 4, !tbaa !3
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %10, i32* %3, align 4
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %12, i32* %3, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 1252, i32* %6, align 4, !tbaa !3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (i32* @nombre to i8*))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @msg, i32 0, i32 0))
  %10 = bitcast i32* %6 to i8*
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 (i32, i8**)* @main)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 (i32, i32)* @max)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  call void @compute()
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3
  ret i32 0
}

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
