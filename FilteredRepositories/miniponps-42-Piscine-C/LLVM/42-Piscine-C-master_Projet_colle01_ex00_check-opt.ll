; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle01_ex00_check.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle01_ex00_check.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @check_line(i8**, i8 signext, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 9
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %9
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %12
  store i32 0, i32* %4, align 4
  br label %31

; <label>:27:                                     ; preds = %12
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %9

; <label>:30:                                     ; preds = %9
  store i32 1, i32* %4, align 4
  br label %31

; <label>:31:                                     ; preds = %30, %26
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @check_column(i8**, i8 signext, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp sle i32 %10, 9
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %9
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %12
  store i32 0, i32* %4, align 4
  br label %31

; <label>:27:                                     ; preds = %12
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %9

; <label>:30:                                     ; preds = %9
  store i32 1, i32* %4, align 4
  br label %31

; <label>:31:                                     ; preds = %30, %26
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @check_block(i8**, i32, i32, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 -1, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 3
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %4
  store i32 1, i32* %7, align 4
  br label %25

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 6
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store i32 4, i32* %7, align 4
  br label %24

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 9
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 7, i32* %7, align 4
  br label %23

; <label>:23:                                     ; preds = %22, %19
  br label %24

; <label>:24:                                     ; preds = %23, %18
  br label %25

; <label>:25:                                     ; preds = %24, %14
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 3
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %8, align 4
  br label %30

; <label>:30:                                     ; preds = %57, %25
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %62

; <label>:34:                                     ; preds = %30
  store i32 -1, i32* %11, align 4
  br label %35

; <label>:35:                                     ; preds = %54, %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %57

; <label>:39:                                     ; preds = %35
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %9, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %39
  store i32 0, i32* %5, align 4
  br label %63

; <label>:54:                                     ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %35

; <label>:57:                                     ; preds = %35
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 3
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %30

; <label>:62:                                     ; preds = %30
  store i32 1, i32* %5, align 4
  br label %63

; <label>:63:                                     ; preds = %62, %53
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @check_grille(i8**, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %73

; <label>:10:                                     ; preds = %2
  br label %11

; <label>:11:                                     ; preds = %71, %10
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = icmp sle i32 %13, 9
  br i1 %14, label %15, label %72

; <label>:15:                                     ; preds = %11
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %64, %15
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %67

; <label>:27:                                     ; preds = %16
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 48
  br i1 %38, label %51, label %39

; <label>:39:                                     ; preds = %27
  %40 = load i8**, i8*** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sgt i32 %49, 57
  br i1 %50, label %51, label %64

; <label>:51:                                     ; preds = %39, %27
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 46
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %51
  store i32 0, i32* %3, align 4
  br label %74

; <label>:64:                                     ; preds = %51, %39
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %16

; <label>:67:                                     ; preds = %16
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 9
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %67
  store i32 0, i32* %3, align 4
  br label %74

; <label>:71:                                     ; preds = %67
  br label %11

; <label>:72:                                     ; preds = %11
  store i32 1, i32* %3, align 4
  br label %74

; <label>:73:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

; <label>:74:                                     ; preds = %73, %72, %70, %63
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
