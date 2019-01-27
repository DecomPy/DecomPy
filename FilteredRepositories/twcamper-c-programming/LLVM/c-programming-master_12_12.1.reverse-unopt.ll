; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.1.reverse.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.1.reverse.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [38 x i8] c"Enter a message up to %d characters: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Reversed: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca [25 x i8], align 16
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #3
  %5 = bitcast [25 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 25, i8* %5) #3
  %6 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 25)
  %8 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i32 0, i32 0
  store i8* %8, i8** %4, align 8, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %24, %0
  %10 = load i8*, i8** %4, align 8, !tbaa !3
  %11 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i32 0, i32 0
  %12 = getelementptr inbounds i8, i8* %11, i64 25
  %13 = icmp ult i8* %10, %12
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %9
  %15 = call i32 @getchar()
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %2, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 10
  br label %19

; <label>:19:                                     ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %19
  %22 = load i8, i8* %2, align 1, !tbaa !7
  %23 = load i8*, i8** %4, align 8, !tbaa !3
  store i8 %22, i8* %23, align 1, !tbaa !7
  br label %24

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %4, align 8, !tbaa !3
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8, !tbaa !3
  br label %9

; <label>:27:                                     ; preds = %19
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %38, %27
  %30 = load i8*, i8** %4, align 8, !tbaa !3
  %31 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i32 0, i32 0
  %32 = icmp uge i8* %30, %31
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** %4, align 8, !tbaa !3
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %36 = sext i8 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %36)
  br label %38

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %4, align 8, !tbaa !3
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %4, align 8, !tbaa !3
  br label %29

; <label>:41:                                     ; preds = %29
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  %43 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #3
  %44 = bitcast [25 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 25, i8* %44) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #3
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

declare i32 @getchar() #2

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
!7 = !{!5, !5, i64 0}
