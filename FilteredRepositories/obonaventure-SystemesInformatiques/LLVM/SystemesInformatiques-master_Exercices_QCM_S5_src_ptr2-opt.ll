; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr2.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S5_src_ptr2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@a = global [5 x i32] [i32 2, i32 4, i32 3, i32 4, i32 8], align 16
@ptr = common global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@b = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 0), i32** @ptr, align 8
  br label %2

; <label>:2:                                      ; preds = %0
  %3 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 0), align 16
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 1), align 4
  %5 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 2), align 8
  %6 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 3), align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* @a, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %3, i32 %4, i32 %5, i32 %9)
  br label %11

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** @ptr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @ptr, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @ptr, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @ptr, align 8
  %21 = load i32*, i32** @ptr, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %13, i32 %16, i32 %19, i32 %26)
  br label %28

; <label>:28:                                     ; preds = %11
  %29 = load i32*, i32** @ptr, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @ptr, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32*, i32** @ptr, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2
  %37 = load i32*, i32** @ptr, align 8
  %38 = load i32*, i32** @ptr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %30, i32 %33, i32 %36, i32 %43)
  br label %45

; <label>:45:                                     ; preds = %28
  %46 = load i32*, i32** @ptr, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @ptr, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** @ptr, align 8
  %50 = load i32, i32* %48, align 4
  %51 = load i32*, i32** @ptr, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** @ptr, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** @ptr, align 8
  %55 = load i32*, i32** @ptr, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** @ptr, align 8
  %57 = load i32, i32* %55, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %47, i32 %50, i32 %53, i32 %60)
  br label %62

; <label>:62:                                     ; preds = %45
  %63 = load i32*, i32** @ptr, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @ptr, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** @ptr, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @ptr, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @ptr, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %64, i32 %67, i32 %70, i32 %76)
  br label %78

; <label>:78:                                     ; preds = %62
  %79 = load i32*, i32** @ptr, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** @ptr, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** @ptr, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32*, i32** @ptr, align 8
  %88 = load i32*, i32** @ptr, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %80, i32 %83, i32 %86, i32 %93)
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
