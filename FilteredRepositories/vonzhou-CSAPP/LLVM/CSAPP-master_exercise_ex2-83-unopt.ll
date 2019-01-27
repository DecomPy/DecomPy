; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-83.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-83.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @float_ge(float, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %3, align 4, !tbaa !3
  store float %1, float* %4, align 4, !tbaa !3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load float, float* %3, align 4, !tbaa !3
  %11 = fpext float %10 to double
  %12 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %11)
  store i32 %12, i32* %5, align 4, !tbaa !7
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load float, float* %4, align 4, !tbaa !3
  %15 = fpext float %14 to double
  %16 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %15)
  store i32 %16, i32* %6, align 4, !tbaa !7
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i32, i32* %5, align 4, !tbaa !7
  %19 = lshr i32 %18, 31
  store i32 %19, i32* %7, align 4, !tbaa !7
  %20 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = lshr i32 %21, 31
  store i32 %22, i32* %8, align 4, !tbaa !7
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = load i32, i32* %6, align 4, !tbaa !7
  %25 = add i32 %23, %24
  %26 = load i32, i32* %5, align 4, !tbaa !7
  %27 = load i32, i32* %6, align 4, !tbaa !7
  %28 = sub i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %42

; <label>:30:                                     ; preds = %2
  %31 = load i32, i32* %5, align 4, !tbaa !7
  %32 = load i32, i32* %6, align 4, !tbaa !7
  %33 = add i32 %31, %32
  %34 = load i32, i32* %6, align 4, !tbaa !7
  %35 = load i32, i32* %5, align 4, !tbaa !7
  %36 = sub i32 %34, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %5, align 4, !tbaa !7
  %40 = load i32, i32* %6, align 4, !tbaa !7
  %41 = add i32 %39, %40
  br label %69

; <label>:42:                                     ; preds = %30, %2
  %43 = load i32, i32* %7, align 4, !tbaa !7
  %44 = load i32, i32* %8, align 4, !tbaa !7
  %45 = xor i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %7, align 4, !tbaa !7
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  br label %67

; <label>:52:                                     ; preds = %42
  %53 = load i32, i32* %7, align 4, !tbaa !7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %5, align 4, !tbaa !7
  %57 = load i32, i32* %6, align 4, !tbaa !7
  %58 = icmp uge i32 %56, %57
  %59 = zext i1 %58 to i32
  br label %65

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %5, align 4, !tbaa !7
  %62 = load i32, i32* %6, align 4, !tbaa !7
  %63 = icmp ule i32 %61, %62
  %64 = zext i1 %63 to i32
  br label %65

; <label>:65:                                     ; preds = %60, %55
  %66 = phi i32 [ %59, %55 ], [ %64, %60 ]
  br label %67

; <label>:67:                                     ; preds = %65, %47
  %68 = phi i32 [ %51, %47 ], [ %66, %65 ]
  br label %69

; <label>:69:                                     ; preds = %67, %38
  %70 = phi i32 [ %41, %38 ], [ %68, %67 ]
  %71 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3
  %72 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3
  %73 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #3
  %74 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3
  ret i32 %70
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @f2u(...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @float_ge_ans(float, float) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %3, align 4, !tbaa !3
  store float %1, float* %4, align 4, !tbaa !3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  %10 = load float, float* %3, align 4, !tbaa !3
  %11 = fpext float %10 to double
  %12 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %11)
  store i32 %12, i32* %5, align 4, !tbaa !7
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load float, float* %4, align 4, !tbaa !3
  %15 = fpext float %14 to double
  %16 = call i32 (double, ...) bitcast (i32 (...)* @f2u to i32 (double, ...)*)(double %15)
  store i32 %16, i32* %6, align 4, !tbaa !7
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3
  %18 = load i32, i32* %5, align 4, !tbaa !7
  %19 = lshr i32 %18, 31
  store i32 %19, i32* %7, align 4, !tbaa !7
  %20 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3
  %21 = load i32, i32* %6, align 4, !tbaa !7
  %22 = lshr i32 %21, 31
  store i32 %22, i32* %8, align 4, !tbaa !7
  %23 = load i32, i32* %5, align 4, !tbaa !7
  %24 = shl i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %2
  %27 = load i32, i32* %6, align 4, !tbaa !7
  %28 = shl i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %58, label %30

; <label>:30:                                     ; preds = %26, %2
  %31 = load i32, i32* %7, align 4, !tbaa !7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %8, align 4, !tbaa !7
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %58, label %36

; <label>:36:                                     ; preds = %33, %30
  %37 = load i32, i32* %7, align 4, !tbaa !7
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %8, align 4, !tbaa !7
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %5, align 4, !tbaa !7
  %44 = load i32, i32* %6, align 4, !tbaa !7
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %58, label %46

; <label>:46:                                     ; preds = %42, %39, %36
  %47 = load i32, i32* %7, align 4, !tbaa !7
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %8, align 4, !tbaa !7
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %5, align 4, !tbaa !7
  %54 = load i32, i32* %6, align 4, !tbaa !7
  %55 = icmp ule i32 %53, %54
  br label %56

; <label>:56:                                     ; preds = %52, %49, %46
  %57 = phi i1 [ false, %49 ], [ false, %46 ], [ %55, %52 ]
  br label %58

; <label>:58:                                     ; preds = %56, %42, %33, %26
  %59 = phi i1 [ true, %42 ], [ true, %33 ], [ true, %26 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  %61 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3
  %62 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3
  %63 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3
  %64 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3
  ret i32 %60
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
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
