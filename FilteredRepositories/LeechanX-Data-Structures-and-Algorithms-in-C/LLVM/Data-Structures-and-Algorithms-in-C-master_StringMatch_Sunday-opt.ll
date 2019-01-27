; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_StringMatch_Sunday.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_StringMatch_Sunday.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ababababca\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"bacabaabababaababababcabcaababababcabbababababababababcabab\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @match(i8*, i32, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %36, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %26, %32
  br label %34

; <label>:34:                                     ; preds = %17, %9
  %35 = phi i1 [ false, %9 ], [ %33, %17 ]
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %9

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %39
  store i32 0, i32* %8, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %39
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @if_in_pattern(i8*, i32, i8 signext) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %25, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br label %23

; <label>:23:                                     ; preds = %13, %10
  %24 = phi i1 [ false, %10 ], [ %22, %13 ]
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  br label %10

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sundaymatch(i8*, i8*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %61, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %62

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @match(i8* %20, i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %25, %19
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %11, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i8, i8* %11, align 1
  %45 = call i32 @if_in_pattern(i8* %42, i32 %43, i8 signext %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %59

; <label>:54:                                     ; preds = %34
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

; <label>:59:                                     ; preds = %54, %48
  br label %61

; <label>:60:                                     ; preds = %28
  br label %62

; <label>:61:                                     ; preds = %59
  br label %12

; <label>:62:                                     ; preds = %60, %12
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0), i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  call void @sundaymatch(i8* %16, i8* %17, i32 %18, i32 %19)
  ret i32 0
}

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
