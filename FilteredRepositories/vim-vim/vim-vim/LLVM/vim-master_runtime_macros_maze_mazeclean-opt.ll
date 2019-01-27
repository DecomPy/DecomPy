; ModuleID = 'Repositories/vim-vim/Unfiltered/vim-master_runtime_macros_maze_mazeclean.c'
source_filename = "Repositories/vim-vim/Unfiltered/vim-master_runtime_macros_maze_mazeclean.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@E = global i8 40, align 1
@line = common global [80 x i8] zeroinitializer, align 16
@M = common global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@A = common global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"._\00", align 1
@Z = common global i8 0, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A|\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"_.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@T = common global [3 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i8, i8* @E, align 1
  %5 = sext i8 %4 to i32
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @line, i32 0, i32 0), i64 %6
  store i8* %7, i8** @M, align 8
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %3)
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* @A, align 1
  store i8 %9, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @line, i32 0, i32 0), align 16
  br label %10

; <label>:10:                                     ; preds = %16, %1
  %11 = load i8, i8* @E, align 1
  %12 = add i8 %11, -1
  store i8 %12, i8* @E, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %10
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %14
  %17 = load i8, i8* @E, align 1
  %18 = load i8*, i8** @M, align 8
  %19 = load i8, i8* @E, align 1
  %20 = sext i8 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 %17, i8* %21, align 1
  %22 = load i8, i8* @E, align 1
  %23 = sext i8 %22 to i64
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* @line, i64 0, i64 %23
  store i8 %17, i8* %24, align 1
  br label %10

; <label>:25:                                     ; preds = %10
  br label %26

; <label>:26:                                     ; preds = %136, %25
  %27 = load i8, i8* @Z, align 1
  %28 = icmp ne i8 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* @Z, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @A, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* @A, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %26
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store i8 39, i8* @A, align 1
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  %43 = icmp ne i32 %41, 0
  br label %44

; <label>:44:                                     ; preds = %39, %26
  %45 = phi i1 [ true, %26 ], [ %43, %39 ]
  br i1 %45, label %46, label %139

; <label>:46:                                     ; preds = %44
  %47 = load i8, i8* @Z, align 1
  %48 = load i8, i8* @A, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @A, align 1
  %51 = load i8, i8* @Z, align 1
  %52 = sext i8 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @line, i32 0, i32 0), i64 %54
  %56 = sext i8 %50 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* @E, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %49, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

; <label>:62:                                     ; preds = %46
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i8, i8* @A, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8*, i8** @M, align 8
  %70 = load i8, i8* @A, align 1
  %71 = sext i8 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %68, %74
  %76 = zext i1 %75 to i32
  %77 = and i32 %66, %76
  %78 = call i32 @rand()
  %79 = icmp slt i32 715827882, %78
  %80 = zext i1 %79 to i32
  %81 = or i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

; <label>:83:                                     ; preds = %62, %46
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i8, i8* @Z, align 1
  %89 = icmp ne i8 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = and i32 %87, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %120

; <label>:94:                                     ; preds = %83, %62
  %95 = load i8, i8* @E, align 1
  %96 = load i8*, i8** @M, align 8
  %97 = load i8, i8* @A, align 1
  %98 = sext i8 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** @M, align 8
  %102 = load i8, i8* @E, align 1
  %103 = sext i8 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 %100, i8* %104, align 1
  %105 = sext i8 %100 to i64
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* @line, i64 0, i64 %105
  store i8 %95, i8* %106, align 1
  %107 = load i8, i8* @A, align 1
  %108 = load i8, i8* @A, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* @Z, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %109, %111
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** @M, align 8
  %115 = load i8, i8* @A, align 1
  %116 = sext i8 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %113, i8* %117, align 1
  %118 = sext i8 %113 to i64
  %119 = getelementptr inbounds [80 x i8], [80 x i8]* @line, i64 0, i64 %118
  store i8 %107, i8* %119, align 1
  br label %121

; <label>:120:                                    ; preds = %83
  br label %121

; <label>:121:                                    ; preds = %120, %94
  %122 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), %94 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %120 ]
  %123 = sext i8 %47 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i8, i8* @Z, align 1
  %127 = sext i8 %126 to i64
  %128 = getelementptr inbounds [3 x i8], [3 x i8]* @T, i64 0, i64 %127
  store i8 %125, i8* %128, align 1
  br label %129

; <label>:129:                                    ; preds = %121
  %130 = load i8, i8* @Z, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

; <label>:133:                                    ; preds = %129
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @T, i32 0, i32 0))
  %135 = icmp ne i32 %134, 0
  br label %136

; <label>:136:                                    ; preds = %133, %129
  %137 = phi i1 [ true, %129 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  br label %26

; <label>:139:                                    ; preds = %44
  ret i32 0
}

declare i32 @scanf(i8*, ...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @rand() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
