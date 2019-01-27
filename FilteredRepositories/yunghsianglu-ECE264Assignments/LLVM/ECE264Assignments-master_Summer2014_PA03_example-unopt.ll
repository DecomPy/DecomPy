; ModuleID = 'Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Summer2014_PA03_example.c'
source_filename = "Repositories/yunghsianglu-ECE264Assignments/Unfiltered/ECE264Assignments-master_Summer2014_PA03_example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"--serve-icecream\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown switch: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Usage: ./icecream OPTIONS...\0A   -i, --serve-icecream  Not as exciting as it sounds\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Do you get icecream? \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"YES!!!\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Sorry, try again next-time.\0A\00", align 1

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
  store i32 0, i32* %6, align 4, !tbaa !3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  store i32 0, i32* %8, align 4, !tbaa !3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  store i32 1, i32* %9, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %57, %2
  %16 = load i32, i32* %9, align 4, !tbaa !3
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %60

; <label>:19:                                     ; preds = %15
  %20 = load i8**, i8*** %5, align 8, !tbaa !7
  %21 = load i32, i32* %9, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8, !tbaa !7
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %19
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %56

; <label>:28:                                     ; preds = %19
  %29 = load i8**, i8*** %5, align 8, !tbaa !7
  %30 = load i32, i32* %9, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8, !tbaa !7
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %28
  store i32 1, i32* %7, align 4, !tbaa !3
  br label %55

; <label>:37:                                     ; preds = %28
  %38 = load i8**, i8*** %5, align 8, !tbaa !7
  %39 = load i32, i32* %9, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8, !tbaa !7
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %37
  store i32 1, i32* %7, align 4, !tbaa !3
  br label %54

; <label>:46:                                     ; preds = %37
  store i32 1, i32* %8, align 4, !tbaa !3
  %47 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %48 = load i8**, i8*** %5, align 8, !tbaa !7
  %49 = load i32, i32* %9, align 4, !tbaa !3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8, !tbaa !7
  %53 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %52)
  br label %54

; <label>:54:                                     ; preds = %46, %45
  br label %55

; <label>:55:                                     ; preds = %54, %36
  br label %56

; <label>:56:                                     ; preds = %55, %27
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %9, align 4, !tbaa !3
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4, !tbaa !3
  br label %15

; <label>:60:                                     ; preds = %15
  %61 = load i32, i32* %8, align 4, !tbaa !3
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %60
  %64 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %65 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %80

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %6, align 4, !tbaa !3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %80

; <label>:71:                                     ; preds = %66
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  %73 = load i32, i32* %7, align 4, !tbaa !3
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %71
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  br label %79

; <label>:77:                                     ; preds = %71
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %79

; <label>:79:                                     ; preds = %77, %75
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %80

; <label>:80:                                     ; preds = %79, %69, %63
  %81 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3
  %82 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3
  %83 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3
  %84 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

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
