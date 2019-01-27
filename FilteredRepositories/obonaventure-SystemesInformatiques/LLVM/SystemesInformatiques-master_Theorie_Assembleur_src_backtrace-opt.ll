; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_backtrace.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Theorie_Assembleur_src_backtrace.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [21 x i8] c"[%p] %20ld 0x%-16lx \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i8 @safechar(i8 signext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp sge i32 %5, 97
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp sle i32 %9, 122
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %7
  %12 = load i8, i8* %3, align 1
  store i8 %12, i8* %2, align 1
  br label %94

; <label>:13:                                     ; preds = %7, %1
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 65
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sle i32 %19, 90
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %17
  %22 = load i8, i8* %3, align 1
  store i8 %22, i8* %2, align 1
  br label %94

; <label>:23:                                     ; preds = %17, %13
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %3, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %3, align 1
  store i8 %32, i8* %2, align 1
  br label %94

; <label>:33:                                     ; preds = %27, %23
  %34 = load i8, i8* %3, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %3, align 1
  store i8 %38, i8* %2, align 1
  br label %94

; <label>:39:                                     ; preds = %33
  %40 = load i8, i8* %3, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load i8, i8* %3, align 1
  store i8 %44, i8* %2, align 1
  br label %94

; <label>:45:                                     ; preds = %39
  %46 = load i8, i8* %3, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = load i8, i8* %3, align 1
  store i8 %50, i8* %2, align 1
  br label %94

; <label>:51:                                     ; preds = %45
  %52 = load i8, i8* %3, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 44
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %51
  %56 = load i8, i8* %3, align 1
  store i8 %56, i8* %2, align 1
  br label %94

; <label>:57:                                     ; preds = %51
  %58 = load i8, i8* %3, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 40
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %57
  %62 = load i8, i8* %3, align 1
  store i8 %62, i8* %2, align 1
  br label %94

; <label>:63:                                     ; preds = %57
  %64 = load i8, i8* %3, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 41
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %63
  %68 = load i8, i8* %3, align 1
  store i8 %68, i8* %2, align 1
  br label %94

; <label>:69:                                     ; preds = %63
  %70 = load i8, i8* %3, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 91
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %69
  %74 = load i8, i8* %3, align 1
  store i8 %74, i8* %2, align 1
  br label %94

; <label>:75:                                     ; preds = %69
  %76 = load i8, i8* %3, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 93
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %75
  %80 = load i8, i8* %3, align 1
  store i8 %80, i8* %2, align 1
  br label %94

; <label>:81:                                     ; preds = %75
  %82 = load i8, i8* %3, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 123
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %81
  %86 = load i8, i8* %3, align 1
  store i8 %86, i8* %2, align 1
  br label %94

; <label>:87:                                     ; preds = %81
  %88 = load i8, i8* %3, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 125
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %87
  %92 = load i8, i8* %3, align 1
  store i8 %92, i8* %2, align 1
  br label %94

; <label>:93:                                     ; preds = %87
  store i8 46, i8* %2, align 1
  br label %94

; <label>:94:                                     ; preds = %93, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %21, %11
  %95 = load i8, i8* %2, align 1
  ret i8 %95
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @print_backtrace(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast i64** %3 to i64*
  %6 = getelementptr inbounds i64, i64* %5, i64 1
  store i64* %6, i64** %3, align 8
  br label %7

; <label>:7:                                      ; preds = %37, %1
  %8 = load i64*, i64** %3, align 8
  %9 = ptrtoint i64* %8 to i64
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = icmp sle i64 %9, %11
  br i1 %12, label %13, label %41

; <label>:13:                                     ; preds = %7
  %14 = load i64*, i64** %3, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i64* %14, i64 %16, i64 %18)
  store i32 0, i32* %4, align 4
  br label %20

; <label>:20:                                     ; preds = %34, %13
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %37

; <label>:24:                                     ; preds = %20
  %25 = load i64*, i64** %3, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call signext i8 @safechar(i8 signext %30)
  %32 = sext i8 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %32)
  br label %34

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %20

; <label>:37:                                     ; preds = %20
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %3, align 8
  br label %7

; <label>:41:                                     ; preds = %7
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @bar(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @print_backtrace(i8* %3)
  ret i64 42
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @foo(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 42, i64* %3, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @bar(i8* %11)
  %13 = add nsw i64 %10, %12
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %7, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add i64 %15, 1
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = call i64 @foo(i8* %17)
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
