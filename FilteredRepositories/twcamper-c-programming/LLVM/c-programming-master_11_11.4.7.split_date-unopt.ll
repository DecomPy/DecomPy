; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.4.7.split_date.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.4.7.split_date.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@split_date.eom = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [25 x i8] c"Usage: $ %s <dd> <yyyy>\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d, %d: %.2d/%.2d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @split_date(i32, i32, i32*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [13 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !3
  store i32* %2, i32** %7, align 8, !tbaa !7
  store i32* %3, i32** %8, align 8, !tbaa !7
  %12 = bitcast [13 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 52, i8* %12) #3
  %13 = bitcast [13 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([13 x i32]* @split_date.eom to i8*), i64 52, i1 false)
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = load i32, i32* %6, align 4, !tbaa !3
  %17 = srem i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %6, align 4, !tbaa !3
  %21 = srem i32 %20, 100
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19, %4
  %24 = load i32, i32* %6, align 4, !tbaa !3
  %25 = srem i32 %24, 400
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %23, %19
  %28 = getelementptr inbounds [13 x i32], [13 x i32]* %9, i64 0, i64 2
  store i32 29, i32* %28, align 8, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %27, %23
  store i32 0, i32* %10, align 4, !tbaa !3
  %30 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 1, i32* %30, align 4, !tbaa !3
  %31 = load i32*, i32** %7, align 8, !tbaa !7
  %32 = load i32, i32* %31, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [13 x i32], [13 x i32]* %9, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !3
  store i32 %35, i32* %11, align 4, !tbaa !3
  br label %36

; <label>:36:                                     ; preds = %47, %29
  %37 = load i32, i32* %5, align 4, !tbaa !3
  %38 = load i32, i32* %10, align 4, !tbaa !3
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %5, align 4, !tbaa !3
  %42 = load i32, i32* %11, align 4, !tbaa !3
  %43 = icmp sle i32 %41, %42
  br label %44

; <label>:44:                                     ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %57

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %11, align 4, !tbaa !3
  store i32 %48, i32* %10, align 4, !tbaa !3
  %49 = load i32*, i32** %7, align 8, !tbaa !7
  %50 = load i32, i32* %49, align 4, !tbaa !3
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4, !tbaa !3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [13 x i32], [13 x i32]* %9, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !3
  %55 = load i32, i32* %11, align 4, !tbaa !3
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %11, align 4, !tbaa !3
  br label %36

; <label>:57:                                     ; preds = %44
  %58 = load i32, i32* %5, align 4, !tbaa !3
  %59 = load i32, i32* %10, align 4, !tbaa !3
  %60 = sub nsw i32 %58, %59
  %61 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %60, i32* %61, align 4, !tbaa !3
  %62 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast [13 x i32]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 52, i8* %64) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %2
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %19 = load i8**, i8*** %5, align 8, !tbaa !7
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8, !tbaa !7
  %22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %21)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

; <label>:23:                                     ; preds = %2
  %24 = load i8**, i8*** %5, align 8, !tbaa !7
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8, !tbaa !7
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* %6, align 4, !tbaa !3
  %28 = load i8**, i8*** %5, align 8, !tbaa !7
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8, !tbaa !7
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %7, align 4, !tbaa !3
  %32 = load i32, i32* %6, align 4, !tbaa !3
  %33 = load i32, i32* %7, align 4, !tbaa !3
  call void @split_date(i32 %32, i32 %33, i32* %8, i32* %9)
  %34 = load i32, i32* %7, align 4, !tbaa !3
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = load i32, i32* %8, align 4, !tbaa !3
  %37 = load i32, i32* %9, align 4, !tbaa !3
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

; <label>:39:                                     ; preds = %23, %17
  %40 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  %41 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3
  %42 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #2

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
