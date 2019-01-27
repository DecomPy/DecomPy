; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.6.16-count-spaces.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.6.16-count-spaces.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s <string>\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Spaces: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @count_spaces(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
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
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !tbaa !7
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4, !tbaa !7
  br label %18

; <label>:18:                                     ; preds = %15, %9
  br label %5

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %3, align 4, !tbaa !7
  %21 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  ret i32 %20
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !7
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %2
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !3
  %10 = load i8**, i8*** %5, align 8, !tbaa !3
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8, !tbaa !3
  %13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %12)
  store i32 1, i32* %3, align 4
  br label %20

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %5, align 8, !tbaa !3
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8, !tbaa !3
  %18 = call i32 @count_spaces(i8* %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %14, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
