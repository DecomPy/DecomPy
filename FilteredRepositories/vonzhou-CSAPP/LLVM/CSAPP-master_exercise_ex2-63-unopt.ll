; ModuleID = 'Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-63.c'
source_filename = "Repositories/vonzhou-CSAPP/Unfiltered/CSAPP-master_exercise_ex2-63.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@w = internal global i32 32, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @sra(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  %10 = load i32, i32* %3, align 4, !tbaa !3
  %11 = load i32, i32* %4, align 4, !tbaa !3
  %12 = lshr i32 %10, %11
  store i32 %12, i32* %5, align 4, !tbaa !3
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #2
  %14 = load i32, i32* @w, align 4, !tbaa !3
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = sub nsw i32 %15, %16
  %18 = shl i32 1, %17
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = and i32 %18, %19
  %21 = shl i32 %20, 1
  store i32 %21, i32* %6, align 4, !tbaa !3
  %22 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #2
  %23 = load i32, i32* @w, align 4, !tbaa !3
  %24 = load i32, i32* %4, align 4, !tbaa !3
  %25 = sub nsw i32 %23, %24
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  store i32 %28, i32* %7, align 4, !tbaa !3
  %29 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #2
  %30 = load i32, i32* %7, align 4, !tbaa !3
  %31 = load i32, i32* %6, align 4, !tbaa !3
  %32 = load i32, i32* @w, align 4, !tbaa !3
  %33 = load i32, i32* %4, align 4, !tbaa !3
  %34 = sub nsw i32 %32, %33
  %35 = shl i32 1, %34
  %36 = xor i32 %31, %35
  %37 = add nsw i32 %30, %36
  store i32 %37, i32* %8, align 4, !tbaa !3
  %38 = load i32, i32* %8, align 4, !tbaa !3
  %39 = load i32, i32* %5, align 4, !tbaa !3
  %40 = add nsw i32 %38, %39
  %41 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #2
  %42 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #2
  %43 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #2
  %44 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #2
  ret i32 %40
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @srl(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = ashr i32 %7, %8
  store i32 %9, i32* %5, align 4, !tbaa !3
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* @w, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = sub nsw i32 %11, %12
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %10, %15
  %17 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #2
  ret i32 %16
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
