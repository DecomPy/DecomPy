; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.11.find-largest.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.11.find-largest.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32* @find_largest(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #2
  %8 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  %9 = load i32*, i32** %3, align 8, !tbaa !3
  store i32* %9, i32** %6, align 8, !tbaa !3
  %10 = load i32*, i32** %3, align 8, !tbaa !3
  store i32* %10, i32** %5, align 8, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %27, %2
  %12 = load i32*, i32** %5, align 8, !tbaa !3
  %13 = load i32*, i32** %3, align 8, !tbaa !3
  %14 = load i32, i32* %4, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %11
  %19 = load i32*, i32** %5, align 8, !tbaa !3
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32*, i32** %6, align 8, !tbaa !3
  %22 = load i32, i32* %21, align 4, !tbaa !7
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %18
  %25 = load i32*, i32** %5, align 8, !tbaa !3
  store i32* %25, i32** %6, align 8, !tbaa !3
  br label %26

; <label>:26:                                     ; preds = %24, %18
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32*, i32** %5, align 8, !tbaa !3
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8, !tbaa !3
  br label %11

; <label>:30:                                     ; preds = %11
  %31 = load i32*, i32** %6, align 8, !tbaa !3
  %32 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #2
  %33 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #2
  ret i32* %31
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
