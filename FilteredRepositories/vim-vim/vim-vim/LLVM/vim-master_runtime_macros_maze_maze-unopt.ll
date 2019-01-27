; ModuleID = 'Repositories/vim-vim/Unfiltered/vim-master_runtime_macros_maze_maze.c'
source_filename = "Repositories/vim-vim/Unfiltered/vim-master_runtime_macros_maze_maze.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@E = global i8 40, align 1
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@M = common global i8* null, align 8
@A = common global i8 0, align 1
@J = common global [40 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"._\00", align 1
@T = common global [40 x i8] zeroinitializer, align 16
@Z = common global i8 0, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A|\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"_.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" |\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** @M, align 8, !tbaa !7
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3)
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* @A, align 1, !tbaa !9
  store i8 %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @J, i32 0, i32 0), align 16, !tbaa !9
  br label %6

; <label>:6:                                      ; preds = %12, %1
  %7 = load i8, i8* @E, align 1, !tbaa !9
  %8 = add i8 %7, -1
  store i8 %8, i8* @E, align 1, !tbaa !9
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %10
  %13 = load i8, i8* @E, align 1, !tbaa !9
  %14 = load i8, i8* @E, align 1, !tbaa !9
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds [40 x i8], [40 x i8]* @T, i64 0, i64 %15
  store i8 %13, i8* %16, align 1, !tbaa !9
  %17 = load i8, i8* @E, align 1, !tbaa !9
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* @J, i64 0, i64 %18
  store i8 %13, i8* %19, align 1, !tbaa !9
  br label %6

; <label>:20:                                     ; preds = %6
  br label %21

; <label>:21:                                     ; preds = %129, %20
  %22 = load i8, i8* @Z, align 1, !tbaa !9
  %23 = icmp ne i8 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* @Z, align 1, !tbaa !9
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @A, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* @A, align 1, !tbaa !9
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

; <label>:34:                                     ; preds = %21
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i8 39, i8* @A, align 1, !tbaa !9
  %36 = load i32, i32* %3, align 4, !tbaa !3
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %3, align 4, !tbaa !3
  %38 = icmp ne i32 %36, 0
  br label %39

; <label>:39:                                     ; preds = %34, %21
  %40 = phi i1 [ true, %21 ], [ %38, %34 ]
  br i1 %40, label %41, label %132

; <label>:41:                                     ; preds = %39
  %42 = load i8, i8* @Z, align 1, !tbaa !9
  %43 = load i8, i8* @A, align 1, !tbaa !9
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @A, align 1, !tbaa !9
  %46 = load i8, i8* @Z, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @J, i32 0, i32 0), i64 %49
  %51 = sext i8 %45 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1, !tbaa !9
  store i8 %53, i8* @E, align 1, !tbaa !9
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %44, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

; <label>:57:                                     ; preds = %41
  %58 = load i32, i32* %3, align 4, !tbaa !3
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i8, i8* @A, align 1, !tbaa !9
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @A, align 1, !tbaa !9
  %65 = sext i8 %64 to i64
  %66 = getelementptr inbounds [40 x i8], [40 x i8]* @T, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1, !tbaa !9
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %63, %68
  %70 = zext i1 %69 to i32
  %71 = and i32 %61, %70
  %72 = call i32 (...) @rand()
  %73 = icmp slt i32 805306368, %72
  %74 = zext i1 %73 to i32
  %75 = or i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

; <label>:77:                                     ; preds = %57, %41
  %78 = load i32, i32* %3, align 4, !tbaa !3
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i8, i8* @Z, align 1, !tbaa !9
  %83 = icmp ne i8 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = and i32 %81, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

; <label>:88:                                     ; preds = %77, %57
  %89 = load i8, i8* @E, align 1, !tbaa !9
  %90 = load i8, i8* @A, align 1, !tbaa !9
  %91 = sext i8 %90 to i64
  %92 = getelementptr inbounds [40 x i8], [40 x i8]* @T, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1, !tbaa !9
  %94 = load i8, i8* @E, align 1, !tbaa !9
  %95 = sext i8 %94 to i64
  %96 = getelementptr inbounds [40 x i8], [40 x i8]* @T, i64 0, i64 %95
  store i8 %93, i8* %96, align 1, !tbaa !9
  %97 = sext i8 %93 to i64
  %98 = getelementptr inbounds [40 x i8], [40 x i8]* @J, i64 0, i64 %97
  store i8 %89, i8* %98, align 1, !tbaa !9
  %99 = load i8, i8* @A, align 1, !tbaa !9
  %100 = load i8, i8* @A, align 1, !tbaa !9
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @Z, align 1, !tbaa !9
  %103 = sext i8 %102 to i32
  %104 = sub nsw i32 %101, %103
  %105 = trunc i32 %104 to i8
  %106 = load i8, i8* @A, align 1, !tbaa !9
  %107 = sext i8 %106 to i64
  %108 = getelementptr inbounds [40 x i8], [40 x i8]* @T, i64 0, i64 %107
  store i8 %105, i8* %108, align 1, !tbaa !9
  %109 = sext i8 %105 to i64
  %110 = getelementptr inbounds [40 x i8], [40 x i8]* @J, i64 0, i64 %109
  store i8 %99, i8* %110, align 1, !tbaa !9
  br label %112

; <label>:111:                                    ; preds = %77
  br label %112

; <label>:112:                                    ; preds = %111, %88
  %113 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), %88 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %111 ]
  %114 = sext i8 %42 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1, !tbaa !9
  %117 = load i8*, i8** @M, align 8, !tbaa !7
  %118 = load i8, i8* @Z, align 1, !tbaa !9
  %119 = sext i8 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 %116, i8* %120, align 1, !tbaa !9
  br label %121

; <label>:121:                                    ; preds = %112
  %122 = load i8, i8* @Z, align 1, !tbaa !9
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

; <label>:125:                                    ; preds = %121
  %126 = load i8*, i8** @M, align 8, !tbaa !7
  %127 = call i32 (i8*, ...) @printf(i8* %126)
  %128 = icmp ne i32 %127, 0
  br label %129

; <label>:129:                                    ; preds = %125, %121
  %130 = phi i1 [ true, %121 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  br label %21

; <label>:132:                                    ; preds = %39
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare i32 @scanf(i8*, ...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @rand(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
