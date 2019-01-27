; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_digit-counter.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_05_digit-counter.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [17 x i8] c"Enter a number: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"The number %d has %d digits\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = mul nsw i32 %10, -1
  br label %14

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %2, align 4
  br label %14

; <label>:14:                                     ; preds = %12, %9
  %15 = phi i32 [ %11, %9 ], [ %13, %12 ]
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  store i32 1, i32* %4, align 4
  br label %34

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 2, i32* %4, align 4
  br label %33

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 1000
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  store i32 3, i32* %4, align 4
  br label %32

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 10000
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  store i32 4, i32* %4, align 4
  br label %31

; <label>:31:                                     ; preds = %30, %27
  br label %32

; <label>:32:                                     ; preds = %31, %26
  br label %33

; <label>:33:                                     ; preds = %32, %22
  br label %34

; <label>:34:                                     ; preds = %33, %18
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %35, i32 %36)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
