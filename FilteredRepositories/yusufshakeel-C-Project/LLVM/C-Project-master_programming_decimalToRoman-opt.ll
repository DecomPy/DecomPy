; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_decimalToRoman.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_programming_decimalToRoman.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@roman = global [7 x i8] c"IVXLCDM", align 1
@decimal = global [7 x i32] [i32 1, i32 5, i32 10, i32 50, i32 100, i32 500, i32 1000], align 16
@.str = private unnamed_addr constant [10 x i8] c"Enter n: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"You entered a negative number!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"You entered Zero or Nulla!\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"This code has a limit from 1 to 3999.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %187

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %186

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp sge i32 %18, 4000
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  br label %185

; <label>:22:                                     ; preds = %17
  br label %23

; <label>:23:                                     ; preds = %183, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %184

; <label>:26:                                     ; preds = %23
  store i32 6, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %39, %26
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %30
  br label %42

; <label>:38:                                     ; preds = %30
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4
  br label %27

; <label>:42:                                     ; preds = %37, %27
  store i32 0, i32* %4, align 4
  br label %43

; <label>:43:                                     ; preds = %55, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 7
  br i1 %45, label %46, label %58

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %47, %51
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %46
  br label %58

; <label>:54:                                     ; preds = %46
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %43

; <label>:58:                                     ; preds = %53, %43
  %59 = load i32, i32* %2, align 4
  store i32 %59, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %69, %58
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = sdiv i32 %64, 10
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 10
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %63
  br label %70

; <label>:69:                                     ; preds = %63
  br label %60

; <label>:70:                                     ; preds = %68, %60
  %71 = load i32, i32* %2, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %88

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %88

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %81, i32 %86)
  store i32 0, i32* %2, align 4
  br label %183

; <label>:88:                                     ; preds = %73, %70
  %89 = load i32, i32* %2, align 4
  %90 = icmp sgt i32 %89, 10
  br i1 %90, label %91, label %117

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %117

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %99, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %109, %113
  %115 = load i32, i32* %2, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %2, align 4
  br label %182

; <label>:117:                                    ; preds = %91, %88
  %118 = load i32, i32* %2, align 4
  %119 = icmp slt i32 %118, 10
  br i1 %119, label %120, label %136

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %2, align 4
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %136

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %129, i32 %134)
  store i32 0, i32* %2, align 4
  br label %181

; <label>:136:                                    ; preds = %120, %117
  %137 = load i32, i32* %2, align 4
  %138 = icmp sgt i32 %137, 10
  br i1 %138, label %139, label %167

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %142, label %167

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %3, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %148, i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %3, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %158, %163
  %165 = load i32, i32* %2, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %2, align 4
  br label %180

; <label>:167:                                    ; preds = %139, %136
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [7 x i8], [7 x i8]* @roman, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %172)
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [7 x i32], [7 x i32]* @decimal, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %2, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %2, align 4
  br label %180

; <label>:180:                                    ; preds = %167, %142
  br label %181

; <label>:181:                                    ; preds = %180, %123
  br label %182

; <label>:182:                                    ; preds = %181, %94
  br label %183

; <label>:183:                                    ; preds = %182, %76
  br label %23

; <label>:184:                                    ; preds = %23
  br label %185

; <label>:185:                                    ; preds = %184, %20
  br label %186

; <label>:186:                                    ; preds = %185, %15
  br label %187

; <label>:187:                                    ; preds = %186, %10
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
