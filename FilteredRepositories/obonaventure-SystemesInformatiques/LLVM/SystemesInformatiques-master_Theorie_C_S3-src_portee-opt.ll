; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_portee.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S3-src_portee.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@g2 = global i32 1, align 4
@g1 = common global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[f-%da] \09\09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[f-%db] \09\09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Valeurs de : \09 g1 \09 g2\09 loc\09 loc2\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"===================================================\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"[main1] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"[main2] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"[main-for-%d] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"[main3] \09 %d \09 %d \09 %d \09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 0, %6
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @g1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @g1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @g1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @g1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @g1, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @g1, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0))
  %13 = load i32, i32* @g1, align 4
  %14 = load i32, i32* @g2, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 1252, i32* %6, align 4
  store i32 1234, i32* %7, align 4
  %18 = load i32, i32* @g1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @g1, align 4
  %20 = load i32, i32* @g1, align 4
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* @g1, align 4
  %22 = load i32, i32* @g1, align 4
  %23 = load i32, i32* @g2, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 1, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %45, %2
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %48

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @g1, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* @g1, align 4
  %38 = load i32, i32* %8, align 4
  call void @f(i32 %38)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @g1, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

; <label>:45:                                     ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %27

; <label>:48:                                     ; preds = %27
  call void @f(i32 7)
  %49 = load i32, i32* @g1, align 4
  %50 = mul nsw i32 %49, 3
  store i32 %50, i32* @g1, align 4
  %51 = load i32, i32* @g2, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* @g2, align 4
  %53 = load i32, i32* @g1, align 4
  %54 = load i32, i32* @g2, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 %53, i32 %54, i32 %55, i32 %56)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
