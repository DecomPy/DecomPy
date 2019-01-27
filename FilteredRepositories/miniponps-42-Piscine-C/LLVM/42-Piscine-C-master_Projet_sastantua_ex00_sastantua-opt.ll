; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_sastantua_ex00_sastantua.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_sastantua_ex00_sastantua.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @build_line(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %11, %2
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %6
  %12 = call i32 @ft_putchar(i8 signext 32)
  br label %6

; <label>:13:                                     ; preds = %6
  store i32 0, i32* %5, align 4
  %14 = call i32 @ft_putchar(i8 signext 47)
  br label %15

; <label>:15:                                     ; preds = %20, %13
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %15
  %21 = call i32 @ft_putchar(i8 signext 42)
  br label %15

; <label>:22:                                     ; preds = %15
  %23 = call i32 @ft_putchar(i8 signext 92)
  %24 = call i32 @ft_putchar(i8 signext 10)
  ret void
}

declare i32 @ft_putchar(i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @build_line_door(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %15, %3
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %10
  %16 = call i32 @ft_putchar(i8 signext 32)
  br label %10

; <label>:17:                                     ; preds = %10
  store i32 0, i32* %7, align 4
  %18 = call i32 @ft_putchar(i8 signext 47)
  br label %19

; <label>:19:                                     ; preds = %24, %17
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %19
  %25 = call i32 @ft_putchar(i8 signext 42)
  br label %19

; <label>:26:                                     ; preds = %19
  store i32 0, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %46, %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %47

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %39
  %43 = call i32 @ft_putchar(i8 signext 36)
  br label %46

; <label>:44:                                     ; preds = %39, %34, %31
  %45 = call i32 @ft_putchar(i8 signext 124)
  br label %46

; <label>:46:                                     ; preds = %44, %42
  br label %27

; <label>:47:                                     ; preds = %27
  br label %48

; <label>:48:                                     ; preds = %53, %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %48
  %54 = call i32 @ft_putchar(i8 signext 42)
  br label %48

; <label>:55:                                     ; preds = %48
  %56 = call i32 @ft_putchar(i8 signext 92)
  %57 = call i32 @ft_putchar(i8 signext 10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @build_sastantua(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %12

; <label>:12:                                     ; preds = %65, %3
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %69

; <label>:17:                                     ; preds = %12
  store i32 1, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %54, %17
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 2
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %55

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 2
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

; <label>:35:                                     ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 3
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %42, label %49

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 %44, %46
  %48 = load i32, i32* %6, align 4
  call void @build_line_door(i32 %43, i32 %47, i32 %48)
  br label %54

; <label>:49:                                     ; preds = %35, %24
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 1
  call void @build_line(i32 %50, i32 %53)
  br label %54

; <label>:54:                                     ; preds = %49, %42
  br label %18

; <label>:55:                                     ; preds = %18
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %56, 2
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %65

; <label>:65:                                     ; preds = %62, %59, %55
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %9, align 4
  br label %12

; <label>:69:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sastantua(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %37

; <label>:13:                                     ; preds = %8
  store i32 1, i32* %4, align 4
  br label %14

; <label>:14:                                     ; preds = %20, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 2
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %14

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = srem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %27, %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %5, align 4
  br label %8

; <label>:37:                                     ; preds = %8
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %2, align 4
  %41 = srem i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %47, %48
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 3
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %7, align 4
  call void @build_sastantua(i32 %51, i32 %52, i32 %53)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
