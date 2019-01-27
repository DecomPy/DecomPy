; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-93.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-93.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @float_half(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %9 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = lshr i32 %10, 31
  store i32 %11, i32* %4, align 4, !tbaa !3
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = lshr i32 %13, 23
  %15 = and i32 %14, 255
  store i32 %15, i32* %5, align 4, !tbaa !3
  %16 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #2
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = and i32 %17, 8388607
  store i32 %18, i32* %6, align 4, !tbaa !3
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %3, align 4, !tbaa !3
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %63

; <label>:23:                                     ; preds = %1
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #2
  %25 = load i32, i32* %6, align 4, !tbaa !3
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 3
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4, !tbaa !3
  %29 = load i32, i32* %5, align 4, !tbaa !3
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %23
  %32 = load i32, i32* %5, align 4, !tbaa !3
  %33 = add i32 %32, -1
  store i32 %33, i32* %5, align 4, !tbaa !3
  br label %54

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %5, align 4, !tbaa !3
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %48

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %6, align 4, !tbaa !3
  %39 = icmp eq i32 %38, 8388607
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 0, i32* %6, align 4, !tbaa !3
  br label %47

; <label>:41:                                     ; preds = %37
  store i32 0, i32* %5, align 4, !tbaa !3
  %42 = load i32, i32* %6, align 4, !tbaa !3
  %43 = lshr i32 %42, 1
  %44 = add i32 4194304, %43
  %45 = load i32, i32* %8, align 4, !tbaa !3
  %46 = add i32 %44, %45
  store i32 %46, i32* %6, align 4, !tbaa !3
  br label %47

; <label>:47:                                     ; preds = %41, %40
  br label %53

; <label>:48:                                     ; preds = %34
  %49 = load i32, i32* %6, align 4, !tbaa !3
  %50 = lshr i32 %49, 1
  %51 = load i32, i32* %8, align 4, !tbaa !3
  %52 = add i32 %50, %51
  store i32 %52, i32* %6, align 4, !tbaa !3
  br label %53

; <label>:53:                                     ; preds = %48, %47
  br label %54

; <label>:54:                                     ; preds = %53, %31
  %55 = load i32, i32* %4, align 4, !tbaa !3
  %56 = shl i32 %55, 31
  %57 = load i32, i32* %5, align 4, !tbaa !3
  %58 = shl i32 %57, 23
  %59 = or i32 %56, %58
  %60 = load i32, i32* %6, align 4, !tbaa !3
  %61 = or i32 %59, %60
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %7, align 4
  %62 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #2
  br label %63

; <label>:63:                                     ; preds = %54, %21
  %64 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #2
  %65 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #2
  %66 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #2
  %67 = load i32, i32* %2, align 4
  ret i32 %67
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
