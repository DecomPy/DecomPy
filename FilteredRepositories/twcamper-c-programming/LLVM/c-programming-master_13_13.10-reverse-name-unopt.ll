; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.10-reverse-name.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.10-reverse-name.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Enter First Name and Last Name: \00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%.*s, %c.\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [65 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [65 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 65, i8* %3) #4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %5 = getelementptr inbounds [65 x i8], [65 x i8]* %2, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %7 = call i8* @fgets(i8* %5, i32 65, %struct.__sFILE* %6)
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* %2, i32 0, i32 0
  call void @reverse_name(i8* %8)
  %9 = getelementptr inbounds [65 x i8], [65 x i8]* %2, i32 0, i32 0
  %10 = call i32 @puts(i8* %9)
  %11 = bitcast [65 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 65, i8* %11) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define void @reverse_name(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #4
  %6 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4
  %7 = load i8*, i8** %2, align 8, !tbaa !3
  store i8* %7, i8** %4, align 8, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  br label %9

; <label>:9:                                      ; preds = %21, %1
  %10 = load i8*, i8** %4, align 8, !tbaa !3
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %4, align 8, !tbaa !3
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br label %19

; <label>:19:                                     ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %19
  %22 = load i8*, i8** %4, align 8, !tbaa !3
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8, !tbaa !3
  br label %9

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %4, align 8, !tbaa !3
  %26 = load i8, i8* %25, align 1, !tbaa !7
  store i8 %26, i8* %3, align 1, !tbaa !7
  br label %27

; <label>:27:                                     ; preds = %39, %24
  %28 = load i8*, i8** %4, align 8, !tbaa !3
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %4, align 8, !tbaa !3
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 32
  br label %37

; <label>:37:                                     ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** %4, align 8, !tbaa !3
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8, !tbaa !3
  br label %27

; <label>:42:                                     ; preds = %37
  br label %43

; <label>:43:                                     ; preds = %55, %42
  %44 = load i8*, i8** %4, align 8, !tbaa !3
  %45 = load i8, i8* %44, align 1, !tbaa !7
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %4, align 8, !tbaa !3
  %50 = load i8, i8* %49, align 1, !tbaa !7
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br label %53

; <label>:53:                                     ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %53
  %56 = load i8*, i8** %4, align 8, !tbaa !3
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8, !tbaa !3
  br label %43

; <label>:58:                                     ; preds = %53
  store i32 0, i32* %5, align 4, !tbaa !8
  br label %59

; <label>:59:                                     ; preds = %86, %58
  %60 = load i8*, i8** %4, align 8, !tbaa !3
  %61 = load i32, i32* %5, align 4, !tbaa !8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !7
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 10
  br i1 %66, label %67, label %83

; <label>:67:                                     ; preds = %59
  %68 = load i8*, i8** %4, align 8, !tbaa !3
  %69 = load i32, i32* %5, align 4, !tbaa !8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1, !tbaa !7
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

; <label>:75:                                     ; preds = %67
  %76 = load i8*, i8** %4, align 8, !tbaa !3
  %77 = load i32, i32* %5, align 4, !tbaa !8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !7
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 32
  br label %83

; <label>:83:                                     ; preds = %75, %67, %59
  %84 = phi i1 [ false, %67 ], [ false, %59 ], [ %82, %75 ]
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %83
  br label %86

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %5, align 4, !tbaa !8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4, !tbaa !8
  br label %59

; <label>:89:                                     ; preds = %83
  %90 = load i8*, i8** %2, align 8, !tbaa !3
  %91 = load i8*, i8** %2, align 8, !tbaa !3
  %92 = call i64 @llvm.objectsize.i64.p0i8(i8* %91, i1 false, i1 true)
  %93 = load i32, i32* %5, align 4, !tbaa !8
  %94 = load i8*, i8** %4, align 8, !tbaa !3
  %95 = load i8, i8* %3, align 1, !tbaa !7
  %96 = sext i8 %95 to i32
  %97 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %90, i32 0, i64 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %93, i8* %94, i32 %96)
  %98 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %98) #4
  %99 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %99) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #4
  ret void
}

declare i32 @puts(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
