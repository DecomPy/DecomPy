; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcat.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcat.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @wcslcat(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

; <label>:10:                                     ; preds = %19, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %17
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %10

; <label>:26:                                     ; preds = %17
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %9, align 8
  br label %28

; <label>:28:                                     ; preds = %47, %26
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %29, 1
  br i1 %30, label %31, label %54

; <label>:31:                                     ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

; <label>:38:                                     ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %4, align 8
  br label %76

; <label>:47:                                     ; preds = %31
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %7, align 8
  br label %28

; <label>:54:                                     ; preds = %28
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %54
  %58 = load i32*, i32** %5, align 8
  store i32 0, i32* %58, align 4
  br label %59

; <label>:59:                                     ; preds = %57, %54
  br label %60

; <label>:60:                                     ; preds = %64, %59
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  br label %60

; <label>:67:                                     ; preds = %60
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %73, %74
  store i64 %75, i64* %4, align 8
  br label %76

; <label>:76:                                     ; preds = %67, %38
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
