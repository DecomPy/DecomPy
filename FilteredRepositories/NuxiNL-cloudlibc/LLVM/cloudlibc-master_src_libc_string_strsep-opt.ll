; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_strsep.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_string_strsep.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @strsep(i8**, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %32

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcspn(i8* %15, i8* %16)
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %13
  %24 = load i8**, i8*** %4, align 8
  store i8* null, i8** %24, align 8
  br label %30

; <label>:25:                                     ; preds = %13
  %26 = load i8*, i8** %7, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8**, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  br label %30

; <label>:30:                                     ; preds = %25, %23
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %3, align 8
  br label %32

; <label>:32:                                     ; preds = %30, %12
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
