; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-58.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-58.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @switch3(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %32 [
    i32 0, label %9
    i32 1, label %15
    i32 2, label %23
    i32 3, label %27
    i32 4, label %31
  ]

; <label>:9:                                      ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  br label %33

; <label>:15:                                     ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %33

; <label>:23:                                     ; preds = %3
  %24 = load i32*, i32** %5, align 8
  store i32 15, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %33

; <label>:27:                                     ; preds = %3
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %31

; <label>:31:                                     ; preds = %3, %27
  store i32 17, i32* %7, align 4
  br label %32

; <label>:32:                                     ; preds = %3, %31
  br label %33

; <label>:33:                                     ; preds = %32, %23, %15, %9
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
