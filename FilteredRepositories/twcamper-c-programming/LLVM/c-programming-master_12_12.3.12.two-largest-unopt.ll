; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.12.two-largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.12.two-largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@constinit = private global [6 x i32] [i32 10, i32 9, i32 312, i32 569, i32 1, i32 311], align 4

; Function Attrs: nounwind ssp uwtable
define void @find_two_largest(i32*, i32, i32*, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32* %3, i32** %8, align 8, !tbaa !3
  %10 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #2
  %11 = load i32*, i32** %8, align 8, !tbaa !3
  store i32 0, i32* %11, align 4, !tbaa !7
  %12 = load i32*, i32** %7, align 8, !tbaa !3
  store i32 0, i32* %12, align 4, !tbaa !7
  %13 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %13, i32** %9, align 8, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %46, %4
  %15 = load i32*, i32** %9, align 8, !tbaa !3
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %6, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = icmp ult i32* %15, %19
  br i1 %20, label %21, label %49

; <label>:21:                                     ; preds = %14
  %22 = load i32*, i32** %9, align 8, !tbaa !3
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = load i32*, i32** %7, align 8, !tbaa !3
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %21
  %28 = load i32*, i32** %7, align 8, !tbaa !3
  %29 = load i32, i32* %28, align 4, !tbaa !7
  %30 = load i32*, i32** %8, align 8, !tbaa !3
  store i32 %29, i32* %30, align 4, !tbaa !7
  %31 = load i32*, i32** %9, align 8, !tbaa !3
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = load i32*, i32** %7, align 8, !tbaa !3
  store i32 %32, i32* %33, align 4, !tbaa !7
  br label %45

; <label>:34:                                     ; preds = %21
  %35 = load i32*, i32** %9, align 8, !tbaa !3
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = load i32*, i32** %8, align 8, !tbaa !3
  %38 = load i32, i32* %37, align 4, !tbaa !7
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %34
  %41 = load i32*, i32** %9, align 8, !tbaa !3
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = load i32*, i32** %8, align 8, !tbaa !3
  store i32 %42, i32* %43, align 4, !tbaa !7
  br label %44

; <label>:44:                                     ; preds = %40, %34
  br label %45

; <label>:45:                                     ; preds = %44, %27
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32*, i32** %9, align 8, !tbaa !3
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8, !tbaa !3
  br label %14

; <label>:49:                                     ; preds = %14
  %50 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([6 x i32]* @constinit to i8*), i64 24, i1 false), !tbaa.struct !9
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i32 0, i32 0
  call void @find_two_largest(i32* %9, i32 6, i32* %2, i32* %3)
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #2
  %11 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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
!8 = !{!"int", !5, i64 0}
!9 = !{i64 0, i64 24, !10}
!10 = !{!5, !5, i64 0}
