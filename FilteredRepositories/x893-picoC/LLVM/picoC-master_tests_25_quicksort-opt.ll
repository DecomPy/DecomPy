; ModuleID = 'Repositories/x893-picoC/Unfiltered/picoC-master_tests_25_quicksort.c'
source_filename = "Repositories/x893-picoC/Unfiltered/picoC-master_tests_25_quicksort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@array = common global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @swap(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %19
  store i32 %17, i32* %20, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @partition(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  call void @swap(i32 %15, i32 %16)
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %35, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  call void @swap(i32 %30, i32 %31)
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

; <label>:34:                                     ; preds = %29, %22
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %18

; <label>:38:                                     ; preds = %18
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  call void @swap(i32 %39, i32 %40)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @quicksort(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  br label %20

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @partition(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  call void @quicksort(i32 %14, i32 %16)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %4, align 4
  call void @quicksort(i32 %18, i32 %19)
  br label %20

; <label>:20:                                     ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @main() #0 {
  %1 = alloca i32, align 4
  store i32 62, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 0), align 16
  store i32 83, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 1), align 4
  store i32 4, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 2), align 8
  store i32 89, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 3), align 4
  store i32 36, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 4), align 16
  store i32 21, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 5), align 4
  store i32 74, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 6), align 8
  store i32 37, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 7), align 4
  store i32 65, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 8), align 16
  store i32 33, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 9), align 4
  store i32 96, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 10), align 8
  store i32 38, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 11), align 4
  store i32 53, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 12), align 16
  store i32 16, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 13), align 4
  store i32 74, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 14), align 8
  store i32 55, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @array, i64 0, i64 15), align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 16
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %9)
  br label %11

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

; <label>:14:                                     ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @quicksort(i32 0, i32 15)
  store i32 0, i32* %1, align 4
  br label %16

; <label>:16:                                     ; preds = %25, %14
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* @array, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %23)
  br label %25

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %16

; <label>:28:                                     ; preds = %16
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
