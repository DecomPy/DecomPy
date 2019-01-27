; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-96.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-96.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @float_f2i(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #2
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = lshr i32 %11, 31
  store i32 %12, i32* %4, align 4, !tbaa !3
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = lshr i32 %14, 23
  %16 = and i32 %15, 255
  store i32 %16, i32* %5, align 4, !tbaa !3
  %17 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #2
  %18 = load i32, i32* %3, align 4, !tbaa !3
  %19 = and i32 %18, 8388607
  store i32 %19, i32* %6, align 4, !tbaa !3
  %20 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #2
  %21 = load i32, i32* %5, align 4, !tbaa !3
  %22 = sub nsw i32 %21, 127
  store i32 %22, i32* %7, align 4, !tbaa !3
  %23 = load i32, i32* %5, align 4, !tbaa !3
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %1
  store i32 -2147483648, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %89

; <label>:26:                                     ; preds = %1
  %27 = load i32, i32* %5, align 4, !tbaa !3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %7, align 4, !tbaa !3
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29, %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %89

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %4, align 4, !tbaa !3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %7, align 4, !tbaa !3
  %38 = icmp sgt i32 %37, 30
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  store i32 -2147483648, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %89

; <label>:40:                                     ; preds = %36, %33
  %41 = load i32, i32* %4, align 4, !tbaa !3
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %7, align 4, !tbaa !3
  %45 = icmp sgt i32 %44, 31
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  store i32 -2147483648, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %89

; <label>:47:                                     ; preds = %43, %40
  %48 = load i32, i32* %4, align 4, !tbaa !3
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4, !tbaa !3
  %52 = icmp eq i32 %51, 31
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %6, align 4, !tbaa !3
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  store i32 -2147483648, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %89

; <label>:57:                                     ; preds = %53, %50, %47
  %58 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %58) #2
  %59 = load i32, i32* %7, align 4, !tbaa !3
  %60 = icmp sgt i32 %59, 23
  br i1 %60, label %61, label %70

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %7, align 4, !tbaa !3
  %63 = sub nsw i32 %62, 23
  store i32 %63, i32* %9, align 4, !tbaa !3
  %64 = load i32, i32* %7, align 4, !tbaa !3
  %65 = shl i32 1, %64
  %66 = load i32, i32* %6, align 4, !tbaa !3
  %67 = load i32, i32* %9, align 4, !tbaa !3
  %68 = shl i32 %66, %67
  %69 = add i32 %65, %68
  store i32 %69, i32* %6, align 4, !tbaa !3
  br label %79

; <label>:70:                                     ; preds = %57
  %71 = load i32, i32* %7, align 4, !tbaa !3
  %72 = sub nsw i32 23, %71
  store i32 %72, i32* %9, align 4, !tbaa !3
  %73 = load i32, i32* %7, align 4, !tbaa !3
  %74 = shl i32 1, %73
  %75 = load i32, i32* %6, align 4, !tbaa !3
  %76 = load i32, i32* %9, align 4, !tbaa !3
  %77 = lshr i32 %75, %76
  %78 = add i32 %74, %77
  store i32 %78, i32* %6, align 4, !tbaa !3
  br label %79

; <label>:79:                                     ; preds = %70, %61
  %80 = load i32, i32* %4, align 4, !tbaa !3
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %6, align 4, !tbaa !3
  %84 = xor i32 %83, -1
  %85 = add i32 %84, 1
  store i32 %85, i32* %6, align 4, !tbaa !3
  br label %86

; <label>:86:                                     ; preds = %82, %79
  %87 = load i32, i32* %6, align 4, !tbaa !3
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %8, align 4
  %88 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #2
  br label %89

; <label>:89:                                     ; preds = %86, %56, %46, %39, %32, %25
  %90 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #2
  %91 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #2
  %92 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #2
  %93 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #2
  %94 = load i32, i32* %2, align 4
  ret i32 %94
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
