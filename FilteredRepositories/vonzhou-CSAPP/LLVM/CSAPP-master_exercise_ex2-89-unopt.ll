; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-89.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-89.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.anon = type { float }
%union.anon.0 = type { i32 }

; Function Attrs: nounwind ssp uwtable
define i32 @f2u(float) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  store float %0, float* %2, align 4, !tbaa !3
  %4 = bitcast %union.anon* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = load float, float* %2, align 4, !tbaa !3
  %6 = bitcast %union.anon* %3 to float*
  store float %5, float* %6, align 4, !tbaa !7
  %7 = bitcast %union.anon* %3 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !7
  %9 = bitcast %union.anon* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  ret i32 %8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define float @u2f(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon.0, align 4
  store i32 %0, i32* %2, align 4, !tbaa !8
  %4 = bitcast %union.anon.0* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = load i32, i32* %2, align 4, !tbaa !8
  %6 = bitcast %union.anon.0* %3 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !7
  %7 = bitcast %union.anon.0* %3 to float*
  %8 = load float, float* %7, align 4, !tbaa !7
  %9 = bitcast %union.anon.0* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #2
  ret float %8
}

; Function Attrs: nounwind ssp uwtable
define float @fpwr2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !8
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  %9 = load i32, i32* %2, align 4, !tbaa !8
  %10 = icmp slt i32 %9, -149
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %3, align 4, !tbaa !8
  store i32 0, i32* %4, align 4, !tbaa !8
  br label %28

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %2, align 4, !tbaa !8
  %14 = icmp slt i32 %13, -126
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !tbaa !8
  %16 = load i32, i32* %2, align 4, !tbaa !8
  %17 = add nsw i32 %16, 149
  %18 = shl i32 1, %17
  store i32 %18, i32* %4, align 4, !tbaa !8
  br label %27

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %2, align 4, !tbaa !8
  %21 = icmp slt i32 %20, 129
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %2, align 4, !tbaa !8
  %24 = add nsw i32 %23, 127
  store i32 %24, i32* %3, align 4, !tbaa !8
  store i32 0, i32* %4, align 4, !tbaa !8
  br label %26

; <label>:25:                                     ; preds = %19
  store i32 255, i32* %3, align 4, !tbaa !8
  store i32 0, i32* %4, align 4, !tbaa !8
  br label %26

; <label>:26:                                     ; preds = %25, %22
  br label %27

; <label>:27:                                     ; preds = %26, %15
  br label %28

; <label>:28:                                     ; preds = %27, %11
  %29 = load i32, i32* %3, align 4, !tbaa !8
  %30 = shl i32 %29, 23
  %31 = load i32, i32* %4, align 4, !tbaa !8
  %32 = or i32 %30, %31
  store i32 %32, i32* %5, align 4, !tbaa !8
  %33 = load i32, i32* %5, align 4, !tbaa !8
  %34 = call float @u2f(i32 %33)
  %35 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #2
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #2
  %37 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #2
  ret float %34
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
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
