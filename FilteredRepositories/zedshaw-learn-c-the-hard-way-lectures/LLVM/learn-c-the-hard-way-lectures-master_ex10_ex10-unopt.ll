; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex10_ex10.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex10_ex10.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [31 x i8] c"ERROR: You need one argument.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d: 'A'\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d: 'E'\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d: 'I'\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d: 'O'\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d: 'U'\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%d: 'Y'\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%d: %c is not a vowel\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %67

; <label>:12:                                     ; preds = %2
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %6, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %62, %12
  %15 = load i8**, i8*** %5, align 8, !tbaa !7
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8, !tbaa !7
  %18 = load i32, i32* %6, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !9
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

; <label>:24:                                     ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #3
  %25 = load i8**, i8*** %5, align 8, !tbaa !7
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !7
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !9
  store i8 %31, i8* %7, align 1, !tbaa !9
  %32 = load i8, i8* %7, align 1, !tbaa !9
  %33 = sext i8 %32 to i32
  switch i32 %33, label %56 [
    i32 97, label %34
    i32 65, label %34
    i32 101, label %37
    i32 69, label %37
    i32 105, label %40
    i32 73, label %40
    i32 111, label %43
    i32 79, label %43
    i32 117, label %46
    i32 85, label %46
    i32 121, label %49
    i32 89, label %49
  ]

; <label>:34:                                     ; preds = %24, %24
  %35 = load i32, i32* %6, align 4, !tbaa !3
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %35)
  br label %61

; <label>:37:                                     ; preds = %24, %24
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %38)
  br label %61

; <label>:40:                                     ; preds = %24, %24
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 %41)
  br label %61

; <label>:43:                                     ; preds = %24, %24
  %44 = load i32, i32* %6, align 4, !tbaa !3
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %44)
  br label %61

; <label>:46:                                     ; preds = %24, %24
  %47 = load i32, i32* %6, align 4, !tbaa !3
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %47)
  br label %61

; <label>:49:                                     ; preds = %24, %24
  %50 = load i32, i32* %6, align 4, !tbaa !3
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %53)
  br label %55

; <label>:55:                                     ; preds = %52, %49
  br label %61

; <label>:56:                                     ; preds = %24
  %57 = load i32, i32* %6, align 4, !tbaa !3
  %58 = load i8, i8* %7, align 1, !tbaa !9
  %59 = sext i8 %58 to i32
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %57, i32 %59)
  br label %61

; <label>:61:                                     ; preds = %56, %55, %46, %43, %40, %37, %34
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %7) #3
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %6, align 4, !tbaa !3
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4, !tbaa !3
  br label %14

; <label>:65:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  %66 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3
  br label %67

; <label>:67:                                     ; preds = %65, %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

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
!9 = !{!5, !5, i64 0}
