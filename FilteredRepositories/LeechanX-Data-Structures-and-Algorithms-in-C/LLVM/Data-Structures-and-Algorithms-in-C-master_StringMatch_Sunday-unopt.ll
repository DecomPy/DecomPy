; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_StringMatch_Sunday.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_StringMatch_Sunday.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ababababca\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"bacabaabababaababababcabcaababababcabbababababababababcabab\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @match(i8*, i32, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i8* %2, i8** %6, align 8, !tbaa !3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 1, i32* %8, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %38, %3
  %12 = load i8*, i8** %6, align 8, !tbaa !3
  %13 = load i32, i32* %7, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %4, align 8, !tbaa !3
  %21 = load i32, i32* %5, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %6, align 8, !tbaa !3
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !9
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %28, %34
  br label %36

; <label>:36:                                     ; preds = %19, %11
  %37 = phi i1 [ false, %11 ], [ %35, %19 ]
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %7, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %6, align 8, !tbaa !3
  %43 = load i32, i32* %7, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %41
  store i32 0, i32* %8, align 4, !tbaa !7
  br label %49

; <label>:49:                                     ; preds = %48, %41
  %50 = load i32, i32* %8, align 4, !tbaa !7
  %51 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3
  %52 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3
  ret i32 %50
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @if_in_pattern(i8*, i32, i8 signext) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i8 %2, i8* %6, align 1, !tbaa !9
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %26, %3
  %12 = load i32, i32* %7, align 4, !tbaa !7
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %11
  %15 = load i8*, i8** %4, align 8, !tbaa !3
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %6, align 1, !tbaa !9
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br label %24

; <label>:24:                                     ; preds = %14, %11
  %25 = phi i1 [ false, %11 ], [ %23, %14 ]
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* %7, align 4, !tbaa !7
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4, !tbaa !7
  br label %11

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %7, align 4, !tbaa !7
  %31 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3
  ret i32 %30
}

; Function Attrs: nounwind ssp uwtable
define void @sundaymatch(i8*, i8*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8, !tbaa !3
  store i8* %1, i8** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  %13 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %11) #3
  br label %14

; <label>:14:                                     ; preds = %63, %4
  %15 = load i32, i32* %9, align 4, !tbaa !7
  %16 = load i32, i32* %7, align 4, !tbaa !7
  %17 = load i32, i32* %8, align 4, !tbaa !7
  %18 = sub nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %64

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %5, align 8, !tbaa !3
  %23 = load i32, i32* %9, align 4, !tbaa !7
  %24 = load i8*, i8** %6, align 8, !tbaa !3
  %25 = call i32 @match(i8* %22, i32 %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %28)
  br label %30

; <label>:30:                                     ; preds = %27, %21
  %31 = load i32, i32* %9, align 4, !tbaa !7
  %32 = load i32, i32* %8, align 4, !tbaa !7
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %7, align 4, !tbaa !7
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %62

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %5, align 8, !tbaa !3
  %38 = load i32, i32* %9, align 4, !tbaa !7
  %39 = load i32, i32* %8, align 4, !tbaa !7
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !9
  store i8 %43, i8* %11, align 1, !tbaa !9
  %44 = load i8*, i8** %6, align 8, !tbaa !3
  %45 = load i32, i32* %8, align 4, !tbaa !7
  %46 = load i8, i8* %11, align 1, !tbaa !9
  %47 = call i32 @if_in_pattern(i8* %44, i32 %45, i8 signext %46)
  store i32 %47, i32* %10, align 4, !tbaa !7
  %48 = load i32, i32* %10, align 4, !tbaa !7
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %36
  %51 = load i32, i32* %8, align 4, !tbaa !7
  %52 = load i32, i32* %10, align 4, !tbaa !7
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %9, align 4, !tbaa !7
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4, !tbaa !7
  br label %61

; <label>:56:                                     ; preds = %36
  %57 = load i32, i32* %9, align 4, !tbaa !7
  %58 = load i32, i32* %8, align 4, !tbaa !7
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4, !tbaa !7
  br label %61

; <label>:61:                                     ; preds = %56, %50
  br label %63

; <label>:62:                                     ; preds = %30
  br label %64

; <label>:63:                                     ; preds = %61
  br label %14

; <label>:64:                                     ; preds = %62, %14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %11) #3
  %65 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3
  %66 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !7
  store i8** %1, i8*** %5, align 8, !tbaa !3
  %10 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8, !tbaa !3
  %11 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #3
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0), i8** %7, align 8, !tbaa !3
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = load i8*, i8** %6, align 8, !tbaa !3
  %14 = call i64 @strlen(i8* %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4, !tbaa !7
  %16 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  %17 = load i8*, i8** %7, align 8, !tbaa !3
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4, !tbaa !7
  %20 = load i8*, i8** %7, align 8, !tbaa !3
  %21 = load i8*, i8** %6, align 8, !tbaa !3
  %22 = load i32, i32* %9, align 4, !tbaa !7
  %23 = load i32, i32* %8, align 4, !tbaa !7
  call void @sundaymatch(i8* %20, i8* %21, i32 %22, i32 %23)
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  %25 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #3
  %26 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #3
  %27 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #3
  ret i32 0
}

declare i64 @strlen(i8*) #2

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
