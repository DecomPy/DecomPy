; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcspbrk.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcspbrk.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @wcspbrk(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  %11 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #2
  store i64 0, i64* %6, align 8, !tbaa !7
  %12 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #2
  %13 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %13, i32** %7, align 8, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %22, %2
  %15 = load i32*, i32** %7, align 8, !tbaa !3
  %16 = load i32, i32* %15, align 4, !tbaa !9
  %17 = urem i32 %16, 64
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  %20 = load i64, i64* %6, align 8, !tbaa !7
  %21 = or i64 %20, %19
  store i64 %21, i64* %6, align 8, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %14
  %23 = load i32*, i32** %7, align 8, !tbaa !3
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8, !tbaa !3
  %25 = load i32, i32* %23, align 4, !tbaa !9
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %14, label %27

; <label>:27:                                     ; preds = %22
  %28 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #2
  %29 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #2
  %30 = load i32*, i32** %4, align 8, !tbaa !3
  store i32* %30, i32** %8, align 8, !tbaa !3
  br label %31

; <label>:31:                                     ; preds = %69, %27
  %32 = load i64, i64* %6, align 8, !tbaa !7
  %33 = load i32*, i32** %8, align 8, !tbaa !3
  %34 = load i32, i32* %33, align 4, !tbaa !9
  %35 = urem i32 %34, 64
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = and i64 %32, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

; <label>:40:                                     ; preds = %31
  %41 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #2
  %42 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %42, i32** %9, align 8, !tbaa !3
  br label %43

; <label>:43:                                     ; preds = %59, %40
  %44 = load i32*, i32** %8, align 8, !tbaa !3
  %45 = load i32, i32* %44, align 4, !tbaa !9
  %46 = load i32*, i32** %9, align 8, !tbaa !3
  %47 = load i32, i32* %46, align 4, !tbaa !9
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %58

; <label>:49:                                     ; preds = %43
  %50 = load i32*, i32** %8, align 8, !tbaa !3
  %51 = load i32, i32* %50, align 4, !tbaa !9
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %49
  %54 = load i32*, i32** %8, align 8, !tbaa !3
  br label %56

; <label>:55:                                     ; preds = %49
  br label %56

; <label>:56:                                     ; preds = %55, %53
  %57 = phi i32* [ %54, %53 ], [ null, %55 ]
  store i32* %57, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %65

; <label>:58:                                     ; preds = %43
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32*, i32** %9, align 8, !tbaa !3
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %9, align 8, !tbaa !3
  %62 = load i32, i32* %60, align 4, !tbaa !9
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %43, label %64

; <label>:64:                                     ; preds = %59
  store i32 0, i32* %10, align 4
  br label %65

; <label>:65:                                     ; preds = %64, %56
  %66 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #2
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %72 [
    i32 0, label %68
  ]

; <label>:68:                                     ; preds = %65
  br label %69

; <label>:69:                                     ; preds = %68, %31
  %70 = load i32*, i32** %8, align 8, !tbaa !3
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8, !tbaa !3
  br label %31

; <label>:72:                                     ; preds = %65
  %73 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %73) #2
  %74 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #2
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
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
