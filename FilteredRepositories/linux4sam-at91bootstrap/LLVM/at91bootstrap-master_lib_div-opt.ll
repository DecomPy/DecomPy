; ModuleID = 'Repositories/linux4sam-at91bootstrap/Unfiltered/at91bootstrap-master_lib_div.c'
source_filename = "Repositories/linux4sam-at91bootstrap/Unfiltered/at91bootstrap-master_lib_div.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @division(i32, i32, i32*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i8 0, i8* %13, align 1
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %83

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %17
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %5, align 4
  br label %83

; <label>:25:                                     ; preds = %17
  br label %26

; <label>:26:                                     ; preds = %60, %59, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %70

; <label>:30:                                     ; preds = %26
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %11, align 4
  br label %32

; <label>:32:                                     ; preds = %51, %30
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %56

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %50

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %6, align 4
  store i8 1, i8* %13, align 1
  br label %56

; <label>:50:                                     ; preds = %36
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %32

; <label>:56:                                     ; preds = %42, %32
  %57 = load i8, i8* %13, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  br label %26

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = sub i32 %61, 1
  %63 = shl i32 1, %62
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = lshr i32 %66, 1
  %68 = load i32, i32* %6, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %26

; <label>:70:                                     ; preds = %26
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %70
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

; <label>:82:                                     ; preds = %79, %76
  store i32 0, i32* %5, align 4
  br label %83

; <label>:83:                                     ; preds = %82, %21, %16
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @div(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @division(i32 %9, i32 %10, i32* %6, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %17

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %15, %14
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mod(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @division(i32 %9, i32 %10, i32* %6, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %17

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %17

; <label>:17:                                     ; preds = %15, %14
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
