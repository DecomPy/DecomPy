; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcscmp.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcscmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @wcscmp(i32*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %36, %2
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = load i32*, i32** %4, align 8, !tbaa !3
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8, !tbaa !3
  %13 = load i32, i32* %11, align 4, !tbaa !7
  store i32 %13, i32* %6, align 4, !tbaa !7
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  %15 = load i32*, i32** %5, align 8, !tbaa !3
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %15, align 4, !tbaa !7
  store i32 %17, i32* %7, align 4, !tbaa !7
  %18 = load i32, i32* %6, align 4, !tbaa !7
  %19 = load i32, i32* %7, align 4, !tbaa !7
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %9
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %32

; <label>:22:                                     ; preds = %9
  %23 = load i32, i32* %6, align 4, !tbaa !7
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %22
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %32

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %32

; <label>:31:                                     ; preds = %27
  store i32 0, i32* %8, align 4
  br label %32

; <label>:32:                                     ; preds = %31, %30, %26, %21
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #2
  %34 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %39 [
    i32 0, label %36
    i32 1, label %37
  ]

; <label>:36:                                     ; preds = %32
  br label %9

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38

; <label>:39:                                     ; preds = %32
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
!8 = !{!"int", !5, i64 0}
