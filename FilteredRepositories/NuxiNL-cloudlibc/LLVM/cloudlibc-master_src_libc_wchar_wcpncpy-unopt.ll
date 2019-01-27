; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcpncpy.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcpncpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wcpncpy(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i64 %2, i64* %6, align 8, !tbaa !7
  br label %8

; <label>:8:                                      ; preds = %17, %3
  %9 = load i64, i64* %6, align 8, !tbaa !7
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = load i32*, i32** %5, align 8, !tbaa !3
  %13 = load i32, i32* %12, align 4, !tbaa !9
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15:                                     ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %15
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8, !tbaa !3
  %20 = load i32, i32* %18, align 4, !tbaa !9
  %21 = load i32*, i32** %4, align 8, !tbaa !3
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 8, !tbaa !3
  store i32 %20, i32* %21, align 4, !tbaa !9
  %23 = load i64, i64* %6, align 8, !tbaa !7
  %24 = add i64 %23, -1
  store i64 %24, i64* %6, align 8, !tbaa !7
  br label %8

; <label>:25:                                     ; preds = %15
  %26 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #2
  %27 = load i32*, i32** %4, align 8, !tbaa !3
  store i32* %27, i32** %7, align 8, !tbaa !3
  br label %28

; <label>:28:                                     ; preds = %32, %25
  %29 = load i64, i64* %6, align 8, !tbaa !7
  %30 = add i64 %29, -1
  store i64 %30, i64* %6, align 8, !tbaa !7
  %31 = icmp ugt i64 %29, 0
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %28
  %33 = load i32*, i32** %4, align 8, !tbaa !3
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8, !tbaa !3
  store i32 0, i32* %33, align 4, !tbaa !9
  br label %28

; <label>:35:                                     ; preds = %28
  %36 = load i32*, i32** %7, align 8, !tbaa !3
  %37 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #2
  ret i32* %36
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
