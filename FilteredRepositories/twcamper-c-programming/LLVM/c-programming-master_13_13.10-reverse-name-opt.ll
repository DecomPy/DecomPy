; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.10-reverse-name.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.10-reverse-name.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Enter First Name and Last Name: \00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%.*s, %c.\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [65 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %4 = getelementptr inbounds [65 x i8], [65 x i8]* %2, i32 0, i32 0
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %6 = call i8* @fgets(i8* %4, i32 65, %struct.__sFILE* %5)
  %7 = getelementptr inbounds [65 x i8], [65 x i8]* %2, i32 0, i32 0
  call void @reverse_name(i8* %7)
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* %2, i32 0, i32 0
  %9 = call i32 @puts(i8* %8)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @reverse_name(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  br label %7

; <label>:7:                                      ; preds = %19, %1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br label %17

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %17
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %7

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %3, align 1
  br label %25

; <label>:25:                                     ; preds = %37, %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br label %35

; <label>:35:                                     ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %35
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %25

; <label>:40:                                     ; preds = %35
  br label %41

; <label>:41:                                     ; preds = %53, %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br label %51

; <label>:51:                                     ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %41

; <label>:56:                                     ; preds = %51
  store i32 0, i32* %5, align 4
  br label %57

; <label>:57:                                     ; preds = %84, %56
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %81

; <label>:65:                                     ; preds = %57
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 32
  br label %81

; <label>:81:                                     ; preds = %73, %65, %57
  %82 = phi i1 [ false, %65 ], [ false, %57 ], [ %80, %73 ]
  br i1 %82, label %83, label %87

; <label>:83:                                     ; preds = %81
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %57

; <label>:87:                                     ; preds = %81
  %88 = load i8*, i8** %2, align 8
  %89 = load i8*, i8** %2, align 8
  %90 = call i64 @llvm.objectsize.i64.p0i8(i8* %89, i1 false, i1 true)
  %91 = load i32, i32* %5, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %3, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %88, i32 0, i64 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %91, i8* %92, i32 %94)
  ret void
}

declare i32 @puts(i8*) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
