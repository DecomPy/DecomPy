; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcscspn.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcscspn.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i64 @wcscspn(i32*, i32*) #0 {
  %3 = alloca i64, align 8
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

; <label>:31:                                     ; preds = %67, %27
  %32 = load i64, i64* %6, align 8, !tbaa !7
  %33 = load i32*, i32** %8, align 8, !tbaa !3
  %34 = load i32, i32* %33, align 4, !tbaa !9
  %35 = urem i32 %34, 64
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = and i64 %32, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

; <label>:40:                                     ; preds = %31
  %41 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #2
  %42 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %42, i32** %9, align 8, !tbaa !3
  br label %43

; <label>:43:                                     ; preds = %57, %40
  %44 = load i32*, i32** %8, align 8, !tbaa !3
  %45 = load i32, i32* %44, align 4, !tbaa !9
  %46 = load i32*, i32** %9, align 8, !tbaa !3
  %47 = load i32, i32* %46, align 4, !tbaa !9
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %43
  %50 = load i32*, i32** %8, align 8, !tbaa !3
  %51 = load i32*, i32** %4, align 8, !tbaa !3
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  store i64 %55, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %63

; <label>:56:                                     ; preds = %43
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32*, i32** %9, align 8, !tbaa !3
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8, !tbaa !3
  %60 = load i32, i32* %58, align 4, !tbaa !9
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %43, label %62

; <label>:62:                                     ; preds = %57
  store i32 0, i32* %10, align 4
  br label %63

; <label>:63:                                     ; preds = %62, %49
  %64 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #2
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %70 [
    i32 0, label %66
  ]

; <label>:66:                                     ; preds = %63
  br label %67

; <label>:67:                                     ; preds = %66, %31
  %68 = load i32*, i32** %8, align 8, !tbaa !3
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8, !tbaa !3
  br label %31

; <label>:70:                                     ; preds = %63
  %71 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #2
  %72 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #2
  %73 = load i64, i64* %3, align 8
  ret i64 %73
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
