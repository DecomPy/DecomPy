; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcpy.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcpy.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i64 @wcslcpy(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i64 %2, i64* %7, align 8, !tbaa !7
  %10 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #2
  %11 = load i32*, i32** %6, align 8, !tbaa !3
  store i32* %11, i32** %8, align 8, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %29, %3
  %13 = load i64, i64* %7, align 8, !tbaa !7
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %12
  %16 = load i32*, i32** %6, align 8, !tbaa !3
  %17 = load i32, i32* %16, align 4, !tbaa !9
  %18 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 %17, i32* %18, align 4, !tbaa !9
  %19 = load i32*, i32** %6, align 8, !tbaa !3
  %20 = load i32, i32* %19, align 4, !tbaa !9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %15
  %23 = load i32*, i32** %6, align 8, !tbaa !3
  %24 = load i32*, i32** %8, align 8, !tbaa !3
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  store i64 %28, i64* %4, align 8
  store i32 1, i32* %9, align 4
  br label %56

; <label>:29:                                     ; preds = %15
  %30 = load i32*, i32** %5, align 8, !tbaa !3
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8, !tbaa !3
  %32 = load i32*, i32** %6, align 8, !tbaa !3
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8, !tbaa !3
  %34 = load i64, i64* %7, align 8, !tbaa !7
  %35 = add i64 %34, -1
  store i64 %35, i64* %7, align 8, !tbaa !7
  br label %12

; <label>:36:                                     ; preds = %12
  %37 = load i64, i64* %7, align 8, !tbaa !7
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %36
  %40 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 0, i32* %40, align 4, !tbaa !9
  br label %41

; <label>:41:                                     ; preds = %39, %36
  br label %42

; <label>:42:                                     ; preds = %46, %41
  %43 = load i32*, i32** %6, align 8, !tbaa !3
  %44 = load i32, i32* %43, align 4, !tbaa !9
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %42
  %47 = load i32*, i32** %6, align 8, !tbaa !3
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8, !tbaa !3
  br label %42

; <label>:49:                                     ; preds = %42
  %50 = load i32*, i32** %6, align 8, !tbaa !3
  %51 = load i32*, i32** %8, align 8, !tbaa !3
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  store i64 %55, i64* %4, align 8
  store i32 1, i32* %9, align 4
  br label %56

; <label>:56:                                     ; preds = %49, %22
  %57 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %57) #2
  %58 = load i64, i64* %4, align 8
  ret i64 %58
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
