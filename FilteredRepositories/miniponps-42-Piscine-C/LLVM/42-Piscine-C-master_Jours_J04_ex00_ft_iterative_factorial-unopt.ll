; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex00_ft_iterative_factorial.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex00_ft_iterative_factorial.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_iterative_factorial(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = icmp sgt i32 %7, 12
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9, %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %25

; <label>:13:                                     ; preds = %9
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %17, %13
  %15 = load i32, i32* %3, align 4, !tbaa !3
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = load i32, i32* %3, align 4, !tbaa !3
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %4, align 4, !tbaa !3
  %21 = load i32, i32* %3, align 4, !tbaa !3
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4, !tbaa !3
  br label %14

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %4, align 4, !tbaa !3
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %25

; <label>:25:                                     ; preds = %23, %12
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
