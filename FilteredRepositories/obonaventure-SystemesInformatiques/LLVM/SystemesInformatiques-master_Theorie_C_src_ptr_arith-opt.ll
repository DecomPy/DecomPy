; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_src_ptr_arith.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_src_ptr_arith.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [24 x i8] c"%X est \C3\A0 l'adresse %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ptr_char contient %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 16909060, i32* %10, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 84281096, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 151653132, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %13

; <label>:13:                                     ; preds = %25, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %22
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %20, i32* %23)
  br label %25

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %13

; <label>:28:                                     ; preds = %13
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i32 0, i32 0
  store i32* %29, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %30

; <label>:30:                                     ; preds = %40, %28
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %35, i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  br label %40

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %30

; <label>:43:                                     ; preds = %30
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i32 0, i32 0
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %46)
  store i32 0, i32* %7, align 4
  br label %48

; <label>:48:                                     ; preds = %59, %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %62

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %54, i8* %55)
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %59

; <label>:59:                                     ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %48

; <label>:62:                                     ; preds = %48
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
