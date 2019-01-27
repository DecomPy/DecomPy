; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex05_ft_sqrt.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex05_ft_sqrt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_sqrt(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %13, %1
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %4, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:16:                                     ; preds = %7
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %3, align 4, !tbaa !3
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %25

; <label>:24:                                     ; preds = %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %22
  %26 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #2
  %27 = load i32, i32* %2, align 4
  ret i32 %27
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
