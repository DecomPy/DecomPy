; ModuleID = 'Repositories/vim-vim/Unfiltered/vim-master_src_po_sjiscorr.c'
source_filename = "Repositories/vim-vim/Unfiltered/vim-master_src_po_sjiscorr.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"charset=utf-8\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"charset=UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"charset=cp932\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"# Original translations\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"# generated from ja.po, DO NOT EDIT\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

; <label>:8:                                      ; preds = %98, %2
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %11 = call i8* @fgets(i8* %9, i32 1024, %struct.__sFILE* %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %99

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  store i8* %14, i8** %7, align 8
  br label %15

; <label>:15:                                     ; preds = %95, %13
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %98

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 13)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i64 13)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %24, %20
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %30 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct.__sFILE* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 12
  store i8* %32, i8** %7, align 8
  br label %94

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i64 23)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %33
  %38 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %39 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), %struct.__sFILE* %38)
  br label %40

; <label>:40:                                     ; preds = %46, %37
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 10
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  br label %40

; <label>:49:                                     ; preds = %40
  br label %93

; <label>:50:                                     ; preds = %33
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %65

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 95
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %55
  %62 = call i32 @putchar(i32 92)
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %92

; <label>:65:                                     ; preds = %55, %50
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

; <label>:71:                                     ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = call i32 @putchar(i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %81, label %86

; <label>:81:                                     ; preds = %71
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 @putchar(i32 %84)
  br label %86

; <label>:86:                                     ; preds = %81, %71
  br label %87

; <label>:87:                                     ; preds = %86, %65
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = call i32 @putchar(i32 %90)
  br label %92

; <label>:92:                                     ; preds = %87, %61
  br label %93

; <label>:93:                                     ; preds = %92, %49
  br label %94

; <label>:94:                                     ; preds = %93, %28
  br label %95

; <label>:95:                                     ; preds = %94
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  br label %15

; <label>:98:                                     ; preds = %15
  br label %8

; <label>:99:                                     ; preds = %8
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
