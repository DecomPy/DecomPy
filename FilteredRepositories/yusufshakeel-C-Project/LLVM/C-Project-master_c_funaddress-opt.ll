; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_funaddress.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_c_funaddress.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i8 97, i8* %2, align 1
  store i8 98, i8* %3, align 1
  store i32 10, i32* %4, align 4
  store i32 20, i32* %5, align 4
  %8 = call i8* @funChar(i8* %2, i8* %3)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %11)
  %13 = call i32* @funInt(i32* %4, i32* %5)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %15)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @funChar(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %3, align 8
  br label %28

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %3, align 8
  br label %28

; <label>:25:                                     ; preds = %15
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %26, %23, %13
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @funInt(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %3, align 8
  br label %24

; <label>:13:                                     ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %13
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %3, align 8
  br label %24

; <label>:21:                                     ; preds = %13
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %3, align 8
  br label %24

; <label>:24:                                     ; preds = %22, %19, %11
  %25 = load i32*, i32** %3, align 8
  ret i32* %25
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
