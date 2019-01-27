; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.5.reverse-sentence.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.5.reverse-sentence.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Enter a sentence: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca [255 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %0
  %7 = call i32 @getchar()
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %6
  %12 = load i8, i8* %3, align 1
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 %14
  store i8 %12, i8* %15, align 1
  br label %16

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i32 0, i32 0
  %24 = load i32, i32* %2, align 4
  call void @print_reversed(i8* %23, i32 %24)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @getchar() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_reversed(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 46
  br i1 %16, label %27, label %17

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 63
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 33
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %22, %17, %2
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %7, align 1
  %30 = load i8*, i8** %6, align 8
  store i8 0, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %27, %22
  br label %32

; <label>:32:                                     ; preds = %90, %31
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = icmp uge i8* %33, %34
  br i1 %35, label %36, label %93

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %90

; <label>:45:                                     ; preds = %41, %36
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %54

; <label>:54:                                     ; preds = %51, %45
  br label %55

; <label>:55:                                     ; preds = %67, %54
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 32
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br label %65

; <label>:65:                                     ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %74

; <label>:67:                                     ; preds = %65
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %55

; <label>:74:                                     ; preds = %65
  %75 = load i8*, i8** %5, align 8
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %87

; <label>:79:                                     ; preds = %74
  %80 = load i8, i8* %7, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %79
  %83 = load i8, i8* %7, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %84)
  br label %86

; <label>:86:                                     ; preds = %82, %79
  br label %89

; <label>:87:                                     ; preds = %74
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 32)
  br label %89

; <label>:89:                                     ; preds = %87, %86
  br label %90

; <label>:90:                                     ; preds = %89, %41
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %6, align 8
  br label %32

; <label>:93:                                     ; preds = %32
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
