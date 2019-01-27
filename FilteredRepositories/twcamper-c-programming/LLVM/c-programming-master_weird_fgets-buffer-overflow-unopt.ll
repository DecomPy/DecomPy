; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_weird_fgets-buffer-overflow.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_weird_fgets-buffer-overflow.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Enter message to be encrypted: \00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Enter shift amount (1-25): \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Encrypted message: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [80 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %6) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i32 0, i32 0
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %12 = call i8* @fgets(i8* %10, i32 80, %struct.__sFILE* %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %5)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %4, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %66, %0
  %17 = load i32, i32* %4, align 4, !tbaa !7
  %18 = icmp slt i32 %17, 80
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %4, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !9
  store i8 %23, i8* %3, align 1, !tbaa !9
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br label %26

; <label>:26:                                     ; preds = %19, %16
  %27 = phi i1 [ false, %16 ], [ %25, %19 ]
  br i1 %27, label %28, label %69

; <label>:28:                                     ; preds = %26
  %29 = load i8, i8* %3, align 1, !tbaa !9
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 97
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %28
  %33 = load i8, i8* %3, align 1, !tbaa !9
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 122
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %32
  %37 = load i8, i8* %3, align 1, !tbaa !9
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 97
  %40 = load i32, i32* %5, align 4, !tbaa !7
  %41 = add nsw i32 %39, %40
  %42 = srem i32 %41, 26
  %43 = add nsw i32 %42, 97
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %3, align 1, !tbaa !9
  br label %45

; <label>:45:                                     ; preds = %36, %32, %28
  %46 = load i8, i8* %3, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 65
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %45
  %50 = load i8, i8* %3, align 1, !tbaa !9
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 90
  br i1 %52, label %53, label %62

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* %3, align 1, !tbaa !9
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 65
  %57 = load i32, i32* %5, align 4, !tbaa !7
  %58 = add nsw i32 %56, %57
  %59 = srem i32 %58, 26
  %60 = add nsw i32 %59, 65
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %3, align 1, !tbaa !9
  br label %62

; <label>:62:                                     ; preds = %53, %49, %45
  %63 = load i8, i8* %3, align 1, !tbaa !9
  %64 = sext i8 %63 to i32
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %64)
  br label %66

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %4, align 4, !tbaa !7
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4, !tbaa !7
  br label %16

; <label>:69:                                     ; preds = %26
  %70 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  %71 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  %72 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #3
  %73 = bitcast [80 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %73) #3
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

declare i32 @scanf(i8*, ...) #2

declare i32 @puts(i8*) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
