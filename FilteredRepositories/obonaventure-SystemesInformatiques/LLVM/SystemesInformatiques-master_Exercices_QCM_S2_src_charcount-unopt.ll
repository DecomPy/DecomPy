; ModuleID = 'Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S2_src_charcount.c'
source_filename = "Repositories/obonaventure-SystemesInformatiques/Unfiltered/SystemesInformatiques-master_Exercices_QCM_S2_src_charcount.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"absbbbsba\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"xbbsjjjqiz\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s -> %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @count1(i8*, i8 signext) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8 %1, i8* %4, align 1, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  store i32 0, i32* %5, align 4, !tbaa !8
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 0, i32* %6, align 4, !tbaa !8
  br label %9

; <label>:9:                                      ; preds = %30, %2
  %10 = load i8*, i8** %3, align 8, !tbaa !3
  %11 = load i32, i32* %5, align 4, !tbaa !8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %3, align 8, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %4, align 1, !tbaa !7
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %6, align 4, !tbaa !8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4, !tbaa !8
  br label %30

; <label>:30:                                     ; preds = %27, %17
  %31 = load i32, i32* %5, align 4, !tbaa !8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4, !tbaa !8
  br label %9

; <label>:33:                                     ; preds = %9
  %34 = load i32, i32* %6, align 4, !tbaa !8
  %35 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3
  %36 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3
  ret i32 %34
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @count2(i8*, i8 signext) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8 %1, i8* %4, align 1, !tbaa !7
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !8
  br label %7

; <label>:7:                                      ; preds = %22, %2
  %8 = load i8*, i8** %3, align 8, !tbaa !3
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8, !tbaa !3
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* %4, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %5, align 4, !tbaa !8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !8
  br label %22

; <label>:22:                                     ; preds = %19, %12
  %23 = load i8*, i8** %3, align 8, !tbaa !3
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8, !tbaa !3
  br label %7

; <label>:25:                                     ; preds = %7
  %26 = load i32, i32* %5, align 4, !tbaa !8
  %27 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %1, align 8, !tbaa !3
  %4 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %2, align 8, !tbaa !3
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8*, i8** %1, align 8, !tbaa !3
  %7 = call i32 @count1(i8* %6, i8 signext 97)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %5, i32 %7)
  %9 = load i8*, i8** %2, align 8, !tbaa !3
  %10 = load i8*, i8** %2, align 8, !tbaa !3
  %11 = call i32 @count1(i8* %10, i8 signext 97)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %9, i32 %11)
  %13 = load i8*, i8** %1, align 8, !tbaa !3
  %14 = load i8*, i8** %1, align 8, !tbaa !3
  %15 = call i32 @count2(i8* %14, i8 signext 97)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %13, i32 %15)
  %17 = load i8*, i8** %2, align 8, !tbaa !3
  %18 = load i8*, i8** %2, align 8, !tbaa !3
  %19 = call i32 @count2(i8* %18, i8 signext 97)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %17, i32 %19)
  %21 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #3
  %22 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #3
  ret i32 0
}

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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
