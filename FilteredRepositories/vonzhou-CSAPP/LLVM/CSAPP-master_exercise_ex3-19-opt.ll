; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-19.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-19.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @tmul_ok_32(i32, i32) #0 {
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
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

; <label>:17:                                     ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @largest_factorial_32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %16, %0
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @tmul_ok_32(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  br label %20

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %1, align 4
  br label %4

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 1
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @tmul_ok_64(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = mul nsw i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sdiv i64 %12, %13
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

; <label>:17:                                     ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @largest_factorial_64() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64 1, i64* %1, align 8
  store i32 1, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  %7 = load i64, i64* %1, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = call i32 @tmul_ok_64(i64 %7, i64 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %4
  br label %22

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %1, align 8
  %21 = mul nsw i64 %20, %19
  store i64 %21, i64* %1, align 8
  br label %4

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %23, 1
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
