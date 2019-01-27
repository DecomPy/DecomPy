; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_l64a_r.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_stdlib_l64a_r.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [65 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @l64a_r(i64, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %20, %3
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %6, align 8
  store i8 0, i8* %19, align 1
  store i32 0, i32* %4, align 4
  br label %31

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 63
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [65 x i8], [65 x i8]* @.str, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  store i8 %25, i8* %26, align 1
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %28, 6
  store i32 %29, i32* %8, align 4
  br label %11

; <label>:30:                                     ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %31

; <label>:31:                                     ; preds = %30, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
