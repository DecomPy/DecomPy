; ModuleID = 'Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex36_ex36.c'
source_filename = "Repositories/zedshaw-learn-c-the-hard-way-lectures/Unfiltered/learn-c-the-hard-way-lectures-master_ex36_ex36.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @copy(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8, !tbaa !3
  store i8* %1, i8** %4, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i8*, i8** %4, align 8, !tbaa !3
  %9 = load i32, i32* %5, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !9
  %13 = load i8*, i8** %3, align 8, !tbaa !3
  %14 = load i32, i32* %5, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 %12, i8* %16, align 1, !tbaa !9
  %17 = sext i8 %12 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %7
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4, !tbaa !7
  br label %7

; <label>:22:                                     ; preds = %7
  %23 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @safercopy(i32, i8*, i32, i8*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4, !tbaa !7
  store i8* %1, i8** %7, align 8, !tbaa !3
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i8* %3, i8** %9, align 8, !tbaa !3
  %13 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  store i32 0, i32* %10, align 4, !tbaa !7
  %14 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  %15 = load i32, i32* %6, align 4, !tbaa !7
  %16 = load i32, i32* %8, align 4, !tbaa !7
  %17 = sub nsw i32 %16, 1
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %8, align 4, !tbaa !7
  %21 = sub nsw i32 %20, 1
  br label %24

; <label>:22:                                     ; preds = %4
  %23 = load i32, i32* %6, align 4, !tbaa !7
  br label %24

; <label>:24:                                     ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  store i32 %25, i32* %11, align 4, !tbaa !7
  %26 = load i32, i32* %6, align 4, !tbaa !7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %8, align 4, !tbaa !7
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28, %24
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

; <label>:32:                                     ; preds = %28
  store i32 0, i32* %10, align 4, !tbaa !7
  br label %33

; <label>:33:                                     ; preds = %47, %32
  %34 = load i32, i32* %10, align 4, !tbaa !7
  %35 = load i32, i32* %11, align 4, !tbaa !7
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %7, align 8, !tbaa !3
  %39 = load i32, i32* %10, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1, !tbaa !9
  %43 = load i8*, i8** %9, align 8, !tbaa !3
  %44 = load i32, i32* %10, align 4, !tbaa !7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1, !tbaa !9
  br label %47

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %10, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4, !tbaa !7
  br label %33

; <label>:50:                                     ; preds = %33
  %51 = load i8*, i8** %9, align 8, !tbaa !3
  %52 = load i32, i32* %8, align 4, !tbaa !7
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 0, i8* %55, align 1, !tbaa !9
  %56 = load i32, i32* %10, align 4, !tbaa !7
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %57

; <label>:57:                                     ; preds = %50, %31
  %58 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #2
  %59 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #2
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

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
