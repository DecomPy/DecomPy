; ModuleID = 'Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_quickSort.c'
source_filename = "Repositories/yusufshakeel-C-Project/Unfiltered/C-Project-master_sorting_quickSort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.a = private unnamed_addr constant [6 x i32] [i32 5, i32 2, i32 6, i32 1, i32 3, i32 4], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([6 x i32]* @main.a to i8*), i64 24, i1 false)
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i32 0, i32 0
  call void @quickSort(i32* %5, i32 0, i32 5)
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %15, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %6

; <label>:18:                                     ; preds = %6
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @quickSort(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  call void @partitionArray(i32* %12, i32 %13, i32 %14, i32* %7)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  call void @quickSort(i32* %15, i32 %16, i32 %18)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %6, align 4
  call void @quickSort(i32* %19, i32 %21, i32 %22)
  br label %23

; <label>:23:                                     ; preds = %11, %3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @partitionArray(i32*, i32, i32, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  br label %16

; <label>:16:                                     ; preds = %4, %152
  br label %17

; <label>:17:                                     ; preds = %37, %16
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %23, %28
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %17
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

; <label>:35:                                     ; preds = %30, %17
  %36 = phi i1 [ false, %17 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %35
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  br label %17

; <label>:40:                                     ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %40
  br label %153

; <label>:46:                                     ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %52, %57
  br i1 %58, label %59, label %83

; <label>:59:                                     ; preds = %46
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %59, %46
  br label %84

; <label>:84:                                     ; preds = %83
  br label %85

; <label>:85:                                     ; preds = %105, %84
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %91, %96
  br i1 %97, label %98, label %103

; <label>:98:                                     ; preds = %85
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %100, %101
  br label %103

; <label>:103:                                    ; preds = %98, %85
  %104 = phi i1 [ false, %85 ], [ %102, %98 ]
  br i1 %104, label %105, label %108

; <label>:105:                                    ; preds = %103
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %85

; <label>:108:                                    ; preds = %103
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %108
  br label %153

; <label>:114:                                    ; preds = %108
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %120, %125
  br i1 %126, label %127, label %151

; <label>:127:                                    ; preds = %114
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %11, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32*, i32** %8, align 8
  store i32 %149, i32* %150, align 4
  br label %151

; <label>:151:                                    ; preds = %127, %114
  br label %152

; <label>:152:                                    ; preds = %151
  br label %16

; <label>:153:                                    ; preds = %113, %45
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
