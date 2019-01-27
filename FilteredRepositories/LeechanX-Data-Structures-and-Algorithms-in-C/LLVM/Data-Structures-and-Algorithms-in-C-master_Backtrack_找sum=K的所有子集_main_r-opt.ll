; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_找sum=K的所有子集_main_r.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E6\89\BEsum=K\E7\9A\84\E6\89\80\E6\9C\89\E5\AD\90\E9\9B\86_main_r.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.set = private unnamed_addr constant [8 x i32] [i32 7, i32 5, i32 1, i32 2, i32 8, i32 4, i32 3, i32 10], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @displayoutcome(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %24)
  br label %26

; <label>:26:                                     ; preds = %19, %12
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

; <label>:30:                                     ; preds = %8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum(i32*, i32, i32*) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %29, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

; <label>:13:                                     ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

; <label>:28:                                     ; preds = %20, %13
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %9

; <label>:32:                                     ; preds = %9
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @backtrace(i32*, i32, i32*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @sum(i32* %11, i32 %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %6, align 4
  call void @displayoutcome(i32* %18, i32* %19, i32 %20)
  br label %47

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25, %21
  br label %47

; <label>:29:                                     ; preds = %25
  store i32 0, i32* %10, align 4
  br label %30

; <label>:30:                                     ; preds = %44, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %47

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  call void @backtrace(i32* %39, i32 %41, i32* %42, i32 %43)
  br label %44

; <label>:44:                                     ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %30

; <label>:47:                                     ; preds = %17, %28, %30
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @main.set to i8*), i64 32, i1 false)
  store i32 8, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i32 0, i32 0
  %11 = load i32, i32* %2, align 4
  call void @backtrace(i32* %9, i32 0, i32* %10, i32 %11)
  %12 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %12)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
