; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-74.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-74.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @tsub_ovf(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, -2147483648
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -2147483648
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -2147483648
  %21 = icmp ne i32 %20, 0
  br label %22

; <label>:22:                                     ; preds = %18, %14, %2
  %23 = phi i1 [ false, %14 ], [ false, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, -2147483648
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -2147483648
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

; <label>:37:                                     ; preds = %32, %28, %22
  %38 = phi i1 [ false, %28 ], [ false, %22 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

; <label>:45:                                     ; preds = %42, %37
  %46 = phi i1 [ true, %37 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
