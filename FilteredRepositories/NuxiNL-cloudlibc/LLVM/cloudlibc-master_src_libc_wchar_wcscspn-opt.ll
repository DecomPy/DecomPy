; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcscspn.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcscspn.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @wcscspn(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %6, align 8
  br label %10

; <label>:10:                                     ; preds = %18, %2
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = urem i32 %12, 64
  %14 = zext i32 %13 to i64
  %15 = shl i64 1, %14
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  br label %18

; <label>:18:                                     ; preds = %10
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %10, label %23

; <label>:23:                                     ; preds = %18
  %24 = load i32*, i32** %3, align 8
  store i32* %24, i32** %7, align 8
  br label %25

; <label>:25:                                     ; preds = %56, %23
  %26 = load i64, i64* %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = urem i32 %28, 64
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = and i64 %26, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

; <label>:34:                                     ; preds = %25
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %8, align 8
  br label %36

; <label>:36:                                     ; preds = %50, %34
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %49

; <label>:42:                                     ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  ret i64 %48

; <label>:49:                                     ; preds = %36
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  %53 = load i32, i32* %51, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %36, label %55

; <label>:55:                                     ; preds = %50
  br label %56

; <label>:56:                                     ; preds = %55, %25
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  br label %25
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
