; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncmp.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @wcsncmp(i32*, i32*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i64 %2, i64* %7, align 8, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %42, %3
  %12 = load i64, i64* %7, align 8, !tbaa !7
  %13 = add i64 %12, -1
  store i64 %13, i64* %7, align 8, !tbaa !7
  %14 = icmp ugt i64 %12, 0
  br i1 %14, label %15, label %43

; <label>:15:                                     ; preds = %11
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #2
  %17 = load i32*, i32** %5, align 8, !tbaa !3
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8, !tbaa !3
  %19 = load i32, i32* %17, align 4, !tbaa !9
  store i32 %19, i32* %8, align 4, !tbaa !9
  %20 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #2
  %21 = load i32*, i32** %6, align 8, !tbaa !3
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8, !tbaa !3
  %23 = load i32, i32* %21, align 4, !tbaa !9
  store i32 %23, i32* %9, align 4, !tbaa !9
  %24 = load i32, i32* %8, align 4, !tbaa !9
  %25 = load i32, i32* %9, align 4, !tbaa !9
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %15
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %38

; <label>:28:                                     ; preds = %15
  %29 = load i32, i32* %8, align 4, !tbaa !9
  %30 = load i32, i32* %9, align 4, !tbaa !9
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %28
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %38

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %8, align 4, !tbaa !9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 3, i32* %10, align 4
  br label %38

; <label>:37:                                     ; preds = %33
  store i32 0, i32* %10, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %36, %32, %27
  %39 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #2
  %40 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #2
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %46 [
    i32 0, label %42
    i32 1, label %44
    i32 3, label %43
  ]

; <label>:42:                                     ; preds = %38
  br label %11

; <label>:43:                                     ; preds = %38, %11
  store i32 0, i32* %4, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45

; <label>:46:                                     ; preds = %38
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
