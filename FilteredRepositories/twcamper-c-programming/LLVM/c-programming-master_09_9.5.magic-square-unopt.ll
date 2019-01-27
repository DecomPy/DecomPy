; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.5.magic-square.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.5.magic-square.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [106 x i8] c"This program creates a magic square of a specified size.\0AThe size must be an odd number between 1 and 99\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Enter the size of the magic square: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Enter an ODD number between 1 and 99\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %2)
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = srem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = icmp sgt i32 %18, 99
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %17, %14, %0
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %3, align 4
  br label %34

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %4, align 8
  %29 = mul nuw i64 %25, %27
  %30 = alloca i32, i64 %29, align 16
  store i64 %25, i64* %5, align 8
  store i64 %27, i64* %6, align 8
  %31 = load i32, i32* %2, align 4, !tbaa !3
  call void @create_magic_square(i32 %31, i32* %30)
  %32 = load i32, i32* %2, align 4, !tbaa !3
  call void @print_magic_square(i32 %32, i32* %30)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %3, align 4
  %33 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %33)
  br label %34

; <label>:34:                                     ; preds = %23, %20
  %35 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind ssp uwtable
define void @create_magic_square(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !7
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = zext i32 %13 to i64
  %15 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  store i32 0, i32* %9, align 4, !tbaa !3
  br label %21

; <label>:21:                                     ; preds = %43, %2
  %22 = load i32, i32* %9, align 4, !tbaa !3
  %23 = load i32, i32* %3, align 4, !tbaa !3
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

; <label>:25:                                     ; preds = %21
  store i32 0, i32* %10, align 4, !tbaa !3
  br label %26

; <label>:26:                                     ; preds = %39, %25
  %27 = load i32, i32* %10, align 4, !tbaa !3
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %26
  %31 = load i32*, i32** %4, align 8, !tbaa !7
  %32 = load i32, i32* %9, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, %14
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %10, align 4, !tbaa !3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 0, i32* %38, align 4, !tbaa !3
  br label %39

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* %10, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4, !tbaa !3
  br label %26

; <label>:42:                                     ; preds = %26
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %9, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4, !tbaa !3
  br label %21

; <label>:46:                                     ; preds = %21
  store i32 0, i32* %9, align 4, !tbaa !3
  %47 = load i32, i32* %3, align 4, !tbaa !3
  %48 = sdiv i32 %47, 2
  store i32 %48, i32* %10, align 4, !tbaa !3
  %49 = load i32, i32* %3, align 4, !tbaa !3
  %50 = load i32, i32* %3, align 4, !tbaa !3
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %5, align 4, !tbaa !3
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %52

; <label>:52:                                     ; preds = %106, %46
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = load i32, i32* %5, align 4, !tbaa !3
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %109

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %6, align 4, !tbaa !3
  %58 = load i32*, i32** %4, align 8, !tbaa !7
  %59 = load i32, i32* %9, align 4, !tbaa !3
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, %14
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %10, align 4, !tbaa !3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %57, i32* %65, align 4, !tbaa !3
  %66 = load i32, i32* %9, align 4, !tbaa !3
  store i32 %66, i32* %7, align 4, !tbaa !3
  %67 = load i32, i32* %10, align 4, !tbaa !3
  store i32 %67, i32* %8, align 4, !tbaa !3
  %68 = load i32, i32* %7, align 4, !tbaa !3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %56
  %71 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %71, i32* %7, align 4, !tbaa !3
  br label %72

; <label>:72:                                     ; preds = %70, %56
  %73 = load i32, i32* %7, align 4, !tbaa !3
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4, !tbaa !3
  %75 = load i32, i32* %8, align 4, !tbaa !3
  %76 = load i32, i32* %3, align 4, !tbaa !3
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %72
  store i32 -1, i32* %8, align 4, !tbaa !3
  br label %80

; <label>:80:                                     ; preds = %79, %72
  %81 = load i32, i32* %8, align 4, !tbaa !3
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4, !tbaa !3
  %83 = load i32*, i32** %4, align 8, !tbaa !7
  %84 = load i32, i32* %7, align 4, !tbaa !3
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, %14
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %8, align 4, !tbaa !3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

; <label>:93:                                     ; preds = %80
  %94 = load i32, i32* %7, align 4, !tbaa !3
  store i32 %94, i32* %9, align 4, !tbaa !3
  %95 = load i32, i32* %8, align 4, !tbaa !3
  store i32 %95, i32* %10, align 4, !tbaa !3
  br label %105

; <label>:96:                                     ; preds = %80
  %97 = load i32, i32* %9, align 4, !tbaa !3
  %98 = load i32, i32* %3, align 4, !tbaa !3
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %96
  store i32 -1, i32* %9, align 4, !tbaa !3
  br label %102

; <label>:102:                                    ; preds = %101, %96
  %103 = load i32, i32* %9, align 4, !tbaa !3
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4, !tbaa !3
  br label %105

; <label>:105:                                    ; preds = %102, %93
  br label %106

; <label>:106:                                    ; preds = %105
  %107 = load i32, i32* %6, align 4, !tbaa !3
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4, !tbaa !3
  br label %52

; <label>:109:                                    ; preds = %52
  %110 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %110) #3
  %111 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %111) #3
  %112 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %112) #3
  %113 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %113) #3
  %114 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %114) #3
  %115 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @print_magic_square(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !7
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = zext i32 %9 to i64
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %38, %2
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %18

; <label>:18:                                     ; preds = %33, %17
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %4, align 8, !tbaa !7
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, %10
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !3
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %31)
  br label %33

; <label>:33:                                     ; preds = %22
  %34 = load i32, i32* %6, align 4, !tbaa !3
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4, !tbaa !3
  br label %18

; <label>:36:                                     ; preds = %18
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %38

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %5, align 4, !tbaa !3
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4, !tbaa !3
  br label %13

; <label>:41:                                     ; preds = %13
  %42 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

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
