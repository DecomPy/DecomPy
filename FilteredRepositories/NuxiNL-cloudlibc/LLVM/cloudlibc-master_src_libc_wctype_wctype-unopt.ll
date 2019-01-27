; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wctype_wctype.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wctype_wctype.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

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
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @wctype(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8, !tbaa !3
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 ptrtoint (i32 (i32)* @iswalnum to i32), i32* %2, align 4
  br label %64

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !tbaa !3
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  store i32 ptrtoint (i32 (i32)* @iswalpha to i32), i32* %2, align 4
  br label %64

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !tbaa !3
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  store i32 ptrtoint (i32 (i32)* @iswblank to i32), i32* %2, align 4
  br label %64

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !tbaa !3
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %18
  store i32 ptrtoint (i32 (i32)* @iswcntrl to i32), i32* %2, align 4
  br label %64

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %3, align 8, !tbaa !3
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23
  store i32 ptrtoint (i32 (i32)* @iswdigit to i32), i32* %2, align 4
  br label %64

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8, !tbaa !3
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %28
  store i32 ptrtoint (i32 (i32)* @iswgraph to i32), i32* %2, align 4
  br label %64

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %3, align 8, !tbaa !3
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %33
  store i32 ptrtoint (i32 (i32)* @iswlower to i32), i32* %2, align 4
  br label %64

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %3, align 8, !tbaa !3
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %38
  store i32 ptrtoint (i32 (i32)* @iswprint to i32), i32* %2, align 4
  br label %64

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %3, align 8, !tbaa !3
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  store i32 ptrtoint (i32 (i32)* @iswpunct to i32), i32* %2, align 4
  br label %64

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %3, align 8, !tbaa !3
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %48
  store i32 ptrtoint (i32 (i32)* @iswspace to i32), i32* %2, align 4
  br label %64

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %3, align 8, !tbaa !3
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  store i32 ptrtoint (i32 (i32)* @iswupper to i32), i32* %2, align 4
  br label %64

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %3, align 8, !tbaa !3
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

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswalnum(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 1280)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswalpha(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 256)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswblank(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 131072)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswcntrl(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 512)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswdigit(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__isctype(i32 %3, i64 1024)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswgraph(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 2048)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswlower(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 4096)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswprint(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 262144)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswpunct(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 8192)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswspace(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 16384)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswupper(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__istype(i32 %3, i64 32768)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @iswxdigit(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__isctype(i32 %3, i64 65536)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32, i64) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !9
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = call i32 @isascii(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %4, align 8, !tbaa !9
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  br label %28

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %3, align 4, !tbaa !7
  %22 = load i64, i64* %4, align 8, !tbaa !9
  %23 = call i32 @__maskrune(i32 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  br label %28

; <label>:28:                                     ; preds = %20, %8
  %29 = phi i32 [ %19, %8 ], [ %27, %20 ]
  ret i32 %29
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = and i32 %3, -128
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare i32 @__maskrune(i32, i64) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32, i64) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !9
  %5 = load i32, i32* %3, align 4, !tbaa !7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !tbaa !7
  %9 = icmp sge i32 %8, 256
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %2
  br label %23

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %4, align 8, !tbaa !9
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  br label %23

; <label>:23:                                     ; preds = %11, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %11 ]
  ret i32 %24
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
