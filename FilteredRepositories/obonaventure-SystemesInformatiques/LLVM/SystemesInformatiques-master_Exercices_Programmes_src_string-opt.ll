; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_Programmes_src_string.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_Programmes_src_string.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" World!\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Length of %s: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Putting %s and %s together gives %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @strlen(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %12, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @strcat(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %28

; <label>:12:                                     ; preds = %6
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 %17, i8* %24, align 1
  br label %25

; <label>:25:                                     ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

; <label>:28:                                     ; preds = %6
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %12, i64 %14)
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %16, i64 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %20, i64 %22)
  store i32 0, i32* %11, align 4
  br label %24

; <label>:24:                                     ; preds = %39, %2
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %24

; <label>:42:                                     ; preds = %24
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i32 0, i32 0
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strcat(i8* %45, i8* %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %43, i8* %44, i8* %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %51, i64 %55)
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %59, i64 %63)
  store i32 0, i32* %11, align 4
  br label %65

; <label>:65:                                     ; preds = %84, %42
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %87

; <label>:73:                                     ; preds = %65
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %82
  store i8 %80, i8* %83, align 1
  br label %84

; <label>:84:                                     ; preds = %73
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %65

; <label>:87:                                     ; preds = %65
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i32 0, i32 0
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strcat(i8* %94, i8* %97)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %90, i8* %93, i8* %98)
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
