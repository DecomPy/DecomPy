; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-68.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-68.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stdinp = external global %struct.__sFILE*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @good_echo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %6) #3
  %7 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #3
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %10 = call i8* @fgets(i8* %8, i32 5, %struct.__sFILE* %9)
  store i8* %10, i8** %3, align 8, !tbaa !3
  %11 = load i8*, i8** %3, align 8, !tbaa !3
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %0
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !3
  %15 = call i32 @feof(%struct.__sFILE* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %13
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %28

; <label>:18:                                     ; preds = %13
  br label %27

; <label>:19:                                     ; preds = %0
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !3
  %22 = call i32 @"\01_fputs"(i8* %20, %struct.__sFILE* %21)
  store i32 %22, i32* %5, align 4, !tbaa !7
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %19
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %28

; <label>:26:                                     ; preds = %19
  br label %27

; <label>:27:                                     ; preds = %26, %18
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %28

; <label>:28:                                     ; preds = %27, %25, %17
  %29 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #3
  %30 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %30) #3
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

declare i32 @feof(%struct.__sFILE*) #2

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #2

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
