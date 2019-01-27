; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.4.6.two_largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.4.6.two_largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@constinit = private global [6 x i32] [i32 10, i32 9, i32 312, i32 569, i32 1, i32 311], align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %8 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([6 x i32]* @constinit to i8*), i64 24, i1 false), !tbaa.struct !3
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i32 0, i32 0
  call void @two_largest(i32* %9, i32 6, i32* %2, i32* %3)
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @two_largest(i32*, i32, i32*, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !7
  store i32 %1, i32* %6, align 4, !tbaa !9
  store i32* %2, i32** %7, align 8, !tbaa !7
  store i32* %3, i32** %8, align 8, !tbaa !7
  %10 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 0, i32* %10, align 4, !tbaa !9
  %11 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 0, i32* %11, align 4, !tbaa !9
  %12 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  store i32 0, i32* %9, align 4, !tbaa !9
  br label %13

; <label>:13:                                     ; preds = %56, %4
  %14 = load i32, i32* %9, align 4, !tbaa !9
  %15 = load i32, i32* %6, align 4, !tbaa !9
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %13
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #2
  br label %59

; <label>:19:                                     ; preds = %13
  %20 = load i32*, i32** %5, align 8, !tbaa !7
  %21 = load i32, i32* %9, align 4, !tbaa !9
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !9
  %25 = load i32*, i32** %7, align 8, !tbaa !7
  %26 = load i32, i32* %25, align 4, !tbaa !9
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %38

; <label>:28:                                     ; preds = %19
  %29 = load i32*, i32** %7, align 8, !tbaa !7
  %30 = load i32, i32* %29, align 4, !tbaa !9
  %31 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %30, i32* %31, align 4, !tbaa !9
  %32 = load i32*, i32** %5, align 8, !tbaa !7
  %33 = load i32, i32* %9, align 4, !tbaa !9
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !9
  %37 = load i32*, i32** %7, align 8, !tbaa !7
  store i32 %36, i32* %37, align 4, !tbaa !9
  br label %55

; <label>:38:                                     ; preds = %19
  %39 = load i32*, i32** %5, align 8, !tbaa !7
  %40 = load i32, i32* %9, align 4, !tbaa !9
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !9
  %44 = load i32*, i32** %8, align 8, !tbaa !7
  %45 = load i32, i32* %44, align 4, !tbaa !9
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %38
  %48 = load i32*, i32** %5, align 8, !tbaa !7
  %49 = load i32, i32* %9, align 4, !tbaa !9
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !9
  %53 = load i32*, i32** %8, align 8, !tbaa !7
  store i32 %52, i32* %53, align 4, !tbaa !9
  br label %54

; <label>:54:                                     ; preds = %47, %38
  br label %55

; <label>:55:                                     ; preds = %54, %28
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %9, align 4, !tbaa !9
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4, !tbaa !9
  br label %13

; <label>:59:                                     ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
!3 = !{i64 0, i64 24, !4}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
