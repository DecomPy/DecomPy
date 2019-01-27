; ModuleID = 'Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_sastantua_ex00_sastantua.c'
source_filename = "Repositories/miniponps-42-Piscine-C/Unfiltered/42-Piscine-C-master_Projet_sastantua_ex00_sastantua.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define void @build_line(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %7

; <label>:7:                                      ; preds = %12, %2
  %8 = load i32, i32* %5, align 4, !tbaa !3
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %7
  %13 = call i32 @ft_putchar(i8 signext 32)
  br label %7

; <label>:14:                                     ; preds = %7
  store i32 0, i32* %5, align 4, !tbaa !3
  %15 = call i32 @ft_putchar(i8 signext 47)
  br label %16

; <label>:16:                                     ; preds = %21, %14
  %17 = load i32, i32* %5, align 4, !tbaa !3
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4, !tbaa !3
  %19 = load i32, i32* %4, align 4, !tbaa !3
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %16
  %22 = call i32 @ft_putchar(i8 signext 42)
  br label %16

; <label>:23:                                     ; preds = %16
  %24 = call i32 @ft_putchar(i8 signext 92)
  %25 = call i32 @ft_putchar(i8 signext 10)
  %26 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @ft_putchar(i8 signext) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @build_line_door(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  %11 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %11, i32* %8, align 4, !tbaa !3
  br label %12

; <label>:12:                                     ; preds = %17, %3
  %13 = load i32, i32* %7, align 4, !tbaa !3
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4, !tbaa !3
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %12
  %18 = call i32 @ft_putchar(i8 signext 32)
  br label %12

; <label>:19:                                     ; preds = %12
  store i32 0, i32* %7, align 4, !tbaa !3
  %20 = call i32 @ft_putchar(i8 signext 47)
  br label %21

; <label>:21:                                     ; preds = %26, %19
  %22 = load i32, i32* %7, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4, !tbaa !3
  %24 = load i32, i32* %5, align 4, !tbaa !3
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %21
  %27 = call i32 @ft_putchar(i8 signext 42)
  br label %21

; <label>:28:                                     ; preds = %21
  store i32 0, i32* %7, align 4, !tbaa !3
  br label %29

; <label>:29:                                     ; preds = %48, %28
  %30 = load i32, i32* %8, align 4, !tbaa !3
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4, !tbaa !3
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %49

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %8, align 4, !tbaa !3
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = sdiv i32 %37, 2
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %6, align 4, !tbaa !3
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %41
  %45 = call i32 @ft_putchar(i8 signext 36)
  br label %48

; <label>:46:                                     ; preds = %41, %36, %33
  %47 = call i32 @ft_putchar(i8 signext 124)
  br label %48

; <label>:48:                                     ; preds = %46, %44
  br label %29

; <label>:49:                                     ; preds = %29
  br label %50

; <label>:50:                                     ; preds = %55, %49
  %51 = load i32, i32* %7, align 4, !tbaa !3
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4, !tbaa !3
  %53 = load i32, i32* %5, align 4, !tbaa !3
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %50
  %56 = call i32 @ft_putchar(i8 signext 42)
  br label %50

; <label>:57:                                     ; preds = %50
  %58 = call i32 @ft_putchar(i8 signext 92)
  %59 = call i32 @ft_putchar(i8 signext 10)
  %60 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @build_sastantua(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  %13 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3
  %15 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3
  %16 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3
  store i32 0, i32* %7, align 4, !tbaa !3
  store i32 -1, i32* %9, align 4, !tbaa !3
  store i32 2, i32* %10, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %70, %3
  %18 = load i32, i32* %7, align 4, !tbaa !3
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4, !tbaa !3
  %20 = load i32, i32* %5, align 4, !tbaa !3
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %74

; <label>:22:                                     ; preds = %17
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %23

; <label>:23:                                     ; preds = %59, %22
  %24 = load i32, i32* %8, align 4, !tbaa !3
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4, !tbaa !3
  %26 = load i32, i32* %7, align 4, !tbaa !3
  %27 = add nsw i32 %26, 2
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %60

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %9, align 4, !tbaa !3
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4, !tbaa !3
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = sdiv i32 %32, 2
  %34 = load i32, i32* %9, align 4, !tbaa !3
  %35 = sub nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %11, align 4, !tbaa !3
  %37 = load i32, i32* %7, align 4, !tbaa !3
  %38 = load i32, i32* %5, align 4, !tbaa !3
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %54

; <label>:40:                                     ; preds = %29
  %41 = load i32, i32* %8, align 4, !tbaa !3
  %42 = load i32, i32* %5, align 4, !tbaa !3
  %43 = add nsw i32 %42, 3
  %44 = load i32, i32* %6, align 4, !tbaa !3
  %45 = sub nsw i32 %43, %44
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %11, align 4, !tbaa !3
  %49 = load i32, i32* %9, align 4, !tbaa !3
  %50 = load i32, i32* %6, align 4, !tbaa !3
  %51 = sdiv i32 %50, 2
  %52 = sub nsw i32 %49, %51
  %53 = load i32, i32* %6, align 4, !tbaa !3
  call void @build_line_door(i32 %48, i32 %52, i32 %53)
  br label %59

; <label>:54:                                     ; preds = %40, %29
  %55 = load i32, i32* %11, align 4, !tbaa !3
  %56 = load i32, i32* %9, align 4, !tbaa !3
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  call void @build_line(i32 %55, i32 %58)
  br label %59

; <label>:59:                                     ; preds = %54, %47
  br label %23

; <label>:60:                                     ; preds = %23
  %61 = load i32, i32* %7, align 4, !tbaa !3
  %62 = srem i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %7, align 4, !tbaa !3
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %10, align 4, !tbaa !3
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4, !tbaa !3
  br label %70

; <label>:70:                                     ; preds = %67, %64, %60
  %71 = load i32, i32* %10, align 4, !tbaa !3
  %72 = load i32, i32* %9, align 4, !tbaa !3
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %9, align 4, !tbaa !3
  br label %17

; <label>:74:                                     ; preds = %17
  %75 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3
  %76 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3
  %77 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3
  %78 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3
  %79 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @sastantua(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3
  %11 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 -1, i32* %5, align 4, !tbaa !3
  store i32 2, i32* %6, align 4, !tbaa !3
  br label %13

; <label>:13:                                     ; preds = %38, %1
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %2, align 4, !tbaa !3
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %42

; <label>:18:                                     ; preds = %13
  store i32 1, i32* %4, align 4, !tbaa !3
  br label %19

; <label>:19:                                     ; preds = %25, %18
  %20 = load i32, i32* %4, align 4, !tbaa !3
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4, !tbaa !3
  %22 = load i32, i32* %3, align 4, !tbaa !3
  %23 = add nsw i32 %22, 2
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %5, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4, !tbaa !3
  br label %19

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %3, align 4, !tbaa !3
  %30 = srem i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %3, align 4, !tbaa !3
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %6, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4, !tbaa !3
  br label %38

; <label>:38:                                     ; preds = %35, %32, %28
  %39 = load i32, i32* %6, align 4, !tbaa !3
  %40 = load i32, i32* %5, align 4, !tbaa !3
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %5, align 4, !tbaa !3
  br label %13

; <label>:42:                                     ; preds = %13
  %43 = load i32, i32* %2, align 4, !tbaa !3
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %7, align 4, !tbaa !3
  %45 = load i32, i32* %2, align 4, !tbaa !3
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %7, align 4, !tbaa !3
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4, !tbaa !3
  br label %51

; <label>:51:                                     ; preds = %48, %42
  %52 = load i32, i32* %5, align 4, !tbaa !3
  %53 = load i32, i32* %6, align 4, !tbaa !3
  %54 = sub nsw i32 %52, %53
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 3
  %57 = load i32, i32* %2, align 4, !tbaa !3
  %58 = load i32, i32* %7, align 4, !tbaa !3
  call void @build_sastantua(i32 %56, i32 %57, i32 %58)
  %59 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3
  %60 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3
  %61 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  ret void
}

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
