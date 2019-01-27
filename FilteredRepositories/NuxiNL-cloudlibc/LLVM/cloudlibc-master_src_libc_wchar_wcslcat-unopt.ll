; ModuleID = 'Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcat.c'
source_filename = "Repositories/NuxiNL-cloudlibc/Unfiltered/cloudlibc-master_src_libc_wchar_wcslcat.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i64 @wcslcat(i32* noalias, i32* noalias, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i64 %2, i64* %7, align 8, !tbaa !7
  %11 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #2
  store i64 0, i64* %8, align 8, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %21, %3
  %13 = load i64, i64* %7, align 8, !tbaa !7
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %12
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %16, align 4, !tbaa !9
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19:                                     ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %19
  %22 = load i32*, i32** %5, align 8, !tbaa !3
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8, !tbaa !3
  %24 = load i64, i64* %7, align 8, !tbaa !7
  %25 = add i64 %24, -1
  store i64 %25, i64* %7, align 8, !tbaa !7
  %26 = load i64, i64* %8, align 8, !tbaa !7
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8, !tbaa !7
  br label %12

; <label>:28:                                     ; preds = %19
  %29 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #2
  %30 = load i32*, i32** %6, align 8, !tbaa !3
  store i32* %30, i32** %9, align 8, !tbaa !3
  br label %31

; <label>:31:                                     ; preds = %50, %28
  %32 = load i64, i64* %7, align 8, !tbaa !7
  %33 = icmp ugt i64 %32, 1
  br i1 %33, label %34, label %57

; <label>:34:                                     ; preds = %31
  %35 = load i32*, i32** %6, align 8, !tbaa !3
  %36 = load i32, i32* %35, align 4, !tbaa !9
  %37 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 %36, i32* %37, align 4, !tbaa !9
  %38 = load i32*, i32** %6, align 8, !tbaa !3
  %39 = load i32, i32* %38, align 4, !tbaa !9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

; <label>:41:                                     ; preds = %34
  %42 = load i32*, i32** %6, align 8, !tbaa !3
  %43 = load i32*, i32** %9, align 8, !tbaa !3
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = load i64, i64* %8, align 8, !tbaa !7
  %49 = add i64 %47, %48
  store i64 %49, i64* %4, align 8
  store i32 1, i32* %10, align 4
  br label %79

; <label>:50:                                     ; preds = %34
  %51 = load i32*, i32** %5, align 8, !tbaa !3
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8, !tbaa !3
  %53 = load i32*, i32** %6, align 8, !tbaa !3
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8, !tbaa !3
  %55 = load i64, i64* %7, align 8, !tbaa !7
  %56 = add i64 %55, -1
  store i64 %56, i64* %7, align 8, !tbaa !7
  br label %31

; <label>:57:                                     ; preds = %31
  %58 = load i64, i64* %7, align 8, !tbaa !7
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %57
  %61 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 0, i32* %61, align 4, !tbaa !9
  br label %62

; <label>:62:                                     ; preds = %60, %57
  br label %63

; <label>:63:                                     ; preds = %67, %62
  %64 = load i32*, i32** %6, align 8, !tbaa !3
  %65 = load i32, i32* %64, align 4, !tbaa !9
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %63
  %68 = load i32*, i32** %6, align 8, !tbaa !3
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8, !tbaa !3
  br label %63

; <label>:70:                                     ; preds = %63
  %71 = load i32*, i32** %6, align 8, !tbaa !3
  %72 = load i32*, i32** %9, align 8, !tbaa !3
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = load i64, i64* %8, align 8, !tbaa !7
  %78 = add i64 %76, %77
  store i64 %78, i64* %4, align 8
  store i32 1, i32* %10, align 4
  br label %79

; <label>:79:                                     ; preds = %70, %41
  %80 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80) #2
  %81 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #2
  %82 = load i64, i64* %4, align 8
  ret i64 %82
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
