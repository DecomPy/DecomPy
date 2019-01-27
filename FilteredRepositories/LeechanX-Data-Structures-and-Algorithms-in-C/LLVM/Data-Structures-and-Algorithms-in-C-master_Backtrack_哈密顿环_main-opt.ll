; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_哈密顿环_main.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_Backtrack_\E5\93\88\E5\AF\86\E9\A1\BF\E7\8E\AF_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.map = private unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 0, i32 1, i32 0, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], [6 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [6 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 0], [6 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 0]], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @isneibor([6 x i32]*, i32, i32) #0 {
  %4 = alloca [6 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [6 x i32]* %0, [6 x i32]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load [6 x i32]*, [6 x i32]** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 %9
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @displayoutcome(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %6
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %15)
  br label %17

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

; <label>:20:                                     ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @available(i32*, i32, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %31

; <label>:18:                                     ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %18
  store i32 0, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %18
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

; <label>:31:                                     ; preds = %16
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @backtrace_recursive([6 x i32]*, i32, i32*, i32) #0 {
  %5 = alloca [6 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [6 x i32]* %0, [6 x i32]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

; <label>:14:                                     ; preds = %4
  %15 = load [6 x i32]*, [6 x i32]** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @isneibor([6 x i32]* %15, i32 %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %14
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  call void @displayoutcome(i32* %25, i32 %26)
  br label %69

; <label>:27:                                     ; preds = %14, %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %34

; <label>:34:                                     ; preds = %66, %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %69

; <label>:38:                                     ; preds = %34
  %39 = load [6 x i32]*, [6 x i32]** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %39, i64 %41
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %42, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

; <label>:48:                                     ; preds = %38
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @available(i32* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load [6 x i32]*, [6 x i32]** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  call void @backtrace_recursive([6 x i32]* %60, i32 %61, i32* %62, i32 %64)
  br label %65

; <label>:65:                                     ; preds = %54, %48, %38
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %34

; <label>:69:                                     ; preds = %24, %34
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @backtrace_nonrecursive([6 x i32]*, i32) #0 {
  %3 = alloca [6 x i32]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [6 x i32]* %0, [6 x i32]** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 16
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 -1, i32* %20, align 4
  br label %21

; <label>:21:                                     ; preds = %114, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %115

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %16, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %13, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

; <label>:35:                                     ; preds = %68, %24
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %16, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

; <label>:42:                                     ; preds = %35
  %43 = load [6 x i32]*, [6 x i32]** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %43, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %16, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %46, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

; <label>:55:                                     ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %16, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @available(i32* %13, i32 %56, i32 %60)
  %62 = icmp ne i32 %61, 0
  br label %63

; <label>:63:                                     ; preds = %55, %42
  %64 = phi i1 [ false, %42 ], [ %62, %55 ]
  %65 = xor i1 %64, true
  br label %66

; <label>:66:                                     ; preds = %63, %35
  %67 = phi i1 [ false, %35 ], [ %65, %63 ]
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %16, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %35

; <label>:74:                                     ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %16, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %8, align 4
  br label %114

; <label>:84:                                     ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %16, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %13, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %107

; <label>:96:                                     ; preds = %84
  %97 = load [6 x i32]*, [6 x i32]** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %13, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @isneibor([6 x i32]* %97, i32 %101, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  call void @displayoutcome(i32* %13, i32 %106)
  br label %113

; <label>:107:                                    ; preds = %96, %84
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %16, i64 %111
  store i32 -1, i32* %112, align 4
  br label %113

; <label>:113:                                    ; preds = %107, %104
  br label %114

; <label>:114:                                    ; preds = %113, %81
  br label %21

; <label>:115:                                    ; preds = %21
  %116 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %116)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x [6 x i32]], align 16
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [6 x [6 x i32]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x [6 x i32]]* @main.map to i8*), i64 144, i1 false)
  store i32 6, i32* %7, align 4
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %10, align 16
  %11 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %6, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i32 0, i32 0
  call void @backtrace_recursive([6 x i32]* %11, i32 %12, i32* %13, i32 1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
