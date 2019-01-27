; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter07_multvec.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter07_multvec.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @multvec(i32*, i32*, i32*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8, !tbaa !3
  store i32* %1, i32** %6, align 8, !tbaa !3
  store i32* %2, i32** %7, align 8, !tbaa !3
  store i32 %3, i32* %8, align 4, !tbaa !7
  %10 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  store i32 0, i32* %9, align 4, !tbaa !7
  br label %11

; <label>:11:                                     ; preds = %31, %4
  %12 = load i32, i32* %9, align 4, !tbaa !7
  %13 = load i32, i32* %8, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %5, align 8, !tbaa !3
  %17 = load i32, i32* %9, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = load i32*, i32** %6, align 8, !tbaa !3
  %22 = load i32, i32* %9, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = mul nsw i32 %20, %25
  %27 = load i32*, i32** %7, align 8, !tbaa !3
  %28 = load i32, i32* %9, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4, !tbaa !7
  br label %31

; <label>:31:                                     ; preds = %15
  %32 = load i32, i32* %9, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4, !tbaa !7
  br label %11

; <label>:34:                                     ; preds = %11
  %35 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #2
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
