; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcpy.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @wcslcpy(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  store i32* %9, i32** %8, align 8
  br label %10

; <label>:10:                                     ; preds = %27, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %34

; <label>:13:                                     ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  store i64 %26, i64* %4, align 8
  br label %54

; <label>:27:                                     ; preds = %13
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %7, align 8
  br label %10

; <label>:34:                                     ; preds = %10
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i32*, i32** %5, align 8
  store i32 0, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %34
  br label %40

; <label>:40:                                     ; preds = %44, %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  br label %40

; <label>:47:                                     ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %4, align 8
  br label %54

; <label>:54:                                     ; preds = %47, %20
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
