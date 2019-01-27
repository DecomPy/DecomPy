; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncat.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncat.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wcsncat(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i64 %2, i64* %6, align 8, !tbaa !7
  %8 = load i64, i64* %6, align 8, !tbaa !7
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %39

; <label>:10:                                     ; preds = %3
  %11 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #2
  %12 = load i32*, i32** %4, align 8, !tbaa !3
  store i32* %12, i32** %7, align 8, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %17, %10
  %14 = load i32*, i32** %7, align 8, !tbaa !3
  %15 = load i32, i32* %14, align 4, !tbaa !9
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %7, align 8, !tbaa !3
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %7, align 8, !tbaa !3
  br label %13

; <label>:20:                                     ; preds = %13
  br label %21

; <label>:21:                                     ; preds = %32, %20
  %22 = load i32*, i32** %5, align 8, !tbaa !3
  %23 = load i32, i32* %22, align 4, !tbaa !9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  br label %36

; <label>:26:                                     ; preds = %21
  %27 = load i32*, i32** %5, align 8, !tbaa !3
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8, !tbaa !3
  %29 = load i32, i32* %27, align 4, !tbaa !9
  %30 = load i32*, i32** %7, align 8, !tbaa !3
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8, !tbaa !3
  store i32 %29, i32* %30, align 4, !tbaa !9
  br label %32

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %6, align 8, !tbaa !7
  %34 = add i64 %33, -1
  store i64 %34, i64* %6, align 8, !tbaa !7
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %21, label %36

; <label>:36:                                     ; preds = %32, %25
  %37 = load i32*, i32** %7, align 8, !tbaa !3
  store i32 0, i32* %37, align 4, !tbaa !9
  %38 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #2
  br label %39

; <label>:39:                                     ; preds = %36, %3
  %40 = load i32*, i32** %4, align 8, !tbaa !3
  ret i32* %40
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
