; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncat.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncat.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @wcsncat(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %37

; <label>:10:                                     ; preds = %3
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %7, align 8
  br label %12

; <label>:12:                                     ; preds = %16, %10
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %7, align 8
  br label %12

; <label>:19:                                     ; preds = %12
  br label %20

; <label>:20:                                     ; preds = %31, %19
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %20
  br label %35

; <label>:25:                                     ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %26, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %31

; <label>:31:                                     ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %20, label %35

; <label>:35:                                     ; preds = %31, %24
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %35, %3
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
