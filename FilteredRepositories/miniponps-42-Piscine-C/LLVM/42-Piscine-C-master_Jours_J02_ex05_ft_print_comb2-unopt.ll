; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J02_ex05_ft_print_comb2.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Jours_J02_ex05_ft_print_comb2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @ft_print_comb2() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #3
  store i8 48, i8* %1, align 1, !tbaa !3
  br label %3

; <label>:3:                                      ; preds = %17, %0
  %4 = load i8, i8* %1, align 1, !tbaa !3
  %5 = sext i8 %4 to i32
  %6 = icmp sle i32 %5, 57
  br i1 %6, label %7, label %20

; <label>:7:                                      ; preds = %3
  store i8 48, i8* %2, align 1, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %12, %7
  %9 = load i8, i8* %2, align 1, !tbaa !3
  %10 = sext i8 %9 to i32
  %11 = icmp sle i32 %10, 57
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %8
  %13 = load i8, i8* %1, align 1, !tbaa !3
  %14 = load i8, i8* %2, align 1, !tbaa !3
  call void @ad_last_block(i8 signext %13, i8 signext %14)
  %15 = load i8, i8* %2, align 1, !tbaa !3
  %16 = add i8 %15, 1
  store i8 %16, i8* %2, align 1, !tbaa !3
  br label %8

; <label>:17:                                     ; preds = %8
  %18 = load i8, i8* %1, align 1, !tbaa !3
  %19 = add i8 %18, 1
  store i8 %19, i8* %1, align 1, !tbaa !3
  br label %3

; <label>:20:                                     ; preds = %3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @ad_last_block(i8 signext, i8 signext) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %0, i8* %3, align 1, !tbaa !3
  store i8 %1, i8* %4, align 1, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #3
  %7 = load i8, i8* %3, align 1, !tbaa !3
  store i8 %7, i8* %5, align 1, !tbaa !3
  br label %8

; <label>:8:                                      ; preds = %47, %2
  %9 = load i8, i8* %5, align 1, !tbaa !3
  %10 = sext i8 %9 to i32
  %11 = icmp sle i32 %10, 57
  br i1 %11, label %12, label %50

; <label>:12:                                     ; preds = %8
  %13 = load i8, i8* %4, align 1, !tbaa !3
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %6, align 1, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %44, %12
  %18 = load i8, i8* %6, align 1, !tbaa !3
  %19 = sext i8 %18 to i32
  %20 = icmp sle i32 %19, 57
  br i1 %20, label %21, label %47

; <label>:21:                                     ; preds = %17
  %22 = load i8, i8* %3, align 1, !tbaa !3
  %23 = load i8, i8* %4, align 1, !tbaa !3
  %24 = load i8, i8* %5, align 1, !tbaa !3
  %25 = load i8, i8* %6, align 1, !tbaa !3
  call void @ad_print_numbers(i8 signext %22, i8 signext %23, i8 signext %24, i8 signext %25)
  %26 = load i8, i8* %3, align 1, !tbaa !3
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 57
  br i1 %28, label %29, label %41

; <label>:29:                                     ; preds = %21
  %30 = load i8, i8* %4, align 1, !tbaa !3
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 56
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %5, align 1, !tbaa !3
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 57
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %6, align 1, !tbaa !3
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 57
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %37, %33, %29, %21
  %42 = call i32 @ft_putchar(i8 signext 44)
  %43 = call i32 @ft_putchar(i8 signext 32)
  br label %44

; <label>:44:                                     ; preds = %41, %37
  %45 = load i8, i8* %6, align 1, !tbaa !3
  %46 = add i8 %45, 1
  store i8 %46, i8* %6, align 1, !tbaa !3
  br label %17

; <label>:47:                                     ; preds = %17
  %48 = load i8, i8* %5, align 1, !tbaa !3
  %49 = add i8 %48, 1
  store i8 %49, i8* %5, align 1, !tbaa !3
  br label %8

; <label>:50:                                     ; preds = %8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @ad_print_numbers(i8 signext, i8 signext, i8 signext, i8 signext) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %5, align 1, !tbaa !3
  store i8 %1, i8* %6, align 1, !tbaa !3
  store i8 %2, i8* %7, align 1, !tbaa !3
  store i8 %3, i8* %8, align 1, !tbaa !3
  %9 = load i8, i8* %5, align 1, !tbaa !3
  %10 = call i32 @ft_putchar(i8 signext %9)
  %11 = load i8, i8* %6, align 1, !tbaa !3
  %12 = call i32 @ft_putchar(i8 signext %11)
  %13 = call i32 @ft_putchar(i8 signext 32)
  %14 = load i8, i8* %7, align 1, !tbaa !3
  %15 = call i32 @ft_putchar(i8 signext %14)
  %16 = load i8, i8* %8, align 1, !tbaa !3
  %17 = call i32 @ft_putchar(i8 signext %16)
  ret void
}

declare i32 @ft_putchar(i8 signext) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
