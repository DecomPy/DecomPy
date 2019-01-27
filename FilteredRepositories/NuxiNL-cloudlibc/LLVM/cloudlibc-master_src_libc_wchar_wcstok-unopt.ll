; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcstok.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcstok.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wcstok(i32* noalias, i32* noalias, i32** noalias) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32** %2, i32*** %7, align 8, !tbaa !3
  %9 = load i32*, i32** %5, align 8, !tbaa !3
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %3
  %12 = load i32**, i32*** %7, align 8, !tbaa !3
  %13 = load i32*, i32** %12, align 8, !tbaa !3
  store i32* %13, i32** %5, align 8, !tbaa !3
  %14 = load i32*, i32** %5, align 8, !tbaa !3
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  store i32* null, i32** %4, align 8
  br label %49

; <label>:17:                                     ; preds = %11
  br label %18

; <label>:18:                                     ; preds = %17, %3
  %19 = load i32*, i32** %5, align 8, !tbaa !3
  %20 = load i32*, i32** %6, align 8, !tbaa !3
  %21 = call i64 @wcsspn(i32* %19, i32* %20)
  %22 = load i32*, i32** %5, align 8, !tbaa !3
  %23 = getelementptr inbounds i32, i32* %22, i64 %21
  store i32* %23, i32** %5, align 8, !tbaa !3
  %24 = load i32*, i32** %5, align 8, !tbaa !3
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %18
  %28 = load i32**, i32*** %7, align 8, !tbaa !3
  store i32* null, i32** %28, align 8, !tbaa !3
  store i32* null, i32** %4, align 8
  br label %49

; <label>:29:                                     ; preds = %18
  %30 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3
  %31 = load i32*, i32** %5, align 8, !tbaa !3
  %32 = load i32*, i32** %5, align 8, !tbaa !3
  %33 = load i32*, i32** %6, align 8, !tbaa !3
  %34 = call i64 @wcscspn(i32* %32, i32* %33)
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %8, align 8, !tbaa !3
  %36 = load i32*, i32** %8, align 8, !tbaa !3
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %29
  %40 = load i32**, i32*** %7, align 8, !tbaa !3
  store i32* null, i32** %40, align 8, !tbaa !3
  br label %46

; <label>:41:                                     ; preds = %29
  %42 = load i32*, i32** %8, align 8, !tbaa !3
  store i32 0, i32* %42, align 4, !tbaa !7
  %43 = load i32*, i32** %8, align 8, !tbaa !3
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32**, i32*** %7, align 8, !tbaa !3
  store i32* %44, i32** %45, align 8, !tbaa !3
  br label %46

; <label>:46:                                     ; preds = %41, %39
  %47 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %47, i32** %4, align 8
  %48 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #3
  br label %49

; <label>:49:                                     ; preds = %46, %27, %16
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare i64 @wcsspn(i32*, i32*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i64 @wcscspn(i32*, i32*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
