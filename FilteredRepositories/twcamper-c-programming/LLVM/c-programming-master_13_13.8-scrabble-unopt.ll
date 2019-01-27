; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.8-scrabble.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_13_13.8-scrabble.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"Enter a word: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%127s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Scrabble Value: %d\0A\00", align 1
@compute_scrabble_value.scrabble_weights = private unnamed_addr constant [26 x i32] [i32 1, i32 3, i32 3, i32 2, i32 1, i32 4, i32 2, i32 4, i32 1, i32 8, i32 5, i32 1, i32 3, i32 1, i32 1, i32 3, i32 10, i32 1, i32 1, i32 1, i32 1, i32 4, i32 4, i32 8, i32 4, i32 10], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [128 x i8]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %3) #4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i32 0, i32 0
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %5)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i32 0, i32 0
  %8 = call i32 @compute_scrabble_value(i8* %7)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %8)
  %10 = bitcast [128 x i8]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %10) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @compute_scrabble_value(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [26 x i32], align 16
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8, !tbaa !3
  %6 = bitcast [26 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* %6) #4
  %7 = bitcast [26 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([26 x i32]* @compute_scrabble_value.scrabble_weights to i8*), i64 104, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %4) #4
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %9

; <label>:9:                                      ; preds = %36, %1
  %10 = load i8*, i8** %2, align 8, !tbaa !3
  %11 = load i8, i8* %10, align 1, !tbaa !9
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %37

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %2, align 8, !tbaa !3
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8, !tbaa !3
  %16 = load i8, i8* %14, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = call i32 @toupper(i32 %17) #5
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %4, align 1, !tbaa !9
  %20 = load i8, i8* %4, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %21, 65
  br i1 %22, label %23, label %36

; <label>:23:                                     ; preds = %13
  %24 = load i8, i8* %4, align 1, !tbaa !9
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 90
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %4, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 65
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [26 x i32], [26 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %34 = load i32, i32* %5, align 4, !tbaa !7
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %5, align 4, !tbaa !7
  br label %36

; <label>:36:                                     ; preds = %27, %23, %13
  br label %9

; <label>:37:                                     ; preds = %9
  %38 = load i32, i32* %5, align 4, !tbaa !7
  %39 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %4) #4
  %40 = bitcast [26 x i32]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 104, i8* %40) #4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: inlinehint nounwind readonly ssp uwtable
define available_externally i32 @toupper(i32) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !7
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %4 = call i32 @__toupper(i32 %3)
  ret i32 %4
}

declare i32 @__toupper(i32) #2

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
