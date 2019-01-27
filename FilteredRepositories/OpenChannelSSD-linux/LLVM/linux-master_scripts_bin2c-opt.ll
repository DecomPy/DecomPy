; ModuleID = 'Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_scripts_bin2c.c'
source_filename = "Repositories/OpenChannelSSD-linux/Unfiltered/linux-master_scripts_bin2c.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [21 x i8] c"const char %s[] %s=\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\5Cx%02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\09;\0A\0A#include <linux/types.h>\0A\0Aconst size_t %s_size = %d;\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %10
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  br label %21

; <label>:20:                                     ; preds = %10
  br label %21

; <label>:21:                                     ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %20 ]
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %13, i8* %22)
  br label %24

; <label>:24:                                     ; preds = %21, %2
  br label %25

; <label>:25:                                     ; preds = %42, %24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %27

; <label>:27:                                     ; preds = %39, %25
  %28 = call i32 @getchar()
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = srem i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %30
  br label %40

; <label>:39:                                     ; preds = %30
  br label %27

; <label>:40:                                     ; preds = %38, %27
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %25, label %45

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %45
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i8* %51, i32 %52)
  br label %54

; <label>:54:                                     ; preds = %48, %45
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @getchar() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
