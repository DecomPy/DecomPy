; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_ceil.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_codesnippet_logbase2_ceil.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@ceil_log2.t = internal constant [6 x i64] [i64 -4294967296, i64 4294901760, i64 65280, i64 240, i64 12, i64 2], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ceil_log2(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = sub i64 %8, 1
  %10 = and i64 %7, %9
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %3, align 4
  store i32 32, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

; <label>:14:                                     ; preds = %39, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %42

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x i64], [6 x i64]* @ceil_log2.t, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %18, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %17
  br label %28

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %4, align 4
  br label %28

; <label>:28:                                     ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %2, align 8
  %35 = zext i32 %33 to i64
  %36 = lshr i64 %34, %35
  store i64 %36, i64* %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %14

; <label>:42:                                     ; preds = %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @atol(i8* %8)
  %10 = call i32 @ceil_log2(i64 %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %10)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i64 @atol(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
