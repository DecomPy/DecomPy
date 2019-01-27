; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.6.refactor-to-pointer-arithmetic.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.3.6.refactor-to-pointer-arithmetic.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.numbers = private unnamed_addr constant [5 x i32] [i32 12, i32 34, i32 56, i32 78, i32 99], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @sum_array(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  store i32 0, i32* %5, align 4, !tbaa !7
  %9 = load i32*, i32** %3, align 8, !tbaa !3
  store i32* %9, i32** %6, align 8, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %22, %2
  %11 = load i32*, i32** %6, align 8, !tbaa !3
  %12 = load i32*, i32** %3, align 8, !tbaa !3
  %13 = load i32, i32* %4, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = icmp ult i32* %11, %15
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %10
  %18 = load i32*, i32** %6, align 8, !tbaa !3
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4, !tbaa !7
  br label %22

; <label>:22:                                     ; preds = %17
  %23 = load i32*, i32** %6, align 8, !tbaa !3
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8, !tbaa !3
  br label %10

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #2
  %28 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #2
  ret i32 %26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %4) #2
  %5 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([5 x i32]* @main.numbers to i8*), i64 20, i1 false)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  %8 = call i32 @sum_array(i32* %7, i32 2)
  store i32 %8, i32* %3, align 4, !tbaa !7
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  %10 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #2
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
