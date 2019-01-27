; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wctype_wctype.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wctype_wctype.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @wctype(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 ptrtoint (i32 (i32)* @iswalnum to i32), i32* %2, align 4
  br label %64

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  store i32 ptrtoint (i32 (i32)* @iswalpha to i32), i32* %2, align 4
  br label %64

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  store i32 ptrtoint (i32 (i32)* @iswblank to i32), i32* %2, align 4
  br label %64

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %18
  store i32 ptrtoint (i32 (i32)* @iswcntrl to i32), i32* %2, align 4
  br label %64

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23
  store i32 ptrtoint (i32 (i32)* @iswdigit to i32), i32* %2, align 4
  br label %64

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %28
  store i32 ptrtoint (i32 (i32)* @iswgraph to i32), i32* %2, align 4
  br label %64

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %33
  store i32 ptrtoint (i32 (i32)* @iswlower to i32), i32* %2, align 4
  br label %64

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %38
  store i32 ptrtoint (i32 (i32)* @iswprint to i32), i32* %2, align 4
  br label %64

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  store i32 ptrtoint (i32 (i32)* @iswpunct to i32), i32* %2, align 4
  br label %64

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %48
  store i32 ptrtoint (i32 (i32)* @iswspace to i32), i32* %2, align 4
  br label %64

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  store i32 ptrtoint (i32 (i32)* @iswupper to i32), i32* %2, align 4
  br label %64

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0))
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %58
  store i32 ptrtoint (i32 (i32)* @iswxdigit to i32), i32* %2, align 4
  br label %64

; <label>:63:                                     ; preds = %58
  store i32 0, i32* %2, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @iswalnum(i32) #1

declare i32 @iswalpha(i32) #1

declare i32 @iswblank(i32) #1

declare i32 @iswcntrl(i32) #1

declare i32 @iswdigit(i32) #1

declare i32 @iswgraph(i32) #1

declare i32 @iswlower(i32) #1

declare i32 @iswprint(i32) #1

declare i32 @iswpunct(i32) #1

declare i32 @iswspace(i32) #1

declare i32 @iswupper(i32) #1

declare i32 @iswxdigit(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
