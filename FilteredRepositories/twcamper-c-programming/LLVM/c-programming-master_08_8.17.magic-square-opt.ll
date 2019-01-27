; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.17.magic-square.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.17.magic-square.c"
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %15 = load i32, i32* %2, align 4
  %16 = srem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

; <label>:18:                                     ; preds = %0
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 99
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21, %18, %0
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %150

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %2, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = mul nuw i64 %29, %31
  %34 = alloca i32, i64 %33, align 16
  store i64 %29, i64* %10, align 8
  store i64 %31, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %35

; <label>:35:                                     ; preds = %56, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

; <label>:39:                                     ; preds = %35
  store i32 0, i32* %8, align 4
  br label %40

; <label>:40:                                     ; preds = %52, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %31
  %48 = getelementptr inbounds i32, i32* %34, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %40

; <label>:55:                                     ; preds = %40
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %35

; <label>:59:                                     ; preds = %35
  store i32 0, i32* %7, align 4
  %60 = load i32, i32* %2, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %65

; <label>:65:                                     ; preds = %117, %59
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %120

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %31
  %74 = getelementptr inbounds i32, i32* %34, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

; <label>:82:                                     ; preds = %69
  %83 = load i32, i32* %2, align 4
  store i32 %83, i32* %5, align 4
  br label %84

; <label>:84:                                     ; preds = %82, %69
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %2, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %84
  store i32 -1, i32* %6, align 4
  br label %92

; <label>:92:                                     ; preds = %91, %84
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %31
  %98 = getelementptr inbounds i32, i32* %34, i64 %97
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %92
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %8, align 4
  br label %116

; <label>:107:                                    ; preds = %92
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %2, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %107
  store i32 -1, i32* %7, align 4
  br label %113

; <label>:113:                                    ; preds = %112, %107
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

; <label>:116:                                    ; preds = %113, %104
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %65

; <label>:120:                                    ; preds = %65
  store i32 0, i32* %7, align 4
  br label %121

; <label>:121:                                    ; preds = %145, %120
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %2, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %148

; <label>:125:                                    ; preds = %121
  store i32 0, i32* %8, align 4
  br label %126

; <label>:126:                                    ; preds = %140, %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %2, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %143

; <label>:130:                                    ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %31
  %134 = getelementptr inbounds i32, i32* %34, i64 %133
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %138)
  br label %140

; <label>:140:                                    ; preds = %130
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %126

; <label>:143:                                    ; preds = %126
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %145

; <label>:145:                                    ; preds = %143
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %121

; <label>:148:                                    ; preds = %121
  store i32 0, i32* %1, align 4
  %149 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %149)
  br label %150

; <label>:150:                                    ; preds = %148, %24
  %151 = load i32, i32* %1, align 4
  ret i32 %151
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

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
