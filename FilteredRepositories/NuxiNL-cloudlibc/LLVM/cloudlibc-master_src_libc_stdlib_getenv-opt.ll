; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getenv.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_getenv.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@environ = external global i8**, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getenv(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i8**, i8*** @environ, align 8
  store i8** %8, i8*** %5, align 8
  br label %9

; <label>:9:                                      ; preds = %35, %1
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %9
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @memcmp(i8* %15, i8* %16, i64 %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %13
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 61
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %20
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %2, align 8
  br label %39

; <label>:34:                                     ; preds = %20, %13
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  br label %9

; <label>:38:                                     ; preds = %9
  store i8* null, i8** %2, align 8
  br label %39

; <label>:39:                                     ; preds = %38, %28
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare i64 @strlen(i8*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
