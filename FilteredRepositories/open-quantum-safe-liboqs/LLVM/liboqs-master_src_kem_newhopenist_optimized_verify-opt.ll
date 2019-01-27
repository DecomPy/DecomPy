; ModuleID = 'Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_newhopenist_optimized_verify.c'
source_filename = "Repositories/open-quantum-safe-liboqs/Unfiltered/liboqs-master_src_kem_newhopenist_optimized_verify.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @verify(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

; <label>:9:                                      ; preds = %28, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %31

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %18, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

; <label>:28:                                     ; preds = %13
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %8, align 8
  br label %9

; <label>:31:                                     ; preds = %9
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 0, %32
  %34 = lshr i64 %33, 63
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cmov(i8*, i8*, i64, i8 zeroext) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %10 = load i8, i8* %8, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 0, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %8, align 1
  store i64 0, i64* %9, align 8
  br label %14

; <label>:14:                                     ; preds = %40, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %43

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %25, %30
  %32 = and i32 %20, %31
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, %32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  br label %40

; <label>:40:                                     ; preds = %18
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %14

; <label>:43:                                     ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
