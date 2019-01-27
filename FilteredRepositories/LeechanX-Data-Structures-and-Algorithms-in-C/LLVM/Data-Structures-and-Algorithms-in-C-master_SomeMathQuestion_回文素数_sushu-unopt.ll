; ModuleID = 'Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_回文素数_sushu.c'
source_filename = "Repositories/LeechanX-Data-Structures-and-Algorithms-in-C/Unfiltered/Data-Structures-and-Algorithms-in-C-master_SomeMathQuestion_\E5\9B\9E\E6\96\87\E7\B4\A0\E6\95\B0_sushu.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@flag = internal global <{ i32, i32, [99999 x i32] }> <{ i32 1, i32 1, [99999 x i32] zeroinitializer }>, align 16

; Function Attrs: nounwind ssp uwtable
define void @create_flag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #2
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  store i32 2, i32* %1, align 4, !tbaa !3
  br label %5

; <label>:5:                                      ; preds = %30, %0
  %6 = load i32, i32* %1, align 4, !tbaa !3
  %7 = icmp sle i32 %6, 50000
  br i1 %7, label %8, label %33

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %1, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [100001 x i32], [100001 x i32]* bitcast (<{ i32, i32, [99999 x i32] }>* @flag to [100001 x i32]*), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %1, align 4, !tbaa !3
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %2, align 4, !tbaa !3
  br label %17

; <label>:17:                                     ; preds = %24, %14
  %18 = load i32, i32* %2, align 4, !tbaa !3
  %19 = icmp slt i32 %18, 100000
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %2, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [100001 x i32], [100001 x i32]* bitcast (<{ i32, i32, [99999 x i32] }>* @flag to [100001 x i32]*), i64 0, i64 %22
  store i32 1, i32* %23, align 4, !tbaa !3
  br label %24

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %1, align 4, !tbaa !3
  %26 = load i32, i32* %2, align 4, !tbaa !3
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %2, align 4, !tbaa !3
  br label %17

; <label>:28:                                     ; preds = %17
  br label %29

; <label>:29:                                     ; preds = %28, %8
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %1, align 4, !tbaa !3
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4, !tbaa !3
  br label %5

; <label>:33:                                     ; preds = %5
  %34 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #2
  %35 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @isPrim(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [100001 x i32], [100001 x i32]* bitcast (<{ i32, i32, [99999 x i32] }>* @flag to [100001 x i32]*), i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !3
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  ret i32 %9
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
