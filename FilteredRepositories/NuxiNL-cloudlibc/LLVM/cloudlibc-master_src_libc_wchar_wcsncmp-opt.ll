; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncmp.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @wcsncmp(i32*, i32*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

; <label>:10:                                     ; preds = %34, %3
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %7, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %36

; <label>:25:                                     ; preds = %14
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %25
  store i32 1, i32* %4, align 4
  br label %36

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  br label %35

; <label>:34:                                     ; preds = %30
  br label %10

; <label>:35:                                     ; preds = %33, %10
  store i32 0, i32* %4, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %29, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
