; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsspn.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsspn.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i64 @wcsspn(i32*, i32*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  %9 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #2
  %10 = load i32*, i32** %4, align 8, !tbaa !3
  store i32* %10, i32** %6, align 8, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %40, %2
  %12 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #2
  %13 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %13, i32** %7, align 8, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %33, %11
  %15 = load i32*, i32** %7, align 8, !tbaa !3
  %16 = load i32, i32* %15, align 4, !tbaa !7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %14
  %19 = load i32*, i32** %6, align 8, !tbaa !3
  %20 = load i32*, i32** %4, align 8, !tbaa !3
  %21 = ptrtoint i32* %19 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  store i64 %24, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %37

; <label>:25:                                     ; preds = %14
  %26 = load i32*, i32** %6, align 8, !tbaa !3
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32*, i32** %7, align 8, !tbaa !3
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8, !tbaa !3
  %30 = load i32, i32* %28, align 4, !tbaa !7
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %25
  br label %34

; <label>:33:                                     ; preds = %25
  br label %14

; <label>:34:                                     ; preds = %32
  %35 = load i32*, i32** %6, align 8, !tbaa !3
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8, !tbaa !3
  store i32 0, i32* %8, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %18
  %38 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #2
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
  ]

; <label>:40:                                     ; preds = %37
  br label %11

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #2
  %43 = load i64, i64* %3, align 8
  ret i64 %43
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
