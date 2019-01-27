; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-62.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-62.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @transpose(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !7
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #2
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %62, %2
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %65

; <label>:19:                                     ; preds = %15
  %20 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #2
  %21 = load i32*, i32** %4, align 8, !tbaa !7
  %22 = mul nsw i64 0, %12
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %7, align 8, !tbaa !7
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %27

; <label>:27:                                     ; preds = %57, %19
  %28 = load i32, i32* %6, align 4, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !3
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %60

; <label>:31:                                     ; preds = %27
  %32 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #2
  %33 = load i32*, i32** %4, align 8, !tbaa !7
  %34 = load i32, i32* %5, align 4, !tbaa !3
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %12
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !3
  store i32 %41, i32* %8, align 4, !tbaa !3
  %42 = load i32*, i32** %7, align 8, !tbaa !7
  %43 = load i32, i32* %42, align 4, !tbaa !3
  %44 = load i32*, i32** %4, align 8, !tbaa !7
  %45 = load i32, i32* %5, align 4, !tbaa !3
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %12
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %6, align 4, !tbaa !3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %43, i32* %51, align 4, !tbaa !3
  %52 = load i32, i32* %3, align 4, !tbaa !3
  %53 = load i32*, i32** %7, align 8, !tbaa !7
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %7, align 8, !tbaa !7
  %56 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #2
  br label %57

; <label>:57:                                     ; preds = %31
  %58 = load i32, i32* %6, align 4, !tbaa !3
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4, !tbaa !3
  br label %27

; <label>:60:                                     ; preds = %27
  %61 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #2
  br label %62

; <label>:62:                                     ; preds = %60
  %63 = load i32, i32* %5, align 4, !tbaa !3
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:65:                                     ; preds = %15
  %66 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #2
  %67 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #2
  ret void
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
