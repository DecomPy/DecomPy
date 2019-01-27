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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @times(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @fact(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %5, i32 %6, i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %33

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %15, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @fact(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @times(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

; <label>:33:                                     ; preds = %14, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @compute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 (i32)* @fact)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 (i32, i32)* @times)
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i32 %5, i32* %1)
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @fact(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %9, i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @max(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1252, i32* %6, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (i32* @nombre to i8*))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @msg, i32 0, i32 0))
  %9 = bitcast i32* %6 to i8*
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 (i32, i8**)* @main)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 (i32, i32)* @max)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  call void @compute()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
