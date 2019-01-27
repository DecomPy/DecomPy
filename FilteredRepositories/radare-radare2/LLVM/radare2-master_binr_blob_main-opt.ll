; ModuleID = 'Repositories/radare-radare2/Unfiltered/radare2-master_binr_blob_main.c'
source_filename = "Repositories/radare-radare2/Unfiltered/radare2-master_binr_blob_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Main = type { i8*, i32 (i32, i8**)* }

@foo = internal global [10 x %struct.Main] [%struct.Main { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**)* @radare2_main }, %struct.Main { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**)* @rax2_main }, %struct.Main { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**)* @radiff2_main }, %struct.Main { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (i32, i8**)* @rafind2_main }, %struct.Main { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (i32, i8**)* @rarun2_main }, %struct.Main { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (i32, i8**)* @rasm2_main }, %struct.Main { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (i32, i8**)* @ragg2_main }, %struct.Main { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (i32, i8**)* @rabin2_main }, %struct.Main { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (i32, i8**)* @radare2_main }, %struct.Main zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rax2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"radiff2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rafind2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rarun2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rasm2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ragg2\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rabin2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"radare2\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.Main, %struct.Main* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 16
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %37

; <label>:14:                                     ; preds = %7
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.Main, %struct.Main* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 16
  %23 = call i8* @strstr(i8* %17, i8* %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

; <label>:25:                                     ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.Main, %struct.Main* %28, i32 0, i32 1
  %30 = load i32 (i32, i8**)*, i32 (i32, i8**)** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 %30(i32 %31, i8** %32)
  store i32 %33, i32* %3, align 4
  br label %56

; <label>:34:                                     ; preds = %14
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

; <label>:37:                                     ; preds = %7
  store i32 0, i32* %6, align 4
  br label %38

; <label>:38:                                     ; preds = %52, %37
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.Main, %struct.Main* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 16
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x %struct.Main], [10 x %struct.Main]* @foo, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.Main, %struct.Main* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 16
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %50)
  br label %52

; <label>:52:                                     ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %38

; <label>:55:                                     ; preds = %38
  store i32 1, i32* %3, align 4
  br label %56

; <label>:56:                                     ; preds = %55, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare i8* @strstr(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @radare2_main(i32, i8**) #1

declare i32 @rax2_main(i32, i8**) #1

declare i32 @radiff2_main(i32, i8**) #1

declare i32 @rafind2_main(i32, i8**) #1

declare i32 @rarun2_main(i32, i8**) #1

declare i32 @rasm2_main(i32, i8**) #1

declare i32 @ragg2_main(i32, i8**) #1

declare i32 @rabin2_main(i32, i8**) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
