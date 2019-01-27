; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-94.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-94.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @float_twice(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = lshr i32 %9, 31
  store i32 %10, i32* %4, align 4, !tbaa !3
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #2
  %12 = load i32, i32* %3, align 4, !tbaa !3
  %13 = lshr i32 %12, 23
  %14 = and i32 %13, 255
  store i32 %14, i32* %5, align 4, !tbaa !3
  %15 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #2
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = and i32 %16, 8388607
  store i32 %17, i32* %6, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %53

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = icmp eq i32 %23, 254
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  store i32 255, i32* %5, align 4, !tbaa !3
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %45

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %5, align 4, !tbaa !3
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4, !tbaa !3
  br label %44

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %6, align 4, !tbaa !3
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 4194304
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %32
  store i32 1, i32* %5, align 4, !tbaa !3
  %37 = load i32, i32* %6, align 4, !tbaa !3
  %38 = shl i32 %37, 1
  %39 = and i32 %38, 8388607
  store i32 %39, i32* %6, align 4, !tbaa !3
  br label %43

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %6, align 4, !tbaa !3
  %42 = shl i32 %41, 1
  store i32 %42, i32* %6, align 4, !tbaa !3
  br label %43

; <label>:43:                                     ; preds = %40, %36
  br label %44

; <label>:44:                                     ; preds = %43, %29
  br label %45

; <label>:45:                                     ; preds = %44, %25
  %46 = load i32, i32* %4, align 4, !tbaa !3
  %47 = shl i32 %46, 31
  %48 = load i32, i32* %5, align 4, !tbaa !3
  %49 = shl i32 %48, 23
  %50 = or i32 %47, %49
  %51 = load i32, i32* %6, align 4, !tbaa !3
  %52 = or i32 %50, %51
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %53

; <label>:53:                                     ; preds = %45, %20
  %54 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #2
  %55 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #2
  %56 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #2
  %57 = load i32, i32* %2, align 4
  ret i32 %57
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
