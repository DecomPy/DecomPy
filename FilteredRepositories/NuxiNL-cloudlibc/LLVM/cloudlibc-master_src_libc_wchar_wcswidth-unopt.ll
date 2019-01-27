; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcswidth.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcswidth.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @wcswidth(i32*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i64 %1, i64* %5, align 8, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %6, align 4, !tbaa !9
  br label %10

; <label>:10:                                     ; preds = %36, %2
  %11 = load i64, i64* %5, align 8, !tbaa !7
  %12 = add i64 %11, -1
  store i64 %12, i64* %5, align 8, !tbaa !7
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %10
  %15 = load i32*, i32** %4, align 8, !tbaa !3
  %16 = load i32, i32* %15, align 4, !tbaa !9
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18:                                     ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %37

; <label>:20:                                     ; preds = %18
  %21 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3
  %22 = load i32*, i32** %4, align 8, !tbaa !3
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8, !tbaa !3
  %24 = load i32, i32* %22, align 4, !tbaa !9
  %25 = call i32 @wcwidth(i32 %24)
  store i32 %25, i32* %7, align 4, !tbaa !9
  %26 = load i32, i32* %7, align 4, !tbaa !9
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %20
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %33

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %7, align 4, !tbaa !9
  %31 = load i32, i32* %6, align 4, !tbaa !9
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4, !tbaa !9
  store i32 0, i32* %8, align 4
  br label %33

; <label>:33:                                     ; preds = %29, %28
  %34 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %39 [
    i32 0, label %36
  ]

; <label>:36:                                     ; preds = %33
  br label %10

; <label>:37:                                     ; preds = %18
  %38 = load i32, i32* %6, align 4, !tbaa !9
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %33
  %40 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @wcwidth(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
