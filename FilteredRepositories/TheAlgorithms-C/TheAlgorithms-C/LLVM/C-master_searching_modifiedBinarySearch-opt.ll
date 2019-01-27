; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_modifiedBinarySearch.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_modifiedBinarySearch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@n = common global i32 0, align 4
@m = common global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Found at (%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"element not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @binarySearch(i32*, i32, i32, i32, i32) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @n, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @m, align 4
  %15 = zext i32 %14 to i64
  br label %16

; <label>:16:                                     ; preds = %59, %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %60

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %15
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %20
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %37, i32 %38)
  br label %62

; <label>:40:                                     ; preds = %20
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, %15
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %58

; <label>:55:                                     ; preds = %40
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

; <label>:58:                                     ; preds = %55, %52
  br label %59

; <label>:59:                                     ; preds = %58
  br label %16

; <label>:60:                                     ; preds = %16
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %62

; <label>:62:                                     ; preds = %60, %36
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @modifiedBinarySearch(i32*, i32, i32, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @n, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* @m, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %8, align 4
  call void @binarySearch(i32* %20, i32 0, i32 0, i32 %22, i32 %23)
  br label %193

; <label>:24:                                     ; preds = %4
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %71, %24
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, %16
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %34
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %51, i32 %52)
  br label %193

; <label>:54:                                     ; preds = %34
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, %16
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %10, align 4
  br label %70

; <label>:68:                                     ; preds = %54
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %9, align 4
  br label %70

; <label>:70:                                     ; preds = %68, %66
  br label %71

; <label>:71:                                     ; preds = %70
  br label %29

; <label>:72:                                     ; preds = %29
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, %16
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

; <label>:84:                                     ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %85, i32 %86)
  br label %193

; <label>:88:                                     ; preds = %72
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %16
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

; <label>:101:                                    ; preds = %88
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %11, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %103, i32 %104)
  br label %192

; <label>:106:                                    ; preds = %88
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, %16
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %107, %117
  br i1 %118, label %119, label %125

; <label>:119:                                    ; preds = %106
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32, i32* %8, align 4
  call void @binarySearch(i32* %120, i32 %121, i32 0, i32 %123, i32 %124)
  br label %191

; <label>:125:                                    ; preds = %106
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = mul nsw i64 %129, %16
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %126, %136
  br i1 %137, label %138, label %159

; <label>:138:                                    ; preds = %125
  %139 = load i32, i32* %8, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, %16
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %139, %149
  br i1 %150, label %151, label %159

; <label>:151:                                    ; preds = %138
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %8, align 4
  call void @binarySearch(i32* %152, i32 %153, i32 %155, i32 %157, i32 %158)
  br label %190

; <label>:159:                                    ; preds = %138, %125
  %160 = load i32, i32* %8, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %16
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %11, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %160, %171
  br i1 %172, label %173, label %180

; <label>:173:                                    ; preds = %159
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %177, 1
  %179 = load i32, i32* %8, align 4
  call void @binarySearch(i32* %174, i32 %176, i32 0, i32 %178, i32 %179)
  br label %189

; <label>:180:                                    ; preds = %159
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* %7, align 4
  %187 = sub nsw i32 %186, 1
  %188 = load i32, i32* %8, align 4
  call void @binarySearch(i32* %181, i32 %183, i32 %185, i32 %187, i32 %188)
  br label %189

; <label>:189:                                    ; preds = %180, %173
  br label %190

; <label>:190:                                    ; preds = %189, %151
  br label %191

; <label>:191:                                    ; preds = %190, %119
  br label %192

; <label>:192:                                    ; preds = %191, %101
  br label %193

; <label>:193:                                    ; preds = %19, %50, %192, %84
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32* @n, i32* @m, i32* %2)
  %9 = load i32, i32* @n, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @m, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = mul nuw i64 %10, %12
  %15 = alloca i32, i64 %14, align 16
  store i64 %10, i64* %4, align 8
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %38, %0
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @n, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

; <label>:20:                                     ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %34, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @m, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %12
  %29 = getelementptr inbounds i32, i32* %15, i64 %28
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %32)
  br label %34

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %21

; <label>:37:                                     ; preds = %21
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %16

; <label>:41:                                     ; preds = %16
  %42 = load i32, i32* @n, align 4
  %43 = load i32, i32* @m, align 4
  %44 = load i32, i32* %2, align 4
  call void @modifiedBinarySearch(i32* %15, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %1, align 4
  %45 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare i32 @scanf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
