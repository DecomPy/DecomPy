; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_repdigit.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_08_repdigit.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [45 x i8] c"Enter a number (0 or negative to terminate: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Digit:\09\09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Occurrences:\09\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast [10 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %65, %0
  %10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64* %4)
  %11 = load i64, i64* %4, align 8, !tbaa !3
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %67

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %14

; <label>:14:                                     ; preds = %21, %13
  %15 = load i32, i32* %3, align 4, !tbaa !7
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %3, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %19
  store i32 0, i32* %20, align 4, !tbaa !7
  br label %21

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %3, align 4, !tbaa !7
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4, !tbaa !7
  br label %14

; <label>:24:                                     ; preds = %14
  br label %25

; <label>:25:                                     ; preds = %28, %24
  %26 = load i64, i64* %4, align 8, !tbaa !3
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %25
  %29 = load i64, i64* %4, align 8, !tbaa !3
  %30 = srem i64 %29, 10
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4, !tbaa !7
  %32 = load i32, i32* %3, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4, !tbaa !7
  %37 = load i64, i64* %4, align 8, !tbaa !3
  %38 = sdiv i64 %37, 10
  store i64 %38, i64* %4, align 8, !tbaa !3
  br label %25

; <label>:39:                                     ; preds = %25
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %41

; <label>:41:                                     ; preds = %47, %39
  %42 = load i32, i32* %3, align 4, !tbaa !7
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %3, align 4, !tbaa !7
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %45)
  br label %47

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %3, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4, !tbaa !7
  br label %41

; <label>:50:                                     ; preds = %41
  %51 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %53

; <label>:53:                                     ; preds = %62, %50
  %54 = load i32, i32* %3, align 4, !tbaa !7
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %3, align 4, !tbaa !7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !7
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %60)
  br label %62

; <label>:62:                                     ; preds = %56
  %63 = load i32, i32* %3, align 4, !tbaa !7
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4, !tbaa !7
  br label %53

; <label>:65:                                     ; preds = %53
  %66 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  br label %9

; <label>:67:                                     ; preds = %9
  %68 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #3
  %69 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  %70 = bitcast [10 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %70) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

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
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
