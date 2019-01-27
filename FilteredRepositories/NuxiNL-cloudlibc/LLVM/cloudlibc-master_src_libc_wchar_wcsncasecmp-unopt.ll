; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncasecmp.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcsncasecmp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @wcsncasecmp(i32*, i32*, i64) #0 {
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

; <label>:11:                                     ; preds = %44, %3
  %12 = load i64, i64* %7, align 8, !tbaa !7
  %13 = add i64 %12, -1
  store i64 %13, i64* %7, align 8, !tbaa !7
  %14 = icmp ugt i64 %12, 0
  br i1 %14, label %15, label %45

; <label>:15:                                     ; preds = %11
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4
  %17 = load i32*, i32** %5, align 8, !tbaa !3
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8, !tbaa !3
  %19 = load i32, i32* %17, align 4, !tbaa !9
  %20 = call i32 @towlower(i32 %19)
  store i32 %20, i32* %8, align 4, !tbaa !9
  %21 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4
  %22 = load i32*, i32** %6, align 8, !tbaa !3
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8, !tbaa !3
  %24 = load i32, i32* %22, align 4, !tbaa !9
  %25 = call i32 @towlower(i32 %24)
  store i32 %25, i32* %9, align 4, !tbaa !9
  %26 = load i32, i32* %8, align 4, !tbaa !9
  %27 = load i32, i32* %9, align 4, !tbaa !9
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %15
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %40

; <label>:30:                                     ; preds = %15
  %31 = load i32, i32* %8, align 4, !tbaa !9
  %32 = load i32, i32* %9, align 4, !tbaa !9
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %40

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %8, align 4, !tbaa !9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %35
  store i32 3, i32* %10, align 4
  br label %40

; <label>:39:                                     ; preds = %35
  store i32 0, i32* %10, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %38, %34, %29
  %41 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4
  %42 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %48 [
    i32 0, label %44
    i32 1, label %46
    i32 3, label %45
  ]

; <label>:44:                                     ; preds = %40
  br label %11

; <label>:45:                                     ; preds = %40, %11
  store i32 0, i32* %4, align 4
  br label %46

; <label>:46:                                     ; preds = %45, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47

; <label>:48:                                     ; preds = %40
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @towlower(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !9
  %3 = load i32, i32* %2, align 4, !tbaa !9
  %4 = call i32 @__tolower(i32 %3)
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @__tolower(i32) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

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
