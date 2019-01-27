; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex05_ft_is_sort.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J10_ex05_ft_is_sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ft_is_sort(i32*, i32, i32 (i32, i32)*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (i32, i32)* %2, i32 (i32, i32)** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  br label %68

; <label>:13:                                     ; preds = %3
  br label %14

; <label>:14:                                     ; preds = %41, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

; <label>:23:                                     ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %44

; <label>:25:                                     ; preds = %23
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %26(i32 %31, i32 %37)
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %25
  store i32 1, i32* %9, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %25
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %14

; <label>:44:                                     ; preds = %23
  store i32 0, i32* %8, align 4
  br label %45

; <label>:45:                                     ; preds = %66, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %67

; <label>:50:                                     ; preds = %45
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %51(i32 %56, i32 %62)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %50
  store i32 0, i32* %4, align 4
  br label %68

; <label>:66:                                     ; preds = %50
  br label %45

; <label>:67:                                     ; preds = %45
  store i32 1, i32* %4, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %65, %12
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
