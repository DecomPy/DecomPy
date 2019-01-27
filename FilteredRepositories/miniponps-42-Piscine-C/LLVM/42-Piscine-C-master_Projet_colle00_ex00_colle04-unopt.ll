; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle00_ex00_colle04.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_colle00_ex00_colle04.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @midline(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7, %2
  call void @ft_putchar(i8 signext 66)
  br label %13

; <label>:12:                                     ; preds = %7
  call void @ft_putchar(i8 signext 32)
  br label %13

; <label>:13:                                     ; preds = %12, %11
  ret void
}

declare void @ft_putchar(i8 signext) #1

; Function Attrs: nounwind ssp uwtable
define void @lastline(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  call void @ft_putchar(i8 signext 67)
  br label %15

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call void @ft_putchar(i8 signext 65)
  br label %14

; <label>:13:                                     ; preds = %8
  call void @ft_putchar(i8 signext 66)
  br label %14

; <label>:14:                                     ; preds = %13, %12
  br label %15

; <label>:15:                                     ; preds = %14, %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @firstline(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  call void @ft_putchar(i8 signext 65)
  br label %15

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call void @ft_putchar(i8 signext 67)
  br label %14

; <label>:13:                                     ; preds = %8
  call void @ft_putchar(i8 signext 66)
  br label %14

; <label>:14:                                     ; preds = %13, %12
  br label %15

; <label>:15:                                     ; preds = %14, %7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @colle(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  store i32 1, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %38, %2
  %10 = load i32, i32* %6, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %41

; <label>:13:                                     ; preds = %9
  store i32 1, i32* %5, align 4, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %35, %13
  %15 = load i32, i32* %5, align 4, !tbaa !3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %38

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %5, align 4, !tbaa !3
  %23 = load i32, i32* %3, align 4, !tbaa !3
  call void @firstline(i32 %22, i32 %23)
  br label %35

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %6, align 4, !tbaa !3
  %26 = load i32, i32* %4, align 4, !tbaa !3
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %5, align 4, !tbaa !3
  %30 = load i32, i32* %3, align 4, !tbaa !3
  call void @lastline(i32 %29, i32 %30)
  br label %34

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = load i32, i32* %3, align 4, !tbaa !3
  call void @midline(i32 %32, i32 %33)
  br label %34

; <label>:34:                                     ; preds = %31, %28
  br label %35

; <label>:35:                                     ; preds = %34, %21
  %36 = load i32, i32* %5, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4, !tbaa !3
  br label %14

; <label>:38:                                     ; preds = %14
  call void @ft_putchar(i8 signext 10)
  %39 = load i32, i32* %6, align 4, !tbaa !3
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4, !tbaa !3
  br label %9

; <label>:41:                                     ; preds = %9
  %42 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3
  %43 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
