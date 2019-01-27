; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle00_ex00_colle00.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle00_ex00_colle00.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @midline(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7, %2
  call void @ft_putchar(i8 signext 124)
  br label %13

; <label>:12:                                     ; preds = %7
  call void @ft_putchar(i8 signext 32)
  br label %13

; <label>:13:                                     ; preds = %12, %11
  ret void
}

declare void @ft_putchar(i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @firstlastline(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7, %2
  call void @ft_putchar(i8 signext 111)
  br label %13

; <label>:12:                                     ; preds = %7
  call void @ft_putchar(i8 signext 45)
  br label %13

; <label>:13:                                     ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @colle(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %35

; <label>:11:                                     ; preds = %7
  store i32 1, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %29, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %32

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %19, %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  call void @firstlastline(i32 %24, i32 %25)
  br label %29

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  call void @midline(i32 %27, i32 %28)
  br label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

; <label>:32:                                     ; preds = %12
  call void @ft_putchar(i8 signext 10)
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

; <label>:35:                                     ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
