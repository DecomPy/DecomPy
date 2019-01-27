; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.8-quiz-stats.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_8.8-quiz-stats.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [20 x i8] c"Enter quiz scores:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Student %d: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Student Stats:\09Average\09Total\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Student %d:\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09%4d\09%4d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Quiz Stats:\09Low\09High\09Average\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Quiz %d:\09\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\09%4d\09%4d\09%4d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x [5 x i32]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = bitcast [5 x [5 x i32]]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %33, %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %36

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

; <label>:18:                                     ; preds = %29, %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %23
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 %26
  %28 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %27)
  br label %29

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %18

; <label>:32:                                     ; preds = %18
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %11

; <label>:36:                                     ; preds = %11
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %39

; <label>:39:                                     ; preds = %67, %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %70

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 %44)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %59, %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %51
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %52, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %46

; <label>:62:                                     ; preds = %46
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 5
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 %64, i32 %65)
  br label %67

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %39

; <label>:70:                                     ; preds = %39
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %73

; <label>:73:                                     ; preds = %115, %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 5
  br i1 %75, label %76, label %118

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %78)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 100, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %80

; <label>:80:                                     ; preds = %106, %76
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %109

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %2, i64 0, i64 %85
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %86, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %83
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %8, align 4
  br label %96

; <label>:96:                                     ; preds = %94, %83
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %7, align 4
  br label %102

; <label>:102:                                    ; preds = %100, %96
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %80

; <label>:109:                                    ; preds = %80
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %6, align 4
  %113 = sdiv i32 %112, 5
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %110, i32 %111, i32 %113)
  br label %115

; <label>:115:                                    ; preds = %109
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %73

; <label>:118:                                    ; preds = %73
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
