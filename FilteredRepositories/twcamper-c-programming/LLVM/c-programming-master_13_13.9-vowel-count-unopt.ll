; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.9-vowel-count.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.9-vowel-count.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Enter a sentence: \00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Vowel count: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1025 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [1025 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* %3) #4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %5 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %7 = call i8* @fgets(i8* %5, i32 1025, %struct.__sFILE* %6)
  %8 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i32 0, i32 0
  %9 = call i32 @count_vowels(i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %9)
  %11 = bitcast [1025 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* %11) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define i32 @count_vowels(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4
  store i32 0, i32* %3, align 4, !tbaa !7
  br label %5

; <label>:5:                                      ; preds = %18, %1
  %6 = load i8*, i8** %2, align 8, !tbaa !3
  %7 = load i8, i8* %6, align 1, !tbaa !9
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %2, align 8, !tbaa !3
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8, !tbaa !3
  %12 = load i8, i8* %10, align 1, !tbaa !9
  %13 = sext i8 %12 to i32
  %14 = call i32 @tolower(i32 %13) #5
  switch i32 %14, label %18 [
    i32 97, label %15
    i32 101, label %15
    i32 105, label %15
    i32 111, label %15
    i32 117, label %15
  ]

; <label>:15:                                     ; preds = %9, %9, %9, %9, %9
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %9, %15
  br label %5

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %3, align 4, !tbaa !7
  %21 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4
  ret i32 %20
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @tolower(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__tolower(i32 %3)
  ret i32 %4
}

declare i32 @__tolower(i32) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

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
