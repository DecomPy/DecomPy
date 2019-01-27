; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_wcount.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_wcount.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"Enter string: \00", align 1
@str = common global [200 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"Enter word: \00", align 1
@w = common global [20 x i8] zeroinitializer, align 16
@slen = common global i32 0, align 4
@wlen = common global i32 0, align 4
@wcount = common global i32 0, align 4
@j = common global i32 0, align 4
@i = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Word count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %3 = call i8* @gets(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %5 = call i8* @gets(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @w, i32 0, i32 0))
  %6 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @str, i32 0, i32 0))
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @slen, align 4
  %8 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @w, i32 0, i32 0))
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* @wlen, align 4
  store i32 0, i32* @wcount, align 4
  store i32 0, i32* @j, align 4
  store i32 0, i32* @i, align 4
  br label %10

; <label>:10:                                     ; preds = %89, %0
  %11 = load i32, i32* @i, align 4
  %12 = load i32, i32* @slen, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %92

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* @i, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @w, i64 0, i64 0), align 16
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %88

; <label>:23:                                     ; preds = %14
  store i32 0, i32* @j, align 4
  br label %24

; <label>:24:                                     ; preds = %44, %23
  %25 = load i32, i32* @j, align 4
  %26 = load i32, i32* @wlen, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* @i, align 4
  %30 = load i32, i32* @j, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i32, i32* @j, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* @w, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %28
  call void @gotoNextWord()
  br label %47

; <label>:43:                                     ; preds = %28
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* @j, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @j, align 4
  br label %24

; <label>:47:                                     ; preds = %42, %24
  %48 = load i32, i32* @j, align 4
  %49 = load i32, i32* @wlen, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %87

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* @i, align 4
  %53 = load i32, i32* @j, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @isspace(i32 %58) #3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

; <label>:61:                                     ; preds = %51
  %62 = load i32, i32* @i, align 4
  %63 = load i32, i32* @j, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @ispunct(i32 %68) #3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* @i, align 4
  %73 = load i32, i32* @j, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %71, %61, %51
  %81 = load i32, i32* @wcount, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @wcount, align 4
  %83 = load i32, i32* @j, align 4
  %84 = load i32, i32* @i, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* @i, align 4
  br label %86

; <label>:86:                                     ; preds = %80, %71
  br label %87

; <label>:87:                                     ; preds = %86, %47
  br label %89

; <label>:88:                                     ; preds = %14
  call void @gotoNextWord()
  br label %89

; <label>:89:                                     ; preds = %88, %87
  %90 = load i32, i32* @i, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @i, align 4
  br label %10

; <label>:92:                                     ; preds = %10
  %93 = load i32, i32* @wcount, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %93)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @gets(i8*) #1

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @ispunct(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gotoNextWord() #0 {
  br label %1

; <label>:1:                                      ; preds = %26, %0
  %2 = load i32, i32* @i, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 @isspace(i32 %6) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* @i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @ispunct(i32 %14) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* @i, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [200 x i8], [200 x i8]* @str, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

; <label>:24:                                     ; preds = %17, %9, %1
  %25 = phi i1 [ false, %9 ], [ false, %1 ], [ %23, %17 ]
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* @i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @i, align 4
  br label %1

; <label>:29:                                     ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
