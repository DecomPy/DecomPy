; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_sumarray.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_sumarray.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.timeval = type { i64, i32 }

@matrix = common global [10000 x [10000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @timeval_diff(%struct.timeval*, %struct.timeval*) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = load %struct.timeval*, %struct.timeval** %3, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = load %struct.timeval*, %struct.timeval** %3, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 1000000, %12
  %14 = add nsw i64 %9, %13
  %15 = load %struct.timeval*, %struct.timeval** %4, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.timeval*, %struct.timeval** %4, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = mul nsw i64 1000000, %21
  %23 = add nsw i64 %18, %22
  %24 = sub nsw i64 %14, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %25, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 10000
  br i1 %6, label %7, label %28

; <label>:7:                                      ; preds = %4
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10000
  br i1 %10, label %11, label %24

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10000 x [10000 x i32]], [10000 x [10000 x i32]]* @matrix, i64 0, i64 %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10000 x i32], [10000 x i32]* %14, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %1, align 4
  br label %21

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %4

; <label>:28:                                     ; preds = %4
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %25, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 10000
  br i1 %6, label %7, label %28

; <label>:7:                                      ; preds = %4
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10000
  br i1 %10, label %11, label %24

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10000 x [10000 x i32]], [10000 x [10000 x i32]]* @matrix, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10000 x i32], [10000 x i32]* %14, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %1, align 4
  br label %21

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %4

; <label>:28:                                     ; preds = %4
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %26, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 10000
  br i1 %10, label %11, label %29

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %22, %11
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 10000
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10000 x [10000 x i32]], [10000 x [10000 x i32]]* @matrix, i64 0, i64 %17
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10000 x i32], [10000 x i32]* %18, i64 0, i64 %20
  store i32 1, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %12

; <label>:25:                                     ; preds = %12
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %8

; <label>:29:                                     ; preds = %8
  %30 = call i32 @sum()
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %30)
  %32 = call i32 @sum2()
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %32)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
