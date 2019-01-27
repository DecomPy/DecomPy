; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcstok.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcstok.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @wcstok(i32* noalias, i32* noalias, i32** noalias) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %3
  %12 = load i32**, i32*** %7, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  store i32* null, i32** %4, align 8
  br label %47

; <label>:17:                                     ; preds = %11
  br label %18

; <label>:18:                                     ; preds = %17, %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @wcsspn(i32* %19, i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 %21
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %18
  %28 = load i32**, i32*** %7, align 8
  store i32* null, i32** %28, align 8
  store i32* null, i32** %4, align 8
  br label %47

; <label>:29:                                     ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @wcscspn(i32* %31, i32* %32)
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %29
  %39 = load i32**, i32*** %7, align 8
  store i32* null, i32** %39, align 8
  br label %45

; <label>:40:                                     ; preds = %29
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  br label %45

; <label>:45:                                     ; preds = %40, %38
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %4, align 8
  br label %47

; <label>:47:                                     ; preds = %45, %27, %16
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare i64 @wcsspn(i32*, i32*) #1

declare i64 @wcscspn(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
