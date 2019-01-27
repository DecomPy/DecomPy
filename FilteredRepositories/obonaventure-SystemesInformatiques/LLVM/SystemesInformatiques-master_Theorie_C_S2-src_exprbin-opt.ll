; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_exprbin.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_exprbin.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [11 x i8] c"~ %s = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s & %s = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s | %s = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s ^ %s = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @int2bin(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 32
  store i8 0, i8* %7, align 1
  store i32 31, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %28, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 49, i8* %19, align 1
  br label %25

; <label>:20:                                     ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 48, i8* %24, align 1
  br label %25

; <label>:25:                                     ; preds = %20, %15
  %26 = load i32, i32* %3, align 4
  %27 = lshr i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %8

; <label>:31:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @char2bin(i8 zeroext, i8*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  store i8 0, i8* %7, align 1
  store i32 7, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %31, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %34

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 49, i8* %20, align 1
  br label %26

; <label>:21:                                     ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 48, i8* %25, align 1
  br label %26

; <label>:26:                                     ; preds = %21, %16
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 1
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  br label %31

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %8

; <label>:34:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca [32 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %6, align 1
  store i8 -6, i8* %7, align 1
  store i8 95, i8* %8, align 1
  store i8 80, i8* %9, align 1
  store i8 80, i8* %10, align 1
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 5, i32* %14, align 4
  %18 = load i8, i8* %6, align 1
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @char2bin(i8 zeroext %18, i8* %19)
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, -1
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @char2bin(i8 zeroext %23, i8* %24)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* %25, i8* %26)
  %28 = load i8, i8* %7, align 1
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @char2bin(i8 zeroext %28, i8* %29)
  %30 = load i8, i8* %8, align 1
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @char2bin(i8 zeroext %30, i8* %31)
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @char2bin(i8 zeroext %37, i8* %38)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* %39, i8* %40, i8* %41)
  %43 = load i8, i8* %7, align 1
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  call void @char2bin(i8 zeroext %43, i8* %44)
  %45 = load i8, i8* %8, align 1
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @char2bin(i8 zeroext %45, i8* %46)
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @char2bin(i8 zeroext %52, i8* %53)
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %54, i8* %55, i8* %56)
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = xor i32 %59, %61
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @char2bin(i8 zeroext %63, i8* %64)
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %65, i8* %66, i8* %67)
  %69 = load i8, i8* %7, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, -1
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %11, align 1
  %73 = load i8, i8* %7, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %11, align 1
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %11, align 1
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %8, align 1
  %88 = zext i8 %87 to i32
  %89 = xor i32 %86, %88
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %11, align 1
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 126
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %11, align 1
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, 24
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %11, align 1
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
