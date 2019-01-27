; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-74.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-74.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @tsub_ovf(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  %9 = load i32, i32* %3, align 4, !tbaa !3
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %5, align 4, !tbaa !3
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #2
  %13 = load i32, i32* %3, align 4, !tbaa !3
  %14 = and i32 %13, -2147483648
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = and i32 %17, -2147483648
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %5, align 4, !tbaa !3
  %22 = and i32 %21, -2147483648
  %23 = icmp ne i32 %22, 0
  br label %24

; <label>:24:                                     ; preds = %20, %16, %2
  %25 = phi i1 [ false, %16 ], [ false, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4, !tbaa !3
  %27 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #2
  %28 = load i32, i32* %3, align 4, !tbaa !3
  %29 = and i32 %28, -2147483648
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %4, align 4, !tbaa !3
  %33 = and i32 %32, -2147483648
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %5, align 4, !tbaa !3
  %37 = and i32 %36, -2147483648
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

; <label>:40:                                     ; preds = %35, %31, %24
  %41 = phi i1 [ false, %31 ], [ false, %24 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4, !tbaa !3
  %43 = load i32, i32* %6, align 4, !tbaa !3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %7, align 4, !tbaa !3
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %45, %40
  %49 = phi i1 [ true, %40 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #2
  %52 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #2
  %53 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #2
  ret i32 %50
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
