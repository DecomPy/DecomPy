; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.5.magic-square.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.5.magic-square.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [106 x i8] c"This program creates a magic square of a specified size.\0AThe size must be an odd number between 1 and 99\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Enter the size of the magic square: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Enter an ODD number between 1 and 99\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 99
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15, %12, %0
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %32

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %3, align 8
  %27 = mul nuw i64 %23, %25
  %28 = alloca i32, i64 %27, align 16
  store i64 %23, i64* %4, align 8
  store i64 %25, i64* %5, align 8
  %29 = load i32, i32* %2, align 4
  call void @create_magic_square(i32 %29, i32* %28)
  %30 = load i32, i32* %2, align 4
  call void @print_magic_square(i32 %30, i32* %28)
  store i32 0, i32* %1, align 4
  %31 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %31)
  br label %32

; <label>:32:                                     ; preds = %21, %18
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @create_magic_square(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  store i32 0, i32* %9, align 4
  br label %15

; <label>:15:                                     ; preds = %37, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %10, align 4
  br label %20

; <label>:20:                                     ; preds = %33, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

; <label>:24:                                     ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %14
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %20

; <label>:36:                                     ; preds = %20
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %15

; <label>:40:                                     ; preds = %15
  store i32 0, i32* %9, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %46

; <label>:46:                                     ; preds = %100, %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %103

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %14
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %51, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %50
  %65 = load i32, i32* %3, align 4
  store i32 %65, i32* %7, align 4
  br label %66

; <label>:66:                                     ; preds = %64, %50
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %66
  store i32 -1, i32* %8, align 4
  br label %74

; <label>:74:                                     ; preds = %73, %66
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %14
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %74
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %10, align 4
  br label %99

; <label>:90:                                     ; preds = %74
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %3, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %90
  store i32 -1, i32* %9, align 4
  br label %96

; <label>:96:                                     ; preds = %95, %90
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %99

; <label>:99:                                     ; preds = %96, %87
  br label %100

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %46

; <label>:103:                                    ; preds = %46
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_magic_square(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  store i32 0, i32* %5, align 4
  br label %11

; <label>:11:                                     ; preds = %36, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

; <label>:15:                                     ; preds = %11
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %31, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, %10
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %29)
  br label %31

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %16

; <label>:34:                                     ; preds = %16
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %11

; <label>:39:                                     ; preds = %11
  ret void
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
