; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-19.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex3-19.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @tmul_ok_32(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %5, align 4, !tbaa !3
  %14 = load i32, i32* %3, align 4, !tbaa !3
  %15 = sdiv i32 %13, %14
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = icmp eq i32 %15, %16
  br label %18

; <label>:18:                                     ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #2
  ret i32 %20
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @largest_factorial_32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  store i32 1, i32* %1, align 4, !tbaa !3
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  store i32 1, i32* %2, align 4, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  br label %7

; <label>:7:                                      ; preds = %19, %0
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4, !tbaa !3
  %10 = load i32, i32* %1, align 4, !tbaa !3
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = call i32 @tmul_ok_32(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4, !tbaa !3
  %16 = load i32, i32* %3, align 4, !tbaa !3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %7
  br label %23

; <label>:19:                                     ; preds = %7
  %20 = load i32, i32* %2, align 4, !tbaa !3
  %21 = load i32, i32* %1, align 4, !tbaa !3
  %22 = mul nsw i32 %21, %20
  store i32 %22, i32* %1, align 4, !tbaa !3
  br label %7

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %2, align 4, !tbaa !3
  %25 = sub nsw i32 %24, 1
  %26 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #2
  %27 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #2
  %28 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #2
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define i32 @tmul_ok_64(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8, !tbaa !7
  store i64 %1, i64* %4, align 8, !tbaa !7
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #2
  %7 = load i64, i64* %3, align 8, !tbaa !7
  %8 = load i64, i64* %4, align 8, !tbaa !7
  %9 = mul nsw i64 %7, %8
  store i64 %9, i64* %5, align 8, !tbaa !7
  %10 = load i64, i64* %3, align 8, !tbaa !7
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %5, align 8, !tbaa !7
  %14 = load i64, i64* %3, align 8, !tbaa !7
  %15 = sdiv i64 %13, %14
  %16 = load i64, i64* %4, align 8, !tbaa !7
  %17 = icmp eq i64 %15, %16
  br label %18

; <label>:18:                                     ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #2
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define i32 @largest_factorial_64() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #2
  store i64 1, i64* %1, align 8, !tbaa !7
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  store i32 1, i32* %2, align 4, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  br label %7

; <label>:7:                                      ; preds = %20, %0
  %8 = load i32, i32* %2, align 4, !tbaa !3
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4, !tbaa !3
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = load i32, i32* %2, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = call i32 @tmul_ok_64(i64 %10, i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4, !tbaa !3
  %17 = load i32, i32* %3, align 4, !tbaa !3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %7
  br label %25

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %1, align 8, !tbaa !7
  %24 = mul nsw i64 %23, %22
  store i64 %24, i64* %1, align 8, !tbaa !7
  br label %7

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = sub nsw i32 %26, 1
  %28 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #2
  %29 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #2
  %30 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #2
  ret i32 %27
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !5, i64 0}
