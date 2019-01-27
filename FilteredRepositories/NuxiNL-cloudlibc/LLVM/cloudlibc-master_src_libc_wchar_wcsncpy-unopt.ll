; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncpy.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wcsncpy(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i64 %2, i64* %6, align 8, !tbaa !7
  %8 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  %9 = load i32*, i32** %4, align 8, !tbaa !3
  store i32* %9, i32** %7, align 8, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %19, %3
  %11 = load i64, i64* %6, align 8, !tbaa !7
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %10
  %14 = load i32*, i32** %5, align 8, !tbaa !3
  %15 = load i32, i32* %14, align 4, !tbaa !9
  %16 = icmp ne i32 %15, 0
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %17
  %20 = load i32*, i32** %5, align 8, !tbaa !3
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8, !tbaa !3
  %22 = load i32, i32* %20, align 4, !tbaa !9
  %23 = load i32*, i32** %4, align 8, !tbaa !3
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8, !tbaa !3
  store i32 %22, i32* %23, align 4, !tbaa !9
  %25 = load i64, i64* %6, align 8, !tbaa !7
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8, !tbaa !7
  br label %10

; <label>:27:                                     ; preds = %17
  br label %28

; <label>:28:                                     ; preds = %32, %27
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
