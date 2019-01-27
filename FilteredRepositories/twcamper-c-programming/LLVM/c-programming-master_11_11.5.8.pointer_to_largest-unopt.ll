; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.5.8.pointer_to_largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_11_11.5.8.pointer_to_largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @find_largest(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = load i32*, i32** %3, align 8, !tbaa !3
  %11 = load i32, i32* %5, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !7
  store i32 %14, i32* %6, align 4, !tbaa !7
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #2
  store i32 1, i32* %7, align 4, !tbaa !7
  br label %16

; <label>:16:                                     ; preds = %38, %2
  %17 = load i32, i32* %7, align 4, !tbaa !7
  %18 = load i32, i32* %4, align 4, !tbaa !7
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %16
  %21 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #2
  br label %41

; <label>:22:                                     ; preds = %16
  %23 = load i32*, i32** %3, align 8, !tbaa !3
  %24 = load i32, i32* %7, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %28 = load i32, i32* %6, align 4, !tbaa !7
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %22
  %31 = load i32*, i32** %3, align 8, !tbaa !3
  %32 = load i32, i32* %7, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !7
  store i32 %35, i32* %6, align 4, !tbaa !7
  %36 = load i32, i32* %7, align 4, !tbaa !7
  store i32 %36, i32* %5, align 4, !tbaa !7
  br label %37

; <label>:37:                                     ; preds = %30, %22
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %7, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4, !tbaa !7
  br label %16

; <label>:41:                                     ; preds = %20
  %42 = load i32*, i32** %3, align 8, !tbaa !3
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #2
  %47 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #2
  ret i32* %45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #2
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 89, i32* %5, align 4, !tbaa !7
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 2, i32* %6, align 4, !tbaa !7
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 345, i32* %7, align 4, !tbaa !7
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 101, i32* %8, align 4, !tbaa !7
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 0
  %10 = call i32* @find_largest(i32* %9, i32 4)
  store i32* %10, i32** %2, align 8, !tbaa !3
  %11 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #2
  ret i32 0
}

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
