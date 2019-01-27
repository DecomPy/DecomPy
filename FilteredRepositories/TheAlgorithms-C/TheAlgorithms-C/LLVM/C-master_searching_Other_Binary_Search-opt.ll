; ModuleID = 'Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Other_Binary_Search.c'
source_filename = "Repositories/TheAlgorithms-C/Unfiltered/C-master_searching_Other_Binary_Search.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.array = private unnamed_addr constant [5 x i32] [i32 5, i32 8, i32 10, i32 14, i32 16], align 16
@.str = private unnamed_addr constant [37 x i8] c"The number %d doesnt exist in array\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"The number %d exist in array at position : %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @binarySearch(i32*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %48, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %51

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %18
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %51

; <label>:32:                                     ; preds = %18
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %46

; <label>:43:                                     ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %40
  br label %47

; <label>:47:                                     ; preds = %46
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %14

; <label>:51:                                     ; preds = %30, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([5 x i32]* @main.array to i8*), i64 20, i1 false)
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %9 = call i32 @binarySearch(i32* %8, i32 5, i32 5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 5)
  br label %17

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 5, i32 %15)
  br label %17

; <label>:17:                                     ; preds = %14, %12
  ret void
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
