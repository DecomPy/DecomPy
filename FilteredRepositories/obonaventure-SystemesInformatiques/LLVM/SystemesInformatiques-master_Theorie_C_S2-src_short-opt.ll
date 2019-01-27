; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_short.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_C_S2-src_short.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [38 x i8] c"\0APuissances de 5 en notation sign\C3\A9e\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"5^%d=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\0APuissances de 10 en notation non sign\C3\A9e\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"10^%d=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i16 1, i16* %6, align 2
  store i16 1, i16* %7, align 2
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %8, align 4
  br label %10

; <label>:10:                                     ; preds = %22, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %25

; <label>:13:                                     ; preds = %10
  %14 = load i16, i16* %6, align 2
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 5
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %6, align 2
  %18 = load i32, i32* %8, align 4
  %19 = load i16, i16* %6, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %18, i32 %20)
  br label %22

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %10

; <label>:25:                                     ; preds = %10
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %39, %25
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %27
  %31 = load i16, i16* %7, align 2
  %32 = zext i16 %31 to i32
  %33 = mul nsw i32 %32, 10
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %7, align 2
  %35 = load i32, i32* %8, align 4
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %35, i32 %37)
  br label %39

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %27

; <label>:42:                                     ; preds = %27
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
