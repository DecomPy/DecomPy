; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-58.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-58.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @switch3(i32*, i32*, i32) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %7, align 4, !tbaa !8
  %9 = load i32, i32* %6, align 4, !tbaa !7
  switch i32 %9, label %33 [
    i32 0, label %10
    i32 1, label %16
    i32 2, label %24
    i32 3, label %28
    i32 4, label %32
  ]

; <label>:10:                                     ; preds = %3
  %11 = load i32*, i32** %4, align 8, !tbaa !3
  %12 = load i32, i32* %11, align 4, !tbaa !8
  store i32 %12, i32* %7, align 4, !tbaa !8
  %13 = load i32*, i32** %5, align 8, !tbaa !3
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = load i32*, i32** %4, align 8, !tbaa !3
  store i32 %14, i32* %15, align 4, !tbaa !8
  br label %34

; <label>:16:                                     ; preds = %3
  %17 = load i32*, i32** %4, align 8, !tbaa !3
  %18 = load i32, i32* %17, align 4, !tbaa !8
  %19 = load i32*, i32** %5, align 8, !tbaa !3
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %7, align 4, !tbaa !8
  %22 = load i32, i32* %7, align 4, !tbaa !8
  %23 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 %22, i32* %23, align 4, !tbaa !8
  br label %34

; <label>:24:                                     ; preds = %3
  %25 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 15, i32* %25, align 4, !tbaa !8
  %26 = load i32*, i32** %4, align 8, !tbaa !3
  %27 = load i32, i32* %26, align 4, !tbaa !8
  store i32 %27, i32* %7, align 4, !tbaa !8
  br label %34

; <label>:28:                                     ; preds = %3
  %29 = load i32*, i32** %4, align 8, !tbaa !3
  %30 = load i32, i32* %29, align 4, !tbaa !8
  %31 = load i32*, i32** %5, align 8, !tbaa !3
  store i32 %30, i32* %31, align 4, !tbaa !8
  br label %32

; <label>:32:                                     ; preds = %3, %28
  store i32 17, i32* %7, align 4, !tbaa !8
  br label %33

; <label>:33:                                     ; preds = %3, %32
  br label %34

; <label>:34:                                     ; preds = %33, %24, %16, %10
  %35 = load i32, i32* %7, align 4, !tbaa !8
  %36 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #2
  ret i32 %35
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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
