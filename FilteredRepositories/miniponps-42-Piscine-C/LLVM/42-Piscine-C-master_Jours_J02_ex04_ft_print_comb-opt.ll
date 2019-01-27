; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J02_ex04_ft_print_comb.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J02_ex04_ft_print_comb.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ft_print_comb() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 48, i8* %1, align 1
  br label %4

; <label>:4:                                      ; preds = %48, %0
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp sle i32 %6, 57
  br i1 %7, label %8, label %51

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* %1, align 1
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %10, 1
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %2, align 1
  br label %13

; <label>:13:                                     ; preds = %45, %8
  %14 = load i8, i8* %2, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sle i32 %15, 57
  br i1 %16, label %17, label %48

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %2, align 1
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %3, align 1
  br label %22

; <label>:22:                                     ; preds = %42, %17
  %23 = load i8, i8* %3, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 57
  br i1 %25, label %26, label %45

; <label>:26:                                     ; preds = %22
  %27 = load i8, i8* %1, align 1
  %28 = load i8, i8* %2, align 1
  %29 = load i8, i8* %3, align 1
  call void @ad_print_numbers(i8 signext %27, i8 signext %28, i8 signext %29)
  %30 = load i8, i8* %1, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 55
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %26
  %34 = load i8, i8* %2, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 56
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %3, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 57
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %37, %33, %26
  call void @ad_print_space()
  br label %42

; <label>:42:                                     ; preds = %41, %37
  %43 = load i8, i8* %3, align 1
  %44 = add i8 %43, 1
  store i8 %44, i8* %3, align 1
  br label %22

; <label>:45:                                     ; preds = %22
  %46 = load i8, i8* %2, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %2, align 1
  br label %13

; <label>:48:                                     ; preds = %13
  %49 = load i8, i8* %1, align 1
  %50 = add i8 %49, 1
  store i8 %50, i8* %1, align 1
  br label %4

; <label>:51:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ad_print_numbers(i8 signext, i8 signext, i8 signext) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %4, align 1
  %8 = call i32 @ft_putchar(i8 signext %7)
  %9 = load i8, i8* %5, align 1
  %10 = call i32 @ft_putchar(i8 signext %9)
  %11 = load i8, i8* %6, align 1
  %12 = call i32 @ft_putchar(i8 signext %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ad_print_space() #0 {
  %1 = call i32 @ft_putchar(i8 signext 44)
  %2 = call i32 @ft_putchar(i8 signext 32)
  ret void
}

declare i32 @ft_putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
