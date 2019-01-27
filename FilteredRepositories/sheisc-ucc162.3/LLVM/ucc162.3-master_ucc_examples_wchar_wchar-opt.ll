; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_wchar_wchar.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_wchar_wchar.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.__mbstate_t = type { i64, [120 x i8] }

@.str = private unnamed_addr constant [13 x i8] c"abc\E4\BD\A0\E5\A5\BDabc\00", align 1
@cstr = global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [17 x i32] [i32 109, i32 117, i32 108, i32 116, i32 105, i32 112, i32 108, i32 101, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 58, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 48, i32 120, i32 37, i32 120, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [14 x i32] [i32 10, i32 119, i32 105, i32 100, i32 101, i32 32, i32 99, i32 104, i32 97, i32 114, i32 115, i32 58, i32 10, i32 0], align 4
@__mb_cur_max = external global i32, align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 97, i32 98, i32 99, i32 20320, i32 22909, i32 97, i32 98, i32 99, i32 0], align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i32] [i32 37, i32 83, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 20320, i32 22909, i32 32, i32 20320, i32 22909, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"not print at all,why ?\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ConvertMB2WC(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  %7 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([17 x i32], [17 x i32]* @.str.1, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %12, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i32 0, i32 0), i32 %15)
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %8

; <label>:19:                                     ; preds = %8
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** %3, align 8
  %21 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.3, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %26, %19
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @__mb_cur_max, align 4
  %29 = sext i32 %28 to i64
  %30 = call i64 @mbrtowc(i32* %5, i8* %27, i64 %29, %union.__mbstate_t* null)
  store i64 %30, i64* %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i32 0, i32 0), i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %3, align 8
  br label %22

; <label>:36:                                     ; preds = %22
  %37 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.4, i32 0, i32 0))
  ret void
}

declare i32 @wprintf(i32*, ...) #1

declare i64 @mbrtowc(i32*, i8*, i64, %union.__mbstate_t*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.5, i32 0, i32 0), i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.7, i32 0, i32 0), i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

; <label>:7:                                      ; preds = %20, %0
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @wcslen(i32* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %7
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i32 0, i32 0), i32 %18)
  br label %20

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

; <label>:23:                                     ; preds = %7
  %24 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.4, i32 0, i32 0))
  %25 = load i8*, i8** @cstr, align 8
  call void @ConvertMB2WC(i8* %25)
  %26 = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.8, i32 0, i32 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  ret i32 0
}

declare i8* @setlocale(i32, i8*) #1

declare i64 @wcslen(i32*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
