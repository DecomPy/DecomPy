; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter03_switch_eg.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_chapter03_switch_eg.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @switch_eg(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %7, i32* %5, align 4, !tbaa !3
  %8 = load i32, i32* %4, align 4, !tbaa !3
  switch i32 %8, label %22 [
    i32 100, label %9
    i32 102, label %12
    i32 103, label %15
    i32 104, label %18
    i32 106, label %18
  ]

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = add nsw i32 %10, 13
  store i32 %11, i32* %5, align 4, !tbaa !3
  br label %23

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = add nsw i32 %13, 10
  store i32 %14, i32* %5, align 4, !tbaa !3
  br label %15

; <label>:15:                                     ; preds = %2, %12
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = add nsw i32 %16, 11
  store i32 %17, i32* %5, align 4, !tbaa !3
  br label %23

; <label>:18:                                     ; preds = %2, %2
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %5, align 4, !tbaa !3
  br label %23

; <label>:22:                                     ; preds = %2
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %22, %18, %15, %9
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #2
  ret i32 %24
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
