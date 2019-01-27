; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_fibonacciSearch.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_fibonacciSearch.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.arr = private unnamed_addr constant [11 x i32] [i32 10, i32 22, i32 35, i32 40, i32 45, i32 50, i32 80, i32 82, i32 85, i32 90, i32 100], align 16
@.str = private unnamed_addr constant [19 x i8] c"Found at index: %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @fibMonaccianSearch(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
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
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  br label %16

; <label>:16:                                     ; preds = %20, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  br label %16

; <label>:26:                                     ; preds = %16
  store i32 -1, i32* %11, align 4
  br label %27

; <label>:27:                                     ; preds = %79, %26
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %80

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  br label %44

; <label>:41:                                     ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  br label %44

; <label>:44:                                     ; preds = %41, %37
  %45 = phi i32 [ %40, %37 ], [ %43, %41 ]
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %60

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %11, align 4
  br label %79

; <label>:60:                                     ; preds = %44
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  br label %78

; <label>:76:                                     ; preds = %60
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %96

; <label>:78:                                     ; preds = %68
  br label %79

; <label>:79:                                     ; preds = %78, %53
  br label %27

; <label>:80:                                     ; preds = %27
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

; <label>:83:                                     ; preds = %80
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %83
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %96

; <label>:95:                                     ; preds = %83, %80
  store i32 -1, i32* %4, align 4
  br label %96

; <label>:96:                                     ; preds = %95, %92, %76
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([11 x i32]* @main.arr to i8*), i64 44, i1 false)
  store i32 11, i32* %3, align 4
  store i32 85, i32* %4, align 4
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @fibMonaccianSearch(i32* %6, i32 %7, i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %9)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
