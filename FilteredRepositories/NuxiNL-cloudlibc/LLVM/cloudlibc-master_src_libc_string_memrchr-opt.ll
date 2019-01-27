; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_memrchr.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_memrchr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @memrchr(i8*, i32, i64) #0 {
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
  %10 = load i64, i64* %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 %10
  store i8* %12, i8** %8, align 8
  br label %13

; <label>:13:                                     ; preds = %29, %3
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %7, align 8
  %16 = icmp ugt i64 %14, 0
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = trunc i32 %23 to i8
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %17
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %4, align 8
  br label %31

; <label>:29:                                     ; preds = %17
  br label %13

; <label>:30:                                     ; preds = %13
  store i8* null, i8** %4, align 8
  br label %31

; <label>:31:                                     ; preds = %30, %27
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
