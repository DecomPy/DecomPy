; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncpy.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @wcsncpy(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %7, align 8
  br label %9

; <label>:9:                                      ; preds = %18, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %16
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %5, align 8
  %21 = load i32, i32* %19, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %6, align 8
  br label %9

; <label>:26:                                     ; preds = %16
  br label %27

; <label>:27:                                     ; preds = %31, %26
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %6, align 8
  %30 = icmp ugt i64 %28, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  store i32 0, i32* %32, align 4
  br label %27

; <label>:34:                                     ; preds = %27
  %35 = load i32*, i32** %7, align 8
  ret i32* %35
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
