; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-61.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-61.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @var_prod_ele(i32, i32*, i32*, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, %19
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %13, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = mul nsw i64 0, %23
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %14, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 4, %38
  store i32 %39, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %60, %5
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %63

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %50, %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

; <label>:60:                                     ; preds = %44
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %11, align 4
  br label %40

; <label>:63:                                     ; preds = %40
  %64 = load i32, i32* %12, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
