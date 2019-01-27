; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_memchr.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_memchr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @memchr(i8*, i32, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  br label %10

; <label>:10:                                     ; preds = %24, %3
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %7, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %27

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = trunc i32 %18 to i8
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %4, align 8
  br label %28

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  br label %10

; <label>:27:                                     ; preds = %10
  store i8* null, i8** %4, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %22
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
