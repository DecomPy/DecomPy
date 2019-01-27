; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.1.select-sort.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_09_9.1.select-sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [30 x i8] c"Enter an integer array size.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %2
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %49

; <label>:15:                                     ; preds = %2
  %16 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i8**, i8*** %5, align 8, !tbaa !7
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8, !tbaa !7
  %20 = call i32 @atoi(i8* %19)
  store i32 %20, i32* %6, align 4, !tbaa !3
  %21 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = call i64 @time(i64* null)
  %27 = trunc i64 %26 to i32
  call void @srand(i32 %27)
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %38, %15
  %29 = load i32, i32* %7, align 4, !tbaa !3
  %30 = load i32, i32* %6, align 4, !tbaa !3
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

; <label>:32:                                     ; preds = %28
  %33 = call i32 @rand()
  %34 = srem i32 %33, 1024
  %35 = load i32, i32* %7, align 4, !tbaa !3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %25, i64 %36
  store i32 %34, i32* %37, align 4, !tbaa !3
  br label %38

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %7, align 4, !tbaa !3
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4, !tbaa !3
  br label %28

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %6, align 4, !tbaa !3
  call void @print_array(i32* %25, i32 %42)
  %43 = load i32, i32* %6, align 4, !tbaa !3
  call void @select_sort(i32* %25, i32 %43)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %45 = load i32, i32* %6, align 4, !tbaa !3
  call void @print_array(i32* %25, i32 %45)
  store i32 0, i32* %3, align 4
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3
  %48 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3
  br label %49

; <label>:49:                                     ; preds = %41, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare void @srand(i32) #1

declare i64 @time(i64*) #1

declare i32 @rand() #1

; Function Attrs: nounwind ssp uwtable
define void @print_array(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %27, %2
  %8 = load i32, i32* %5, align 4, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %5, align 4, !tbaa !3
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = srem i32 %15, 12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %18, %14, %11
  %21 = load i32*, i32** %3, align 8, !tbaa !7
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !3
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  br label %27

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %5, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4, !tbaa !3
  br label %7

; <label>:30:                                     ; preds = %7
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %32 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @select_sort(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !7
  store i32 %1, i32* %4, align 4, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %71

; <label>:13:                                     ; preds = %2
  %14 = load i32*, i32** %3, align 8, !tbaa !7
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4, !tbaa !3
  store i32 %16, i32* %7, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 1, i32* %5, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %37, %13
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

; <label>:21:                                     ; preds = %17
  %22 = load i32*, i32** %3, align 8, !tbaa !7
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !3
  %27 = load i32, i32* %7, align 4, !tbaa !3
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %21
  %30 = load i32*, i32** %3, align 8, !tbaa !7
  %31 = load i32, i32* %5, align 4, !tbaa !3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !3
  store i32 %34, i32* %7, align 4, !tbaa !3
  %35 = load i32, i32* %5, align 4, !tbaa !3
  store i32 %35, i32* %6, align 4, !tbaa !3
  br label %36

; <label>:36:                                     ; preds = %29, %21
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %5, align 4, !tbaa !3
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4, !tbaa !3
  br label %17

; <label>:40:                                     ; preds = %17
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4, !tbaa !3
  br label %43

; <label>:43:                                     ; preds = %58, %40
  %44 = load i32, i32* %5, align 4, !tbaa !3
  %45 = load i32, i32* %4, align 4, !tbaa !3
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

; <label>:47:                                     ; preds = %43
  %48 = load i32*, i32** %3, align 8, !tbaa !7
  %49 = load i32, i32* %5, align 4, !tbaa !3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !3
  %53 = load i32*, i32** %3, align 8, !tbaa !7
  %54 = load i32, i32* %5, align 4, !tbaa !3
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4, !tbaa !3
  br label %58

; <label>:58:                                     ; preds = %47
  %59 = load i32, i32* %5, align 4, !tbaa !3
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4, !tbaa !3
  br label %43

; <label>:61:                                     ; preds = %43
  %62 = load i32, i32* %7, align 4, !tbaa !3
  %63 = load i32*, i32** %3, align 8, !tbaa !7
  %64 = load i32, i32* %4, align 4, !tbaa !3
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4, !tbaa !3
  %68 = load i32*, i32** %3, align 8, !tbaa !7
  %69 = load i32, i32* %4, align 4, !tbaa !3
  %70 = sub nsw i32 %69, 1
  call void @select_sort(i32* %68, i32 %70)
  br label %71

; <label>:71:                                     ; preds = %61, %2
  %72 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3
  %73 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #3
  %74 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
