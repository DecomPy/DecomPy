; ModuleID = 'Repositories/parallella-pal/Unfiltered/pal-master_src_math_asm_epiphany_main.c'
source_filename = "Repositories/parallella-pal/Unfiltered/pal-master_src_math_asm_epiphany_main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x float], align 16
  %3 = alloca [16 x float], align 16
  %4 = alloca [16 x float], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [16 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %6) #3
  %7 = bitcast [16 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %7) #3
  %8 = bitcast [16 x float]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #3
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3
  store i32 0, i32* %5, align 4, !tbaa !3
  br label %10

; <label>:10:                                     ; preds = %24, %0
  %11 = load i32, i32* %5, align 4, !tbaa !3
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %27

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %5, align 4, !tbaa !3
  %15 = sitofp i32 %14 to float
  %16 = load i32, i32* %5, align 4, !tbaa !3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x float], [16 x float]* %2, i64 0, i64 %17
  store float %15, float* %18, align 4, !tbaa !7
  %19 = load i32, i32* %5, align 4, !tbaa !3
  %20 = sitofp i32 %19 to float
  %21 = load i32, i32* %5, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x float], [16 x float]* %3, i64 0, i64 %22
  store float %20, float* %23, align 4, !tbaa !7
  br label %24

; <label>:24:                                     ; preds = %13
  %25 = load i32, i32* %5, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !3
  br label %10

; <label>:27:                                     ; preds = %10
  %28 = getelementptr inbounds [16 x float], [16 x float]* %2, i32 0, i32 0
  %29 = getelementptr inbounds [16 x float], [16 x float]* %3, i32 0, i32 0
  %30 = getelementptr inbounds [16 x float], [16 x float]* %4, i32 0, i32 0
  %31 = call i32 @p_add_f32(float* %28, float* %29, float* %30, i32 16)
  %32 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3
  %33 = bitcast [16 x float]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %33) #3
  %34 = bitcast [16 x float]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %34) #3
  %35 = bitcast [16 x float]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %35) #3
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare i32 @p_add_f32(float*, float*, float*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
