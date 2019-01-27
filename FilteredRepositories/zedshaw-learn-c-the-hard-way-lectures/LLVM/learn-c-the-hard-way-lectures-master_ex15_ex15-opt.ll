; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex15_ex15.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex15_ex15.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.ages = private unnamed_addr constant [5 x i32] [i32 23, i32 43, i32 12, i32 89, i32 2], align 16
@.str = private unnamed_addr constant [5 x i8] c"Alan\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Frank\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Mary\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"John\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Lisa\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s has %d years alive.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s is %d years old.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s is %d years old again.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s lived %d years so far.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([5 x i32]* @main.ages to i8*), i64 20, i1 false)
  %13 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x i8*]*
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %19, align 16
  store i32 5, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %34, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %28, i32 %32)
  br label %34

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %20

; <label>:37:                                     ; preds = %20
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  %40 = bitcast i8** %39 to i32*
  store i32* %40, i32** %10, align 8
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  store i8** %41, i8*** %11, align 8
  store i32 0, i32* %9, align 4
  br label %42

; <label>:42:                                     ; preds = %58, %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

; <label>:46:                                     ; preds = %42
  %47 = load i8**, i8*** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %51, i32 %56)
  br label %58

; <label>:58:                                     ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %42

; <label>:61:                                     ; preds = %42
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %63

; <label>:63:                                     ; preds = %79, %61
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

; <label>:67:                                     ; preds = %63
  %68 = load i8**, i8*** %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %72, i32 %77)
  br label %79

; <label>:79:                                     ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %63

; <label>:82:                                     ; preds = %63
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %84 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  store i8** %84, i8*** %11, align 8
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  store i32* %85, i32** %10, align 8
  br label %86

; <label>:86:                                     ; preds = %102, %82
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i32 0, i32 0
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %107

; <label>:96:                                     ; preds = %86
  %97 = load i8**, i8*** %11, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* %98, i32 %100)
  br label %102

; <label>:102:                                    ; preds = %96
  %103 = load i8**, i8*** %11, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %11, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %10, align 8
  br label %86

; <label>:107:                                    ; preds = %86
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
