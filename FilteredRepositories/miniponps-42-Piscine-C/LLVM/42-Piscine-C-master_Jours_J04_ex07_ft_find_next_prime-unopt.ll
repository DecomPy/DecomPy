; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex07_ft_find_next_prime.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J04_ex07_ft_find_next_prime.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ft_is_prime(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 2, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %17, %1
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = sdiv i32 %9, 2
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = srem i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %21

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4, !tbaa !3
  br label %7

; <label>:20:                                     ; preds = %7
  store i32 1, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %16
  %22 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #2
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @ft_find_next_prime(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %4 = load i32, i32* %3, align 4, !tbaa !3
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %3, align 4, !tbaa !3
  br label %6

; <label>:6:                                      ; preds = %16, %1
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %3, align 4, !tbaa !3
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = call i32 @ft_is_prime(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %15, i32* %2, align 4
  br label %18

; <label>:16:                                     ; preds = %10
  br label %6

; <label>:17:                                     ; preds = %6
  store i32 0, i32* %2, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
