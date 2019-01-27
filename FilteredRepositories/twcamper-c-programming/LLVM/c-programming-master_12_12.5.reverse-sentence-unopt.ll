; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.5.reverse-sentence.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.5.reverse-sentence.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [19 x i8] c"Enter a sentence: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca [255 x i8], align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #3
  %6 = bitcast [255 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %6) #3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %2, align 4, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %18, %0
  %9 = call i32 @getchar()
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %3, align 1, !tbaa !7
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %8
  %14 = load i8, i8* %3, align 1, !tbaa !7
  %15 = load i32, i32* %2, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 %16
  store i8 %14, i8* %17, align 1, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %2, align 4, !tbaa !3
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4, !tbaa !3
  br label %8

; <label>:21:                                     ; preds = %8
  %22 = load i32, i32* %2, align 4, !tbaa !3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 %23
  store i8 0, i8* %24, align 1, !tbaa !7
  %25 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i32 0, i32 0
  %26 = load i32, i32* %2, align 4, !tbaa !3
  call void @print_reversed(i8* %25, i32 %26)
  store i32 0, i32* %1, align 4
  %27 = bitcast [255 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %27) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #3
  %28 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: nounwind ssp uwtable
define void @print_reversed(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8, !tbaa !8
  store i32 %1, i32* %4, align 4, !tbaa !3
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3
  %9 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #3
  store i8 0, i8* %7, align 1, !tbaa !7
  %10 = load i8*, i8** %3, align 8, !tbaa !8
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %6, align 8, !tbaa !8
  %15 = load i8*, i8** %6, align 8, !tbaa !8
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 46
  br i1 %18, label %29, label %19

; <label>:19:                                     ; preds = %2
  %20 = load i8*, i8** %6, align 8, !tbaa !8
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 63
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %6, align 8, !tbaa !8
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 33
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %24, %19, %2
  %30 = load i8*, i8** %6, align 8, !tbaa !8
  %31 = load i8, i8* %30, align 1, !tbaa !7
  store i8 %31, i8* %7, align 1, !tbaa !7
  %32 = load i8*, i8** %6, align 8, !tbaa !8
  store i8 0, i8* %32, align 1, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %29, %24
  br label %34

; <label>:34:                                     ; preds = %92, %33
  %35 = load i8*, i8** %6, align 8, !tbaa !8
  %36 = load i8*, i8** %3, align 8, !tbaa !8
  %37 = icmp uge i8* %35, %36
  br i1 %37, label %38, label %95

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %6, align 8, !tbaa !8
  %40 = load i8, i8* %39, align 1, !tbaa !7
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %47, label %43

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %6, align 8, !tbaa !8
  %45 = load i8*, i8** %3, align 8, !tbaa !8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %92

; <label>:47:                                     ; preds = %43, %38
  %48 = load i8*, i8** %6, align 8, !tbaa !8
  store i8* %48, i8** %5, align 8, !tbaa !8
  %49 = load i8*, i8** %6, align 8, !tbaa !8
  %50 = load i8, i8* %49, align 1, !tbaa !7
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %6, align 8, !tbaa !8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8, !tbaa !8
  br label %56

; <label>:56:                                     ; preds = %53, %47
  br label %57

; <label>:57:                                     ; preds = %69, %56
  %58 = load i8*, i8** %6, align 8, !tbaa !8
  %59 = load i8, i8* %58, align 1, !tbaa !7
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %6, align 8, !tbaa !8
  %64 = load i8, i8* %63, align 1, !tbaa !7
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

; <label>:67:                                     ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %76

; <label>:69:                                     ; preds = %67
  %70 = load i8*, i8** %6, align 8, !tbaa !8
  %71 = load i8, i8* %70, align 1, !tbaa !7
  %72 = sext i8 %71 to i32
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %72)
  %74 = load i8*, i8** %6, align 8, !tbaa !8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8, !tbaa !8
  br label %57

; <label>:76:                                     ; preds = %67
  %77 = load i8*, i8** %5, align 8, !tbaa !8
  store i8* %77, i8** %6, align 8, !tbaa !8
  %78 = load i8*, i8** %6, align 8, !tbaa !8
  %79 = load i8*, i8** %3, align 8, !tbaa !8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %89

; <label>:81:                                     ; preds = %76
  %82 = load i8, i8* %7, align 1, !tbaa !7
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %88

; <label>:84:                                     ; preds = %81
  %85 = load i8, i8* %7, align 1, !tbaa !7
  %86 = sext i8 %85 to i32
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %86)
  br label %88

; <label>:88:                                     ; preds = %84, %81
  br label %91

; <label>:89:                                     ; preds = %76
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 32)
  br label %91

; <label>:91:                                     ; preds = %89, %88
  br label %92

; <label>:92:                                     ; preds = %91, %43
  %93 = load i8*, i8** %6, align 8, !tbaa !8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %6, align 8, !tbaa !8
  br label %34

; <label>:95:                                     ; preds = %34
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %7) #3
  %97 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #3
  %98 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #3
  ret void
}

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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
